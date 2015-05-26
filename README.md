MIST32 Processor Verification Tool
==================================

Open Design Computer Project - [http://open-arch.org/](http://open-arch.org/)


It provides the following functions.
---
  Test data generator : Generate a random data and corner cases.

  Instruction level verification : Make sure that the individual instruction to work properly. The tool will generate test vectors for that.

    For any instructions

  Function level verification : Verify that it works correctly in the order of different instructions. The tool will generate test vectors for that.
  
    Branch predictor check
	
	Fowarding check
	
	IRQ of Divide Error
	
	IRQ of UTIM64
  
  (coming soon!) System level verification : Will do the check, including an interrupt. The tool will generate test vectors for that.
  
  
You need the following tools in order to use this system.
---
[binutils-mist32](https://github.com/techno/binutils-mist32)


Instructions used in the test vectors(Instruction level verification).
---
  cmp
  
  xor

  wl16
  
  wh16
  
  lil
  
  xor
  
  movepc
  
  b
  
  br
  
  srspw
  
  ld32
  
  st32
  
  
Licence
---
  BSD 2-Clause License
  
  See ./LICENSE

Contact
---
  Takahiro Ito
  
  Twitter : (@cpu_labs)
  
  Website : [Open Design Computer Project](http://open-arch.org) or [CPU-Labs](http://cpu-labs.com)
  

