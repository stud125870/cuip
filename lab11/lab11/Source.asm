.686
.model flat,stdcall
.stack 100h
.data
X dw -103
Y dw -12
M dw 0
.code
ExitProcess PROTO STDCALL :DWORD

Start:
mov ax,Y 
imul ax,4
mov bx,X
sub bx,ax
xor bx,Y
mov m,bx
exit:
Invoke ExitProcess,M
End Start