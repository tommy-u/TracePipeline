The 6502:
https://en.wikipedia.org/wiki/MOS_Technology_6502

#### NN Framework: 
Torch7's nn module. 

#### Dataset:
Full register state traces from the 6502 processor. Using a 
6502 simulator built by Jonathan Appavoo & students. 

#### Task: 
Use traces to classify computation. 

#### Trace:
A "trace" is a 2d binary matrix. The columns are the individual bits of a process's virtual address space + register state. The ith row is the ith time step in the execution of the process. The time step quantum is between the execution of each assembly instruction. For simplicity, we will start with just a trace of the register state. This will dramatically reduce the size of the trace.

#### Full state trace:
The 6502 is an 8 bit microprocessor with 16bit addressing. This means the state of a process can be fully described in at most 2^16 bytes of memory state plus 8 bytes of register state.

#### Register state:
To Do: add an example. 
To Do: is this how they're laid out in the state trace? They are for sure laid out with the msb on the left which may be counterintuitive.
To DO: Explain 8th byte? Padding / ERR

The register state is made up of 7 bytes. 

| Reg | size in bytes |
| --- | --- |
| PC |  2 |
| Accumulator | 1 |
| X index |  1 |
| Y index | 1 |
| SP |  1 |
| Status | 1 |



#### Running:
http://www.bu.edu/tech/support/research/software-and-programming/programming/multiprocessor/gpu-computing/#

Grab an interactive session with a GPU.
	
	qrsh -l h_rt=4:00:00 -l gpus=1

Import necessary modules into current envt. The . is intentional.

	. ./prep_torch

The entire experiment (Prepairing data, processing, generating, training, testing model) can be run from the top level with:
	
	./runAll.sh


Run .lua files:

	th <filename>.lua

Run Torch interpreter

	th
