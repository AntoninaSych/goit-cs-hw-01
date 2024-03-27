; Розширення лексера (Lexer)
%define MUL  3
%define DIV  4

get_next_token:
    ; Додайте розпізнавання символів '*' та '/'
    cmp byte [current_char], '*'
    je .mul_token
    cmp byte [current_char], '/'
    je .div_token

.mul_token:
    mov eax, MUL
    ret

.div_token:
    mov eax, DIV
    ret
