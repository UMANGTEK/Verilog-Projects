# RISC Pipeline Processor (Verilog)

This project implements a 5-stage pipelined RISC processor in Verilog. It demonstrates core architectural concepts such as instruction pipelining, hazard resolution, and register-based dataflow, suitable for educational and simulation purposes.

---

## 📌 Features

- **5-Stage Pipeline**
  - **IF** – Instruction Fetch
  - **ID** – Instruction Decode & Register Fetch
  - **EX** – Execute / ALU Operations
  - **MEM** – Data Memory Access
  - **WB** – Register Writeback

- **Key Modules**
  - Program Counter (`ProgramCounter.v`)
  - Instruction Memory (`InstructionMemory.v`)
  - Register File (`RegisterFile.v`)
  - ALU and ALU Control
  - Control Unit (`MainControl.v`)
  - Data Memory (`DataMemory.v`)
  - Pipeline Registers (IF/ID, ID/EX, EX/MEM, MEM/WB)

- **Forwarding and Hazard Mitigation**
  - Simple forwarding logic
  - Load-use stall handling

- **Instruction Set Support**
  - Arithmetic: `add`
  - Logical: `and`, `nand`
  - Memory: `sw`, `ori`

---

