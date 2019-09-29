#include <stdlib.h>
sbit LCD_RS at RB0_bit;
sbit LCD_EN at RB1_bit;
sbit LCD_D4 at RB2_bit;
sbit LCD_D5 at RB3_bit;
sbit LCD_D6 at RB4_bit;
sbit LCD_D7 at RB5_bit;

// Pin direction
sbit LCD_RS_Direction at TRISB0_bit;
sbit LCD_EN_Direction at TRISB1_bit;
sbit LCD_D4_Direction at TRISB2_bit;
sbit LCD_D5_Direction at TRISB3_bit;
sbit LCD_D6_Direction at TRISB4_bit;
sbit LCD_D7_Direction at TRISB5_bit;
void delay(){
     int ca,da;
   for (ca = 1; ca <= 327; ca++)
       for (da = 1; da <= 100; da++)
       {}
}
char  keypadPort at PORTD;
char buffer[5];
char kp,lastkp;
char last;
int point=0;
int nu=0;
char arr[8]={0,0,0,0,0,0,0,0};
int pos=1;
void main() {
     LCD_Init();
     Keypad_Init();
     LCD_out(1,1,"????");
     LCD_out(2,1,"????");
     LCD_out(3,1,"????");
     LCD_out(4,1,"????");
     LCD_out(1,13,"p");
     LCD_Chr(1,14,point+'0');
     do
       kp = Keypad_Key_Click();
     while (kp==13);
     while(1){
           do
              kp = Keypad_Key_Click();
           while (!kp);
           if(kp==6){
               switch (pos) {
                  case  1:if(arr[0]==1)continue; LCD_out(1,1,"H");kp='H';if(last==kp)arr[0]++; break; // 1
                  case  2:if(arr[1]==1)continue; LCD_out(1,2,"R");kp='R';if(last==kp)arr[1]++; break; // 2
                  case  3:if(arr[2]==1)continue; LCD_out(1,3,"J");kp='J';if(last==kp)arr[2]++; break; // 3
                  case  4:if(arr[0]==1)continue; LCD_out(1,4,"H");kp='H';if(last==kp)arr[0]++; break; // A
                  case  5:if(arr[3]==1)continue; LCD_out(2,1,"F");kp='F';if(last==kp)arr[3]++; break; // 4
                  case  6:if(arr[4]==1)continue; LCD_out(2,2,"G");kp='G';if(last==kp)arr[4]++; break; // 5
                  case  7:if(arr[5]==1)continue; LCD_out(2,3,"A");kp='A';if(last==kp)arr[5]++; break; // 6
                  case  8:if(arr[6]==1)continue; LCD_out(2,4,"O");kp='O';if(last==kp)arr[6]++; break; // B
                  case  9:if(arr[1]==1)continue; LCD_out(3,1,"R");kp='R';if(last==kp)arr[1]++; break; // 7
                  case 10:if(arr[7]==1)continue; LCD_out(3,2,"S");kp='S';if(last==kp)arr[7]++; break; // 8
                  case 11:if(arr[2]==1)continue; LCD_out(3,3,"J");kp='J';if(last==kp)arr[2]++; break; // 9
                  case 12:if(arr[6]==1)continue; LCD_out(3,4,"O");kp='O';if(last==kp)arr[6]++; break; // C
                  case 13:if(arr[4]==1)continue; LCD_out(4,1,"G");kp='G';if(last==kp)arr[4]++; break; // *
                  case 14:if(arr[5]==1)continue; LCD_out(4,2,"A");kp='A';if(last==kp)arr[5]++; break; // 0
                  case 15:if(arr[3]==1)continue; LCD_out(4,3,"F");kp='F';if(last==kp)arr[3]++; break; // #
                  case 16:if(arr[7]==1)continue; LCD_out(4,4,"S");kp='S';if(last==kp)arr[7]++; break; // D
               }
           }else{
               if(kp==7){
                  if(pos==16)pos=1;
                  else pos++;
               }else if(kp==5){
                  if(pos==1)pos=16;
                  else pos--;
               }else if(kp==2){
                  if(pos==1||pos==2||pos==3||pos==4)pos+=12;
                  else pos-=4;
               }else if(kp==10){
                  if(pos==13||pos==14||pos==15||pos==16)pos-=12;
                  else pos+=4;
               }
               switch (pos) {
                  case  1:LCD_out(1,1,"?"); break; // 1
                  case  2:LCD_out(1,2,"?"); break; // 2
                  case  3:LCD_out(1,3,"?"); break; // 3
                  case  4:LCD_out(1,4,"?"); break; // A
                  case  5:LCD_out(2,1,"?"); break; // 4
                  case  6:LCD_out(2,2,"?"); break; // 5
                  case  7:LCD_out(2,3,"?"); break; // 6
                  case  8:LCD_out(2,4,"?"); break; // B
                  case  9:LCD_out(3,1,"?"); break; // 7
                  case 10:LCD_out(3,2,"?"); break; // 8
                  case 11:LCD_out(3,3,"?"); break; // 9
                  case 12:LCD_out(3,4,"?"); break; // C
                  case 13:LCD_out(4,1,"?"); break; // *
                  case 14:LCD_out(4,2,"?"); break; // 0
                  case 15:LCD_out(4,3,"?"); break; // #
                  case 16:LCD_out(4,4,"?"); break;
               }
               continue;
           }
           if(nu==0){
              nu=1;
              last=kp;
              continue;
           }
           else{
              nu=0;
              delay();
              //Lcd_Cmd(_LCD_CLEAR);
              if(last==kp){
                  Point++;
                  LCD_out(3,10,"point");
                  delay();
                  LCD_out(1,1,"????");
                  LCD_out(2,1,"????");
                  LCD_out(3,1,"????");
                  LCD_out(4,1,"????");
              }
              else{
                   LCD_out(3,10,"fail ");
                   LCD_out(1,1,"????");
                   LCD_out(2,1,"????");
                   LCD_out(3,1,"????");
                   LCD_out(4,1,"????");
              }
              LCD_Chr(1,14,point+'0');

           }
    }

}