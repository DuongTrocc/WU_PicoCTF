asm1:
	<+0>:	endbr32 
	<+4>:	push   ebp
	<+5>:	mov    ebp,esp
	<+7>:	cmp    DWORD PTR [ebp+0x8],0x3ff
	<+14>:	jg     0x11d6 <asm1+41>
	<+16>:	cmp    DWORD PTR [ebp+0x8],0x295
	<+23>:	jne    0x11ce <asm1+33>
	<+25>:	mov    eax,DWORD PTR [ebp+0x8]
	<+28>:	add    eax,0xd
	<+31>:	jmp    0x11ed <asm1+64>
	<+33>:	mov    eax,DWORD PTR [ebp+0x8]
	<+36>:	sub    eax,0xd
	<+39>:	jmp    0x11ed <asm1+64>
	<+41>:	cmp    DWORD PTR [ebp+0x8],0x57d
	<+48>:	jne    0x11e7 <asm1+58>
	<+50>:	mov    eax,DWORD PTR [ebp+0x8]
	<+53>:	sub    eax,0xd
	<+56>:	jmp    0x11ed <asm1+64>
	<+58>:	mov    eax,DWORD PTR [ebp+0x8]
	<+61>:	add    eax,0xd
	<+64>:	pop    ebp
	<+65>:	ret    
	

