; Модифікуйте парсер (Parser)
factor:
    ; Додайте операції множення та ділення
    call integer
    cmp eax, MUL
    je .mul_operation
    cmp eax, DIV
    je .div_operation
    ret

.mul_operation:
    call factor
    imul byte [result], al
    ret

.div_operation:
    call factor
    mov cl, al
    mov al, byte [result]
    mov ah, 0
    idiv cl
    ret