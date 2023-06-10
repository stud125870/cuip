.686
.model flat, stdcall
.stack 100h
.data
x dw D5A9h
y dw 31FFh
z dw 5555h
r dd 0
.code
start:
;������� ���������
xor eax, eax
xor ebx, ebx
xor ecx, ecx
xor edx, edx

;����������� ����� ��������
mov cx, 3

;���������� � �� 1
dec x

;������ �����
@cycle:
;����������� � Y ������ X'
	mov ax, y
	add ax, x
	mov y, ax
loop @cycle


;�������� ���������� � �������� ��� �������� ����������
mov ax, y
mov cx, z

;������� �������� ��� M
xor eax, eax

;���������� ��������� ���������
mov ax, x
sub ax, z
add ax, y

;��������� ���������� ���������
cmp ax, 0h

;������� � ��������������� ��������
ja pp1
jbe pp2
pp1:
	add ax, 5
	jmp cont
pp2:
	;���������� M � bx
	mov bx, ax
	;������� ������� 
	xor ax, ax
	;�������� �� 0 �������� M
	sub ax, bx
	;������� bx
	xor bx, bx
	jmp cont
cont:
	cmp ax, 007Dh
	ja adr1
	jbe adr2
adr1:
	mov ebx, 2h
	div ebx
	jmp exit 
adr2:
	or ax, 17D1h
	jmp exit
exit: 
	ret
	end start
