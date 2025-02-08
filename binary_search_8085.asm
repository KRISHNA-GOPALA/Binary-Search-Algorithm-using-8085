
MVI B, 7       ; Last index of the array
MVI H, 0       ; Set HL register pair for memory pointer
MVI L, 0       ; Initialize L register

LOOP: INR L    ; Increment L (loop counter)
MOV M, L       ; Store L in memory
MOV A, L       ; Move L value to accumulator
CMP B          ; Compare A with B
JM LOOP        ; Jump to LOOP if A < B

MVI B, 0       ; Low index
MVI C, 7       ; High index
MVI D, 7       ; Target value (needle)
MVI L, 9       ; Memory location to store result
MVI M, 255     ; Initialize result as 255 (not found)

WHILE: MOV A, C
CMP B          ; Compare high and low indexes
JM EXIT        ; If high < low, exit

ADD C          ; Add low (B) and high (C)
RAR            ; Right shift (divide by 2) to find the middle index
ADD B          ; Mid = (low + high) / 2

MOV E, A       ; Store mid index in E
MOV L, E       ; Load mid index to L
MOV A, M       ; Fetch element at mid index
CMP D          ; Compare with target

JZ EQUALS      ; Jump if element matches target
JM LESS        ; Jump if element is smaller than target
JP GREATER     ; Jump if element is greater than target

EQUALS: MVI L, 9
MOV M, E       ; Store mid index as result
JMP EXIT

LESS: MOV A, E
INR A          ; Increase mid index
MOV B, A       ; Set low = mid + 1
JMP WHILE

GREATER: MOV A, E
DCR A          ; Decrease mid index
MOV C, A       ; Set high = mid - 1
JMP WHILE

EXIT: HLT      ; Halt execution
