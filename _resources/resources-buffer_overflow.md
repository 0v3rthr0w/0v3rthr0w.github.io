---
title: buffer_overflow
layout: page
---
# buffer overflow

## corelean

### theory
* instruction pointer
    * `eip` in 32-bit mode, and `rip` in 64-bit mode
    * ' if you can modify those 4 bytes, you own the application'
* windows application memory contains 3 components
    * code segment, data segment, stack segment
    * stack grows down
    * `push` adds to top of stack
    * `pop` will removes from stack and puts into register
* stack pointer
    * `esp` points to memory address
        * after `push`, `esp` points to a lower memory address
            * by the size of the data,
            * in a pointers/addresses case, this is 4 bytes
            * decrements (usually) happen before the item is placed on stack
        * after `pop`, `esp` points to a higher address
            * increments happen after an item is removed from the stack
* when function/subroutine is entered a stack frame is created
    * frame keeps the parameters of the parent procedure together and is used
        to pass arguments to the subroutine
    * current location of the stack can be accessed teh the stack pointer `esp`
    * current base of function is contained in the base pointer (EBP)

### process memory
    * when app is started in Win32 a process is created and virtual memory is
        assigned to it
        * 32 bit process address range 
            * `0x00000000` to `0x7FFFFFFF` (user land)
            * `0x80000000` to `0xFFFFFFFF` (kernel land)

### stack
* stack is piece of the process memory
    * Last In First Out (LIFO)
    * gets allocated for each thread by the OS
    * size is defined when it gets created and doesn't change
    * when created, stack pointer points to the top of the stack (highest
        address)
    * as info is pushed onto stack, pointer decrements (goes to a lower
        address)
    * in essence, the stack grows to a lower address
    * contains local variables, function calls, and other info that does not
        need to be stored for a larger amount of time
    * every time a function is called, the function parameters are pushed onto
        the stack, as well as the saved values of registers (`ebp`, `eip`)
    * when function returns, the saved value of `eip` is retrieved from stack and
        placed back in `eip`, so normal application flow can resume

### general purpose registers

* `EAX` - accumulator : used for performing calculations, and used to store return values from function calls. Basic operations such as add, subtract, compare use this general-purpose register
* `EBX` - base (does not have anything to do with base pointer). It has no general purpose and can be used to store data.
* `ECX` - counter : used for iterations. ECX counts downward.
* `EDX` - data : this is an extension of the EAX register. It allows for more complex calculations (multiply, divide) by allowing extra data to be stored to facilitate those calculations.
* `ESP` - stack pointer
* `EBP` - base pointer
* `ESI` - source index : holds location of input data
* `EDI` - destination index� : points to location of where result of data operation is stored
* `EIP` - instruction pointer

## tools
* [pwntools](https://github.com/Gallopsled/pwntools)

## references
* [dotstackbufferoverflowgood](https://github.com/justinsteven/dostackbufferoverflowgood)
* [classic stack based buffer
    overflow](https://sploitfun.wordpress.com/2015/05/08/classic-stack-based-buffer-overflow/)
* [netsec simple buffer overflows](http://netsec.ws/?p=180)
* [DeepSec Hands on Exploit Development Pt
    2](http://blog.deepsec.net/deepsec-2013-workshop-hands-on-exploit-development-part-2/)
* [dotstackbufferoverflowgood](https://github.com/justinsteven/dostackbufferoverflowgood)
