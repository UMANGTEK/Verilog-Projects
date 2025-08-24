# 32-bit Adder/Subtractor IP (AXI4-Lite)

## Overview
This project implements a **32-bit adder/subtractor logic block** in Verilog, wrapped with an **AXI4-Lite slave interface**.  
It was deployed on the **Zybo Z7 (Zynq-7000 SoC)** and verified using a **bare-metal C driver** with UART output.

---

## AXI4-Lite Register Map
| Offset | Register   | Access | Description                        |
|--------|------------|--------|------------------------------------|
| 0x00   | OPA        | Write  | 32-bit Operand A                   |
| 0x04   | OPB        | Write  | 32-bit Operand B                   |
| 0x08   | ADD        | Read  | Operation select: `0 = Add`, `1 = Sub` |
| 0x0C   | SUB        | Read   | 32-bit result of operation         |

---

## Operation Flow
1. Write Operand A (OPA) and Operand B (OPB).  
2. Write to `ADD_SUB` register:  
   - `0` → perform addition (`OPA + OPB`)  
   - `1` → perform subtraction (`OPA - OPB`)  
3. Read the result from `RESULT` register.  
4. Result is also printed via UART for verification.  

---

## Tools & Setup
- **Board:** Zybo Z7 (Zynq-7000 SoC)  
- **HDL:** Verilog  
- **Toolchain:** Xilinx Vivado (IP creation + integration), Vitis SDK (bare-metal C driver)  
- **Debug:** UART terminal + SDK register debugger  



## Learnings
- Implemented AXI4-Lite protocol (address, data, valid/ready handshakes).  
- Designed a simple arithmetic IP with memory-mapped register interface.  
- Developed a bare-metal driver for hardware/software co-verification.  

---
 
