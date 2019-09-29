#line 1 "D:/BosyCat/FCI/4th year/2nd Term/Embedded System/Guide_For_Project/Logic/MyProject.c"

sbit LCD_RS at RB0_bit;
sbit LCD_EN at RB1_bit;
sbit LCD_D4 at RB2_bit;
sbit LCD_D5 at RB3_bit;
sbit LCD_D6 at RB4_bit;
sbit LCD_D7 at RB5_bit;


sbit LCD_RS_Direction at TRISB0_bit;
sbit LCD_EN_Direction at TRISB1_bit;
sbit LCD_D4_Direction at TRISB2_bit;
sbit LCD_D5_Direction at TRISB3_bit;
sbit LCD_D6_Direction at TRISB4_bit;
sbit LCD_D7_Direction at TRISB5_bit;
char keypadPort at PORTD;
char kp;
char last;
int point=0;
int nu=0;
char arr[8];
void main() {
 LCD_Init();
 Keypad_Init();
 LCD_Chr(1,14,(char)point);
 while(1){
 do
 kp = Keypad_Key_Click();
 while (kp==0);
 switch (kp) {
 case 1:if(arr[0]==1)continue; LCD_out(1,1,"H");kp='H';if(last==kp)arr[0]++; break;
 case 2:if(arr[1]==1)continue; LCD_out(1,2,"R");kp='R';if(last==kp)arr[1]++; break;
 case 3:if(arr[2]==1)continue; LCD_out(1,3,"J");kp='J';if(last==kp)arr[2]++; break;
 case 4:if(arr[0]==1)continue; LCD_out(1,4,"H");kp='H';if(last==kp)arr[0]++; break;
 case 5:if(arr[3]==1)continue; LCD_out(2,1,"F");kp='F';if(last==kp)arr[3]++; break;
 case 6:if(arr[4]==1)continue; LCD_out(2,2,"G");kp='G';if(last==kp)arr[4]++; break;
 case 7:if(arr[5]==1)continue; LCD_out(2,3,"A");kp='A';if(last==kp)arr[5]++; break;
 case 8:if(arr[6]==1)continue; LCD_out(2,4,"O");kp='O';if(last==kp)arr[6]++; break;
 case 9:if(arr[1]==1)continue; LCD_out(3,1,"R");kp='R';if(last==kp)arr[1]++; break;
 case 10:if(arr[7]==1)continue; LCD_out(3,2,"S");kp='S';if(last==kp)arr[7]++; break;
 case 11:if(arr[2]==1)continue; LCD_out(3,3,"J");kp='J';if(last==kp)arr[2]++; break;
 case 12:if(arr[6]==1)continue; LCD_out(3,4,"O");kp='O';if(last==kp)arr[6]++; break;
 case 13:if(arr[4]==1)continue; LCD_out(4,1,"G");kp='G';if(last==kp)arr[4]++; break;
 case 14:if(arr[5]==1)continue; LCD_out(4,2,"A");kp='A';if(last==kp)arr[5]++; break;
 case 15:if(arr[3]==1)continue; LCD_out(4,3,"F");kp='F';if(last==kp)arr[3]++; break;
 case 16:if(arr[7]==1)continue; LCD_out(4,4,"S");kp='S';if(last==kp)arr[7]++; break;
 }
 if(nu==0){
 nu=1;
 last=kp;
 continue;
 }
 else{
 nu=0;
 if(last==kp)
 Point++;
 Lcd_Cmd(_LCD_CLEAR);
 LCD_Chr(1,14,(char)point);

 }
 }

}
