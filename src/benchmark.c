#include <stdio.h>
#include <stdlib.h>
#include "xparameters.h"
#include "xaxidma.h"
#include "xil_cache.h"
#include "xil_printf.h"
#include "xtime_l.h"  // Zynq Global Timer

// Define the dimensions
#define ROWS 8
#define COLS 8
#define MATRIX_SIZE (ROWS * COLS)

// Due to skew padding, A is 8x15, B is 15x8, C is 15x8 (we extract the 8x8 diamond)
#define PAD_SIZE (8 * 15)
#define NUM_BYTES_PAD (PAD_SIZE * sizeof(float))

// DMA Instances
XAxiDma AxiDma_A;
XAxiDma AxiDma_B;
XAxiDma AxiDma_D_C;

// Align matrices to cache lines for DMA
float Matrix_A_Soft[ROWS][COLS];
float Matrix_B_Soft[ROWS][COLS];
float Matrix_C_Soft[ROWS][COLS];

float Matrix_A_Padded[PAD_SIZE] __attribute__((aligned(32)));
float Matrix_B_Padded[PAD_SIZE] __attribute__((aligned(32)));
float Matrix_D_Zeros[PAD_SIZE]  __attribute__((aligned(32)));
float Matrix_C_Padded[PAD_SIZE] __attribute__((aligned(32)));

int Initialize_DMA(XAxiDma *DmaInstPtr, u16 DeviceId) {
    XAxiDma_Config *CfgPtr = XAxiDma_LookupConfig(DeviceId);
    if (!CfgPtr) return XST_FAILURE;
    int Status = XAxiDma_CfgInitialize(DmaInstPtr, CfgPtr);
    if (Status != XST_SUCCESS) return XST_FAILURE;
    XAxiDma_IntrDisable(DmaInstPtr, XAXIDMA_IRQ_ALL_MASK, XAXIDMA_DEVICE_TO_DMA);
    XAxiDma_IntrDisable(DmaInstPtr, XAXIDMA_IRQ_ALL_MASK, XAXIDMA_DMA_TO_DEVICE);
    return XST_SUCCESS;
}

// Standard CPU Matrix Multiplication
void Software_Matrix_Multiply() {
    for (int i = 0; i < ROWS; i++) {
        for (int j = 0; j < COLS; j++) {
            float sum = 0.0f;
            for (int k = 0; k < COLS; k++) {
                sum += Matrix_A_Soft[i][k] * Matrix_B_Soft[k][j];
            }
            Matrix_C_Soft[i][j] = sum;
        }
    }
}

int main() {
    xil_printf("\r\n========================================\r\n");
    xil_printf("  Systolic Array Hardware Benchmarker   \r\n");
    xil_printf("========================================\r\n");

    if (Initialize_DMA(&AxiDma_A, XPAR_AXI_DMA_0_DEVICE_ID) != XST_SUCCESS) return XST_FAILURE;
    if (Initialize_DMA(&AxiDma_B, XPAR_AXI_DMA_1_DEVICE_ID) != XST_SUCCESS) return XST_FAILURE;
    if (Initialize_DMA(&AxiDma_D_C, XPAR_AXI_DMA_2_DEVICE_ID) != XST_SUCCESS) return XST_FAILURE;

    // 1. Generate Random Matrices
    for(int i=0; i<ROWS; i++) {
        for(int j=0; j<COLS; j++) {
            Matrix_A_Soft[i][j] = (float)(rand() % 10) / 2.0f;
            Matrix_B_Soft[i][j] = (float)(rand() % 10) / 2.0f;
        }
    }

    // 2. Pad Matrices for the Hardware (Skewing)
    for(int i=0; i<PAD_SIZE; i++) {
        Matrix_A_Padded[i] = 0.0f;
        Matrix_B_Padded[i] = 0.0f;
        Matrix_D_Zeros[i]  = 0.0f;
        Matrix_C_Padded[i] = 0.0f;
    }

    // A is delayed by column index
    for (int r = 0; r < ROWS; r++) {
        for (int c = 0; c < COLS; c++) {
            Matrix_A_Padded[r * 15 + (r + c)] = Matrix_A_Soft[r][c];
        }
    }

    // B is delayed by row index
    for (int r = 0; r < ROWS; r++) {
        for (int c = 0; c < COLS; c++) {
            Matrix_B_Padded[(r + c) * 8 + c] = Matrix_B_Soft[r][c];
        }
    }

    XTime tStart, tEnd;
    double soft_time_s, hard_time_s;

    // ==========================================
    // SOFTWARE PROFILING (ARM Cortex-A9)
    // ==========================================
    xil_printf("\r\n[1] Running Software Matrix Multiplication...\r\n");
    XTime_GetTime(&tStart);
    
    Software_Matrix_Multiply();
    
    XTime_GetTime(&tEnd);
    soft_time_s = 1.0 * (tEnd - tStart) / (COUNTS_PER_SECOND);
    xil_printf("Software Execution Time: %f seconds\r\n", soft_time_s);


    // ==========================================
    // HARDWARE PROFILING (Systolic Array)
    // ==========================================
    xil_printf("\r\n[2] Running Hardware Matrix Multiplication...\r\n");
    
    // Flush Caches BEFORE starting timer to isolate computation time
    Xil_DCacheFlushRange((UINTPTR)Matrix_A_Padded, NUM_BYTES_PAD);
    Xil_DCacheFlushRange((UINTPTR)Matrix_B_Padded, NUM_BYTES_PAD);
    Xil_DCacheFlushRange((UINTPTR)Matrix_D_Zeros, NUM_BYTES_PAD);
    Xil_DCacheFlushRange((UINTPTR)Matrix_C_Padded, NUM_BYTES_PAD);

    XTime_GetTime(&tStart);

    // Start DMAs
    XAxiDma_SimpleTransfer(&AxiDma_D_C, (UINTPTR)Matrix_C_Padded, NUM_BYTES_PAD, XAXIDMA_DEVICE_TO_DMA);
    XAxiDma_SimpleTransfer(&AxiDma_B, (UINTPTR)Matrix_B_Padded, NUM_BYTES_PAD, XAXIDMA_DMA_TO_DEVICE);
    XAxiDma_SimpleTransfer(&AxiDma_A, (UINTPTR)Matrix_A_Padded, NUM_BYTES_PAD, XAXIDMA_DMA_TO_DEVICE);
    XAxiDma_SimpleTransfer(&AxiDma_D_C, (UINTPTR)Matrix_D_Zeros, NUM_BYTES_PAD, XAXIDMA_DMA_TO_DEVICE);

    // Wait for completion
    while (XAxiDma_Busy(&AxiDma_D_C, XAXIDMA_DEVICE_TO_DMA)) {}

    XTime_GetTime(&tEnd);
    hard_time_s = 1.0 * (tEnd - tStart) / (COUNTS_PER_SECOND);

    Xil_DCacheInvalidateRange((UINTPTR)Matrix_C_Padded, NUM_BYTES_PAD);
    xil_printf("Hardware Execution Time: %f seconds\r\n", hard_time_s);

    // ==========================================
    // VERIFICATION
    // ==========================================
    int errors = 0;
    for (int r = 0; r < ROWS; r++) {
        for (int c = 0; c < COLS; c++) {
            // Extract the unskewed diamond from the output
            float hw_val = Matrix_C_Padded[(14 - r) * 8 + c];
            float sw_val = Matrix_C_Soft[r][c];
            
            // Allow tiny floating point rounding differences
            if (hw_val > sw_val + 0.01f || hw_val < sw_val - 0.01f) {
                errors++;
            }
        }
    }

    if (errors == 0) {
        xil_printf("\r\n[+] Hardware Math VERIFIED Correct!\r\n");
    } else {
        xil_printf("\r\n[-] Hardware Verification FAILED with %d errors.\r\n", errors);
    }

    // ==========================================
    // BENCHMARK RESULTS (For Resume/Paper)
    // ==========================================
    xil_printf("\r\n========================================\r\n");
    xil_printf("             FINAL BENCHMARKS           \r\n");
    xil_printf("========================================\r\n");
    
    double speedup = soft_time_s / hard_time_s;
    xil_printf("Speedup Factor: %f x FASTER than ARM CPU\r\n", speedup);

    // 8x8 Matrix = 1,024 Floating Point Operations (MAC)
    double gflops = (1024.0) / (hard_time_s * 1000000000.0);
    xil_printf("Hardware Throughput: %f GFLOPS\r\n", gflops);
    xil_printf("========================================\r\n");

    return 0;
}
