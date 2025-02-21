.data
	.global badger
	badger:
		.word 7
	.global eagle 
	eagle:
		.word 0
	.global coyote
	coyote:
		.word 0
		.word 2
		.word 4
		.word 6
		.word 8
		.word 10
	.global fox
	.comm fox, 200, 4
.text
.global main
main:

_b3:
	ldr x0, =coyote
	ldr x1, =fox
	
	ldr w2, [x0, #0]
	str w2, [x1, #0]
	
	ldr w2, [x0, #4]
	str w2, [x1, #4]

	ldr w2, [x0, #8]
	str w2, [x1, #8]

	ldr w2, [x1, #12]
	str w2, [x1, #12]
	
	ldr w2, [x1, #16]
	str w2, [x1, #16]
	
	ldr w2, [x1, #20]
	str w2, [x1, #20]
_b4:

alldone:
	mov x0, 0
	ret
