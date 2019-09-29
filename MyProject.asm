
_main:

;MyProject.c,22 :: 		void main() {
;MyProject.c,23 :: 		LCD_Init();
	CALL        _Lcd_Init+0, 0
;MyProject.c,24 :: 		Keypad_Init();
	CALL        _Keypad_Init+0, 0
;MyProject.c,25 :: 		LCD_Chr(1,14,(char)point);
	MOVLW       1
	MOVWF       FARG_Lcd_Chr_row+0 
	MOVLW       14
	MOVWF       FARG_Lcd_Chr_column+0 
	MOVF        _point+0, 0 
	MOVWF       FARG_Lcd_Chr_out_char+0 
	CALL        _Lcd_Chr+0, 0
;MyProject.c,26 :: 		while(1){
L_main0:
;MyProject.c,27 :: 		do
L_main2:
;MyProject.c,28 :: 		kp = Keypad_Key_Click();
	CALL        _Keypad_Key_Click+0, 0
	MOVF        R0, 0 
	MOVWF       _kp+0 
;MyProject.c,29 :: 		while (kp==0);
	MOVF        R0, 0 
	XORLW       0
	BTFSC       STATUS+0, 2 
	GOTO        L_main2
;MyProject.c,30 :: 		switch (kp) {
	GOTO        L_main5
;MyProject.c,31 :: 		case  1:if(arr[0]==1)continue; LCD_out(1,1,"H");kp='H';if(last==kp)arr[0]++; break; // 1
L_main7:
	MOVF        _arr+0, 0 
	XORLW       1
	BTFSS       STATUS+0, 2 
	GOTO        L_main8
	GOTO        L_main0
L_main8:
	MOVLW       1
	MOVWF       FARG_Lcd_Out_row+0 
	MOVLW       1
	MOVWF       FARG_Lcd_Out_column+0 
	MOVLW       ?lstr1_MyProject+0
	MOVWF       FARG_Lcd_Out_text+0 
	MOVLW       hi_addr(?lstr1_MyProject+0)
	MOVWF       FARG_Lcd_Out_text+1 
	CALL        _Lcd_Out+0, 0
	MOVLW       72
	MOVWF       _kp+0 
	MOVF        _last+0, 0 
	XORLW       72
	BTFSS       STATUS+0, 2 
	GOTO        L_main9
	INCF        _arr+0, 1 
L_main9:
	GOTO        L_main6
;MyProject.c,32 :: 		case  2:if(arr[1]==1)continue; LCD_out(1,2,"R");kp='R';if(last==kp)arr[1]++; break; // 2
L_main10:
	MOVF        _arr+1, 0 
	XORLW       1
	BTFSS       STATUS+0, 2 
	GOTO        L_main11
	GOTO        L_main0
L_main11:
	MOVLW       1
	MOVWF       FARG_Lcd_Out_row+0 
	MOVLW       2
	MOVWF       FARG_Lcd_Out_column+0 
	MOVLW       ?lstr2_MyProject+0
	MOVWF       FARG_Lcd_Out_text+0 
	MOVLW       hi_addr(?lstr2_MyProject+0)
	MOVWF       FARG_Lcd_Out_text+1 
	CALL        _Lcd_Out+0, 0
	MOVLW       82
	MOVWF       _kp+0 
	MOVF        _last+0, 0 
	XORLW       82
	BTFSS       STATUS+0, 2 
	GOTO        L_main12
	INCF        _arr+1, 1 
L_main12:
	GOTO        L_main6
;MyProject.c,33 :: 		case  3:if(arr[2]==1)continue; LCD_out(1,3,"J");kp='J';if(last==kp)arr[2]++; break; // 3
L_main13:
	MOVF        _arr+2, 0 
	XORLW       1
	BTFSS       STATUS+0, 2 
	GOTO        L_main14
	GOTO        L_main0
L_main14:
	MOVLW       1
	MOVWF       FARG_Lcd_Out_row+0 
	MOVLW       3
	MOVWF       FARG_Lcd_Out_column+0 
	MOVLW       ?lstr3_MyProject+0
	MOVWF       FARG_Lcd_Out_text+0 
	MOVLW       hi_addr(?lstr3_MyProject+0)
	MOVWF       FARG_Lcd_Out_text+1 
	CALL        _Lcd_Out+0, 0
	MOVLW       74
	MOVWF       _kp+0 
	MOVF        _last+0, 0 
	XORLW       74
	BTFSS       STATUS+0, 2 
	GOTO        L_main15
	INCF        _arr+2, 1 
L_main15:
	GOTO        L_main6
;MyProject.c,34 :: 		case  4:if(arr[0]==1)continue; LCD_out(1,4,"H");kp='H';if(last==kp)arr[0]++; break; // A
L_main16:
	MOVF        _arr+0, 0 
	XORLW       1
	BTFSS       STATUS+0, 2 
	GOTO        L_main17
	GOTO        L_main0
L_main17:
	MOVLW       1
	MOVWF       FARG_Lcd_Out_row+0 
	MOVLW       4
	MOVWF       FARG_Lcd_Out_column+0 
	MOVLW       ?lstr4_MyProject+0
	MOVWF       FARG_Lcd_Out_text+0 
	MOVLW       hi_addr(?lstr4_MyProject+0)
	MOVWF       FARG_Lcd_Out_text+1 
	CALL        _Lcd_Out+0, 0
	MOVLW       72
	MOVWF       _kp+0 
	MOVF        _last+0, 0 
	XORLW       72
	BTFSS       STATUS+0, 2 
	GOTO        L_main18
	INCF        _arr+0, 1 
L_main18:
	GOTO        L_main6
;MyProject.c,35 :: 		case  5:if(arr[3]==1)continue; LCD_out(2,1,"F");kp='F';if(last==kp)arr[3]++; break; // 4
L_main19:
	MOVF        _arr+3, 0 
	XORLW       1
	BTFSS       STATUS+0, 2 
	GOTO        L_main20
	GOTO        L_main0
L_main20:
	MOVLW       2
	MOVWF       FARG_Lcd_Out_row+0 
	MOVLW       1
	MOVWF       FARG_Lcd_Out_column+0 
	MOVLW       ?lstr5_MyProject+0
	MOVWF       FARG_Lcd_Out_text+0 
	MOVLW       hi_addr(?lstr5_MyProject+0)
	MOVWF       FARG_Lcd_Out_text+1 
	CALL        _Lcd_Out+0, 0
	MOVLW       70
	MOVWF       _kp+0 
	MOVF        _last+0, 0 
	XORLW       70
	BTFSS       STATUS+0, 2 
	GOTO        L_main21
	INCF        _arr+3, 1 
L_main21:
	GOTO        L_main6
;MyProject.c,36 :: 		case  6:if(arr[4]==1)continue; LCD_out(2,2,"G");kp='G';if(last==kp)arr[4]++; break; // 5
L_main22:
	MOVF        _arr+4, 0 
	XORLW       1
	BTFSS       STATUS+0, 2 
	GOTO        L_main23
	GOTO        L_main0
L_main23:
	MOVLW       2
	MOVWF       FARG_Lcd_Out_row+0 
	MOVLW       2
	MOVWF       FARG_Lcd_Out_column+0 
	MOVLW       ?lstr6_MyProject+0
	MOVWF       FARG_Lcd_Out_text+0 
	MOVLW       hi_addr(?lstr6_MyProject+0)
	MOVWF       FARG_Lcd_Out_text+1 
	CALL        _Lcd_Out+0, 0
	MOVLW       71
	MOVWF       _kp+0 
	MOVF        _last+0, 0 
	XORLW       71
	BTFSS       STATUS+0, 2 
	GOTO        L_main24
	INCF        _arr+4, 1 
L_main24:
	GOTO        L_main6
;MyProject.c,37 :: 		case  7:if(arr[5]==1)continue; LCD_out(2,3,"A");kp='A';if(last==kp)arr[5]++; break; // 6
L_main25:
	MOVF        _arr+5, 0 
	XORLW       1
	BTFSS       STATUS+0, 2 
	GOTO        L_main26
	GOTO        L_main0
L_main26:
	MOVLW       2
	MOVWF       FARG_Lcd_Out_row+0 
	MOVLW       3
	MOVWF       FARG_Lcd_Out_column+0 
	MOVLW       ?lstr7_MyProject+0
	MOVWF       FARG_Lcd_Out_text+0 
	MOVLW       hi_addr(?lstr7_MyProject+0)
	MOVWF       FARG_Lcd_Out_text+1 
	CALL        _Lcd_Out+0, 0
	MOVLW       65
	MOVWF       _kp+0 
	MOVF        _last+0, 0 
	XORLW       65
	BTFSS       STATUS+0, 2 
	GOTO        L_main27
	INCF        _arr+5, 1 
L_main27:
	GOTO        L_main6
;MyProject.c,38 :: 		case  8:if(arr[6]==1)continue; LCD_out(2,4,"O");kp='O';if(last==kp)arr[6]++; break; // B
L_main28:
	MOVF        _arr+6, 0 
	XORLW       1
	BTFSS       STATUS+0, 2 
	GOTO        L_main29
	GOTO        L_main0
L_main29:
	MOVLW       2
	MOVWF       FARG_Lcd_Out_row+0 
	MOVLW       4
	MOVWF       FARG_Lcd_Out_column+0 
	MOVLW       ?lstr8_MyProject+0
	MOVWF       FARG_Lcd_Out_text+0 
	MOVLW       hi_addr(?lstr8_MyProject+0)
	MOVWF       FARG_Lcd_Out_text+1 
	CALL        _Lcd_Out+0, 0
	MOVLW       79
	MOVWF       _kp+0 
	MOVF        _last+0, 0 
	XORLW       79
	BTFSS       STATUS+0, 2 
	GOTO        L_main30
	INCF        _arr+6, 1 
L_main30:
	GOTO        L_main6
;MyProject.c,39 :: 		case  9:if(arr[1]==1)continue; LCD_out(3,1,"R");kp='R';if(last==kp)arr[1]++; break; // 7
L_main31:
	MOVF        _arr+1, 0 
	XORLW       1
	BTFSS       STATUS+0, 2 
	GOTO        L_main32
	GOTO        L_main0
L_main32:
	MOVLW       3
	MOVWF       FARG_Lcd_Out_row+0 
	MOVLW       1
	MOVWF       FARG_Lcd_Out_column+0 
	MOVLW       ?lstr9_MyProject+0
	MOVWF       FARG_Lcd_Out_text+0 
	MOVLW       hi_addr(?lstr9_MyProject+0)
	MOVWF       FARG_Lcd_Out_text+1 
	CALL        _Lcd_Out+0, 0
	MOVLW       82
	MOVWF       _kp+0 
	MOVF        _last+0, 0 
	XORLW       82
	BTFSS       STATUS+0, 2 
	GOTO        L_main33
	INCF        _arr+1, 1 
L_main33:
	GOTO        L_main6
;MyProject.c,40 :: 		case 10:if(arr[7]==1)continue; LCD_out(3,2,"S");kp='S';if(last==kp)arr[7]++; break; // 8
L_main34:
	MOVF        _arr+7, 0 
	XORLW       1
	BTFSS       STATUS+0, 2 
	GOTO        L_main35
	GOTO        L_main0
L_main35:
	MOVLW       3
	MOVWF       FARG_Lcd_Out_row+0 
	MOVLW       2
	MOVWF       FARG_Lcd_Out_column+0 
	MOVLW       ?lstr10_MyProject+0
	MOVWF       FARG_Lcd_Out_text+0 
	MOVLW       hi_addr(?lstr10_MyProject+0)
	MOVWF       FARG_Lcd_Out_text+1 
	CALL        _Lcd_Out+0, 0
	MOVLW       83
	MOVWF       _kp+0 
	MOVF        _last+0, 0 
	XORLW       83
	BTFSS       STATUS+0, 2 
	GOTO        L_main36
	INCF        _arr+7, 1 
L_main36:
	GOTO        L_main6
;MyProject.c,41 :: 		case 11:if(arr[2]==1)continue; LCD_out(3,3,"J");kp='J';if(last==kp)arr[2]++; break; // 9
L_main37:
	MOVF        _arr+2, 0 
	XORLW       1
	BTFSS       STATUS+0, 2 
	GOTO        L_main38
	GOTO        L_main0
L_main38:
	MOVLW       3
	MOVWF       FARG_Lcd_Out_row+0 
	MOVLW       3
	MOVWF       FARG_Lcd_Out_column+0 
	MOVLW       ?lstr11_MyProject+0
	MOVWF       FARG_Lcd_Out_text+0 
	MOVLW       hi_addr(?lstr11_MyProject+0)
	MOVWF       FARG_Lcd_Out_text+1 
	CALL        _Lcd_Out+0, 0
	MOVLW       74
	MOVWF       _kp+0 
	MOVF        _last+0, 0 
	XORLW       74
	BTFSS       STATUS+0, 2 
	GOTO        L_main39
	INCF        _arr+2, 1 
L_main39:
	GOTO        L_main6
;MyProject.c,42 :: 		case 12:if(arr[6]==1)continue; LCD_out(3,4,"O");kp='O';if(last==kp)arr[6]++; break; // C
L_main40:
	MOVF        _arr+6, 0 
	XORLW       1
	BTFSS       STATUS+0, 2 
	GOTO        L_main41
	GOTO        L_main0
L_main41:
	MOVLW       3
	MOVWF       FARG_Lcd_Out_row+0 
	MOVLW       4
	MOVWF       FARG_Lcd_Out_column+0 
	MOVLW       ?lstr12_MyProject+0
	MOVWF       FARG_Lcd_Out_text+0 
	MOVLW       hi_addr(?lstr12_MyProject+0)
	MOVWF       FARG_Lcd_Out_text+1 
	CALL        _Lcd_Out+0, 0
	MOVLW       79
	MOVWF       _kp+0 
	MOVF        _last+0, 0 
	XORLW       79
	BTFSS       STATUS+0, 2 
	GOTO        L_main42
	INCF        _arr+6, 1 
L_main42:
	GOTO        L_main6
;MyProject.c,43 :: 		case 13:if(arr[4]==1)continue; LCD_out(4,1,"G");kp='G';if(last==kp)arr[4]++; break; // *
L_main43:
	MOVF        _arr+4, 0 
	XORLW       1
	BTFSS       STATUS+0, 2 
	GOTO        L_main44
	GOTO        L_main0
L_main44:
	MOVLW       4
	MOVWF       FARG_Lcd_Out_row+0 
	MOVLW       1
	MOVWF       FARG_Lcd_Out_column+0 
	MOVLW       ?lstr13_MyProject+0
	MOVWF       FARG_Lcd_Out_text+0 
	MOVLW       hi_addr(?lstr13_MyProject+0)
	MOVWF       FARG_Lcd_Out_text+1 
	CALL        _Lcd_Out+0, 0
	MOVLW       71
	MOVWF       _kp+0 
	MOVF        _last+0, 0 
	XORLW       71
	BTFSS       STATUS+0, 2 
	GOTO        L_main45
	INCF        _arr+4, 1 
L_main45:
	GOTO        L_main6
;MyProject.c,44 :: 		case 14:if(arr[5]==1)continue; LCD_out(4,2,"A");kp='A';if(last==kp)arr[5]++; break; // 0
L_main46:
	MOVF        _arr+5, 0 
	XORLW       1
	BTFSS       STATUS+0, 2 
	GOTO        L_main47
	GOTO        L_main0
L_main47:
	MOVLW       4
	MOVWF       FARG_Lcd_Out_row+0 
	MOVLW       2
	MOVWF       FARG_Lcd_Out_column+0 
	MOVLW       ?lstr14_MyProject+0
	MOVWF       FARG_Lcd_Out_text+0 
	MOVLW       hi_addr(?lstr14_MyProject+0)
	MOVWF       FARG_Lcd_Out_text+1 
	CALL        _Lcd_Out+0, 0
	MOVLW       65
	MOVWF       _kp+0 
	MOVF        _last+0, 0 
	XORLW       65
	BTFSS       STATUS+0, 2 
	GOTO        L_main48
	INCF        _arr+5, 1 
L_main48:
	GOTO        L_main6
;MyProject.c,45 :: 		case 15:if(arr[3]==1)continue; LCD_out(4,3,"F");kp='F';if(last==kp)arr[3]++; break; // #
L_main49:
	MOVF        _arr+3, 0 
	XORLW       1
	BTFSS       STATUS+0, 2 
	GOTO        L_main50
	GOTO        L_main0
L_main50:
	MOVLW       4
	MOVWF       FARG_Lcd_Out_row+0 
	MOVLW       3
	MOVWF       FARG_Lcd_Out_column+0 
	MOVLW       ?lstr15_MyProject+0
	MOVWF       FARG_Lcd_Out_text+0 
	MOVLW       hi_addr(?lstr15_MyProject+0)
	MOVWF       FARG_Lcd_Out_text+1 
	CALL        _Lcd_Out+0, 0
	MOVLW       70
	MOVWF       _kp+0 
	MOVF        _last+0, 0 
	XORLW       70
	BTFSS       STATUS+0, 2 
	GOTO        L_main51
	INCF        _arr+3, 1 
L_main51:
	GOTO        L_main6
;MyProject.c,46 :: 		case 16:if(arr[7]==1)continue; LCD_out(4,4,"S");kp='S';if(last==kp)arr[7]++; break; // D
L_main52:
	MOVF        _arr+7, 0 
	XORLW       1
	BTFSS       STATUS+0, 2 
	GOTO        L_main53
	GOTO        L_main0
L_main53:
	MOVLW       4
	MOVWF       FARG_Lcd_Out_row+0 
	MOVLW       4
	MOVWF       FARG_Lcd_Out_column+0 
	MOVLW       ?lstr16_MyProject+0
	MOVWF       FARG_Lcd_Out_text+0 
	MOVLW       hi_addr(?lstr16_MyProject+0)
	MOVWF       FARG_Lcd_Out_text+1 
	CALL        _Lcd_Out+0, 0
	MOVLW       83
	MOVWF       _kp+0 
	MOVF        _last+0, 0 
	XORLW       83
	BTFSS       STATUS+0, 2 
	GOTO        L_main54
	INCF        _arr+7, 1 
L_main54:
	GOTO        L_main6
;MyProject.c,47 :: 		}
L_main5:
	MOVF        _kp+0, 0 
	XORLW       1
	BTFSC       STATUS+0, 2 
	GOTO        L_main7
	MOVF        _kp+0, 0 
	XORLW       2
	BTFSC       STATUS+0, 2 
	GOTO        L_main10
	MOVF        _kp+0, 0 
	XORLW       3
	BTFSC       STATUS+0, 2 
	GOTO        L_main13
	MOVF        _kp+0, 0 
	XORLW       4
	BTFSC       STATUS+0, 2 
	GOTO        L_main16
	MOVF        _kp+0, 0 
	XORLW       5
	BTFSC       STATUS+0, 2 
	GOTO        L_main19
	MOVF        _kp+0, 0 
	XORLW       6
	BTFSC       STATUS+0, 2 
	GOTO        L_main22
	MOVF        _kp+0, 0 
	XORLW       7
	BTFSC       STATUS+0, 2 
	GOTO        L_main25
	MOVF        _kp+0, 0 
	XORLW       8
	BTFSC       STATUS+0, 2 
	GOTO        L_main28
	MOVF        _kp+0, 0 
	XORLW       9
	BTFSC       STATUS+0, 2 
	GOTO        L_main31
	MOVF        _kp+0, 0 
	XORLW       10
	BTFSC       STATUS+0, 2 
	GOTO        L_main34
	MOVF        _kp+0, 0 
	XORLW       11
	BTFSC       STATUS+0, 2 
	GOTO        L_main37
	MOVF        _kp+0, 0 
	XORLW       12
	BTFSC       STATUS+0, 2 
	GOTO        L_main40
	MOVF        _kp+0, 0 
	XORLW       13
	BTFSC       STATUS+0, 2 
	GOTO        L_main43
	MOVF        _kp+0, 0 
	XORLW       14
	BTFSC       STATUS+0, 2 
	GOTO        L_main46
	MOVF        _kp+0, 0 
	XORLW       15
	BTFSC       STATUS+0, 2 
	GOTO        L_main49
	MOVF        _kp+0, 0 
	XORLW       16
	BTFSC       STATUS+0, 2 
	GOTO        L_main52
L_main6:
;MyProject.c,48 :: 		if(nu==0){
	MOVLW       0
	XORWF       _nu+1, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__main59
	MOVLW       0
	XORWF       _nu+0, 0 
L__main59:
	BTFSS       STATUS+0, 2 
	GOTO        L_main55
;MyProject.c,49 :: 		nu=1;
	MOVLW       1
	MOVWF       _nu+0 
	MOVLW       0
	MOVWF       _nu+1 
;MyProject.c,50 :: 		last=kp;
	MOVF        _kp+0, 0 
	MOVWF       _last+0 
;MyProject.c,51 :: 		continue;
	GOTO        L_main0
;MyProject.c,52 :: 		}
L_main55:
;MyProject.c,54 :: 		nu=0;
	CLRF        _nu+0 
	CLRF        _nu+1 
;MyProject.c,55 :: 		if(last==kp)
	MOVF        _last+0, 0 
	XORWF       _kp+0, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L_main57
;MyProject.c,56 :: 		Point++;
	INFSNZ      _point+0, 1 
	INCF        _point+1, 1 
L_main57:
;MyProject.c,57 :: 		Lcd_Cmd(_LCD_CLEAR);
	MOVLW       1
	MOVWF       FARG_Lcd_Cmd_out_char+0 
	CALL        _Lcd_Cmd+0, 0
;MyProject.c,58 :: 		LCD_Chr(1,14,(char)point);
	MOVLW       1
	MOVWF       FARG_Lcd_Chr_row+0 
	MOVLW       14
	MOVWF       FARG_Lcd_Chr_column+0 
	MOVF        _point+0, 0 
	MOVWF       FARG_Lcd_Chr_out_char+0 
	CALL        _Lcd_Chr+0, 0
;MyProject.c,61 :: 		}
	GOTO        L_main0
;MyProject.c,63 :: 		}
L_end_main:
	GOTO        $+0
; end of _main
