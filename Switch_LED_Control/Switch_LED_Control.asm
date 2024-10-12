; The program turns off all LEDs initially. 
; If Switch 0 (P2.0) is pressed, LED 0 (P1.0) turns on. 
; If Switch 1 (P2.1) is pressed, LED 1 (P1.1) turns on.

ORG 0000H          ; Set the origin to address 0000H

START: 
    MOV P1, #00H     ; Turn off all LEDs initially

    JB P2.0, CHECK_SW1  ; Jump to CHECK_SW1 if Switch 0 (P2.0) is not pressed
    SETB P1.0        ; Set P1.0 to turn on LED 0

CHECK_SW1:
    JB P2.1, XYZ     ; Jump to XYZ if Switch 1 (P2.1) is not pressed
    SETB P1.1        ; Set P1.1 to turn on LED 1

XYZ:
    NOP               ; No operation

END
