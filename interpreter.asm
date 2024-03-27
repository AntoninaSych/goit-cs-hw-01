; Оновіть Інтерпретатор (Interpreter)
visit_BinOp:
    cmp byte [binop], MUL
    je .mul_operation
    cmp byte [binop], DIV
    je .div_operation
    jmp .default_operation

.mul_operation:
    ; Додайте операцію множення
    mov eax, [left]
    imul byte [right]
    ret

.div_operation:
    ; Додайте операцію ділення
    mov eax, [left]
    mov ecx, byte [right]
    xor edx, edx
    idiv ecx
    ret

.default_operation:
    ; Виконайте стандартну операцію (додавання або віднімання)
    ; якщо операція не є множенням або діленням
    ...
