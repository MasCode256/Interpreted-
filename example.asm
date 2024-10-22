section .data:
     msg db "Hello, world!", 10, "This is NASM-script!", 0
     len equ $ - msg

     endl db 10, 0

section .text
     global _start

_start:
     call _printLn
     call _exit

_print:
    ; Syscall to write (sys_write)
    mov rax, 1        ; syscall number for sys_write
    mov rdi, 1        ; file descriptor 1 is stdout
    mov rsi, msg      ; pointer to the message
    mov rdx, len      ; length of the message
    syscall           ; invoke syscall
    ret               ; return from _print

_printLn:
    ; Syscall to write (sys_write)
    mov rax, 1        ; syscall number for sys_write
    mov rdi, 1        ; file descriptor 1 is stdout
    mov rsi, msg      ; pointer to the message
    mov rdx, len      ; length of the message
    syscall           ; invoke syscall

    ; Syscall to write (sys_write)
    mov rax, 1        ; syscall number for sys_write
    mov rdi, 1        ; file descriptor 1 is stdout
    mov rsi, endl     ; pointer to the message
    mov rdx, 2        ; length of the message
    syscall           ; invoke syscall
    ret               ; return from _print

_exit:
     mov rax, 60
     xor rdi, rdi
     syscall
