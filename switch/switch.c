#define led PORTC
void main() {
  int i=0,j,switch1;
  TRISC=0x00;
  TRISB=0xff;
  PORTB=0xff;
  while(1)
  {     switch1=PORTB & 0x01;
    if(switch1==0)
    {
      led=0xff;
      }
      else
      {
        led=0x00;
      }
  }
}