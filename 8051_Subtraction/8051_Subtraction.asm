; Program to subtract two 8-bit numbers and store the result in 40H

MOV R6, #34H      ; Load 34H into R6
MOV R7, #25H      ; Load 25H into R7
MOV A, R6         ; Move R6 to Accumulator
SUBB A, R7        ; Subtract R7 from Accumulator with borrow
MOV 40H, A        ; Store result at memory location 40H
END
