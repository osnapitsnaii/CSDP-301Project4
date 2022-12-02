// Najla Evans		CSDP301		Project 4
.386
.model flat, c
.code

CalculateSum	proc
				push ebp
				mov ebp, esp
				push eax		; a = eax, b = ebx, c = ecx
				mov eax, [ebp + 8]	; eax = a 
				mov ebx, [ebp + 12]	; ebx = b
				mov ecx, [ebp + 16]	; ecx = c
			; completing first calculation s1
				add ebx, eax	; a + b = ebx
				add ebx, ecx	; c + (a + b) = ebx
			; move sum of a + b + c to temp s1
				mov [ebp - 16], ebx
			; completing second calculation s2
				mov ebx, [ebp + 12]
				mul eax, eax	; a*a = eax
				mul ebx, ebx	; b*b = ebx
				mul ecx, ecx	; c*c = ecx
				add eax, ebx
				add eax, ecx	; result a & b + c = eax
			; move sum of a*a + b*b + c*c to temp s2
				mov [ebp - 12], eax
			; completing third calculation s3
				mov eax, [ebp + 8]
				mov ebx, [ebp + 12]
				mov ecx, [ebp + 16]
				mul eax, eax
				mul eax, eax	; a*a*a = eax
				mul ebx, ebx
				mul ebx, ebx	; b*b*b = ebx
				mul ecx, ecx
				mul ecx, ecx	; c*c*c = ecx
				add eax, ebx
				add eax, ecx	; add sums together
			; move sum of a*a*a + b*b*b + c*c*c to temp s3
				mov [ebp - 8], eax
			; completing fourth calculation s4
				mov ebx, [ebp + 12]
				mov ecx, [ebp + 16]

				mov edx, 0				; clear edx
				mov eax, [ebp + 8]		; divide a/c
				mov ecx, [ebp + 16]	
				div ecx					; eax = 3, edx = 0 no remainder
				mov [ebp - 28], eax

				mov edx, 0				; clear edx
				mov eax, [ebp + 12]		; divide b/c
				mov ecx, [ebp + 16]
				div ecx					; eax = 2, edx = 0 no remainder
				mov [ebp - 32], eax

				mov edx, 0				; clear edx
				mov eax, [ebp + 16]		;divide c/c
				mov ecx, [ebp + 16]
				div ecx					; eax = 1, edx = 0 no remainder
				mov [ebp - 36], eax


				add [ebp - 28], [ebp - 32]		
				add [ebp - 28, [ebp - 36]
				mov [ebp + 32], [ebp - 28]

				ret
CalculateSum	endp
				end
