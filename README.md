MIST32 Processor Verification Tool
==================================

Open Design Computer Project - [http://open-arch.org/](http://open-arch.org/)


It provides the following functions.
---
  Instruction level verification : Make sure that the individual instruction to work properly. The tool will generate test vectors for that.
  
  Function level verification : Verify that it works correctly in the order of different instructions. The tool will generate test vectors for that.
  
  System level verification : Will do the check, including an interrupt. The tool will generate test vectors for that.
  
  
You need the following tools in order to use this system.
---
[binutils-mist32](https://github.com/techno/binutils-mist32)


Instructions used in the test vectors(Instruction level verification).
---
  cmp

  wl16
  
  wh16
  
  xor
  
  movepc
  
  b
  
  br
  
  srspw
  
  ld32
  
  st32
  
  
