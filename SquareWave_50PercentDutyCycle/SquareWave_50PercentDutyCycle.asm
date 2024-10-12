; The program generates a square wave of 50% duty cycle with a frequency of 5 kHz on pin P3.4 using Timer 0 in mode 2.

ORG 0000H            ; Set the origin to address 0000H

START: 
    MOV TMOD, #20H   ; Configure Timer 0 in mode 2 (8-bit auto-reload)
    MOV TH0, #67H    ; Load TH0 with the high byte for 5 kHz frequency
    MOV TL0, #67H    ; Load TL0 with the low byte for 5 kHz frequency
    SETB P3.4        ; Set P3.4 as output (initially high)

    SETB TR0         ; Start Timer 0

MAIN_LOOP:
    JNB TF0, MAIN_LOOP  ; Wait for Timer 0 overflow (TF0 is set)

    CLR TF0            ; Clear Timer 0 overflow flag
    CPL P3.4           ; Toggle the state of P3.4
    MOV TH0, #67H      ; Reload TH0 for the next delay
    MOV TL0, #67H      ; Reload TL0 for the next delay
    SJMP MAIN_LOOP     ; Repeat the main loop

END
