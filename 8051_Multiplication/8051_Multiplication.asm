; Program to multiply two 8-bit numbers and store the result in 50H and 51H

MOV R6, #34H      ; Load 34H into R6
MOV R7, #4FH      ; Load 4FH into R7
MOV A, R6         ; Move R6 to Accumulator
MOV B, R7         ; Move R7 to B register
MUL AB            ; Multiply A and B
MOV 50H, A        ; Store the low byte of the result at 50H
MOV 51H, B        ; Store the high byte of the result at 51H
END
