## The 7458 is a chip with four AND gates and two OR gates. This problem is slightly more complex than 7420.

Create a module with the same functionality as the 7458 chip. It has 10 inputs and 2 outputs. You may choose to use an assign statement to drive each of the output wires, or you may choose to declare (four) wires for use as intermediate signals, where each internal wire is driven by the output of one of the AND gates. For extra practice, try it both ways.

![dw](https://github.com/AbhijitBaral/HDL_bits_solutions/blob/main/basics/7458chip/imgs/7458.png)

## Timing diagrams for selected test cases
These are timing diagrams from some of the test cases we used. They may help you debug your circuit. The diagrams show inputs to the circuit, outputs from your circuit, and the expected reference outputs. The "Mismatch" trace shows which cycles your outputs don't match the reference outputs (0 = correct, 1 = incorrect).

![we](https://github.com/AbhijitBaral/HDL_bits_solutions/blob/main/basics/7458chip/imgs/2024-12-04_13-00.png)
