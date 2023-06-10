.686
.model flat, stdcall
.stack 100h
.data
a dd 13
b dd 24
d dd 17
P dd 7
S dd ?
.code
start:

; P = (a + b + c) / 2
mov eax, a 
add eax, b 
add eax, d 
cdq 
sub eax,edx 
sar eax,1 
mov P ,eax 

; sqrt(P * (P - a) * (P - b) * (P - c))
mov eax, P 
sub eax, a 
imul eax, P 
mov ecx, P 
sub ecx, b 
imul eax,ecx 
mov edx, P 
sub edx, d 
imul eax,edx 
mov S, eax

FINIT
FILD S
FSQRT 
FSt S
exit:
ret 
end start