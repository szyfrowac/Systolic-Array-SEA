//#include <stdio.h>
//#include <stdlib.h>
//#include "xparameters.h"
//#include "xaxidma.h"
//#include "xil_cache.h"
//#include "xil_printf.h"
//#include "xtime_l.h"  // Zynq Global Timer
//
//// HW Dimensions (Physical Array Size)
//#define HW_ROWS 8
//#define HW_COLS 8
//#define HW_MATRIX_SIZE (HW_ROWS * HW_COLS)
//#define NUM_BYTES_B (HW_MATRIX_SIZE * sizeof(float))
//
//// 1024x1024 Matrix!
//#define FULL_ROWS 1024
//#define FULL_COLS 1024
//#define FULL_INNER 1024
//
//// We chunk the streaming into 256 rows to stay under the 14-bit AXI DMA Limit (16KB)
//#define CHUNK_ROWS 256
//#define RIBBON_SIZE (CHUNK_ROWS * HW_COLS)
//#define NUM_BYTES_RIBBON (RIBBON_SIZE * sizeof(float))
//
//// DMA Instances
//XAxiDma AxiDma_A;
//XAxiDma AxiDma_B;
//XAxiDma AxiDma_D_C;
//
//// Software 1024x1024 Matrices (Requires ~12MB of DDR RAM in BSS)
//float Matrix_A_Soft[FULL_ROWS][FULL_INNER];
//float Matrix_B_Soft[FULL_INNER][FULL_COLS];
//float Matrix_C_Soft[FULL_ROWS][FULL_COLS];
//
//float Matrix_C_Hard_Full[FULL_ROWS][FULL_COLS];
//
//// 1D Arrays for Hardware DMA Transfers (Aligned)
//float HW_A[RIBBON_SIZE] __attribute__((aligned(32)));
//float HW_B[HW_MATRIX_SIZE] __attribute__((aligned(32)));
//float HW_D[RIBBON_SIZE] __attribute__((aligned(32)));
//float HW_C[RIBBON_SIZE] __attribute__((aligned(32)));
//
//int Initialize_DMA_Old(XAxiDma *DmaInstPtr, u16 DeviceId) {
//    XAxiDma_Config *CfgPtr = XAxiDma_LookupConfig(DeviceId);
//    if (!CfgPtr) return XST_FAILURE;
//    int Status = XAxiDma_CfgInitialize(DmaInstPtr, CfgPtr);
//    if (Status != XST_SUCCESS) return XST_FAILURE;
//    XAxiDma_IntrDisable(DmaInstPtr, XAXIDMA_IRQ_ALL_MASK, XAXIDMA_DEVICE_TO_DMA);
//    XAxiDma_IntrDisable(DmaInstPtr, XAXIDMA_IRQ_ALL_MASK, XAXIDMA_DMA_TO_DEVICE);
//    return XST_SUCCESS;
//}
//
//// Helper to print float safely in Vitis
//void print_float_Old(double val) {
//    int int_part = (int)val;
//    int frac_part = (int)((val - int_part) * 1000000);
//    if (frac_part < 0) frac_part = -frac_part;
//
//    int zeros = 0;
//    if (frac_part < 10) zeros = 5;
//    else if (frac_part < 100) zeros = 4;
//    else if (frac_part < 1000) zeros = 3;
//    else if (frac_part < 10000) zeros = 2;
//    else if (frac_part < 100000) zeros = 1;
//
//    xil_printf("%d.", int_part);
//    for (int i=0; i<zeros; i++) xil_printf("0");
//    xil_printf("%d", frac_part);
//}
//
//// Standard CPU Matrix Multiplication
//void Software_Matrix_Multiply_Old() {
//    for (int i = 0; i < FULL_ROWS; i++) {
//        // Print progress so the user doesn't think the board froze
//        if (i % 256 == 0) xil_printf("      ... CPU computing row %d of 1024 ...\r\n", i);
//
//        for (int j = 0; j < FULL_COLS; j++) {
//            float sum = 0.0f;
//            for (int k = 0; k < FULL_INNER; k++) {
//                sum += Matrix_A_Soft[i][k] * Matrix_B_Soft[k][j];
//            }
//            Matrix_C_Soft[i][j] = sum;
//        }
//    }
//}
//
//// Run the Hardware accelerator for a massive chunked Ribbon of A
//void Run_Hardware_Ribbon_Old() {
//    // Flush caches
//    Xil_DCacheFlushRange((UINTPTR)HW_A, NUM_BYTES_RIBBON);
//    Xil_DCacheFlushRange((UINTPTR)HW_B, NUM_BYTES_B);
//    Xil_DCacheFlushRange((UINTPTR)HW_D, NUM_BYTES_RIBBON);
//    Xil_DCacheFlushRange((UINTPTR)HW_C, NUM_BYTES_RIBBON);
//
//    // Start transfers (Note: B is small, A, D, C are Massive Ribbons!)
//    XAxiDma_SimpleTransfer(&AxiDma_D_C, (UINTPTR)HW_C, NUM_BYTES_RIBBON, XAXIDMA_DEVICE_TO_DMA);
//    XAxiDma_SimpleTransfer(&AxiDma_B, (UINTPTR)HW_B, NUM_BYTES_B, XAXIDMA_DMA_TO_DEVICE);
//    XAxiDma_SimpleTransfer(&AxiDma_A, (UINTPTR)HW_A, NUM_BYTES_RIBBON, XAXIDMA_DMA_TO_DEVICE);
//    XAxiDma_SimpleTransfer(&AxiDma_D_C, (UINTPTR)HW_D, NUM_BYTES_RIBBON, XAXIDMA_DMA_TO_DEVICE);
//
//    // Wait
//    while (XAxiDma_Busy(&AxiDma_B, XAXIDMA_DMA_TO_DEVICE)) {}
//    while (XAxiDma_Busy(&AxiDma_A, XAXIDMA_DMA_TO_DEVICE)) {}
//    while (XAxiDma_Busy(&AxiDma_D_C, XAXIDMA_DMA_TO_DEVICE)) {}
//    while (XAxiDma_Busy(&AxiDma_D_C, XAXIDMA_DEVICE_TO_DMA)) {}
//
//    Xil_DCacheInvalidateRange((UINTPTR)HW_C, NUM_BYTES_RIBBON);
//}
//
//int main_benchmark() {
//    xil_printf("\r\n========================================\r\n");
//    xil_printf("  Systolic Array Hardware Benchmarker   \r\n");
//    xil_printf("   1024x1024 CONTINUOUS STREAMING       \r\n");
//    xil_printf("========================================\r\n");
//
//    if (Initialize_DMA(&AxiDma_A, XPAR_AXI_DMA_0_DEVICE_ID) != XST_SUCCESS) return XST_FAILURE;
//    if (Initialize_DMA(&AxiDma_B, XPAR_AXI_DMA_1_DEVICE_ID) != XST_SUCCESS) return XST_FAILURE;
//    if (Initialize_DMA(&AxiDma_D_C, XPAR_AXI_DMA_2_DEVICE_ID) != XST_SUCCESS) return XST_FAILURE;
//
//    xil_printf("Generating 1024x1024 Floating Point Matrices (12 MB of Data!)...\r\n");
//    for(int i=0; i<FULL_ROWS; i++) {
//        for(int j=0; j<FULL_INNER; j++) {
//            Matrix_A_Soft[i][j] = (float)(rand() % 10) / 2.0f;
//        }
//    }
//    for(int i=0; i<FULL_INNER; i++) {
//        for(int j=0; j<FULL_COLS; j++) {
//            Matrix_B_Soft[i][j] = (float)(rand() % 10) / 2.0f;
//        }
//    }
//
//    XTime tStart, tEnd;
//    double soft_time_s = 0.0, hard_time_s = 0.0;
//
//    // ==========================================
//    // SOFTWARE PROFILING
//    // ==========================================
//    xil_printf("\r\n[1] Running Software 1024x1024 Multiplication...\r\n");
//    xil_printf("    (WARNING: This will take ~60 seconds on the ARM CPU! Be patient!)\r\n");
//    XTime_GetTime(&tStart);
//
//    Software_Matrix_Multiply();
//
//    XTime_GetTime(&tEnd);
//    soft_time_s = 1.0 * (tEnd - tStart) / (COUNTS_PER_SECOND);
//    xil_printf("Software Execution Time: ");
//    print_float(soft_time_s);
//    xil_printf(" seconds\r\n");
//
//    // ==========================================
//    // HARDWARE PROFILING (Continuous Streaming)
//    // ==========================================
//    xil_printf("\r\n[2] Running Hardware 1024x1024 Continuous Streaming...\r\n");
//
//    // Loop over the output Column chunks C(*, j)
//    for (int j = 0; j < FULL_COLS; j += HW_COLS) {
//
//        // For each output Column chunk C(*, j), accumulate over K
//        for (int k = 0; k < FULL_INNER; k += HW_COLS) {
//
//            // 1. Pack B Tile (Column-Major) - 8 x 8 (Stationary for the entire 1024 ribbon!)
//            for (int r = 0; r < HW_ROWS; r++) {
//                for (int c = 0; c < HW_COLS; c++) {
//                    HW_B[c * HW_COLS + r] = Matrix_B_Soft[k + r][j + c];
//                }
//            }
//
//            // We must chunk the 1024-row ribbon into four 256-row ribbons to avoid the 16KB DMA Limit
//            for (int chunk_row = 0; chunk_row < FULL_ROWS; chunk_row += CHUNK_ROWS) {
//
//                // 2. Pack A Ribbon Chunk (Row-Major) - 256 x 8
//                for (int r = 0; r < CHUNK_ROWS; r++) {
//                    for (int c = 0; c < HW_COLS; c++) {
//                        HW_A[r * HW_COLS + c] = Matrix_A_Soft[chunk_row + r][k + c];
//                    }
//                }
//
//                // 3. Pack D Ribbon Chunk (Accumulator) - 256 x 8
//                for (int r = 0; r < CHUNK_ROWS; r++) {
//                    for (int c = 0; c < HW_COLS; c++) {
//                        if (k == 0) {
//                            HW_D[r * HW_COLS + c] = 0.0f; // First pass
//                        } else {
//                            HW_D[r * HW_COLS + c] = Matrix_C_Hard_Full[chunk_row + r][j + c]; // Accumulate
//                        }
//                    }
//                }
//
//                // =====================================
//                // Start HW Timer
//                // =====================================
//                XTime tStart_HW, tEnd_HW;
//                XTime_GetTime(&tStart_HW);
//
//                // RUN 256-ROW RIBBON CHUNK THROUGH HARDWARE
//                Run_Hardware_Ribbon();
//
//                XTime_GetTime(&tEnd_HW);
//                hard_time_s += 1.0 * (tEnd_HW - tStart_HW) / (COUNTS_PER_SECOND);
//                // =====================================
//                // Stop HW Timer
//                // =====================================
//
//                // 4. Store C Ribbon Chunk back into Full Matrix
//                for (int r = 0; r < CHUNK_ROWS; r++) {
//                    for (int c = 0; c < HW_COLS; c++) {
//                        Matrix_C_Hard_Full[chunk_row + r][j + c] = HW_C[r * HW_COLS + c];
//                    }
//                }
//            }
//        }
//    }
//
//    xil_printf("Hardware Execution Time: ");
//    print_float(hard_time_s);
//    xil_printf(" seconds\r\n");
//
//    // ==========================================
//    // VERIFICATION
//    // ==========================================
//    int errors = 0;
//    for (int r = 0; r < FULL_ROWS; r++) {
//        for (int c = 0; c < FULL_COLS; c++) {
//            float hw_val = Matrix_C_Hard_Full[r][c];
//            float sw_val = Matrix_C_Soft[r][c];
//            if (hw_val > sw_val + 0.1f || hw_val < sw_val - 0.1f) {
//                errors++;
//            }
//        }
//    }
//
//    if (errors == 0) {
//        xil_printf("\r\n[+] Hardware Math VERIFIED Correct!\r\n");
//    } else {
//        xil_printf("\r\n[-] Hardware Verification FAILED with %d errors.\r\n", errors);
//    }
//
//    // ==========================================
//    // BENCHMARK RESULTS
//    // ==========================================
//    xil_printf("\r\n========================================\r\n");
//    xil_printf("             FINAL BENCHMARKS           \r\n");
//    xil_printf("========================================\r\n");
//
//    double speedup = soft_time_s / hard_time_s;
//    xil_printf("Speedup Factor: ");
//    print_float(speedup);
//    xil_printf(" x FASTER than ARM CPU\r\n");
//
//    // 1024x1024 Matrix = 1024^3 * 2 = 2,147,483,648 FLOPs
//    double gflops = (2147483648.0) / (hard_time_s * 1000000000.0);
//    xil_printf("Hardware Throughput: ");
//    print_float(gflops);
//    xil_printf(" GFLOPS\r\n");
//    xil_printf("========================================\r\n");
//
//    return 0;
//}
