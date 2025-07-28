COMPANY : CODTECH IT SOLUTIONS

NAME : NARMATHA.P

INTERN ID : CT04DH855

DOMAIN : VLSI

DURATION : 4 WEEKS

MENTOR : NEELA SANTHOSH


# RAM-DESIGN
Overview:
For Task 2 in the CODTECH Internship, I was tasked with designing a simple synchronous RAM (Random Access Memory) module and verifying its functionality through simulation. This task focused on implementing the memory logic for digital systems and understanding the process of read and write operations using Verilog HDL.

Objective:
The objective was to design a synchronous RAM that works based on a clock signal and supports:
Write operations when the write enable (wr_en) signal is active (high).
Read operations when the write enable (wr_en) signal is inactive (low).

Key Features of the Design:
The RAM module was designed to include the following inputs and outputs:
Clock (clk): Used to synchronize the RAM operation.
Write Enable (wr_en): A control signal that determines whether the operation is a write or read.
Address Input: Specifies the memory address for the operation.
Data Input (din): The data to be written into the memory.
Data Output (dout): The data read from the memory.
The basic behavior of the module is:
When wr_en is high, the RAM performs a write operation, storing the data at the specified address.
When wr_en is low, the RAM performs a read operation, retrieving data from the specified address.

Testbench and Simulation:
Once the RAM module was designed, I created a testbench to test its functionality across various scenarios:
Writing different values to several memory addresses.
Reading the stored values from those addresses.
Ensuring that the read data matches the written data.
The simulation was carried out using ModelSim, a popular tool for simulating Verilog code. The results confirmed:
Synchronized writes with the clock.
Correct data retrieval for read operations.
Stable performance with no errors or glitches.
ModelSim's waveform viewer was used to visually check the read and write operations, confirming that the RAM functioned as expected.

Deliverables:
Verilog code for the synchronous RAM module.
Verilog testbench to verify the functionality.
Simulation outputs from ModelSim, including waveform images and logs.
(Optional) A short README or explanation with design insights and observation

OUTPUT
<img width="1895" height="981" alt="TASK 2 OP" src="https://github.com/user-attachments/assets/e077ab75-4695-415e-add2-d9a856edbbc0" />
