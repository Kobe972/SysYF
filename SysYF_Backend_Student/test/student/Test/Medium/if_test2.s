    .arch armv7ve 
    .text 
    .globl if_if_Else
    .p2align 2
    .type if_if_Else, %function
if_if_Else:
    push {lr}
    ldr r0, =5
    ldr r1, =5
    cmp r0, r1
    ldr r2, =0
    ldreq r2, =1
    mov r0, r2
    ldr r1, =0
    cmp r0, r1
    ldr r2, =0
    ldrne r2, =1
    ldr r1, =0
    cmp r0, r1
    bne bb0_0
    b bb0_1
bb0_0:
    ldr r0, =10
    ldr r1, =10
    cmp r0, r1
    ldr r2, =0
    ldreq r2, =1
    mov r0, r2
    ldr r1, =0
    cmp r0, r1
    ldr r2, =0
    ldrne r2, =1
    ldr r1, =0
    cmp r0, r1
    bne bb0_3
    push {lr}
    Ldr r0, =5
    pop {lr}
    b bb0_4
bb0_1:
    ldr r0, =5
    add r1, r0, #15
    push {lr}
    Mov r0, r1
    pop {lr}
    b bb0_2
bb0_2:
    b bb0_5
bb0_3:
    push {lr}
    Ldr r0, =25
    pop {lr}
    b bb0_4
bb0_4:
    b bb0_2
bb0_5:
    b litpool0_0
    .pool
litpool0_0:
    pop {lr}
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
    bl if_if_Else
    b bb1_0
bb1_0:
    mov sp, r11
    pop {r11, lr}
    bx lr
    .pool

