# Sequential Circuits: Latches

In this lab, you learned about the basic building block of sequential circuits: the latch.

## Rubric

| Item | Description | Value |
| ---- | ----------- | ----- |
| Summary Answers | Your writings about what you learned in this lab. | 25% |
| Question 1 | Your answers to the question | 25% |
| Question 2 | Your answers to the question | 25% |
| Question 3 | Your answers to the question | 25% |

## Summary
I learned about SR latches vs D latches, and how to chain them together, along with some verilog tricks.

## Lab Questions

###  Why can we not just use structural Verilog to implement latches?
We can, it's just really bad practice, because there will be timing issues and race conditions.
### What is the meaning of always @(*) in a sensitivity block?
from what I understand, whenever anything is changed hence the * which i'm assuming is a catchall like in regex, the block re-evaluates the signals whenever they change. 
### What importance is memory to digital circuits?
Its kind of nice to not have to re-input everything, and be able to set it aside so we can go back to it later.
