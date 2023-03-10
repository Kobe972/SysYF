    .arch armv7ve 
    .text 
    .globl move
    .p2align 2
    .type move, %function
move:
    push {r11, lr}
    mov r11, sp
    sub sp, sp, #36
    STM SP, {r0, r1}
    ldr r0, [sp]
    bl put_int
    LDM sp, {r0, r1}
    STM SP, {r1}
    ldr r0, =32
    bl put_char
    LDM sp, {r1}
    STM SP, {r1}
    ldr r0, [sp]
    bl put_int
    LDM sp, {r1}
    ldr r0, =44
    bl put_char
    ldr r0, =32
    bl put_char
    b bb0_0
bb0_0:
    mov sp, r11
    pop {r11, lr}
    bx lr
    .pool

    .globl hanoi
    .p2align 2
    .type hanoi, %function
hanoi:
    push {r4, r5, r6, r11, lr}
    mov r11, sp
    sub sp, sp, #36
    ldr r4, =1
    cmp r0, r4
    ldr r5, =0
    ldreq r5, =1
    mov r4, r5
    ldr r5, =0
    cmp r4, r5
    ldr r6, =0
    ldrne r6, =1
    ldr r5, =0
    cmp r4, r5
    bne bb1_0
    b bb1_1
bb1_0:
    STM SP, {r1, r3}
    ldr r0, [sp]
    ldr r1, [sp, #4]
    bl move
    LDM sp, {r1, r3}
    b bb1_2
bb1_1:
    sub r4, r0, #1
    STM SP, {r0, r1, r2, r3}
    mov r0, r4
    ldr r1, [sp, #4]
    ldr r2, [sp, #12]
    ldr r3, [sp, #8]
    bl hanoi
    LDM sp, {r0, r1, r2, r3}
    STM SP, {r0, r1, r2, r3}
    ldr r0, [sp, #4]
    ldr r1, [sp, #12]
    bl move
    LDM sp, {r0, r1, r2, r3}
    sub r4, r0, #1
    STM SP, {r1, r2, r3}
    mov r0, r4
    ldr r1, [sp, #4]
    ldr r2, [sp]
    ldr r3, [sp, #8]
    bl hanoi
    LDM sp, {r1, r2, r3}
    b bb1_2
bb1_2:
    b bb1_3
bb1_3:
    mov sp, r11
    pop {r4, r5, r6, r11, lr}
    bx lr
    .pool

    .globl main
    .p2align 2
    .type main, %function
main:
    push {r11, lr}
    mov r11, sp
    sub sp, sp, #36
    STM SP, {r0}
    bl get_int
    b bb2_0
bb2_0:
    b litpool2_0
    .pool
litpool2_0:
    ldr r1, =0
    cmp r0, r1
    ldr r2, =0
    ldrgt r2, =1
    mov r1, r2
    ldr r2, =0
    cmp r1, r2
    ldr r3, =0
    ldrne r3, =1
    ldr r2, =0
    cmp r1, r2
    bne bb2_1
    b bb2_2
bb2_1:
    STM SP, {r0, r1}
    bl get_int
    LDMIB SP, {r1}
    mov r1, r0
    ldr r0, [SP]
    STM SP, {r0, r1}
    ldr r0, [sp, #4]
    ldr r1, =1
    ldr r2, =2
    ldr r3, =3
    bl hanoi
    LDM sp, {r0, r1}
    STM SP, {r0}
    ldr r0, =10
    bl put_char
    LDM sp, {r0}
    sub r1, r0, #1
    push {lr}
    Mov r0, r1
    pop {lr}
    b bb2_0
bb2_2:
    b bb2_3
bb2_3:
    ldr r0, =0
    mov sp, r11
    pop {r11, lr}
    bx lr
    .pool

