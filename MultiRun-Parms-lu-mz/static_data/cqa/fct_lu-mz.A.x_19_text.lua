_cqa_text_report = {
  paths = {
    {
      hint = {
        {
          details = "Calling (and then returning from) a function prevents many compiler optimizations (like vectorization), breaks control flow (which reduces pipeline performance) and executes extra instructions to save/restore the registers used inside it, which is very expensive (dozens of cycles). Consider to inline small functions.\n - unknown: 4 occurrences\n",
          title = "CALL instructions",
          txt = "Detected function call instructions.\n",
        },
        {
          title = "Type of elements and instruction set",
          txt = "No instructions are processing arithmetic or math operations on FP elements. This function is probably writing/copying data or processing integer elements.",
        },
        {
          title = "Matching between your function (in the source code) and the binary function",
          txt = "The binary function does not contain any FP arithmetical operations.\nThe binary function is loading 88 bytes.\nThe binary function is storing 60 bytes.",
        },
      },
      expert = {
        {
          title = "General properties",
          txt = "nb instructions    : 91\nloop length        : 350\nused x86 registers : 15\nused mmx registers : 0\nused xmm registers : 0\nused ymm registers : 0\nused zmm registers : 0\nnb stack references: 12\n",
        },
        {
          title = "Front-end",
          txt = "MACRO FUSION NOT POSSIBLE\ninstruction fetch    : 22.00 cycles\ninstruction queue    : 45.50 cycles\ndecoding             : 45.50 cycles\nmicro-operation queue: 51.00 cycles\nfront end            : 51.00 cycles\n",
        },
        {
          title = "Back-end",
          txt = "       | P0    | P1   | P2    | P3    | P4    | P5    | P6\n-------------------------------------------------------------\nuops   | 38.00 | 0.00 | 16.00 | 16.00 | 41.00 | 41.00 | 17.00\ncycles | 38.00 | 0.00 | 16.00 | 16.00 | 41.00 | 41.00 | 17.00\n\nCycles executing div or sqrt instructions: 44.00-52.00\n",
        },
        {
          title = "Cycles summary",
          txt = "Front-end : 51.00\nDispatch  : 41.00\nDIV/SQRT  : 44.00-52.00\nOverall L1: 51.00-52.00\n",
        },
        {
          title = "Vectorization ratios",
          txt = "all     : 0%\nload    : 0%\nstore   : 0%\nmul     : 0%\nadd-sub : NA (no add-sub vectorizable/vectorized instructions)\nfma     : NA (no fma vectorizable/vectorized instructions)\ndiv/sqrt: 0%\nother   : 0%\n",
        },
        {
          title = "Vector efficiency ratios",
          txt = "all     : 7%\nload    : 8%\nstore   : 8%\nmul     : 6%\nadd-sub : NA (no add-sub vectorizable/vectorized instructions)\nfma     : NA (no fma vectorizable/vectorized instructions)\ndiv/sqrt: 6%\nother   : 6%\n",
        },
        {
          title = "Cycles and memory resources usage",
          txt = "Assuming all data fit into the L1 cache, each call to the function takes 52.00 cycles. At this rate:\n - 1% of peak load performance is reached (1.69 out of 128.00 bytes loaded per cycle (GB/s @ 1GHz))\n - 1% of peak store performance is reached (1.15 out of 64.00 bytes stored per cycle (GB/s @ 1GHz))\n",
        },
        {
          title = "Front-end bottlenecks",
          txt = "Found no such bottlenecks.",
        },
        {
          title = "ASM code",
          txt = "In the binary file, the address of the function is: e350\n\nInstruction                       | Nb FU | P0    | P1 | P2   | P3   | P4    | P5   | P6 | Latency | Recip. throughput\n----------------------------------------------------------------------------------------------------------------------\nPUSH %RBP                         | 1     | 0     | 0  | 0    | 0    | 1     | 1    | 0  | 0       | 1\nMOV %RSP,%RBP                     | 1     | 0     | 0  | 0    | 0    | 0.50  | 0.50 | 0  | 0       | 0.50\nPUSH %R15                         | 1     | 0     | 0  | 0    | 0    | 1     | 1    | 0  | 0       | 1\nPUSH %R14                         | 1     | 0     | 0  | 0    | 0    | 1     | 1    | 0  | 0       | 1\nPUSH %R13                         | 1     | 0     | 0  | 0    | 0    | 1     | 1    | 0  | 0       | 1\nPUSH %R12                         | 1     | 0     | 0  | 0    | 0    | 1     | 1    | 0  | 0       | 1\nPUSH %RBX                         | 1     | 0     | 0  | 0    | 0    | 1     | 1    | 0  | 0       | 1\nLEA (%RDI),%RBX                   | 1     | 0     | 0  | 0    | 0    | 0.50  | 0.50 | 0  | 1       | 0.50\nAND $-0x20,%RSP                   | 1     | 0     | 0  | 0    | 0    | 0.50  | 0.50 | 0  | 1       | 0.50\nLEA -0x110(%RSP),%RSP             | 1     | 0     | 0  | 0    | 0    | 0.50  | 0.50 | 0  | 1       | 0.50\nMOV 0x28(%RDI),%RDX               | 1     | 0     | 0  | 1    | 0    | 0     | 0    | 0  | 4       | 1\nMOV 0x30(%RDI),%RAX               | 1     | 0     | 0  | 1    | 0    | 0     | 0    | 0  | 4       | 1\nMOV 0x20(%RDI),%RCX               | 1     | 0     | 0  | 1    | 0    | 0     | 0    | 0  | 4       | 1\nMOV %RDX,0x60(%RSP)               | 1     | 0     | 0  | 0.50 | 0.50 | 0     | 0    | 1  | 0       | 1\nMOV %RAX,0x68(%RSP)               | 1     | 0     | 0  | 0.50 | 0.50 | 0     | 0    | 1  | 0       | 1\nMOV %RCX,0x40(%RSP)               | 1     | 0     | 0  | 0.50 | 0.50 | 0     | 0    | 1  | 0       | 1\nCALL 2080 <@plt_start@+0x60>      | 1     | 0     | 0  | 0    | 0    | 0.50  | 0.50 | 0  | 0       | 2\nMOV %EAX,0x2c(%RSP)               | 1     | 0     | 0  | 0.50 | 0.50 | 0     | 0    | 1  | 0       | 1\nLEA (%RAX),%R15D                  | 1     | 0     | 0  | 0    | 0    | 0.50  | 0.50 | 0  | 1       | 0.50\nCALL 2190 <@plt_start@+0x170>     | 1     | 0     | 0  | 0    | 0    | 0.50  | 0.50 | 0  | 0       | 2\nMOV 0x10(%RBX),%RDI               | 1     | 0     | 0  | 1    | 0    | 0     | 0    | 0  | 4       | 1\nLEA (%RAX),%ESI                   | 1     | 0     | 0  | 0    | 0    | 0.50  | 0.50 | 0  | 1       | 0.50\nMOV %EAX,0x24(%RSP)               | 1     | 0     | 0  | 0.50 | 0.50 | 0     | 0    | 1  | 0       | 1\nMOV (%RDI),%EAX                   | 1     | 0     | 0  | 1    | 0    | 0     | 0    | 0  | 4       | 1\nMOV %EAX,%EDX                     | 1     | 0     | 0  | 0    | 0    | 0.50  | 0.50 | 0  | 0       | 0.50\nSAR $0x1f,%EDX                    | 1     | 0     | 0  | 0    | 0    | 1     | 0    | 0  | 1       | 1\nIDIV %R15D                        | 29    | 14.50 | 0  | 0    | 0    | 14.50 | 0    | 0  | 37-49   | 22-26\nCMP %EDX,%ESI                     | 1     | 0     | 0  | 0    | 0    | 0.50  | 0.50 | 0  | 1       | 0.50\nJL ebd5 <setbv_._omp_fn.0+0x885>  | 1     | 0     | 0  | 0    | 0    | 0     | 1    | 0  | 0       | 1-2\nMOV 0x24(%RSP),%R8D               | 1     | 0     | 0  | 1    | 0    | 0     | 0    | 0  | 4       | 1\nIMUL %EAX,%R8D                    | 1     | 0     | 0  | 0    | 0    | 1     | 0    | 0  | 3       | 1\nADD %R8D,%EDX                     | 1     | 0     | 0  | 0    | 0    | 0.50  | 0.50 | 0  | 1       | 0.50\nADD %EDX,%EAX                     | 1     | 0     | 0  | 0    | 0    | 0.50  | 0.50 | 0  | 1       | 0.50\nMOV %EAX,0x28(%RSP)               | 1     | 0     | 0  | 0.50 | 0.50 | 0     | 0    | 1  | 0       | 1\nCMP %EAX,%EDX                     | 1     | 0     | 0  | 0    | 0    | 0.50  | 0.50 | 0  | 1       | 0.50\nJGE e5be <setbv_._omp_fn.0+0x26e> | 1     | 0     | 0  | 0    | 0    | 0     | 1    | 0  | 0       | 1-2\nLEA 0x1(%RDX),%R13D               | 1     | 0     | 0  | 0    | 0    | 0.50  | 0.50 | 0  | 1       | 0.50\nLEA 0x2e4ff(%RIP),%R15            | 1     | 0     | 0  | 0    | 0    | 0.50  | 0.50 | 0  | 1       | 0.50\nMOV %R13D,0x38(%RSP)              | 1     | 0     | 0  | 0.50 | 0.50 | 0     | 0    | 1  | 0       | 1\nXCHG %AX,%AX                      | 1     | 0     | 0  | 0    | 0    | 0.50  | 0.50 | 0  | 0       | 0.50\nCALL 2220 <@plt_start@+0x200>     | 1     | 0     | 0  | 0    | 0    | 0.50  | 0.50 | 0  | 0       | 2\nMOV 0x18(%RBX),%R15               | 1     | 0     | 0  | 1    | 0    | 0     | 0    | 0  | 4       | 1\nMOV (%R15),%EAX                   | 1     | 0     | 0  | 1    | 0    | 0     | 0    | 0  | 4       | 1\nMOV %EAX,%EDX                     | 1     | 0     | 0  | 0    | 0    | 0.50  | 0.50 | 0  | 0       | 0.50\nSAR $0x1f,%EDX                    | 1     | 0     | 0  | 0    | 0    | 1     | 0    | 0  | 1       | 1\nIDIVL 0x2c(%RSP)                  | 30    | 14.50 | 0  | 0.50 | 0.50 | 14.50 | 0    | 0  | 37-49   | 22-26\nCMP %EDX,0x24(%RSP)               | 1     | 0     | 0  | 1    | 0    | 0.50  | 0.50 | 0  | 1       | 1\nJL ebdf <setbv_._omp_fn.0+0x88f>  | 1     | 0     | 0  | 0    | 0    | 0     | 1    | 0  | 0       | 1-2\nMOV 0x24(%RSP),%R8D               | 1     | 0     | 0  | 1    | 0    | 0     | 0    | 0  | 4       | 1\nIMUL %EAX,%R8D                    | 1     | 0     | 0  | 0    | 0    | 1     | 0    | 0  | 3       | 1\nADD %R8D,%EDX                     | 1     | 0     | 0  | 0    | 0    | 0.50  | 0.50 | 0  | 1       | 0.50\nADD %EDX,%EAX                     | 1     | 0     | 0  | 0    | 0    | 0.50  | 0.50 | 0  | 1       | 0.50\nMOV %EAX,0x28(%RSP)               | 1     | 0     | 0  | 0.50 | 0.50 | 0     | 0    | 1  | 0       | 1\nCMP %EAX,%EDX                     | 1     | 0     | 0  | 0    | 0    | 0.50  | 0.50 | 0  | 1       | 0.50\nJGE e7f8 <setbv_._omp_fn.0+0x4a8> | 1     | 0     | 0  | 0    | 0    | 0     | 1    | 0  | 0       | 1-2\nLEA 0x1(%RDX),%R15D               | 1     | 0     | 0  | 0    | 0    | 0.50  | 0.50 | 0  | 1       | 0.50\nLEA 0x2e2d6(%RIP),%R14            | 1     | 0     | 0  | 0    | 0    | 0.50  | 0.50 | 0  | 1       | 0.50\nMOV %R15D,0x38(%RSP)              | 1     | 0     | 0  | 0.50 | 0.50 | 0     | 0    | 1  | 0       | 1\nMOV 0x40(%RSP),%R10               | 1     | 0     | 0  | 1    | 0    | 0     | 0    | 0  | 4       | 1\nNOPL (%RAX)                       | 1     | 0     | 0  | 0    | 0    | 0.50  | 0.50 | 0  | 0       | 0.50\nCALL 2220 <@plt_start@+0x200>     | 1     | 0     | 0  | 0    | 0    | 0.50  | 0.50 | 0  | 0       | 2\nMOV 0x18(%RBX),%R14               | 1     | 0     | 0  | 1    | 0    | 0     | 0    | 0  | 4       | 1\nLEA 0x90(%RSP),%RDI               | 1     | 0     | 0  | 0    | 0    | 0.50  | 0.50 | 0  | 1       | 0.50\nMOVL $0x1,0x84(%RSP)              | 1     | 0     | 0  | 0.50 | 0.50 | 0     | 0    | 1  | 1       | 1\nMOV $0x1,%R12D                    | 1     | 0     | 0  | 0    | 0    | 0.50  | 0.50 | 0  | 1       | 0.50\nMOV %RDI,0x48(%RSP)               | 1     | 0     | 0  | 0.50 | 0.50 | 0     | 0    | 1  | 0       | 1\nLEA 0x84(%RSP),%R10               | 1     | 0     | 0  | 0    | 0    | 0.50  | 0.50 | 0  | 1       | 0.50\nMOV (%R14),%R9D                   | 1     | 0     | 0  | 1    | 0    | 0     | 0    | 0  | 4       | 1\nTEST %R9D,%R9D                    | 1     | 0     | 0  | 0    | 0    | 0.50  | 0.50 | 0  | 1       | 0.50\nJLE e954 <setbv_._omp_fn.0+0x604> | 1     | 0     | 0  | 0    | 0    | 0     | 1    | 0  | 0       | 1-2\nMOV 0x24(%RSP),%R14D              | 1     | 0     | 0  | 1    | 0    | 0     | 0    | 0  | 4       | 1\nLEA (%R9),%R15D                   | 1     | 0     | 0  | 0    | 0    | 0.50  | 0.50 | 0  | 1       | 0.50\nJMP e855 <setbv_._omp_fn.0+0x505> | 1     | 0     | 0  | 0    | 0    | 0     | 1    | 0  | 0       | 2\nNOPL (%RAX)                       | 1     | 0     | 0  | 0    | 0    | 0.50  | 0.50 | 0  | 0       | 0.50\nNOPL (%RAX)                       | 1     | 0     | 0  | 0    | 0    | 0.50  | 0.50 | 0  | 0       | 0.50\nLEA -0x28(%RBP),%RSP              | 1     | 0     | 0  | 0    | 0    | 0.50  | 0.50 | 0  | 1       | 0.50\nPOP %RBX                          | 2     | 0     | 0  | 0.50 | 0.50 | 0     | 0    | 1  | 0       | 1\nPOP %R12                          | 2     | 0     | 0  | 0.50 | 0.50 | 0     | 0    | 1  | 0       | 1\nPOP %R13                          | 2     | 0     | 0  | 0.50 | 0.50 | 0     | 0    | 1  | 0       | 1\nPOP %R14                          | 2     | 0     | 0  | 0.50 | 0.50 | 0     | 0    | 1  | 0       | 1\nPOP %R15                          | 2     | 0     | 0  | 0.50 | 0.50 | 0     | 0    | 1  | 0       | 1\nPOP %RBP                          | 2     | 0     | 0  | 0.50 | 0.50 | 0     | 0    | 1  | 0       | 1\nRET\nADD $0x1,%EAX                     | 1     | 0     | 0  | 0    | 0    | 0.50  | 0.50 | 0  | 1       | 0.50\nXOR %EDX,%EDX\nJMP e3b4 <setbv_._omp_fn.0+0x64>  | 1     | 0     | 0  | 0    | 0    | 0     | 1    | 0  | 0       | 2\nADD $0x1,%EAX                     | 1     | 0     | 0  | 0    | 0    | 0.50  | 0.50 | 0  | 1       | 0.50\nXOR %EDX,%EDX\nJMP e5dd <setbv_._omp_fn.0+0x28d> | 1     | 0     | 0  | 0    | 0    | 0     | 1    | 0  | 0       | 2\nNOPW %CS:(%RAX,%RAX,1)            | 1     | 0     | 0  | 0    | 0    | 0.50  | 0.50 | 0  | 0       | 0.50\nXCHG %AX,%AX                      | 1     | 0     | 0  | 0    | 0    | 0.50  | 0.50 | 0  | 0       | 0.50\n",
        },
      },
      header = {
        "Warnings:\nDetected a function call instruction: ignoring called function instructions.\nRerun with --follow-calls=append to include them to analysis  or with --follow-calls=inline to simulate inlining.",
        "0% of peak computational performance is used (0.00 out of 4.00 FLOP per cycle (GFLOPS @ 1GHz))",
      },
      brief = {
      },
      gain = {
        {
          workaround = " - Try another compiler or update/tune your current one\n - Make array accesses unit-stride:\n  * If your function streams arrays of structures (AoS), try to use structures of arrays instead (SoA):\ndo i a(i)%x = b(i)%x (slow, non stride 1) => do i a%x(i) = b%x(i) (fast, stride 1)\n",
          details = "All SSE/AVX instructions are used in scalar version (process only one data element in vector registers).\nSince your execution units are vector units, only a vectorized function can use their full power.\n",
          title = "Vectorization",
          txt = "Your function is not vectorized.\nOnly 7% of vector register length is used (average across all SSE/AVX instructions).\nBy vectorizing your function, you can lower the cost of an iteration from 52.00 to 3.40 cycles (15.30x speedup).",
        },
        {
          workaround = "Reduce the number of division or square root instructions:\n - If denominator is constant over iterations, use reciprocal (replace x/y with x*(1/y)). Check precision impact. This will be done by your compiler with ffast-math or Ofast\n",
          title = "Execution units bottlenecks",
          txt = "Performance is limited by execution of divide and square root operations (the divide/square root unit is a bottleneck).\n",
        },
      },
      potential = {
      },
    },
  },
  AVG = {
      hint = {
        {
          details = "Calling (and then returning from) a function prevents many compiler optimizations (like vectorization), breaks control flow (which reduces pipeline performance) and executes extra instructions to save/restore the registers used inside it, which is very expensive (dozens of cycles). Consider to inline small functions.\n - unknown: 4 occurrences\n",
          title = "CALL instructions",
          txt = "Detected function call instructions.\n",
        },
        {
          title = "Type of elements and instruction set",
          txt = "No instructions are processing arithmetic or math operations on FP elements. This function is probably writing/copying data or processing integer elements.",
        },
        {
          title = "Matching between your function (in the source code) and the binary function",
          txt = "The binary function does not contain any FP arithmetical operations.\nThe binary function is loading 88 bytes.\nThe binary function is storing 60 bytes.",
        },
      },
      expert = {
        {
          title = "General properties",
          txt = "nb instructions    : 91\nloop length        : 350\nused x86 registers : 15\nused mmx registers : 0\nused xmm registers : 0\nused ymm registers : 0\nused zmm registers : 0\nnb stack references: 12\n",
        },
        {
          title = "Front-end",
          txt = "MACRO FUSION NOT POSSIBLE\ninstruction fetch    : 22.00 cycles\ninstruction queue    : 45.50 cycles\ndecoding             : 45.50 cycles\nmicro-operation queue: 51.00 cycles\nfront end            : 51.00 cycles\n",
        },
        {
          title = "Back-end",
          txt = "       | P0    | P1   | P2    | P3    | P4    | P5    | P6\n-------------------------------------------------------------\nuops   | 38.00 | 0.00 | 16.00 | 16.00 | 41.00 | 41.00 | 17.00\ncycles | 38.00 | 0.00 | 16.00 | 16.00 | 41.00 | 41.00 | 17.00\n\nCycles executing div or sqrt instructions: 44.00-52.00\n",
        },
        {
          title = "Cycles summary",
          txt = "Front-end : 51.00\nDispatch  : 41.00\nDIV/SQRT  : 44.00-52.00\nOverall L1: 51.00-52.00\n",
        },
        {
          title = "Vectorization ratios",
          txt = "all     : 0%\nload    : 0%\nstore   : 0%\nmul     : 0%\nadd-sub : NA (no add-sub vectorizable/vectorized instructions)\nfma     : NA (no fma vectorizable/vectorized instructions)\ndiv/sqrt: 0%\nother   : 0%\n",
        },
        {
          title = "Vector efficiency ratios",
          txt = "all     : 7%\nload    : 8%\nstore   : 8%\nmul     : 6%\nadd-sub : NA (no add-sub vectorizable/vectorized instructions)\nfma     : NA (no fma vectorizable/vectorized instructions)\ndiv/sqrt: 6%\nother   : 6%\n",
        },
        {
          title = "Cycles and memory resources usage",
          txt = "Assuming all data fit into the L1 cache, each call to the function takes 52.00 cycles. At this rate:\n - 1% of peak load performance is reached (1.69 out of 128.00 bytes loaded per cycle (GB/s @ 1GHz))\n - 1% of peak store performance is reached (1.15 out of 64.00 bytes stored per cycle (GB/s @ 1GHz))\n",
        },
        {
          title = "Front-end bottlenecks",
          txt = "Found no such bottlenecks.",
        },
        {
          title = "ASM code",
          txt = "In the binary file, the address of the function is: e350\n\nInstruction                       | Nb FU | P0    | P1 | P2   | P3   | P4    | P5   | P6 | Latency | Recip. throughput\n----------------------------------------------------------------------------------------------------------------------\nPUSH %RBP                         | 1     | 0     | 0  | 0    | 0    | 1     | 1    | 0  | 0       | 1\nMOV %RSP,%RBP                     | 1     | 0     | 0  | 0    | 0    | 0.50  | 0.50 | 0  | 0       | 0.50\nPUSH %R15                         | 1     | 0     | 0  | 0    | 0    | 1     | 1    | 0  | 0       | 1\nPUSH %R14                         | 1     | 0     | 0  | 0    | 0    | 1     | 1    | 0  | 0       | 1\nPUSH %R13                         | 1     | 0     | 0  | 0    | 0    | 1     | 1    | 0  | 0       | 1\nPUSH %R12                         | 1     | 0     | 0  | 0    | 0    | 1     | 1    | 0  | 0       | 1\nPUSH %RBX                         | 1     | 0     | 0  | 0    | 0    | 1     | 1    | 0  | 0       | 1\nLEA (%RDI),%RBX                   | 1     | 0     | 0  | 0    | 0    | 0.50  | 0.50 | 0  | 1       | 0.50\nAND $-0x20,%RSP                   | 1     | 0     | 0  | 0    | 0    | 0.50  | 0.50 | 0  | 1       | 0.50\nLEA -0x110(%RSP),%RSP             | 1     | 0     | 0  | 0    | 0    | 0.50  | 0.50 | 0  | 1       | 0.50\nMOV 0x28(%RDI),%RDX               | 1     | 0     | 0  | 1    | 0    | 0     | 0    | 0  | 4       | 1\nMOV 0x30(%RDI),%RAX               | 1     | 0     | 0  | 1    | 0    | 0     | 0    | 0  | 4       | 1\nMOV 0x20(%RDI),%RCX               | 1     | 0     | 0  | 1    | 0    | 0     | 0    | 0  | 4       | 1\nMOV %RDX,0x60(%RSP)               | 1     | 0     | 0  | 0.50 | 0.50 | 0     | 0    | 1  | 0       | 1\nMOV %RAX,0x68(%RSP)               | 1     | 0     | 0  | 0.50 | 0.50 | 0     | 0    | 1  | 0       | 1\nMOV %RCX,0x40(%RSP)               | 1     | 0     | 0  | 0.50 | 0.50 | 0     | 0    | 1  | 0       | 1\nCALL 2080 <@plt_start@+0x60>      | 1     | 0     | 0  | 0    | 0    | 0.50  | 0.50 | 0  | 0       | 2\nMOV %EAX,0x2c(%RSP)               | 1     | 0     | 0  | 0.50 | 0.50 | 0     | 0    | 1  | 0       | 1\nLEA (%RAX),%R15D                  | 1     | 0     | 0  | 0    | 0    | 0.50  | 0.50 | 0  | 1       | 0.50\nCALL 2190 <@plt_start@+0x170>     | 1     | 0     | 0  | 0    | 0    | 0.50  | 0.50 | 0  | 0       | 2\nMOV 0x10(%RBX),%RDI               | 1     | 0     | 0  | 1    | 0    | 0     | 0    | 0  | 4       | 1\nLEA (%RAX),%ESI                   | 1     | 0     | 0  | 0    | 0    | 0.50  | 0.50 | 0  | 1       | 0.50\nMOV %EAX,0x24(%RSP)               | 1     | 0     | 0  | 0.50 | 0.50 | 0     | 0    | 1  | 0       | 1\nMOV (%RDI),%EAX                   | 1     | 0     | 0  | 1    | 0    | 0     | 0    | 0  | 4       | 1\nMOV %EAX,%EDX                     | 1     | 0     | 0  | 0    | 0    | 0.50  | 0.50 | 0  | 0       | 0.50\nSAR $0x1f,%EDX                    | 1     | 0     | 0  | 0    | 0    | 1     | 0    | 0  | 1       | 1\nIDIV %R15D                        | 29    | 14.50 | 0  | 0    | 0    | 14.50 | 0    | 0  | 37-49   | 22-26\nCMP %EDX,%ESI                     | 1     | 0     | 0  | 0    | 0    | 0.50  | 0.50 | 0  | 1       | 0.50\nJL ebd5 <setbv_._omp_fn.0+0x885>  | 1     | 0     | 0  | 0    | 0    | 0     | 1    | 0  | 0       | 1-2\nMOV 0x24(%RSP),%R8D               | 1     | 0     | 0  | 1    | 0    | 0     | 0    | 0  | 4       | 1\nIMUL %EAX,%R8D                    | 1     | 0     | 0  | 0    | 0    | 1     | 0    | 0  | 3       | 1\nADD %R8D,%EDX                     | 1     | 0     | 0  | 0    | 0    | 0.50  | 0.50 | 0  | 1       | 0.50\nADD %EDX,%EAX                     | 1     | 0     | 0  | 0    | 0    | 0.50  | 0.50 | 0  | 1       | 0.50\nMOV %EAX,0x28(%RSP)               | 1     | 0     | 0  | 0.50 | 0.50 | 0     | 0    | 1  | 0       | 1\nCMP %EAX,%EDX                     | 1     | 0     | 0  | 0    | 0    | 0.50  | 0.50 | 0  | 1       | 0.50\nJGE e5be <setbv_._omp_fn.0+0x26e> | 1     | 0     | 0  | 0    | 0    | 0     | 1    | 0  | 0       | 1-2\nLEA 0x1(%RDX),%R13D               | 1     | 0     | 0  | 0    | 0    | 0.50  | 0.50 | 0  | 1       | 0.50\nLEA 0x2e4ff(%RIP),%R15            | 1     | 0     | 0  | 0    | 0    | 0.50  | 0.50 | 0  | 1       | 0.50\nMOV %R13D,0x38(%RSP)              | 1     | 0     | 0  | 0.50 | 0.50 | 0     | 0    | 1  | 0       | 1\nXCHG %AX,%AX                      | 1     | 0     | 0  | 0    | 0    | 0.50  | 0.50 | 0  | 0       | 0.50\nCALL 2220 <@plt_start@+0x200>     | 1     | 0     | 0  | 0    | 0    | 0.50  | 0.50 | 0  | 0       | 2\nMOV 0x18(%RBX),%R15               | 1     | 0     | 0  | 1    | 0    | 0     | 0    | 0  | 4       | 1\nMOV (%R15),%EAX                   | 1     | 0     | 0  | 1    | 0    | 0     | 0    | 0  | 4       | 1\nMOV %EAX,%EDX                     | 1     | 0     | 0  | 0    | 0    | 0.50  | 0.50 | 0  | 0       | 0.50\nSAR $0x1f,%EDX                    | 1     | 0     | 0  | 0    | 0    | 1     | 0    | 0  | 1       | 1\nIDIVL 0x2c(%RSP)                  | 30    | 14.50 | 0  | 0.50 | 0.50 | 14.50 | 0    | 0  | 37-49   | 22-26\nCMP %EDX,0x24(%RSP)               | 1     | 0     | 0  | 1    | 0    | 0.50  | 0.50 | 0  | 1       | 1\nJL ebdf <setbv_._omp_fn.0+0x88f>  | 1     | 0     | 0  | 0    | 0    | 0     | 1    | 0  | 0       | 1-2\nMOV 0x24(%RSP),%R8D               | 1     | 0     | 0  | 1    | 0    | 0     | 0    | 0  | 4       | 1\nIMUL %EAX,%R8D                    | 1     | 0     | 0  | 0    | 0    | 1     | 0    | 0  | 3       | 1\nADD %R8D,%EDX                     | 1     | 0     | 0  | 0    | 0    | 0.50  | 0.50 | 0  | 1       | 0.50\nADD %EDX,%EAX                     | 1     | 0     | 0  | 0    | 0    | 0.50  | 0.50 | 0  | 1       | 0.50\nMOV %EAX,0x28(%RSP)               | 1     | 0     | 0  | 0.50 | 0.50 | 0     | 0    | 1  | 0       | 1\nCMP %EAX,%EDX                     | 1     | 0     | 0  | 0    | 0    | 0.50  | 0.50 | 0  | 1       | 0.50\nJGE e7f8 <setbv_._omp_fn.0+0x4a8> | 1     | 0     | 0  | 0    | 0    | 0     | 1    | 0  | 0       | 1-2\nLEA 0x1(%RDX),%R15D               | 1     | 0     | 0  | 0    | 0    | 0.50  | 0.50 | 0  | 1       | 0.50\nLEA 0x2e2d6(%RIP),%R14            | 1     | 0     | 0  | 0    | 0    | 0.50  | 0.50 | 0  | 1       | 0.50\nMOV %R15D,0x38(%RSP)              | 1     | 0     | 0  | 0.50 | 0.50 | 0     | 0    | 1  | 0       | 1\nMOV 0x40(%RSP),%R10               | 1     | 0     | 0  | 1    | 0    | 0     | 0    | 0  | 4       | 1\nNOPL (%RAX)                       | 1     | 0     | 0  | 0    | 0    | 0.50  | 0.50 | 0  | 0       | 0.50\nCALL 2220 <@plt_start@+0x200>     | 1     | 0     | 0  | 0    | 0    | 0.50  | 0.50 | 0  | 0       | 2\nMOV 0x18(%RBX),%R14               | 1     | 0     | 0  | 1    | 0    | 0     | 0    | 0  | 4       | 1\nLEA 0x90(%RSP),%RDI               | 1     | 0     | 0  | 0    | 0    | 0.50  | 0.50 | 0  | 1       | 0.50\nMOVL $0x1,0x84(%RSP)              | 1     | 0     | 0  | 0.50 | 0.50 | 0     | 0    | 1  | 1       | 1\nMOV $0x1,%R12D                    | 1     | 0     | 0  | 0    | 0    | 0.50  | 0.50 | 0  | 1       | 0.50\nMOV %RDI,0x48(%RSP)               | 1     | 0     | 0  | 0.50 | 0.50 | 0     | 0    | 1  | 0       | 1\nLEA 0x84(%RSP),%R10               | 1     | 0     | 0  | 0    | 0    | 0.50  | 0.50 | 0  | 1       | 0.50\nMOV (%R14),%R9D                   | 1     | 0     | 0  | 1    | 0    | 0     | 0    | 0  | 4       | 1\nTEST %R9D,%R9D                    | 1     | 0     | 0  | 0    | 0    | 0.50  | 0.50 | 0  | 1       | 0.50\nJLE e954 <setbv_._omp_fn.0+0x604> | 1     | 0     | 0  | 0    | 0    | 0     | 1    | 0  | 0       | 1-2\nMOV 0x24(%RSP),%R14D              | 1     | 0     | 0  | 1    | 0    | 0     | 0    | 0  | 4       | 1\nLEA (%R9),%R15D                   | 1     | 0     | 0  | 0    | 0    | 0.50  | 0.50 | 0  | 1       | 0.50\nJMP e855 <setbv_._omp_fn.0+0x505> | 1     | 0     | 0  | 0    | 0    | 0     | 1    | 0  | 0       | 2\nNOPL (%RAX)                       | 1     | 0     | 0  | 0    | 0    | 0.50  | 0.50 | 0  | 0       | 0.50\nNOPL (%RAX)                       | 1     | 0     | 0  | 0    | 0    | 0.50  | 0.50 | 0  | 0       | 0.50\nLEA -0x28(%RBP),%RSP              | 1     | 0     | 0  | 0    | 0    | 0.50  | 0.50 | 0  | 1       | 0.50\nPOP %RBX                          | 2     | 0     | 0  | 0.50 | 0.50 | 0     | 0    | 1  | 0       | 1\nPOP %R12                          | 2     | 0     | 0  | 0.50 | 0.50 | 0     | 0    | 1  | 0       | 1\nPOP %R13                          | 2     | 0     | 0  | 0.50 | 0.50 | 0     | 0    | 1  | 0       | 1\nPOP %R14                          | 2     | 0     | 0  | 0.50 | 0.50 | 0     | 0    | 1  | 0       | 1\nPOP %R15                          | 2     | 0     | 0  | 0.50 | 0.50 | 0     | 0    | 1  | 0       | 1\nPOP %RBP                          | 2     | 0     | 0  | 0.50 | 0.50 | 0     | 0    | 1  | 0       | 1\nRET\nADD $0x1,%EAX                     | 1     | 0     | 0  | 0    | 0    | 0.50  | 0.50 | 0  | 1       | 0.50\nXOR %EDX,%EDX\nJMP e3b4 <setbv_._omp_fn.0+0x64>  | 1     | 0     | 0  | 0    | 0    | 0     | 1    | 0  | 0       | 2\nADD $0x1,%EAX                     | 1     | 0     | 0  | 0    | 0    | 0.50  | 0.50 | 0  | 1       | 0.50\nXOR %EDX,%EDX\nJMP e5dd <setbv_._omp_fn.0+0x28d> | 1     | 0     | 0  | 0    | 0    | 0     | 1    | 0  | 0       | 2\nNOPW %CS:(%RAX,%RAX,1)            | 1     | 0     | 0  | 0    | 0    | 0.50  | 0.50 | 0  | 0       | 0.50\nXCHG %AX,%AX                      | 1     | 0     | 0  | 0    | 0    | 0.50  | 0.50 | 0  | 0       | 0.50\n",
        },
      },
      header = {
        "Warnings:\nDetected a function call instruction: ignoring called function instructions.\nRerun with --follow-calls=append to include them to analysis  or with --follow-calls=inline to simulate inlining.",
        "0% of peak computational performance is used (0.00 out of 4.00 FLOP per cycle (GFLOPS @ 1GHz))",
      },
      brief = {
      },
      gain = {
        {
          workaround = " - Try another compiler or update/tune your current one\n - Make array accesses unit-stride:\n  * If your function streams arrays of structures (AoS), try to use structures of arrays instead (SoA):\ndo i a(i)%x = b(i)%x (slow, non stride 1) => do i a%x(i) = b%x(i) (fast, stride 1)\n",
          details = "All SSE/AVX instructions are used in scalar version (process only one data element in vector registers).\nSince your execution units are vector units, only a vectorized function can use their full power.\n",
          title = "Vectorization",
          txt = "Your function is not vectorized.\nOnly 7% of vector register length is used (average across all SSE/AVX instructions).\nBy vectorizing your function, you can lower the cost of an iteration from 52.00 to 3.40 cycles (15.30x speedup).",
        },
        {
          workaround = "Reduce the number of division or square root instructions:\n - If denominator is constant over iterations, use reciprocal (replace x/y with x*(1/y)). Check precision impact. This will be done by your compiler with ffast-math or Ofast\n",
          title = "Execution units bottlenecks",
          txt = "Performance is limited by execution of divide and square root operations (the divide/square root unit is a bottleneck).\n",
        },
      },
      potential = {
      },
    },
  common = {
    header = {
      "The function is defined in /users/user2210/NPB3.4-MZ-MPI/LU-MZ/setbv.f90:26-37,46-53,62-74.\n",
      "Warnings:\nIgnoring paths for analysis",
    },
  },
}
