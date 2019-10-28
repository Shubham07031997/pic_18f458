
_main:

;chk.c,1 :: 		void main() {
;chk.c,2 :: 		TRISC=0X00;
	CLRF        TRISC+0 
;chk.c,4 :: 		while(1)
L_main0:
;chk.c,6 :: 		PORTC=0X00;
	CLRF        PORTC+0 
;chk.c,7 :: 		delay_ms(100);
	MOVLW       2
	MOVWF       R11, 0
	MOVLW       134
	MOVWF       R12, 0
	MOVLW       153
	MOVWF       R13, 0
L_main2:
	DECFSZ      R13, 1, 1
	BRA         L_main2
	DECFSZ      R12, 1, 1
	BRA         L_main2
	DECFSZ      R11, 1, 1
	BRA         L_main2
;chk.c,9 :: 		PORTC=0xff;
	MOVLW       255
	MOVWF       PORTC+0 
;chk.c,10 :: 		delay_ms(100);
	MOVLW       2
	MOVWF       R11, 0
	MOVLW       134
	MOVWF       R12, 0
	MOVLW       153
	MOVWF       R13, 0
L_main3:
	DECFSZ      R13, 1, 1
	BRA         L_main3
	DECFSZ      R12, 1, 1
	BRA         L_main3
	DECFSZ      R11, 1, 1
	BRA         L_main3
;chk.c,11 :: 		}
	GOTO        L_main0
;chk.c,13 :: 		}
L_end_main:
	GOTO        $+0
; end of _main
