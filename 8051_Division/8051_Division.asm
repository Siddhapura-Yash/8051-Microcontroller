; Program to divide two 8-bit numbers and store the result in 50H and 51H

MOV R6, #34H      ; Load 34H into R6
MOV R7, #1FH      ; Load 1FH into R7
MOV A, R6         ; Move R6 to Accumulator
MOV B, R7         ; Move R7 to B register
DIV AB            ; Divide A by B
MOV 50H, A        ; Store the quotient at 50H
MOV 51H, B        ; Store the remainder at 51H
END
