
_main:

;switch.c,2 :: 		void main() {
;switch.c,3 :: 		int i=0,j,switch1;
;switch.c,4 :: 		TRISC=0x00;
	CLRF        TRISC+0 
;switch.c,5 :: 		TRISB=0xff;
	MOVLW       255
	MOVWF       TRISB+0 
;switch.c,6 :: 		PORTB=0xff;
	MOVLW       255
	MOVWF       PORTB+0 
;switch.c,7 :: 		while(1)
L_main0:
;switch.c,8 :: 		{     switch1=PORTB & 0x01;
	MOVLW       1
	ANDWF       PORTB+0, 0 
	MOVWF       R1 
	CLRF        R2 
	MOVLW       0
	ANDWF       R2, 1 
	MOVLW       0
	MOVWF       R2 
;switch.c,9 :: 		if(switch1==0)
	MOVLW       0
	XORWF       R2, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__main5
	MOVLW       0
	XORWF       R1, 0 
L__main5:
	BTFSS       STATUS+0, 2 
	GOTO        L_main2
;switch.c,11 :: 		led=0xff;
	MOVLW       255
	MOVWF       PORTC+0 
;switch.c,12 :: 		}
	GOTO        L_main3
L_main2:
;switch.c,15 :: 		led=0x00;
	CLRF        PORTC+0 
;switch.c,16 :: 		}
L_main3:
;switch.c,17 :: 		}
	GOTO        L_main0
;switch.c,18 :: 		}
L_end_main:
	GOTO        $+0
; end of _main
