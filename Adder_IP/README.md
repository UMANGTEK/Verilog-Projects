# 32-bit Adder/Subtractor IP (AXI4-Lite)

## Overview
This project implements a **32-bit arithmetic IP block** in Verilog, wrapped with an **AXI4-Lite slave interface**.  
The IP exposes two separate result registers (`ADD` and `SUB`), allowing the AXI master to perform both addition and subtraction on the same operand pair.  

The design was deployed on the **Zybo Z7 (Zynq-7000 SoC)** and verified using a **bare-metal C driver** with UART output.

---

## AXI4-Lite Register Map
| Offset | Register | Access | Description                          |
|--------|----------|--------|--------------------------------------|
| 0x00   | OPA      | Write  | 32-bit Operand A                     |
| 0x04   | OPB      | Write  | 32-bit Operand B                     |
| 0x08   | ADD      | Read   | 32-bit result of `OPA + OPB`         |
| 0x0C   | SUB      | Read   | 32-bit result of `OPA - OPB`         |

---

## Operation Flow
1. AXI master writes 32-bit values into **OPA** and **OPB** registers.  
2. On the next clock cycle, the IP internally computes:  
   - `ADD = OPA + OPB`  
   - `SUB = OPA - OPB`  
3. Results are stored in the respective read-only registers.  
4. AXI master can read back either the `ADD` register or the `SUB` register, depending on the required operation.  

This flow eliminates the need for a control register — both results are always available.  

---

## Tools & Setup
- **Board:** Zybo Z7 (Zynq-7000 SoC)  
- **HDL:** Verilog  
- **Bus Interface:** AXI4-Lite slave  
- **Toolchain:** Xilinx Vivado (IP integration), Vitis SDK (C driver development)  
- **Debug:** UART terminal + SDK register debugger  

---

## Verification
- Example test cases:  
  - `OPA=0, OPB=0   → ADD=0x0, SUB=0x0`  
  - `OPA=0xFFFFFFFF, OPB=0x1 → ADD=0x0 (carry ignored), SUB=0xFFFFFFFE`  
  - `OPA=1234, OPB=5678      → ADD=6912, SUB=-4444 (0xFFFFEE5C)`  
- Verified through bare-metal C driver + UART output.  
- Confirmed correctness across edge cases.  

---

## Bare-Metal Driver Usage
```c
#define OPA_REG   0x00
#define OPB_REG   0x04
#define ADD_REG   0x08
#define SUB_REG   0x0C

// Write operand A and operand B
Xil_Out32(BASE_ADDR + OPA_REG, 1234);
Xil_Out32(BASE_ADDR + OPB_REG, 5678);

// Read results
uint32_t sum  = Xil_In32(BASE_ADDR + ADD_REG);
uint32_t diff = Xil_In32(BASE_ADDR + SUB_REG);

printf("Sum: %u, Difference: %d\n", sum, (int32_t)diff);
