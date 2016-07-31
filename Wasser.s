# Die Grundlage für jedes Getränk
.LC0:
        .string "Heisses Wasser\n"
        .section        .text.startup,"ax",@progbits
        .globl  main
main:
        .cfi_startproc
        subq    $8, %rsp
        .cfi_def_cfa_offset 16
        movl    $.LC0, %edi
        xorl    %eax, %eax
        call    printf
        xorl    %eax, %eax
        popq    %rdx
        .cfi_def_cfa_offset 8
        ret
        .cfi_endproc
