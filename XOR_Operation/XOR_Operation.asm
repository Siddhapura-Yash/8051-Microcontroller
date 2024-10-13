; Program to perform XOR operation between content of 50H and 51H

MOV 50H,#05H
MOV 51H,#04H
MOV A, 50H        ; Load content of 50H into Accumulator
XRL A, 51H       ; XOR with content of 51H
MOV R4, A        ; Store result in R4
END
