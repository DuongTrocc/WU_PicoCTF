asm2:
	<+0>:	endbr32 							; input = 0xc(12),0x1d(29)
	<+4>:	push   ebp
	<+5>:	mov    ebp,esp
	<+7>:	sub    esp,0x10						; esp - 16
	<+10>:	mov    eax,DWORD PTR [ebp+0xc]		; ebp + 12		eax = 29
	<+13>:	mov    DWORD PTR [ebp-0x4],eax		; ebp - 4		-> biến 1 = 29
	<+16>:	mov    eax,DWORD PTR [ebp+0x8]		; ebp + 8		eax = 12
	<+19>:	mov    DWORD PTR [ebp-0x8],eax		; ebp - 8		-> biến 2 = 12
	<+22>:	jmp    0x11d0 <asm2+35>
	<+24>:	add    DWORD PTR [ebp-0x4],0x1		; tăng biến 1 thêm 1
	<+28>:	add    DWORD PTR [ebp-0x8],0xe4		; tăng biến 2 thêm 228
	<+35>:	cmp    DWORD PTR [ebp-0x8],0xf5cf	; (62927)so sánh với biến 2
	<+42>:	jle    0x11c5 <asm2+24>				; 12 < 62927 -> nhảy lên <+24>
												; lặp 276 lần
	<+44>:	mov    eax,DWORD PTR [ebp-0x4]		; kết quả cuối cùng biến 1 là 305 (0x120)
	<+47>:	leave  
	<+48>:	ret    

