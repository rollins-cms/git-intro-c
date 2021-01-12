.global main

/*** External functions ***/
.extern printf

/*** Data section ***/
.data
x: .word 2  //x is initially 2
format: .asciz "Value of x is %d\n"

/*** Text section ***/
.text

main:
    push {ip, lr}

    mov r0, #5

    // Use = to get the address of a label
    // =x is like &x in C
    ldr r2, =x

    // get the value of from the address of x
    // and store it in r1
    ldr r1, [r2]

    //setup call to printf
    ldr r0, =format

    //call printf
    bl printf

    pop {ip, pc}
