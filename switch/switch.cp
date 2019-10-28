#line 1 "C:/Users/aman/Desktop/picprogrammes/pic18f458/switch/switch.c"

void main() {
 int i=0,j,switch1;
 TRISC=0x00;
 TRISB=0xff;
 PORTB=0xff;
 while(1)
 { switch1=PORTB & 0x01;
 if(switch1==0)
 {
  PORTC =0xff;
 }
 else
 {
  PORTC =0x00;
 }
 }
}
