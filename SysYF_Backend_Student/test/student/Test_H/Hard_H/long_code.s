    .arch armv7ve 
    .text 
    .globl bubblesort
    .p2align 2
    .type bubblesort, %function
bubblesort:
    push {r4, r5, r6, r7, r8, lr}
    push {lr}
    Ldr r2, =0
    pop {lr}
    b bb0_0
bb0_0:
    ldr r3, Addr0_0
    ldr r3, [r3]
    sub r4, r3, #1
    cmp r2, r4
    ldr r3, =0
    ldrlt r3, =1
    mov r4, r3
    ldr r3, =0
    cmp r4, r3
    ldr r5, =0
    ldrne r5, =1
    ldr r3, =0
    cmp r4, r3
    bne bb0_1
    b bb0_2
bb0_1:
    push {lr}
    Ldr r1, =0
    pop {lr}
    b bb0_3
bb0_2:
    b bb0_8
bb0_3:
    ldr r3, Addr0_0
    ldr r3, [r3]
    sub r4, r3, r2
    sub r3, r4, #1
    cmp r1, r3
    ldr r4, =0
    ldrlt r4, =1
    mov r3, r4
    ldr r4, =0
    cmp r3, r4
    ldr r5, =0
    ldrne r5, =1
    ldr r4, =0
    cmp r3, r4
    bne bb0_4
    b bb0_5
bb0_4:
    add r3, r0, #0
    ldr r4, =4
    mul r5, r1, r4
    add r4, r3, r5
    ldr r3, [r4]
    add r4, r1, #1
    add r5, r0, #0
    ldr r6, =4
    mul r7, r4, r6
    add r4, r5, r7
    ldr r5, [r4]
    cmp r3, r5
    ldr r4, =0
    ldrgt r4, =1
    mov r3, r4
    ldr r4, =0
    cmp r3, r4
    ldr r5, =0
    ldrne r5, =1
    ldr r4, =0
    cmp r3, r4
    bne bb0_6
    b bb0_7
bb0_5:
    add r3, r2, #1
    push {lr}
    Mov r2, r3
    pop {lr}
    b bb0_0
bb0_6:
    b litpool0_0
    .pool
litpool0_0:
    add r3, r1, #1
    add r4, r0, #0
    ldr r5, =4
    mul r6, r3, r5
    add r3, r4, r6
    ldr r4, [r3]
    add r3, r0, #0
    ldr r5, =4
    mul r6, r1, r5
    add r5, r3, r6
    ldr r3, [r5]
    add r5, r1, #1
    add r6, r0, #0
    ldr r7, =4
    mul r8, r5, r7
    add r5, r6, r8
    str r3, [r5]
    add r3, r0, #0
    ldr r5, =4
    mul r6, r1, r5
    add r5, r3, r6
    str r4, [r5]
    b bb0_7
bb0_7:
    add r3, r1, #1
    push {lr}
    Mov r1, r3
    pop {lr}
    b bb0_3
bb0_8:
    ldr r0, =0
    pop {r4, r5, r6, r7, r8, lr}
    bx lr
    .pool
Addr0_0:
    .long ..n

    .globl insertsort
    .p2align 2
    .type insertsort, %function
insertsort:
    push {r4, r5, r6, r7, r8, lr}
    push {lr}
    Ldr r3, =1
    pop {lr}
    b bb1_0
bb1_0:
    ldr r4, Addr1_0
    ldr r4, [r4]
    cmp r3, r4
    ldr r5, =0
    ldrlt r5, =1
    mov r4, r5
    ldr r5, =0
    cmp r4, r5
    ldr r6, =0
    ldrne r6, =1
    ldr r5, =0
    cmp r4, r5
    bne bb1_1
    b bb1_2
bb1_1:
    add r1, r0, #0
    ldr r2, =4
    mul r4, r3, r2
    add r2, r1, r4
    ldr r1, [r2]
    sub r2, r3, #1
    b bb1_3
bb1_2:
    b bb1_7
bb1_3:
    b litpool1_0
    .pool
litpool1_0:
    ldr r4, =-1
    cmp r2, r4
    ldr r5, =0
    ldrgt r5, =1
    mov r4, r5
    ldr r5, =0
    cmp r4, r5
    ldr r6, =0
    ldrne r6, =1
    ldr r5, =0
    cmp r4, r5
    bne bb1_6
    b bb1_5
bb1_4:
    add r4, r0, #0
    ldr r5, =4
    mul r6, r2, r5
    add r5, r4, r6
    ldr r4, [r5]
    add r5, r2, #1
    add r6, r0, #0
    ldr r7, =4
    mul r8, r5, r7
    add r5, r6, r8
    str r4, [r5]
    sub r4, r2, #1
    push {lr}
    Mov r2, r4
    pop {lr}
    b bb1_3
bb1_5:
    add r4, r2, #1
    add r5, r0, #0
    ldr r6, =4
    mul r7, r4, r6
    add r4, r5, r7
    str r1, [r4]
    add r4, r3, #1
    push {lr}
    Mov r12, r1
    Mov r1, r2
    Mov r2, r12
    Mov r3, r4
    pop {lr}
    b bb1_0
bb1_6:
    add r4, r0, #0
    ldr r5, =4
    mul r6, r2, r5
    add r5, r4, r6
    ldr r4, [r5]
    cmp r1, r4
    ldr r5, =0
    ldrlt r5, =1
    mov r4, r5
    ldr r5, =0
    cmp r4, r5
    ldr r6, =0
    ldrne r6, =1
    ldr r5, =0
    cmp r4, r5
    bne bb1_4
    b bb1_5
bb1_7:
    ldr r0, =0
    pop {r4, r5, r6, r7, r8, lr}
    bx lr
    .pool
Addr1_0:
    .long ..n

    .globl QuickSort
    .p2align 2
    .type QuickSort, %function
QuickSort:
    push {r4, r5, r6, r7, r8, r9, r11, lr}
    mov r11, sp
    sub sp, sp, #36
    cmp r1, r2
    ldr r3, =0
    ldrlt r3, =1
    mov r4, r3
    ldr r3, =0
    cmp r4, r3
    ldr r5, =0
    ldrne r5, =1
    ldr r3, =0
    cmp r4, r3
    bne bb2_0
    b bb2_1
bb2_0:
    add r3, r0, #0
    ldr r4, =4
    mul r5, r1, r4
    add r4, r3, r5
    ldr r3, [r4]
    push {lr}
    Mov r4, r2
    Mov r5, r1
    pop {lr}
    b bb2_2
bb2_1:
    b litpool2_0
    .pool
litpool2_0:
    b bb2_17
bb2_2:
    cmp r5, r4
    ldr r6, =0
    ldrlt r6, =1
    mov r7, r6
    ldr r6, =0
    cmp r7, r6
    ldr r8, =0
    ldrne r8, =1
    ldr r6, =0
    cmp r7, r6
    bne bb2_3
    b bb2_4
bb2_3:
    b bb2_5
bb2_4:
    add r6, r0, #0
    ldr r7, =4
    mul r8, r5, r7
    add r7, r6, r8
    str r3, [r7]
    sub r6, r5, #1
    STM SP, {r0, r1, r2, r3}
    ldr r0, [sp]
    ldr r1, [sp, #4]
    mov r2, r6
    bl QuickSort
    LDMIB SP, {r1, r2, r3}
    mov r7, r0
    ldr r0, [SP]
    add r1, r5, #1
    STM SP, {r0, r1, r2, r3}
    ldr r0, [sp]
    ldr r1, [sp, #4]
    ldr r2, [sp, #8]
    bl QuickSort
    LDMIB SP, {r1, r2, r3}
    mov r6, r0
    ldr r0, [SP]
    push {lr}
    Mov r0, r3
    Mov r1, r4
    Mov r2, r5
    pop {lr}
    b bb2_1
bb2_5:
    cmp r5, r4
    ldr r6, =0
    ldrlt r6, =1
    mov r7, r6
    ldr r6, =0
    cmp r7, r6
    ldr r8, =0
    ldrne r8, =1
    ldr r6, =0
    cmp r7, r6
    bne bb2_8
    b bb2_7
bb2_6:
    sub r6, r4, #1
    push {lr}
    Mov r4, r6
    pop {lr}
    b bb2_5
bb2_7:
    cmp r5, r4
    ldr r6, =0
    ldrlt r6, =1
    mov r7, r6
    ldr r6, =0
    cmp r7, r6
    ldr r8, =0
    ldrne r8, =1
    ldr r6, =0
    cmp r7, r6
    bne bb2_9
    b bb2_10
bb2_8:
    b litpool2_1
    .pool
litpool2_1:
    add r6, r0, #0
    ldr r7, =4
    mul r8, r4, r7
    add r7, r6, r8
    ldr r6, [r7]
    sub r7, r3, #1
    cmp r6, r7
    ldr r8, =0
    ldrgt r8, =1
    mov r6, r8
    ldr r7, =0
    cmp r6, r7
    ldr r8, =0
    ldrne r8, =1
    ldr r7, =0
    cmp r6, r7
    bne bb2_6
    b bb2_7
bb2_9:
    add r6, r0, #0
    ldr r7, =4
    mul r8, r4, r7
    add r7, r6, r8
    ldr r6, [r7]
    add r7, r0, #0
    ldr r8, =4
    mul r9, r5, r8
    add r8, r7, r9
    str r6, [r8]
    add r6, r5, #1
    push {lr}
    Mov r5, r6
    pop {lr}
    b bb2_10
bb2_10:
    b bb2_11
bb2_11:
    cmp r5, r4
    ldr r6, =0
    ldrlt r6, =1
    mov r7, r6
    ldr r6, =0
    cmp r7, r6
    ldr r8, =0
    ldrne r8, =1
    ldr r6, =0
    cmp r7, r6
    bne bb2_14
    b bb2_13
bb2_12:
    add r6, r5, #1
    push {lr}
    Mov r5, r6
    pop {lr}
    b bb2_11
bb2_13:
    cmp r5, r4
    ldr r6, =0
    ldrlt r6, =1
    mov r7, r6
    ldr r6, =0
    cmp r7, r6
    ldr r8, =0
    ldrne r8, =1
    ldr r6, =0
    cmp r7, r6
    bne bb2_15
    b bb2_16
bb2_14:
    b litpool2_2
    .pool
litpool2_2:
    add r6, r0, #0
    ldr r7, =4
    mul r8, r5, r7
    add r7, r6, r8
    ldr r6, [r7]
    cmp r6, r3
    ldr r7, =0
    ldrlt r7, =1
    mov r6, r7
    ldr r7, =0
    cmp r6, r7
    ldr r8, =0
    ldrne r8, =1
    ldr r7, =0
    cmp r6, r7
    bne bb2_12
    b bb2_13
bb2_15:
    add r6, r0, #0
    ldr r7, =4
    mul r8, r5, r7
    add r7, r6, r8
    ldr r6, [r7]
    add r7, r0, #0
    ldr r8, =4
    mul r9, r4, r8
    add r8, r7, r9
    str r6, [r8]
    sub r6, r4, #1
    push {lr}
    Mov r4, r6
    pop {lr}
    b bb2_16
bb2_16:
    b bb2_2
bb2_17:
    ldr r0, =0
    mov sp, r11
    pop {r4, r5, r6, r7, r8, r9, r11, lr}
    bx lr
    .pool

    .globl getMid
    .p2align 2
    .type getMid, %function
getMid:
    push {r4, lr}
    ldr r1, Addr3_0
    ldr r1, [r1]
    ldr r2, =2
    sdiv r3, r1, r2
    ldr r2, =2
    mul r4, r3, r2
    sub r2, r1, r4
    ldr r1, =0
    cmp r2, r1
    ldr r3, =0
    ldreq r3, =1
    mov r1, r3
    ldr r2, =0
    cmp r1, r2
    ldr r3, =0
    ldrne r3, =1
    ldr r2, =0
    cmp r1, r2
    bne bb3_0
    b bb3_1
bb3_0:
    ldr r1, Addr3_0
    ldr r1, [r1]
    ldr r2, =2
    sdiv r3, r1, r2
    add r1, r0, #0
    ldr r2, =4
    mul r4, r3, r2
    add r2, r1, r4
    ldr r1, [r2]
    sub r2, r3, #1
    add r3, r0, #0
    ldr r0, =4
    mul r4, r2, r0
    add r0, r3, r4
    ldr r2, [r0]
    add r0, r1, r2
    ldr r1, =2
    sdiv r2, r0, r1
    push {lr}
    Mov r0, r2
    pop {lr}
    b bb3_2
bb3_1:
    ldr r1, Addr3_0
    ldr r1, [r1]
    ldr r2, =2
    sdiv r3, r1, r2
    add r1, r0, #0
    ldr r0, =4
    mul r2, r3, r0
    add r0, r1, r2
    ldr r1, [r0]
    push {lr}
    Mov r0, r1
    pop {lr}
    b bb3_2
bb3_2:
    b litpool3_0
    .pool
litpool3_0:
    pop {r4, lr}
    bx lr
    .pool
Addr3_0:
    .long ..n

    .globl getMost
    .p2align 2
    .type getMost, %function
getMost:
    push {r4, r5, r6, r7, r8, lr}
    ldr lr, =4000
    sub sp, sp, lr
    push {lr}
    Ldr r1, =0
    pop {lr}
    b bb4_0
bb4_0:
    ldr r2, =1000
    cmp r1, r2
    ldr r3, =0
    ldrlt r3, =1
    mov r2, r3
    ldr r3, =0
    cmp r2, r3
    ldr r4, =0
    ldrne r4, =1
    ldr r3, =0
    cmp r2, r3
    bne bb4_1
    b bb4_2
bb4_1:
    add r2, sp, #0
    ldr r3, =4
    mul r4, r1, r3
    add r3, r2, r4
    ldr r2, =0
    str r2, [r3]
    add r2, r1, #1
    push {lr}
    Mov r1, r2
    pop {lr}
    b bb4_0
bb4_2:
    push {lr}
    Ldr r3, =0
    Ldr r4, =0
    pop {lr}
    b bb4_3
bb4_3:
    ldr r5, Addr4_0
    ldr r5, [r5]
    cmp r4, r5
    ldr r6, =0
    ldrlt r6, =1
    mov r5, r6
    ldr r6, =0
    cmp r5, r6
    ldr r7, =0
    ldrne r7, =1
    ldr r6, =0
    cmp r5, r6
    bne bb4_4
    b bb4_5
bb4_4:
    add r1, r0, #0
    ldr r5, =4
    mul r6, r4, r5
    add r5, r1, r6
    ldr r1, [r5]
    add r5, sp, #0
    ldr r6, =4
    mul r7, r1, r6
    add r6, r5, r7
    ldr r5, [r6]
    add r6, r5, #1
    add r5, sp, #0
    ldr r7, =4
    mul r8, r1, r7
    add r7, r5, r8
    str r6, [r7]
    add r5, sp, #0
    ldr r6, =4
    mul r7, r1, r6
    add r6, r5, r7
    ldr r5, [r6]
    cmp r5, r3
    ldr r6, =0
    ldrgt r6, =1
    mov r5, r6
    ldr r6, =0
    cmp r5, r6
    ldr r7, =0
    ldrne r7, =1
    ldr r6, =0
    cmp r5, r6
    bne bb4_6
    b bb4_7
bb4_5:
    b bb4_8
bb4_6:
    b litpool4_0
    .pool
litpool4_0:
    add r2, sp, #0
    ldr r3, =4
    mul r5, r1, r3
    add r3, r2, r5
    ldr r2, [r3]
    push {lr}
    Mov r3, r2
    Mov r2, r1
    pop {lr}
    b bb4_7
bb4_7:
    add r5, r4, #1
    push {lr}
    Mov r4, r5
    pop {lr}
    b bb4_3
bb4_8:
    mov r0, r2
    ldr lr, =4000
    add sp, sp, lr
    pop {r4, r5, r6, r7, r8, lr}
    bx lr
    .pool
Addr4_0:
    .long ..n

    .globl revert
    .p2align 2
    .type revert, %function
revert:
    push {r4, r5, r6, r7, lr}
    push {lr}
    Ldr r1, =0
    Ldr r2, =0
    pop {lr}
    b bb5_0
bb5_0:
    cmp r2, r1
    ldr r3, =0
    ldrlt r3, =1
    mov r4, r3
    ldr r3, =0
    cmp r4, r3
    ldr r5, =0
    ldrne r5, =1
    ldr r3, =0
    cmp r4, r3
    bne bb5_1
    b bb5_2
bb5_1:
    add r3, r0, #0
    ldr r4, =4
    mul r5, r2, r4
    add r4, r3, r5
    ldr r3, [r4]
    add r4, r0, #0
    ldr r5, =4
    mul r6, r1, r5
    add r5, r4, r6
    ldr r4, [r5]
    add r5, r0, #0
    ldr r6, =4
    mul r7, r2, r6
    add r6, r5, r7
    str r4, [r6]
    add r4, r0, #0
    ldr r5, =4
    mul r6, r1, r5
    add r5, r4, r6
    str r3, [r5]
    add r3, r2, #1
    sub r2, r1, #1
    push {lr}
    Mov r1, r2
    Mov r2, r3
    pop {lr}
    b bb5_0
bb5_2:
    b bb5_3
bb5_3:
    ldr r0, =0
    pop {r4, r5, r6, r7, lr}
    bx lr
    .pool

    .globl arrCopy
    .p2align 2
    .type arrCopy, %function
arrCopy:
    push {r4, r5, r6, lr}
    push {lr}
    Ldr r2, =0
    pop {lr}
    b bb6_0
bb6_0:
    b litpool6_0
    .pool
litpool6_0:
    ldr r3, Addr6_0
    ldr r3, [r3]
    cmp r2, r3
    ldr r4, =0
    ldrlt r4, =1
    mov r3, r4
    ldr r4, =0
    cmp r3, r4
    ldr r5, =0
    ldrne r5, =1
    ldr r4, =0
    cmp r3, r4
    bne bb6_1
    b bb6_2
bb6_1:
    add r3, r0, #0
    ldr r4, =4
    mul r5, r2, r4
    add r4, r3, r5
    ldr r3, [r4]
    add r4, r1, #0
    ldr r5, =4
    mul r6, r2, r5
    add r5, r4, r6
    str r3, [r5]
    add r3, r2, #1
    push {lr}
    Mov r2, r3
    pop {lr}
    b bb6_0
bb6_2:
    b bb6_3
bb6_3:
    ldr r0, =0
    pop {r4, r5, r6, lr}
    bx lr
    .pool
Addr6_0:
    .long ..n

    .globl calSum
    .p2align 2
    .type calSum, %function
calSum:
    push {r4, r5, r6, lr}
    push {lr}
    Ldr r2, =0
    Ldr r3, =0
    pop {lr}
    b bb7_0
bb7_0:
    ldr r4, Addr7_0
    ldr r4, [r4]
    cmp r2, r4
    ldr r5, =0
    ldrlt r5, =1
    mov r4, r5
    ldr r5, =0
    cmp r4, r5
    ldr r6, =0
    ldrne r6, =1
    ldr r5, =0
    cmp r4, r5
    bne bb7_1
    b bb7_2
bb7_1:
    add r4, r0, #0
    ldr r5, =4
    mul r6, r2, r5
    add r5, r4, r6
    ldr r4, [r5]
    add r5, r3, r4
    sdiv r3, r2, r1
    mul r4, r3, r1
    sub r3, r2, r4
    sub r4, r1, #1
    cmp r3, r4
    ldr r6, =0
    ldrne r6, =1
    mov r3, r6
    ldr r4, =0
    cmp r3, r4
    ldr r6, =0
    ldrne r6, =1
    ldr r4, =0
    cmp r3, r4
    bne bb7_3
    b bb7_4
bb7_2:
    b litpool7_0
    .pool
litpool7_0:
    b bb7_6
bb7_3:
    add r3, r0, #0
    ldr r4, =4
    mul r6, r2, r4
    add r4, r3, r6
    ldr r3, =0
    str r3, [r4]
    push {lr}
    Mov r3, r5
    pop {lr}
    b bb7_5
bb7_4:
    add r3, r0, #0
    ldr r4, =4
    mul r6, r2, r4
    add r4, r3, r6
    str r5, [r4]
    push {lr}
    Ldr r3, =0
    pop {lr}
    b bb7_5
bb7_5:
    add r4, r2, #1
    push {lr}
    Mov r2, r4
    pop {lr}
    b bb7_0
bb7_6:
    ldr r0, =0
    pop {r4, r5, r6, lr}
    bx lr
    .pool
Addr7_0:
    .long ..n

    .globl avgPooling
    .p2align 2
    .type avgPooling, %function
avgPooling:
    push {r4, r5, r6, r7, r8, r9, lr}
    push {lr}
    Ldr r3, =0
    Ldr r4, =0
    pop {lr}
    b bb8_0
bb8_0:
    ldr r5, Addr8_0
    ldr r5, [r5]
    cmp r3, r5
    ldr r6, =0
    ldrlt r6, =1
    mov r5, r6
    ldr r6, =0
    cmp r5, r6
    ldr r7, =0
    ldrne r7, =1
    ldr r6, =0
    cmp r5, r6
    bne bb8_1
    b bb8_2
bb8_1:
    sub r5, r1, #1
    cmp r3, r5
    ldr r6, =0
    ldrlt r6, =1
    mov r5, r6
    ldr r6, =0
    cmp r5, r6
    ldr r7, =0
    ldrne r7, =1
    ldr r6, =0
    cmp r5, r6
    bne bb8_3
    b bb8_4
bb8_2:
    ldr r2, Addr8_0
    ldr r2, [r2]
    sub r3, r2, r1
    add r1, r3, #1
    b bb8_9
bb8_3:
    b litpool8_0
    .pool
litpool8_0:
    add r5, r0, #0
    ldr r6, =4
    mul r7, r3, r6
    add r6, r5, r7
    ldr r5, [r6]
    add r6, r4, r5
    push {lr}
    Mov r4, r6
    pop {lr}
    b bb8_5
bb8_4:
    sub r5, r1, #1
    cmp r3, r5
    ldr r6, =0
    ldreq r6, =1
    mov r5, r6
    ldr r6, =0
    cmp r5, r6
    ldr r7, =0
    ldrne r7, =1
    ldr r6, =0
    cmp r5, r6
    bne bb8_6
    b bb8_7
bb8_5:
    add r5, r3, #1
    push {lr}
    Mov r3, r5
    pop {lr}
    b bb8_0
bb8_6:
    add r2, r0, #0
    ldr r5, =0
    ldr r6, =4
    mul r7, r5, r6
    add r5, r2, r7
    ldr r2, [r5]
    sdiv r5, r4, r1
    add r6, r0, #0
    ldr r7, =0
    ldr r8, =4
    mul r9, r7, r8
    add r7, r6, r9
    str r5, [r7]
    b bb8_8
bb8_7:
    add r5, r0, #0
    ldr r6, =4
    mul r7, r3, r6
    add r6, r5, r7
    ldr r5, [r6]
    add r6, r4, r5
    sub r4, r6, r2
    sub r2, r3, r1
    add r5, r2, #1
    add r2, r0, #0
    ldr r6, =4
    mul r7, r5, r6
    add r5, r2, r7
    ldr r2, [r5]
    sdiv r5, r4, r1
    sub r6, r3, r1
    add r7, r6, #1
    add r6, r0, #0
    ldr r8, =4
    mul r9, r7, r8
    add r7, r6, r9
    str r5, [r7]
    b bb8_8
bb8_8:
    b bb8_5
bb8_9:
    b litpool8_1
    .pool
litpool8_1:
    ldr r2, Addr8_0
    ldr r2, [r2]
    cmp r1, r2
    ldr r3, =0
    ldrlt r3, =1
    mov r2, r3
    ldr r3, =0
    cmp r2, r3
    ldr r4, =0
    ldrne r4, =1
    ldr r3, =0
    cmp r2, r3
    bne bb8_10
    b bb8_11
bb8_10:
    add r2, r0, #0
    ldr r3, =4
    mul r4, r1, r3
    add r3, r2, r4
    ldr r2, =0
    str r2, [r3]
    add r2, r1, #1
    push {lr}
    Mov r1, r2
    pop {lr}
    b bb8_9
bb8_11:
    b bb8_12
bb8_12:
    ldr r0, =0
    pop {r4, r5, r6, r7, r8, r9, lr}
    bx lr
    .pool
Addr8_0:
    .long ..n

    .globl main
    .p2align 2
    .type main, %function
main:
    push {r4, r11, lr}
    mov r11, sp
    ldr lr, =292
    sub sp, sp, lr
    ldr r0, =32
    push {r1}
    ldr lr, =Addr9_0
    ldr r1, [lr]
    str r0, [r1]
    pop {r1}
    ldr r0, =-128
    add r0, r11, r0
    ldr r1, =0
    ldr r2, =4
    mul r3, r1, r2
    add r1, r0, r3
    ldr r0, =7
    str r0, [r1]
    ldr r0, =-128
    add r0, r11, r0
    ldr r1, =1
    ldr r2, =4
    mul r3, r1, r2
    add r1, r0, r3
    ldr r0, =23
    str r0, [r1]
    ldr r0, =-128
    add r0, r11, r0
    ldr r1, =2
    ldr r2, =4
    mul r3, r1, r2
    add r1, r0, r3
    ldr r0, =89
    str r0, [r1]
    ldr r0, =-128
    add r0, r11, r0
    ldr r1, =3
    ldr r2, =4
    mul r3, r1, r2
    add r1, r0, r3
    ldr r0, =26
    str r0, [r1]
    ldr r0, =-128
    add r0, r11, r0
    ldr r1, =4
    ldr r2, =4
    mul r3, r1, r2
    add r1, r0, r3
    ldr r0, =282
    str r0, [r1]
    ldr r0, =-128
    add r0, r11, r0
    ldr r1, =5
    ldr r2, =4
    mul r3, r1, r2
    add r1, r0, r3
    ldr r0, =254
    str r0, [r1]
    ldr r0, =-128
    add r0, r11, r0
    ldr r1, =6
    ldr r2, =4
    mul r3, r1, r2
    add r1, r0, r3
    ldr r0, =27
    str r0, [r1]
    ldr r0, =-128
    add r0, r11, r0
    ldr r1, =7
    ldr r2, =4
    mul r3, r1, r2
    add r1, r0, r3
    ldr r0, =5
    str r0, [r1]
    ldr r0, =-128
    add r0, r11, r0
    ldr r1, =8
    ldr r2, =4
    mul r3, r1, r2
    add r1, r0, r3
    ldr r0, =83
    str r0, [r1]
    ldr r0, =-128
    add r0, r11, r0
    ldr r1, =9
    ldr r2, =4
    mul r3, r1, r2
    add r1, r0, r3
    ldr r0, =273
    str r0, [r1]
    ldr r0, =-128
    add r0, r11, r0
    ldr r1, =10
    ldr r2, =4
    mul r3, r1, r2
    add r1, r0, r3
    ldr r0, =574
    str r0, [r1]
    ldr r0, =-128
    add r0, r11, r0
    ldr r1, =11
    ldr r2, =4
    mul r3, r1, r2
    add r1, r0, r3
    ldr r0, =905
    str r0, [r1]
    ldr r0, =-128
    add r0, r11, r0
    ldr r1, =12
    ldr r2, =4
    mul r3, r1, r2
    add r1, r0, r3
    ldr r0, =354
    str r0, [r1]
    ldr r0, =-128
    add r0, r11, r0
    ldr r1, =13
    ldr r2, =4
    mul r3, r1, r2
    add r1, r0, r3
    ldr r0, =657
    str r0, [r1]
    ldr r0, =-128
    add r0, r11, r0
    ldr r1, =14
    ldr r2, =4
    mul r3, r1, r2
    add r1, r0, r3
    ldr r0, =935
    str r0, [r1]
    ldr r0, =-128
    add r0, r11, r0
    ldr r1, =15
    ldr r2, =4
    mul r3, r1, r2
    add r1, r0, r3
    ldr r0, =264
    str r0, [r1]
    ldr r0, =-128
    add r0, r11, r0
    ldr r1, =16
    ldr r2, =4
    mul r3, r1, r2
    add r1, r0, r3
    ldr r0, =639
    str r0, [r1]
    ldr r0, =-128
    add r0, r11, r0
    ldr r1, =17
    ldr r2, =4
    mul r3, r1, r2
    add r1, r0, r3
    ldr r0, =459
    str r0, [r1]
    ldr r0, =-128
    add r0, r11, r0
    ldr r1, =18
    ldr r2, =4
    mul r3, r1, r2
    add r1, r0, r3
    ldr r0, =29
    str r0, [r1]
    ldr r0, =-128
    add r0, r11, r0
    ldr r1, =19
    ldr r2, =4
    mul r3, r1, r2
    add r1, r0, r3
    ldr r0, =68
    str r0, [r1]
    ldr r0, =-128
    add r0, r11, r0
    ldr r1, =20
    ldr r2, =4
    mul r3, r1, r2
    add r1, r0, r3
    ldr r0, =929
    str r0, [r1]
    ldr r0, =-128
    add r0, r11, r0
    ldr r1, =21
    ldr r2, =4
    mul r3, r1, r2
    add r1, r0, r3
    ldr r0, =756
    str r0, [r1]
    ldr r0, =-128
    add r0, r11, r0
    ldr r1, =22
    ldr r2, =4
    mul r3, r1, r2
    add r1, r0, r3
    ldr r0, =452
    str r0, [r1]
    ldr r0, =-128
    add r0, r11, r0
    ldr r1, =23
    ldr r2, =4
    mul r3, r1, r2
    add r1, r0, r3
    ldr r0, =279
    str r0, [r1]
    ldr r0, =-128
    add r0, r11, r0
    ldr r1, =24
    ldr r2, =4
    mul r3, r1, r2
    add r1, r0, r3
    ldr r0, =58
    str r0, [r1]
    ldr r0, =-128
    add r0, r11, r0
    ldr r1, =25
    ldr r2, =4
    mul r3, r1, r2
    add r1, r0, r3
    ldr r0, =87
    str r0, [r1]
    ldr r0, =-128
    add r0, r11, r0
    ldr r1, =26
    ldr r2, =4
    mul r3, r1, r2
    add r1, r0, r3
    ldr r0, =96
    str r0, [r1]
    ldr r0, =-128
    add r0, r11, r0
    ldr r1, =27
    ldr r2, =4
    mul r3, r1, r2
    add r1, r0, r3
    ldr r0, =36
    str r0, [r1]
    ldr r0, =-128
    add r0, r11, r0
    ldr r1, =28
    ldr r2, =4
    mul r3, r1, r2
    add r1, r0, r3
    ldr r0, =39
    str r0, [r1]
    ldr r0, =-128
    add r0, r11, r0
    ldr r1, =29
    ldr r2, =4
    mul r3, r1, r2
    add r1, r0, r3
    ldr r0, =28
    str r0, [r1]
    ldr r0, =-128
    add r0, r11, r0
    ldr r1, =30
    ldr r2, =4
    mul r3, r1, r2
    add r1, r0, r3
    ldr r0, =1
    str r0, [r1]
    ldr r0, =-128
    add r0, r11, r0
    ldr r1, =31
    ldr r2, =4
    mul r3, r1, r2
    add r1, r0, r3
    ldr r0, =290
    str r0, [r1]
    ldr r0, =-128
    add r0, r11, r0
    ldr r1, =0
    ldr r2, =4
    mul r3, r1, r2
    add r1, r0, r3
    ldr r0, =-256
    add r0, r11, r0
    ldr r2, =0
    ldr r3, =4
    mul r4, r2, r3
    add r2, r0, r4
    STM SP, {r0, r1, r2}
    ldr r0, [sp, #4]
    ldr r1, [sp, #8]
    bl arrCopy
    LDMIB SP, {r1, r2}
    ldr r1, =-256
    add r1, r11, r1
    ldr r2, =0
    ldr r3, =4
    mul r4, r2, r3
    add r2, r1, r4
    STM SP, {r0, r1, r2}
    ldr r0, [sp, #8]
    bl revert
    LDMIB SP, {r1, r2}
    mov r1, r0
    ldr r0, [SP]
    push {lr}
    Ldr r0, =0
    pop {lr}
    b bb9_0
bb9_0:
    ldr r1, =32
    cmp r0, r1
    ldr r2, =0
    ldrlt r2, =1
    mov r1, r2
    ldr r2, =0
    cmp r1, r2
    ldr r3, =0
    ldrne r3, =1
    ldr r2, =0
    cmp r1, r2
    bne bb9_1
    b bb9_2
bb9_1:
    b litpool9_0
    .pool
litpool9_0:
    ldr r1, =-256
    add r1, r11, r1
    ldr r2, =4
    mul r3, r0, r2
    add r2, r1, r3
    ldr r1, [r2]
    STM SP, {r0, r1}
    ldr r0, [sp, #4]
    bl put_int
    LDM sp, {r0, r1}
    add r1, r0, #1
    push {lr}
    Mov r0, r1
    pop {lr}
    b bb9_0
bb9_2:
    ldr r0, =-256
    add r0, r11, r0
    ldr r1, =0
    ldr r2, =4
    mul r3, r1, r2
    add r1, r0, r3
    STM SP, {r0, r1}
    ldr r0, [sp, #4]
    bl bubblesort
    LDMIB SP, {r1}
    push {lr}
    Ldr r0, =0
    pop {lr}
    b bb9_3
bb9_3:
    ldr r1, =32
    cmp r0, r1
    ldr r2, =0
    ldrlt r2, =1
    mov r1, r2
    ldr r2, =0
    cmp r1, r2
    ldr r3, =0
    ldrne r3, =1
    ldr r2, =0
    cmp r1, r2
    bne bb9_4
    b bb9_5
bb9_4:
    ldr r1, =-256
    add r1, r11, r1
    ldr r2, =4
    mul r3, r0, r2
    add r2, r1, r3
    ldr r1, [r2]
    STM SP, {r0, r1}
    ldr r0, [sp, #4]
    bl put_int
    LDM sp, {r0, r1}
    add r1, r0, #1
    push {lr}
    Mov r0, r1
    pop {lr}
    b bb9_3
bb9_5:
    ldr r0, =-256
    add r0, r11, r0
    ldr r1, =0
    ldr r2, =4
    mul r3, r1, r2
    add r1, r0, r3
    STM SP, {r0, r1}
    ldr r0, [sp, #4]
    bl getMid
    LDMIB SP, {r1}
    STM SP, {r0}
    ldr r0, [sp]
    bl put_int
    LDM sp, {r0}
    ldr r0, =-256
    add r0, r11, r0
    ldr r1, =0
    ldr r2, =4
    mul r3, r1, r2
    add r1, r0, r3
    STM SP, {r0, r1}
    ldr r0, [sp, #4]
    bl getMost
    LDMIB SP, {r1}
    STM SP, {r0}
    ldr r0, [sp]
    bl put_int
    LDM sp, {r0}
    ldr r0, =-128
    add r0, r11, r0
    ldr r1, =0
    ldr r2, =4
    mul r3, r1, r2
    add r1, r0, r3
    ldr r0, =-256
    add r0, r11, r0
    ldr r2, =0
    ldr r3, =4
    mul r4, r2, r3
    add r2, r0, r4
    STM SP, {r0, r1, r2}
    ldr r0, [sp, #4]
    ldr r1, [sp, #8]
    bl arrCopy
    LDMIB SP, {r1, r2}
    ldr r1, =-256
    add r1, r11, r1
    ldr r2, =0
    ldr r3, =4
    mul r4, r2, r3
    add r2, r1, r4
    STM SP, {r0, r1, r2}
    ldr r0, [sp, #8]
    bl bubblesort
    LDMIB SP, {r1, r2}
    mov r1, r0
    ldr r0, [SP]
    push {lr}
    Ldr r0, =0
    pop {lr}
    b bb9_6
bb9_6:
    ldr r1, =32
    cmp r0, r1
    ldr r2, =0
    ldrlt r2, =1
    mov r1, r2
    ldr r2, =0
    cmp r1, r2
    ldr r3, =0
    ldrne r3, =1
    ldr r2, =0
    cmp r1, r2
    bne bb9_7
    b bb9_8
bb9_7:
    b litpool9_1
    .pool
litpool9_1:
    ldr r1, =-256
    add r1, r11, r1
    ldr r2, =4
    mul r3, r0, r2
    add r2, r1, r3
    ldr r1, [r2]
    STM SP, {r0, r1}
    ldr r0, [sp, #4]
    bl put_int
    LDM sp, {r0, r1}
    add r1, r0, #1
    push {lr}
    Mov r0, r1
    pop {lr}
    b bb9_6
bb9_8:
    ldr r0, =-128
    add r0, r11, r0
    ldr r1, =0
    ldr r2, =4
    mul r3, r1, r2
    add r1, r0, r3
    ldr r0, =-256
    add r0, r11, r0
    ldr r2, =0
    ldr r3, =4
    mul r4, r2, r3
    add r2, r0, r4
    STM SP, {r0, r1, r2}
    ldr r0, [sp, #4]
    ldr r1, [sp, #8]
    bl arrCopy
    LDMIB SP, {r1, r2}
    ldr r1, =-256
    add r1, r11, r1
    ldr r2, =0
    ldr r3, =4
    mul r4, r2, r3
    add r2, r1, r4
    STM SP, {r0, r1, r2}
    ldr r0, [sp, #8]
    bl insertsort
    LDMIB SP, {r1, r2}
    mov r1, r0
    ldr r0, [SP]
    push {lr}
    Ldr r0, =0
    pop {lr}
    b bb9_9
bb9_9:
    ldr r1, =32
    cmp r0, r1
    ldr r2, =0
    ldrlt r2, =1
    mov r1, r2
    ldr r2, =0
    cmp r1, r2
    ldr r3, =0
    ldrne r3, =1
    ldr r2, =0
    cmp r1, r2
    bne bb9_10
    b bb9_11
bb9_10:
    ldr r1, =-256
    add r1, r11, r1
    ldr r2, =4
    mul r3, r0, r2
    add r2, r1, r3
    ldr r1, [r2]
    STM SP, {r0, r1}
    ldr r0, [sp, #4]
    bl put_int
    LDM sp, {r0, r1}
    add r1, r0, #1
    push {lr}
    Mov r0, r1
    pop {lr}
    b bb9_9
bb9_11:
    ldr r0, =-128
    add r0, r11, r0
    ldr r1, =0
    ldr r2, =4
    mul r3, r1, r2
    add r1, r0, r3
    ldr r0, =-256
    add r0, r11, r0
    ldr r2, =0
    ldr r3, =4
    mul r4, r2, r3
    add r2, r0, r4
    STM SP, {r0, r1, r2}
    ldr r0, [sp, #4]
    ldr r1, [sp, #8]
    bl arrCopy
    LDMIB SP, {r1, r2}
    ldr r1, =-256
    add r1, r11, r1
    ldr r2, =0
    ldr r3, =4
    mul r4, r2, r3
    add r2, r1, r4
    STM SP, {r0, r1, r2}
    ldr r0, [sp, #8]
    ldr r1, =0
    ldr r2, =31
    bl QuickSort
    LDMIB SP, {r1, r2}
    mov r1, r0
    ldr r0, [SP]
    push {lr}
    Ldr r0, =0
    pop {lr}
    b bb9_12
bb9_12:
    b litpool9_2
    .pool
litpool9_2:
    ldr r1, =32
    cmp r0, r1
    ldr r2, =0
    ldrlt r2, =1
    mov r1, r2
    ldr r2, =0
    cmp r1, r2
    ldr r3, =0
    ldrne r3, =1
    ldr r2, =0
    cmp r1, r2
    bne bb9_13
    b bb9_14
bb9_13:
    ldr r1, =-256
    add r1, r11, r1
    ldr r2, =4
    mul r3, r0, r2
    add r2, r1, r3
    ldr r1, [r2]
    STM SP, {r0, r1}
    ldr r0, [sp, #4]
    bl put_int
    LDM sp, {r0, r1}
    add r1, r0, #1
    push {lr}
    Mov r0, r1
    pop {lr}
    b bb9_12
bb9_14:
    ldr r0, =-128
    add r0, r11, r0
    ldr r1, =0
    ldr r2, =4
    mul r3, r1, r2
    add r1, r0, r3
    ldr r0, =-256
    add r0, r11, r0
    ldr r2, =0
    ldr r3, =4
    mul r4, r2, r3
    add r2, r0, r4
    STM SP, {r0, r1, r2}
    ldr r0, [sp, #4]
    ldr r1, [sp, #8]
    bl arrCopy
    LDMIB SP, {r1, r2}
    ldr r1, =-256
    add r1, r11, r1
    ldr r2, =0
    ldr r3, =4
    mul r4, r2, r3
    add r2, r1, r4
    STM SP, {r0, r1, r2}
    ldr r0, [sp, #8]
    ldr r1, =4
    bl calSum
    LDMIB SP, {r1, r2}
    mov r1, r0
    ldr r0, [SP]
    push {lr}
    Ldr r0, =0
    pop {lr}
    b bb9_15
bb9_15:
    ldr r1, =32
    cmp r0, r1
    ldr r2, =0
    ldrlt r2, =1
    mov r1, r2
    ldr r2, =0
    cmp r1, r2
    ldr r3, =0
    ldrne r3, =1
    ldr r2, =0
    cmp r1, r2
    bne bb9_16
    b bb9_17
bb9_16:
    ldr r1, =-256
    add r1, r11, r1
    ldr r2, =4
    mul r3, r0, r2
    add r2, r1, r3
    ldr r1, [r2]
    STM SP, {r0, r1}
    ldr r0, [sp, #4]
    bl put_int
    LDM sp, {r0, r1}
    add r1, r0, #1
    push {lr}
    Mov r0, r1
    pop {lr}
    b bb9_15
bb9_17:
    ldr r0, =-128
    add r0, r11, r0
    ldr r1, =0
    ldr r2, =4
    mul r3, r1, r2
    add r1, r0, r3
    ldr r0, =-256
    add r0, r11, r0
    ldr r2, =0
    ldr r3, =4
    mul r4, r2, r3
    add r2, r0, r4
    STM SP, {r0, r1, r2}
    ldr r0, [sp, #4]
    ldr r1, [sp, #8]
    bl arrCopy
    LDMIB SP, {r1, r2}
    ldr r1, =-256
    add r1, r11, r1
    ldr r2, =0
    ldr r3, =4
    mul r4, r2, r3
    add r2, r1, r4
    STM SP, {r0, r1, r2}
    ldr r0, [sp, #8]
    ldr r1, =3
    bl avgPooling
    LDMIB SP, {r1, r2}
    mov r1, r0
    ldr r0, [SP]
    push {lr}
    Ldr r0, =0
    pop {lr}
    b bb9_18
bb9_18:
    b litpool9_3
    .pool
litpool9_3:
    ldr r1, =32
    cmp r0, r1
    ldr r2, =0
    ldrlt r2, =1
    mov r1, r2
    ldr r2, =0
    cmp r1, r2
    ldr r3, =0
    ldrne r3, =1
    ldr r2, =0
    cmp r1, r2
    bne bb9_19
    b bb9_20
bb9_19:
    ldr r1, =-256
    add r1, r11, r1
    ldr r2, =4
    mul r3, r0, r2
    add r2, r1, r3
    ldr r1, [r2]
    STM SP, {r0, r1}
    ldr r0, [sp, #4]
    bl put_int
    LDM sp, {r0, r1}
    add r1, r0, #1
    push {lr}
    Mov r0, r1
    pop {lr}
    b bb9_18
bb9_20:
    b bb9_21
bb9_21:
    ldr r0, =0
    mov sp, r11
    pop {r4, r11, lr}
    bx lr
    .pool
Addr9_0:
    .long ..n

    .type ..n, %object
    .comm ..n, 4, 4

