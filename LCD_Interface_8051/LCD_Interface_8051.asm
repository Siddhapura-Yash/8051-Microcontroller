; This program displays the message "HELLO" on line 2 of a 16-character LCD connected to an 8051/8951 microcontroller using a single port.

ORG 0000H            ; Set the origin to address 0000H

START: 
    MOV DPTR, #MSG   ; Load the address of the message into DPTR
    ACALL INIT_LCD    ; Initialize the LCD
    MOV R0, #0       ; Clear R0 for character indexing

DISPLAY_LOOP: 
    MOV A, @DPTR     ; Get the character from the message
    JZ FINISH        ; If character is null, jump to FINISH
    ACALL SEND_DATA  ; Send the character to the LCD
    INC DPTR         ; Move to the next character
    SJMP DISPLAY_LOOP ; Repeat until the end of the message

FINISH: 
    SJMP FINISH      ; Infinite loop at the end

INIT_LCD: 
    ; Initialize the LCD (commands for 2-line mode, etc.)
    MOV P1, #38H     ; Function set: 2-line, 5x8 dots
    ACALL COMMAND
    MOV P1, #0CH     ; Display on, cursor off
    ACALL COMMAND
    MOV P1, #06H     ; Entry mode set: increment, no shift
    ACALL COMMAND
    MOV P1, #01H     ; Clear display
    ACALL COMMAND
    RET                ; Return from subroutine

SEND_DATA: 
    MOV P1, A         ; Output data to the LCD
    SETB P2.1         ; RS = 1 for data
    CLR P2.0         ; Enable signal low
    SETB P2.0         ; Enable signal high
    CLR P2.0         ; Enable signal low
    RET                ; Return from subroutine

COMMAND: 
    CLR P2.1          ; RS = 0 for command
    CLR P2.0          ; Enable signal low
    SETB P2.0         ; Enable signal high
    CLR P2.0          ; Enable signal low
    RET                ; Return from subroutine

MSG: DB 'HELLO', 0     ; Define the message "HELLO" with a null terminator

END
