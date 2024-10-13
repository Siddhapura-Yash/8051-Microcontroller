; Program to add two 8-bit numbers and store the result in 40H

MOV R6, #34H      ; Load 34H into R6
MOV R7, #0F5H     ; Load 0F5H into R7
MOV A, R6         ; Move R6 to Accumulator
ADD A, R7         ; Add R7 to Accumulator
MOV 40H, A        ; Store result at memory location 40H
END
