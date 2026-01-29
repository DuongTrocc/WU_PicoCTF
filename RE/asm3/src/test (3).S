asm3:
	<+0>:	endbr32 						;input = (0xb75a8f13(0x8),0xe1860bd7(0xc),0xc8e62f81(0x10))
	<+4>:	push   ebp
	<+5>:	mov    ebp,esp
	<+7>:	xor    eax,eax					; eax = 0
	<+9>:	mov    ah,BYTE PTR [ebp+0x9]	; ah = 0x8f
	<+12>:	shl    ax,0x10					; ax = 0
	<+16>:	sub    al,BYTE PTR [ebp+0xf]	; al = 0x1f
	<+19>:	add    ah,BYTE PTR [ebp+0xd]	; ah = 0 + 0x0b = 0x0b
	<+22>:	xor    ax,WORD PTR [ebp+0x12]	; ax = 0xc3f9
	<+26>:	nop
	<+27>:	pop    ebp
	<+28>:	ret    

