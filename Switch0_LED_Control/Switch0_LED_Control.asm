; The program turns off all LEDs initially. 
; When Switch 0 (connected to P2.0) is pressed, all LEDs on PORT1 turn on.

ORG 0000H          ; Set the origin to address 0000H

START: 
    MOV P1, #00H    ; Turn off all LEDs initially (LEDs connected to PORT1)

    JB P2.0, SKIP   ; Jump to SKIP if Switch 0 (connected to P2.0) is not pressed
    
    MOV P1, #0FFH   ; Turn on all LEDs if Switch 0 is pressed

SKIP:
    NOP             ; No operation

END
