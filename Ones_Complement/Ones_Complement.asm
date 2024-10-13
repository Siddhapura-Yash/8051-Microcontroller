; Program to find 1’s complement of number stored in 60H

MOV 60H,#10H
MOV A, 60H        ; Load content of 60H into Accumulator
CPL A             ; Complement the Accumulator
MOV R3, A        ; Store result in R3
END
