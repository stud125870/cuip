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
;Очистка регистров
xor eax, eax
xor ebx, ebx
xor ecx, ecx
xor edx, edx

;Определения числа итераций
mov cx, 3

;Уменьшение Х на 1
dec x

;Начало цикла
@cycle:
;Прибавление к Y нового X'
	mov ax, y
	add ax, x
	mov y, ax
loop @cycle


;Загрузка переменных в регистры для проверки результата
mov ax, y
mov cx, z

;Очистка регистра под M
xor eax, eax

;Вычисление заданного выражения
mov ax, x
sub ax, z
add ax, y

;Сравнение результата выражения
cmp ax, 0h

;Переход к соответствующим участкам
ja pp1
jbe pp2
pp1:
	add ax, 5
	jmp cont
pp2:
	;Перемещаем M в bx
	mov bx, ax
	;Очищаем регистр 
	xor ax, ax
	;Вычитаем из 0 значение M
	sub ax, bx
	;Очищаем bx
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
