# 32-Bit Single Cycle Processor

## Overview

This project presents the design and implementation of a 32-Bit Single Cycle Processor using Verilog HDL. The processor was developed by integrating fundamental datapath and control modules and verified through simulation using Xilinx Vivado.

The project was undertaken to gain practical experience in Computer Architecture, Digital Logic Design, FPGA-based system design, and hardware description languages.

---

## Features

* 32-Bit Datapath Architecture
* Single Cycle Instruction Execution
* Modular Verilog Design
* Instruction Fetch, Decode, Execute, Memory Access, and Write-Back Stages
* Branch Control Logic
* Functional Simulation and Verification

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
├── Processor testbench

screenshots/
├── Processor architecture
├── RTL schematic
├── Synthesized schematic
├── Simulation waveform
```

---

## Design Flow

1. Design individual processor modules in Verilog HDL.
2. Verify each module using dedicated testbenches.
3. Integrate all modules into a top-level processor module.
4. Perform behavioral simulation.
5. Generate RTL schematic.
6. Run synthesis and analyze synthesized design.
7. Verify processor functionality through simulation waveforms.

---

## Results

Project Outputs

All supporting design outputs are available in the  [screenshots](./screenshots) directory, including:

Processor Architecture Diagram
RTL Schematic
Synthesized Design Schematic
Simulation Waveforms

These outputs demonstrate the successful implementation, integration, synthesis, and functional verification of the 32-Bit Single Cycle Processor.

## Tools Used

* Verilog HDL
* Xilinx Vivado
* GitHub

---

## Learning Outcomes

Through this project, I gained hands-on experience in:

* Processor Datapath Design
* Control Unit Development
* Verilog HDL Coding
* Functional Verification
* FPGA Design Flow
* Hardware-Oriented Problem Solving

---

## Author

Garima Singh

B.Tech – Information Technology
2nd,year
