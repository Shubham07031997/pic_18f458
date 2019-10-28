void main() {
TRISC=0X00;

   while(1)
   {
     PORTC=0X00;
     delay_ms(100);

     PORTC=0xff;
    delay_ms(100);
   }

}
