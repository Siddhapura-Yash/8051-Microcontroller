; Program to perform AND operation between content of 50H and 51H

MOV 50H,#05H
MOV 51H,#04H
MOV A, 50H        ; Load content of 50H into Accumulator
ANL A, 51H       ; AND with content of 51H
MOV R4, A        ; Store result in R4
END
