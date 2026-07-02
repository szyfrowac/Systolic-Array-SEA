#include <stdio.h>
#include "xparameters.h"
#include "xaxidma.h"
#include "xil_cache.h"
#include "xil_printf.h"
#include "xtime_l.h"
#include "weights.h"  // Contains Input_Images, W1_Soft, and W2_Soft

#define HW_ROWS 8
#define HW_COLS 8
#define HW_MATRIX_SIZE (HW_ROWS * HW_COLS)
#define NUM_BYTES_B (HW_MATRIX_SIZE * sizeof(float))

#define BATCH_SIZE 256
#define INPUT_SIZE 784
#define HIDDEN_SIZE 128
#define OUTPUT_SIZE 16

#define RIBBON_SIZE (BATCH_SIZE * HW_COLS)
#define NUM_BYTES_RIBBON (RIBBON_SIZE * sizeof(float))

// Arrays to store our software results
float Hidden_Soft[BATCH_SIZE][HIDDEN_SIZE];
float Output_Soft[BATCH_SIZE][OUTPUT_SIZE];

// Arrays to store our hardware results
float Hidden_Hard[BATCH_SIZE][HIDDEN_SIZE];
float Output_Hard[BATCH_SIZE][OUTPUT_SIZE];

// 1D Arrays for Hardware DMA Transfers (Aligned)
float HW_A[RIBBON_SIZE] __attribute__((aligned(32)));
float HW_B[HW_MATRIX_SIZE] __attribute__((aligned(32)));
float HW_D[RIBBON_SIZE] __attribute__((aligned(32)));
float HW_C[RIBBON_SIZE] __attribute__((aligned(32)));

XAxiDma AxiDma_A;
XAxiDma AxiDma_B;
XAxiDma AxiDma_D_C;

int Initialize_DMA(XAxiDma *DmaInstPtr, u16 DeviceId) {
    XAxiDma_Config *CfgPtr = XAxiDma_LookupConfig(DeviceId);
    if (!CfgPtr) return XST_FAILURE;
    int Status = XAxiDma_CfgInitialize(DmaInstPtr, CfgPtr);
    if (Status != XST_SUCCESS) return XST_FAILURE;
    XAxiDma_IntrDisable(DmaInstPtr, XAXIDMA_IRQ_ALL_MASK, XAXIDMA_DEVICE_TO_DMA);
    XAxiDma_IntrDisable(DmaInstPtr, XAXIDMA_IRQ_ALL_MASK, XAXIDMA_DMA_TO_DEVICE);
    return XST_SUCCESS;
}

void Run_Hardware_Ribbon() {
    Xil_DCacheFlushRange((UINTPTR)HW_A, NUM_BYTES_RIBBON);
    Xil_DCacheFlushRange((UINTPTR)HW_B, NUM_BYTES_B);
    Xil_DCacheFlushRange((UINTPTR)HW_D, NUM_BYTES_RIBBON);
    Xil_DCacheFlushRange((UINTPTR)HW_C, NUM_BYTES_RIBBON);

    XAxiDma_SimpleTransfer(&AxiDma_D_C, (UINTPTR)HW_C, NUM_BYTES_RIBBON, XAXIDMA_DEVICE_TO_DMA);
    XAxiDma_SimpleTransfer(&AxiDma_B, (UINTPTR)HW_B, NUM_BYTES_B, XAXIDMA_DMA_TO_DEVICE);
    XAxiDma_SimpleTransfer(&AxiDma_A, (UINTPTR)HW_A, NUM_BYTES_RIBBON, XAXIDMA_DMA_TO_DEVICE);
    XAxiDma_SimpleTransfer(&AxiDma_D_C, (UINTPTR)HW_D, NUM_BYTES_RIBBON, XAXIDMA_DMA_TO_DEVICE);

    while (XAxiDma_Busy(&AxiDma_B, XAXIDMA_DMA_TO_DEVICE)) {}
    while (XAxiDma_Busy(&AxiDma_A, XAXIDMA_DMA_TO_DEVICE)) {}
    while (XAxiDma_Busy(&AxiDma_D_C, XAXIDMA_DMA_TO_DEVICE)) {}
    while (XAxiDma_Busy(&AxiDma_D_C, XAXIDMA_DEVICE_TO_DMA)) {}

    Xil_DCacheInvalidateRange((UINTPTR)HW_C, NUM_BYTES_RIBBON);
}

void Software_MLP() {
    // 1. Calculate the Hidden Layer (Input_Images * W1_Soft)
    // Hint: Input is [BATCH_SIZE][INPUT_SIZE], W1 is [INPUT_SIZE][HIDDEN_SIZE]
    // Write your nested loops here!
    for(int i = 0; i < BATCH_SIZE; i++) {
        for(int j = 0; j < HIDDEN_SIZE; j++) {
            float sum = 0.0f;
            for(int k = 0; k < INPUT_SIZE; k++) {
                sum += Input_Images[i][k] * W1_Soft[k][j];
            }
            Hidden_Soft[i][j] = sum;
        }
    }

    // 2. Apply ReLU to Hidden_Soft
    // Hint: If a value in Hidden_Soft is < 0.0f, set it to 0.0f!
    for(int i = 0; i < BATCH_SIZE; i++) {
        for(int j = 0; j < HIDDEN_SIZE; j++) {
            if(Hidden_Soft[i][j] < 0) {
                Hidden_Soft[i][j] = 0;
            }
        }
    }

    // 3. Calculate the Output Layer (Hidden_Soft * W2_Soft)
    // Hint: Output is [BATCH_SIZE][OUTPUT_SIZE]
    for(int i = 0; i < BATCH_SIZE; i++) {
        for(int j = 0; j < OUTPUT_SIZE; j++) {
            float sum = 0.0f;
            for(int k = 0; k < HIDDEN_SIZE; k++) {
                sum += Hidden_Soft[i][k] * W2_Soft[k][j];
            }
            Output_Soft[i][j] = sum;
        }
    }
}

void Hardware_MLP() {
    // ----------------------------------------------------
    // LAYER 1: Hidden_Hard = Input_Images * W1_Soft
    // ----------------------------------------------------

    // TASK: Fill in these loop bounds for Layer 1!
    // Hint: j steps by HW_COLS. k steps by HW_COLS.
    for(int j = 0; j < HIDDEN_SIZE; j += HW_COLS) {
        for(int k = 0; k < INPUT_SIZE; k += HW_COLS) {

            // 1. Pack A Ribbon (Row-Major) - BATCH_SIZE x 8
            for (int r = 0; r < BATCH_SIZE; r++) {
                for (int c = 0; c < HW_COLS; c++) {
                    HW_A[r * HW_COLS + c] = Input_Images[r][k + c];
                }
            }

            // 2. Pack B Tile (Column-Major) - 8 x 8
            for (int r = 0; r < HW_ROWS; r++) {
                for (int c = 0; c < HW_COLS; c++) {
                    HW_B[c * HW_COLS + r] = W1_Soft[k + r][j + c];
                }
            }

            // 3. Pack D Ribbon (Accumulator) - BATCH_SIZE x 8
            for (int r = 0; r < BATCH_SIZE; r++) {
                for (int c = 0; c < HW_COLS; c++) {
                    if (k == 0) {
                        HW_D[r * HW_COLS + c] = 0.0f; // First pass
                    } else {
                        HW_D[r * HW_COLS + c] = Hidden_Hard[r][j + c]; // Accumulate
                    }
                }
            }

            // RUN HARDWARE
            Run_Hardware_Ribbon();

            // 4. Store C Ribbon back into Full Matrix
            for (int r = 0; r < BATCH_SIZE; r++) {
                for (int c = 0; c < HW_COLS; c++) {
                    Hidden_Hard[r][j + c] = HW_C[r * HW_COLS + c];
                }
            }
        }
    }

    // ----------------------------------------------------
    // LAYER 2: ReLU Activation (CPU handles this)
    // ----------------------------------------------------
    for(int i = 0; i < BATCH_SIZE; i++) {
        for(int j = 0; j < HIDDEN_SIZE; j++) {
            if(Hidden_Hard[i][j] < 0) {
                Hidden_Hard[i][j] = 0;
            }
        }
    }

    // ----------------------------------------------------
    // LAYER 3: Output_Hard = Hidden_Hard * W2_Soft
    // ----------------------------------------------------
    // We will do this next! Leave this empty for now.
    for(int j = 0; j < OUTPUT_SIZE; j += HW_COLS) {
        for(int k = 0; k < HIDDEN_SIZE; k += HW_COLS) {

            // 1. Pack A Ribbon (Hidden_Hard)
            for (int r = 0; r < BATCH_SIZE; r++) {
                for (int c = 0; c < HW_COLS; c++) {
                    HW_A[r * HW_COLS + c] = Hidden_Hard[r][k + c];
                }
            }

            // 2. Pack B Tile (W2_Soft)
            for (int r = 0; r < HW_ROWS; r++) {
                for (int c = 0; c < HW_COLS; c++) {
                    HW_B[c * HW_COLS + r] = W2_Soft[k + r][j + c];
                }
            }

            // 3. Pack D Ribbon (Accumulate into Output_Hard)
            for (int r = 0; r < BATCH_SIZE; r++) {
                for (int c = 0; c < HW_COLS; c++) {
                    if (k == 0) {
                        HW_D[r * HW_COLS + c] = 0.0f; // First pass
                    } else {
                        HW_D[r * HW_COLS + c] = Output_Hard[r][j + c]; // Accumulate
                    }
                }
            }

            // RUN HARDWARE
            Run_Hardware_Ribbon();

            // 4. Store C Ribbon back into Output_Hard
            for (int r = 0; r < BATCH_SIZE; r++) {
                for (int c = 0; c < HW_COLS; c++) {
                    Output_Hard[r][j + c] = HW_C[r * HW_COLS + c];
                }
            }
        }
    }
}

int main() {
    xil_printf("\r\n========================================\r\n");
    xil_printf("       MNIST MLP Inference Engine       \r\n");
    xil_printf("========================================\r\n");

    if (Initialize_DMA(&AxiDma_A, XPAR_AXI_DMA_0_DEVICE_ID) != XST_SUCCESS) return XST_FAILURE;
    if (Initialize_DMA(&AxiDma_B, XPAR_AXI_DMA_1_DEVICE_ID) != XST_SUCCESS) return XST_FAILURE;
    if (Initialize_DMA(&AxiDma_D_C, XPAR_AXI_DMA_2_DEVICE_ID) != XST_SUCCESS) return XST_FAILURE;

    xil_printf("Starting Software MLP...\r\n");

    XTime tStart, tEnd;
    XTime_GetTime(&tStart);

    Software_MLP();

    XTime_GetTime(&tEnd);
    double soft_time_s = 1.0 * (tEnd - tStart) / (COUNTS_PER_SECOND);

    xil_printf("Software MLP Finished in %d microseconds!\r\n", (int)(soft_time_s * 1000000));

    xil_printf("\r\nStarting Hardware MLP...\r\n");
    XTime_GetTime(&tStart);

    Hardware_MLP();

    XTime_GetTime(&tEnd);
    double hard_time_s = 1.0 * (tEnd - tStart) / (COUNTS_PER_SECOND);

    xil_printf("Hardware MLP Finished in %d microseconds!\r\n", (int)(hard_time_s * 1000000));

    int errors = 0;
    for (int i = 0; i < BATCH_SIZE; i++) {
        for (int j = 0; j < OUTPUT_SIZE; j++) {
            float diff = Output_Soft[i][j] - Output_Hard[i][j];
            if (diff < -0.01f || diff > 0.01f) {
                errors++;
            }
        }
    }

    if (errors == 0) {
        xil_printf("\r\n[+] Hardware Verification PASSED Perfectly!\r\n");
    } else {
        xil_printf("\r\n[-] Hardware Verification FAILED with %d errors.\r\n", errors);
    }

    double speedup = soft_time_s / hard_time_s;
    xil_printf("\r\n========================================\r\n");
    xil_printf("             FINAL BENCHMARKS           \r\n");
    xil_printf("========================================\r\n");
    xil_printf("Speedup Factor: %d.%06d x FASTER than ARM CPU\r\n", (int)speedup, (int)((speedup - (int)speedup) * 1000000));
    xil_printf("========================================\r\n");

    xil_printf("\r\n========================================\r\n");
    xil_printf("             REAL INFERENCE RESULTS     \r\n");
    xil_printf("========================================\r\n");
    for (int i = 0; i < 10; i++) {
        int best_digit = 0;
        float max_val = Output_Hard[i][0];
        for (int j = 1; j < 10; j++) {
            if (Output_Hard[i][j] > max_val) {
                max_val = Output_Hard[i][j];
                best_digit = j;
            }
        }
        xil_printf("Image %d: Hardware Predicted = %d | True Label = %d\r\n", i, best_digit, True_Labels[i]);
    }
    xil_printf("========================================\r\n");

    return 0;
}
