include irvine32.inc
.386
.model flat ,stdcall
.stack 4096
Exitprocess Proto,dwExitCode:dword
 .data


 str1 DB "Enter the Word you want to guess : ",0 
str2 DB "Try left are : ",0
     options_str DB "1.Start Game ",0dh,0ah
                 DB "2. Instructions",0dh,0ah
    DB "3. Exit",0dh,0ah
DB "Enter commond : ",0dh,0ah,0
instructions_str DB "1. Exit the Game by entering 0(Zero)",0dh,0ah
                 DB "2.Search the word in the given bliock of Alphabets",0dh,0ah
DB "3.You must enter in Small Alphabets   ",0dh,0ah
DB "4. Each guessing word has one point", 0dh,0ah,0


display_in_level1 DB "                                   Crossword ",0dh,0ah,0dh,0ah
                  DB "                      Level # 1",0dh,0ah
 DB "In this level you can guess words fives times",0dh,0ah,0dh,0ah,0
 display_points DB "Your points are :",0
  points DW 0
  COUNTER DD 4
    size_r DD 100
  get_string DB 100 DUP (?)
     check_1 DB ?
 check_2 DB ?
 check_3 DB ?
     check_4 DB ?
	  check_5 DB ?
 check_6 DB ?
 check_7 DB ?
     check_8 DB ?
	  check_9 DB ?
 array1 DB "fast",0
 arr1_l DD $-array1
 array2 DB "spot",0
 arr2_l DD $-array2
 array3 DB "apple",0
 arr3_l DD $-array3
 array4 DB "chat",0
 arr4_l DD $-array4
 
 
 check_Msg DB "You already guess this Word ",0
         captionC DB "Already Guess",0


 Level1_board    DB  "       | F | A | S | T | X | S |",0dh,0ah
                 DB  "       | Z | S | P | O | T | H |",0dh,0ah
DB  "       | C | X | Y | U | P | O |",0dh,0ah
DB  "       | A | X | X | C | L | U |",0dh,0ah
DB  "       | M | Y | C | H | A | T |",0dh,0ah
DB  "       | A | P | P | L | E | F |",0dh,0ah,0

 
 display_in_level2 DB "                                   Crossword ",0dh,0ah,0dh,0ah
                  DB "                      Level # 2",0dh,0ah
 DB "In this level you can guess words nine times",0dh,0ah,0dh,0ah,0
 get2_string  db 100 dup (?)
 counter2 dd 7
 word1 DB "value",0
 w1_l DD $-word1

 word2 DB "employee",0
 w2_l DD $-word2

 word3 DB "success",0
 w3_l DD $-word3

 word4 DB "law",0
 w4_l DD $-word4


 word5 DB "virus",0
 w5_l DD $-word5

 word6 DB "accept",0
 w6_l DD $-word6


 word7 DB "data",0
 w7_l DD $-word7




 Level2_board           DB"     |B|X||Y||L|M|D|B|Y|X|",0dh,0ah
						DB"     |C|D|X|S|O|E|C|Z|A|",0dh,0ah 
						DB"     |V|A|L|U|E|M|M|L|O|",0dh,0ah  
						DB"     |Y|T|S|C|E|P|X|P|A|",0dh,0ah  
						DB"     |C|A|S|C|V|L|Y|Q|C|",0dh,0ah  
						DB"     |L|A|W|E|I|O|N|S|C|",0dh,0ah  
						DB"     |Z|M|S|S|R|Y|W|Z|E|",0dh,0ah  
						DB"     |X|A|M|S|U|E|V|R|P|",0dh,0ah 
						DB"     |M|B|C|Y|S|E|U|T|T|",0dh,0ah,0

youlose db "------------------!  You lose  !------------------------",0dh,0ah
        db "------------------!   End Game !------------------------",0

		youwon db "------------------!  You won  !------------------------",0dh,0ah
        db "------------------!   End Game !------------------------",0

 
 display_in_level3 DB "                                   Crossword ",0dh,0ah,0dh,0ah
                  DB "                      Level # 3",0dh,0ah
 DB "In this level you can guess words nine times",0dh,0ah,0dh,0ah,0
 display1_points DB "Your points are :",0
 counter1 dd 9
 
    size1_r DD 100
  get1_string DB 100 DUP (?)
     ch1 DB ?
 ch2 DB ?
 ch3 DB ?
     ch4 DB ?
	  ch5 DB ?
 ch6 DB ?
 ch7 DB ?
     ch8 DB ?
	  ch9 DB ?
;words for level 3
letter1 DB "hilt",0
 letter1_l DD $-letter1
 letter2 DB "mazer",0
 letter2_l DD $-letter2
 letter3 DB "bus",0
 letter3_l DD $-letter3
 letter4 DB "hell",0
 letter4_l DD $-letter4
 letter5 DB "barbican",0
 letter5_l DD $-letter5
 letter6 DB "half",0
 letter6_l DD $-letter6
 letter7 DB "penny",0
 letter7_l DD $-letter7
 letter8 DB "cordwainer",0
 letter8_l DD $-letter8
 letter9 DB "loat",0
 letter9_l DD $-letter9

 
 

 
      Level3_board    DB  "       | R | Z | Q | O | K | D | S | I | B | D | Y |",0dh,0ah
					  DB  "       | Q | R | F | K | L | W | S | A | R | E | N |",0dh,0ah 
					  DB  "       | N | N | K | M | Q | D | R | E | E | J | N |",0dh,0ah
					  DB  "       | M | G | R | C | A | B | L | B | N | H | E |",0dh,0ah
					  DB  "       | A | P | L | L | I | Z | U | O | I | Q | P |",0dh,0ah 
					  DB  "       | T | J | M | C | Q | S | E | U | A | N | F |",0dh,0ah 
					  DB  "       | J | M | A | Z | H | S | U | R | W | T | L |",0dh,0ah 
					  DB  "       | F | N | N | E | H | Q | E | S | D | Q | A |",0dh,0ah 
					  DB  "       | T | H | L | I | O | K | C | A | R | D | H |",0dh,0ah 
					  DB  "       | X | L | L | N | C | T | J | U | O | J | S |",0dh,0ah
				      DB  "       | V | T | B | X | V | K | V | A | C | T | N |",0dh,0ah 


















 
.code
main proc
mov eax ,blue
call settextcolor

while1:
mov ecx ,lengthof options_str
mov edx,offset options_str
call writestring
mov eax,0
call readDec
cmp al,1
JNZ option1_exit
call Level1
jmp next1
option1_exit:
cmp al ,2
JNZ option2_exit
call Instructions
mov eax ,blue
call settextcolor
jmp next2
option2_exit:
cmp al ,3
JZ option3_exit
next2:
jmp  while1
next1:
option3_exit:

 
invoke exitProcess,0
main endp

Instructions proc
mov eax ,green
call settextcolor
call crlf
mov ecx ,lengthof instructions_str
mov edx,offset instructions_str
call writestring
call crlf
RET
Instructions endp
;______________________________________________
;---------------------------------------------
menu proc


menu endp
;_____________________________________________

;---------------------------------------------
LEVEL1 proc

mov ecx ,lengthof display_in_level1
mov edx,offset display_in_level1
call writestring
call crlf
mov ecx ,lengthof Level1_board
mov edx,offset Level1_board
call writestring
mov eax,0
call Main_Portion_level1
RET
LEVEL1 endp
;_____________________________________________

;_____________________________________________
;---------------------------------------------

LEVEL2 proc
mov ecx ,lengthof display_in_level2
mov edx,offset display_in_level2
call writestring
call crlf
mov ecx ,lengthof Level2_board
mov edx,offset Level2_board
call writestring
mov eax,0
call Main_Portion_level2
RET
LEVEL2 endp
;_____________________________________________
;---------------------------------------------
LEVEL3 proc
mov ecx ,lengthof display_in_level3
mov edx,offset display_in_level3
call writestring
call crlf
mov ecx ,lengthof Level3_board
mov edx,offset Level3_board
call writestring
mov eax,0
call Main_Portion_level3
RET



LEVEL3 endp


;---------------------------------------------

;_____________________________________________

Main_Portion_level1 proc
mov check_1,1
mov check_2,1
mov check_3,1
mov check_4,1
mov ecx ,4

loop1:
mov ecx ,lengthof display_points
mov edx,offset display_points
call writestring

mov eax,0
mov ax,points
call writeDec
call crlf

mov ecx ,lengthof str2
mov edx,offset str2
call writestring
mov eax,0
mov EAX,COUNTER
call writeDec

call crlf
mov ecx ,lengthof str1
mov edx,offset str1
call writestring

mov edx,offset get_string
mov ecx ,size_r
call ReadString

; ARRAY1################
mov al,check_1
cmp al,1
JNE jc1
mov esi,OFFSET get_string
mov edi,OFFSET array1
cld
mov ecx,arr1_l
repe cmpsb
JNZ check_arr1
inc points
mov check_1,0

jmp next1
jc1:
 ;Display stop icon with OK button
 ;INVOKE MessageBox, NULL, ADDR check_Msg,
 ; ADDR captionC,
  ;MB_OK + MB_ICONSTOP

check_arr1:



; ARRAY2################
mov al,check_2
cmp al,1
JNE jc2
mov esi,OFFSET get_string
mov edi,OFFSET array2
cld
mov ecx,arr2_l
repe cmpsb
JNZ check_arr2
inc points
mov check_2,0
jmp next2
check_arr2:
jc2:



; ARRAY3################
mov al,check_3
cmp al,1
JNE jc3
mov esi,OFFSET get_string
mov edi,OFFSET array3
cld
mov ecx,arr3_l
repe cmpsb
JNZ check_arr3
inc points
mov check_3,0

jmp next3
check_arr3:
jc3:


; ARRAY4################
mov al,check_4
cmp al,1
JNE jc4
mov esi,OFFSET get_string
mov edi,OFFSET array4
cld
mov ecx,arr4_l
repe cmpsb
JNZ check_arr4
inc points
mov check_4,0

jmp next4
check_arr4:
jc4:


next1:
next2:
next3:
next4:
sub counter ,1
mov eax,COUNTER
cmp eax,0
 JA loop1
 mov eax,0
 mov ax,points
 
 cmp eax,4
 JNE jmpp
 call level2 
 jmpp:
 mov ecx ,lengthof youlose
mov edx,offset youlose
call writestring
RET
Main_Portion_level1 endp




Main_Portion_level2 proc
mov ch1,1
mov ch2,1
mov ch3,1
mov ch4,1
mov ch5,1
mov ch6,1
mov ch7,1
loop2:
mov ecx ,lengthof display_points
mov edx,offset display_points
call writestring

mov eax,0
mov ax,points
call writeDec
call crlf

mov ecx ,lengthof str2
mov edx,offset str2
call writestring
mov eax,0
mov EAX,COUNTER2
call writeDec

call crlf
mov ecx ,lengthof str1
mov edx,offset str1
call writestring

mov edx,offset get2_string
mov ecx ,size_r
call ReadString

; Word1################
mov al,ch1
cmp al,1
JNE jc1
mov esi,OFFSET get2_string
mov edi,OFFSET word1
cld
mov ecx,w1_l
repe cmpsb
JNZ check_word1
inc points
mov ch1,0
jmp next_1
check_word1:
jc1:

; Word2################
mov al,ch2
cmp al,1
JNE jc2
mov esi,OFFSET get2_string
mov edi,OFFSET word2
cld
mov ecx,w2_l
repe cmpsb
JNZ check_word2
inc points
mov ch2,0
jmp next_2
check_word2:
jc2:

; Word3################
mov al,ch3
cmp al,1
JNE jc3
mov esi,OFFSET get2_string
mov edi,OFFSET word3
cld
mov ecx,w3_l
repe cmpsb
JNZ check_word3
inc points
mov ch3,0
jmp next_3
check_word3:
jc3:


; Word4################
mov al,ch4
cmp al,1
JNE jc4
mov esi,OFFSET get2_string
mov edi,OFFSET word4
cld
mov ecx,w4_l
repe cmpsb
JNZ check_word4
inc points
mov ch4,0
jmp next_4
check_word4:
jc4:

; Word5################
mov al,ch5
cmp al,1
JNE jc5
mov esi,OFFSET get2_string
mov edi,OFFSET word5
cld
mov ecx,w5_l
repe cmpsb
JNZ check_word5
inc points
mov ch1,0
jmp next_5
check_word5:
jc5:

; Word6################
mov al,ch6
cmp al,1
JNE jc6
mov esi,OFFSET get2_string
mov edi,OFFSET word6
cld
mov ecx,w6_l
repe cmpsb
JNZ check_word6
inc points
mov ch6,0
jmp next_6
check_word6:
jc6:

; Word7################
mov al,ch7
cmp al,1
JNE jc7
mov esi,OFFSET get2_string
mov edi,OFFSET word7
cld
mov ecx,w7_l
repe cmpsb
JNZ check_word7
inc points
mov ch7,0
jmp next_7
check_word7:
jc7:

next_1:
next_2:
next_3:
next_4:
next_5:
next_6:
next_7:
sub counter2,1
mov eax,COUNTER2
cmp eax,0
 JA loop2

 mov eax,0
 mov ax,points
 cmp eax,11
 JNE jmpp1
 call level3 
 jmpp1:

 mov ecx ,lengthof youlose
mov edx,offset youlose
call writestring
Ret

Main_Portion_level2 endp



Main_Portion_level3 proc
mov ch1,1
mov ch2,1
mov ch3,1
mov ch4,1
mov ch5,1
mov ch6,1
mov ch7,1
mov ch8,1
mov ch9,1

mov ecx ,9
loop1:
mov ecx ,lengthof display1_points
mov edx,offset display1_points
call writestring
mov eax,0
mov ax,points
call writeDec
call crlf
mov ecx ,lengthof str2
mov edx,offset str2
call writestring
mov eax,0
mov EAX,COUNTER1
call writeDec
call crlf
mov ecx ,lengthof str1
mov edx,offset str1
call writestring
mov edx,offset get1_string
mov ecx ,size1_r
call ReadString
; letter1################
mov al,ch1
cmp al,1
JNE jc11
mov esi,OFFSET get1_string
mov edi,OFFSET letter1
cld
mov ecx,letter1_l
repe cmpsb
JNZ check_letter1
inc points
mov ch1,0
jmp next11
check_letter1:
jc11:

; letter2################
mov al,ch2
cmp al,1
JNE jc21
mov esi,OFFSET get1_string
mov edi,OFFSET letter2
cld
mov ecx,letter2_l
repe cmpsb
JNZ check_letter2
inc points
mov ch2,0
jmp next22
check_letter2:
jc21:

; letter3################
mov al,ch3
cmp al,1
JNE jc33
mov esi,OFFSET get1_string
mov edi,OFFSET letter3
cld
mov ecx,letter3_l
repe cmpsb
JNZ check_letter3
inc points
mov check_3,0
jmp next33
check_letter3:
jc33:

; letter4################
mov al,ch4
cmp al,1
JNE jc44
mov esi,OFFSET get1_string
mov edi,OFFSET letter4
cld
mov ecx,letter4_l
repe cmpsb
JNZ check_letter4
inc points
mov check_4,0
jmp next44
check_letter4:
jc44:


; letter5################
mov al,ch5
cmp al,1
JNE jc5
mov esi,OFFSET get1_string
mov edi,OFFSET letter5
cld
mov ecx,letter5_l
repe cmpsb
JNZ check_letter5
inc points
mov ch5,0
jmp next5
check_letter5:
jc5:


; letter6################
mov al,ch6
cmp al,1
JNE jc6
mov esi,OFFSET get1_string
mov edi,OFFSET letter6
cld
mov ecx,letter6_l
repe cmpsb
JNZ check_letter6
inc points
mov ch6,0
jmp next6
check_letter6:
jc6:

; letter7################
mov al,ch7
cmp al,1
JNE jc7
mov esi,OFFSET get1_string
mov edi,OFFSET letter7
cld
mov ecx,letter7_l
repe cmpsb
JNZ check_letter7
inc points
mov ch7,0
jmp next7
check_letter7:
jc7:

; letter8################
mov al,ch8
cmp al,1
JNE jc8
mov esi,OFFSET get1_string
mov edi,OFFSET letter8
cld
mov ecx,letter8_l
repe cmpsb
JNZ check_letter8
inc points
mov ch8,0
jmp next8
check_letter8:
jc8:


; letter9################
mov al,ch9
cmp al,1
JNE jc9
mov esi,OFFSET get1_string
mov edi,OFFSET letter9
cld
mov ecx,letter9_l
repe cmpsb
JNZ check_letter9
inc points
mov ch9,0
jmp next9
check_letter9:
jc9:

next11:
next22:
next33:
next44:
next5:
next6:
next7:
next8:
next9:
sub counter1 ,1
mov eax,COUNTER1
cmp eax,0
 JA loop1
 mov eax,01

mov ax,points
cmp ax,20
Jne checking
mov ecx ,lengthof youwon
mov edx,offset youwon
call writestring
jmp endgame
checking:
mov ecx ,lengthof youlose
mov edx,offset youlose
call writestring
endgame:

RET
Main_Portion_level3 endp




end main
