# 32-Bit Single Cycle Processor

## Overview

This project presents the design, simulation, synthesis, and FPGA implementation of a 32-Bit Single Cycle Processor using Verilog HDL. The processor was developed by integrating fundamental datapath and control modules and verified using Xilinx Vivado.

The project was undertaken to gain practical experience in Computer Architecture, Digital Logic Design, FPGA-based system design, and Hardware Description Languages (HDLs).

---

## Features

* 32-Bit Datapath Architecture
* Single Cycle Instruction Execution
* Modular Verilog HDL Design
* Instruction Fetch, Decode, Execute, Memory Access, and Write-Back Operations
* Branch Control Logic
* Functional Simulation and Verification
* RTL Analysis
* Logic Synthesis
* FPGA Placement and Routing

---

## Implemented Modules

* Program Counter (PC)
* PC Adder
* Instruction Memory
* Control Unit
* Register File
* Sign Extension Unit
* ALU Control Unit
* Arithmetic Logic Unit (ALU)
* ALU Source Multiplexer
* Data Memory
* MemtoReg Multiplexer
* RegDst Multiplexer
* Shift Left 2 Unit
* Branch Adder
* Branch AND Gate
* PC Source Multiplexer

---

## Instructions Verified

The processor was tested using a custom instruction memory and verified for the following instructions:

* ADD
* SUB
* LW (Load Word)
* SW (Store Word)
* BEQ (Branch if Equal)

---

## Project Structure

```text
src/
├── Verilog source files

testbench/
├── Individual module testbenches
├── Top-level processor testbench

screenshots/
├── 32-bit processor architecture diagram
├── RTL schematic
├── Synthesized schematic
├── Simulation waveform
├── FPGA device implementation view
├── FPGA routing view
```

---

## Design Flow

1. Design individual processor modules in Verilog HDL.
2. Verify each module using dedicated testbenches.
3. Integrate all modules into a top-level processor module.
4. Perform behavioral simulation.
5. Generate RTL schematic.
6. Run synthesis and analyze synthesized design.
7. Perform FPGA implementation (placement and routing).
8. Verify processor functionality through simulation waveforms.

---

## Results

All supporting outputs are available in the **screenshots** directory, including:

* Processor Architecture Diagram
* RTL Schematic
* Synthesized Design Schematic
* Simulation Waveform
* FPGA Device Implementation View
* FPGA Routing View

The simulation results demonstrate successful instruction execution, control signal generation, ALU operations, memory access, and processor datapath functionality. FPGA implementation and routing results confirm successful hardware realization of the design in Xilinx Vivado.

---

## Tools Used

* Verilog HDL
* Xilinx Vivado 2025.2
* GitHub

---

## Learning Outcomes

Through this project, I gained hands-on experience in:

* Computer Architecture
* Processor Datapath Design
* Control Unit Development
* Verilog HDL Coding
* Functional Verification
* RTL Analysis
* FPGA Design Flow
* Logic Synthesis and Implementation
* Hardware-Oriented Problem Solving

---

## Author

**Garima Singh**

B.Tech – Information Technology

2nd,year
