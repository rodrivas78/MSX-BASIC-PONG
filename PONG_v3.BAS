10 'myPONG -  MSX-BASIC - Version 3 by Rodrivas78
20 COLOR15,1,1:DEFINTA-Z:SCREEN2,2,0:OPEN"GRP:"AS#1:LINE(10,10)-(255,10):LINE(255,10)-(255,191):LINE(255,191)-(10,191):LINE(10,191)-(10,10):C=0:D=0:M=85:N=85:A=7:B=3:X=128:Y=80:FORL=11TO255STEP7:PSET(135,L),15:NEXT
120 PSET(190,20),1:PRINT#1,C:PSET(70,20),1:PRINT#1,D:B1$=CHR$(&H3C):S1$=B1$+B1$+B1$:S2$=B1$+B1$+B1$+B1$+B1$+B1$+B1$+B1$:S3$=B1$+B1$+B1$+B1$+B1$+B1$+B1$+B1$:SPRITE$(1)=S1$:SPRITE$(2)=S2$+S2$:SPRITE$(3)=S2$+S2$:PUTSPRITE1,(128,80)
130 PUTSPRITE2,(220,M):PUTSPRITE3,(40,N):SPRITEON
320 S=RND(-TIME)*11
330 IFS<=3THEN390
340 IFS<=6THEN480
350 IFS<=8THEN570
360 IFS>=9THEN660
370 PLAY"G":PSET(70,20),1:COLOR1:PRINT#1,D:D=D+1:PSET(70,20):COLOR15:PRINT#1,D
390 FORG=0TO255:X=X+A:Y=Y+B:GOSUB730
420 IFX>=252THENGOTO460
430 IFY>=189THENGOTO570
440 ONSPRITEGOSUB860:NEXT
460 PLAY"C":PSET(190,20),1:COLOR1:PRINT#1,C
470 C=C+1:PSET(190,20):COLOR15:PRINT#1,C
480 FORG=0TO255:X=X-A:Y=Y+B:GOSUB730
510 IFX<=11THENGOTO370
520 IFY>=189THENGOTO660
530 ONSPRITEGOSUB880:NEXT
550 PLAY"G":PSET(70,20),1:COLOR1:PRINT#1,D
560 D=D+1:PSET(70,20):COLOR15:PRINT#1,D
570 FORG=0TO191:X=X+A:Y=Y-B:GOSUB730
600 IFX>=252THENGOTO640
610 IFY<=11THENGOTO390
620 ONSPRITEGOSUB870:NEXT
640 PLAY"C":PSET(190,20),1:COLOR1:PRINT#1,C
650 C=C+1:PSET(190,20):COLOR15:PRINT#1,C
660 FORG=0TO255:X=X-A:Y=Y-B:GOSUB730
690 IFX<=11THENGOTO550
700 IFY<=11THENGOTO480
710 ONSPRITEGOSUB890:NEXT
730 PUTSPRITE1,(X,Y),15,1:SPRITEON
740 IFC>=7ORD>=7THENGOTO980
750 T=STICK(0)
760 IFT=5THENM=M+9
770 IFT=3THENN=N+9
780 IFT=1THENM=M-9
790 IFT=7THENN=N-9
800 IFM<11THENM=11
810 IFN<11THENN=11
820 IFM>175THENM=175
830 IFN>175THENN=175
840 PUTSPRITE2,(220,M),2,2:PUTSPRITE3,(40,N),15,2:RETURN
860 IFY<=M+4THEN900ELSE910
870 IFY<=M+7THEN920ELSE930
880 IFY<=N+4THEN940ELSE950
890 IFY>=N+7THEN960ELSE970
900 B=5:GOTO660
910 B=2:GOTO480
920 B=2:GOTO660
930 B=5:GOTO480
940 B=5:GOTO570
950 B=2:GOTO390
960 B=5:GOTO390
970 B=2:GOTO570
980 IFC>DTHEN990ELSE1060
990 PSET(87,88),1:COLOR1:PRINT#1,"ÛÛÛÛÛÛÛÛÛ"
1000 PSET(87,95),1:COLOR1:PRINT#1,"ÛÛÛÛÛÛÛÛ"
1010 PSET(80,90),1:COLOR15:PRINT#1,"PLAYER 1 WINS!!!":FOR J=0 TO 1000:NEXT:J=0
1020 FORH=1TO14:PSET(80,90),1:COLOR H:PRINT#1,"PLAYER 1 WINS!!!":NEXT
1050 GOTO 1120
1060 PSET(87,88),1:COLOR1:PRINT#1,"ÛÛÛÛÛÛÛÛÛ"
1070 PSET(87,95),1:COLOR1:PRINT#1,"ÛÛÛÛÛÛÛÛ"
1080 PSET(80,90),1:COLOR15:PRINT#1,"PLAYER 2 WINS!!!":FOR J=0 TO 1000:NEXT:J=0
1090 FORF=1TO14:PSET(80,90),1:COLOR F:PRINT#1,"PLAYER 2 WINS!!!":NEXT
1120 FOR U=1 TO 2000:NEXT
1130 PSET(30,120),1:COLOR 15:KEY OFF:INPUT"                                                                                               PLAY AGAIN?                                                                   (Y)es or (N)o";V$
1140 IF V$="y" OR V$="Y" THEN 1150 ELSE 1160
1150 CLOSE1:GOTO20
1160 END
