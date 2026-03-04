asm4:
	<+0>:	endbr32 								; input = picoCTF_e6ad5
	<+4>:	push   ebp
	<+5>:	mov    ebp,esp
	<+7>:	push   ebx
	<+8>:	sub    esp,0x10
	<+11>:	mov    DWORD PTR [ebp-0x10],0x254		; [ebp - 0x10] = 596
	<+18>:	mov    DWORD PTR [ebp-0xc],0x0
	<+25>:	jmp    0x11cc <asm4+31>
	<+27>:	add    DWORD PTR [ebp-0xc],0x1
	<+31>:	mov    edx,DWORD PTR [ebp-0xc]
	<+34>:	mov    eax,DWORD PTR [ebp+0x8]
	<+37>:	add    eax,edx
	<+39>:	movzx  eax,BYTE PTR [eax]
	<+42>:	test   al,al
	<+44>:	jne    0x11c8 <asm4+27>

	;Từ <+27> đến <+44> là 1 vòng lặp, đếm độ dài chuỗi input => [ebp - 0xc] = 13

	<+46>:	mov    DWORD PTR [ebp-0x8],0x1
	<+53>:	jmp    0x123b <asm4+142>
	<+55>:	mov    edx,DWORD PTR [ebp-0x8]		; edx = 1
	<+58>:	mov    eax,DWORD PTR [ebp+0x8]		; eax = input[0] = p trong picoCTF_e6ad5
	<+61>:	add    eax,edx						; eax = input[1]
	<+63>:	movzx  eax,BYTE PTR [eax]			; eax = i
	<+66>:	movsx  edx,al						; edx = i
	<+69>:	mov    eax,DWORD PTR [ebp-0x8]		; eax = 1
	<+72>:	lea    ecx,[eax-0x1]				; ecx = 0
	<+75>:	mov    eax,DWORD PTR [ebp+0x8]		; eax = input[0]
	<+78>:	add    eax,ecx						; eax = input[0]
	<+80>:	movzx  eax,BYTE PTR [eax]			; eax = p
	<+83>:	movsx  eax,al						; eax = p
	<+86>:	sub    edx,eax						; edx = edx - eax = i - p = 105 - 112 = -7
	<+88>:	mov    eax,edx						; eax = -7
	<+90>:	mov    edx,eax						; edx = -7
	<+92>:	mov    eax,DWORD PTR [ebp-0x10]		; eax = 596
	<+95>:	lea    ebx,[edx+eax*1]				; ebx = 596 - 7 = 589
	<+98>:	mov    eax,DWORD PTR [ebp-0x8]		; eax = 1
	<+101>:	lea    edx,[eax+0x1]				; edx = 2
	<+104>:	mov    eax,DWORD PTR [ebp+0x8]		; 
	<+107>:	add    eax,edx						; eax = 2
	<+109>:	movzx  eax,BYTE PTR [eax]			; eax = input[2]
	<+112>:	movsx  edx,al						; edx = c
	<+115>:	mov    ecx,DWORD PTR [ebp-0x8]		; ecx = 1
	<+118>:	mov    eax,DWORD PTR [ebp+0x8]		; 
	<+121>:	add    eax,ecx						; 
	<+123>:	movzx  eax,BYTE PTR [eax]			; eax = input[1] = i
	<+126>:	movsx  eax,al						; eax = i
	<+129>:	sub    edx,eax						; edx = c - i = 99 - 105 = -6
	<+131>:	mov    eax,edx						; eax = -6
	<+133>:	add    eax,ebx						; eax = 589 - 6 = 583
	<+135>:	mov    DWORD PTR [ebp-0x10],eax		; [ebp - 0x10] = 583
	<+138>:	add    DWORD PTR [ebp-0x8],0x1		; [ebp - 0x8] = 2
	<+142>:	mov    eax,DWORD PTR [ebp-0xc]		; 
	<+145>:	sub    eax,0x1
	<+148>:	cmp    DWORD PTR [ebp-0x8],eax
	<+151>:	jl     0x11e4 <asm4+55>
	<+153>:	mov    eax,DWORD PTR [ebp-0x10]
	<+156>:	add    esp,0x10
	<+159>:	pop    ebx
	<+160>:	pop    ebp
	<+161>:	ret    

