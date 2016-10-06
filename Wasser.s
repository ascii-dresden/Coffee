# Die Grundlage für jedes Getränk
.section	.text

.global		_start

ingredients:
	.string "Heißes Wasser\n"

_start:
	mov $4, %eax
	mov $1, %ebx
	mov $ingredients, %ecx
	mov $15, %edx
	int $0x80
	mov $1, %eax
	int $0x80
