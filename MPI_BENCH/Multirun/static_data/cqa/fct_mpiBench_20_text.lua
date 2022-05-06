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
          workaround = "Avoid mixing data with different types. In particular, check if the type of constants is the same as array elements.",
          details = " - VCVTSI2SD (INT32/64 to FP64, scalar): 1 occurrences\n",
          title = "Conversion instructions",
          txt = "Detected expensive conversion instructions.",
        },
        {
          title = "Type of elements and instruction set",
          txt = "3 SSE or AVX instructions are processing arithmetic or math operations on double precision FP elements in scalar mode (one at a time).\n",
        },
        {
          title = "Matching between your function (in the source code) and the binary function",
          txt = "The binary function is composed of 3 FP arithmetical operations:\n - 1: addition or subtraction\n - 1: multiply\n - 1: divide\nThe binary function is loading 56 bytes (7 double precision FP elements).\nThe binary function is storing 20 bytes (2 double precision FP elements).",
        },
        {
          title = "Arithmetic intensity",
          txt = "Arithmetic intensity is 0.04 FP operations per loaded or stored byte.",
        },
      },
      expert = {
        {
          title = "General properties",
          txt = "nb instructions    : 45\nnb uops            : 49\nloop length        : 188\nused x86 registers : 10\nused mmx registers : 0\nused xmm registers : 4\nused ymm registers : 0\nused zmm registers : 0\nnb stack references: 1\nADD-SUB / MUL ratio: 1.00\n",
        },
        {
          title = "Front-end",
          txt = "MACRO FUSION NOT POSSIBLE\nFIT IN UOP CACHE\nmicro-operation queue: 12.25 cycles\nfront end            : 12.25 cycles\n",
        },
        {
          title = "Back-end",
          txt = "       | P0   | P1   | P2   | P3   | P4    | P5   | P6   | P7\n---------------------------------------------------------------\nuops   | 3.75 | 3.75 | 9.83 | 9.50 | 13.00 | 3.50 | 6.00 | 9.67\ncycles | 3.75 | 3.75 | 9.83 | 9.50 | 13.00 | 3.50 | 6.00 | 9.67\n\nCycles executing div or sqrt instructions: 4.00\n",
        },
        {
          title = "Cycles summary",
          txt = "Front-end : 12.25\nDispatch  : 13.00\nDIV/SQRT  : 4.00\nOverall L1: 13.00\n",
        },
        {
          title = "Vectorization ratios",
          txt = "INT\nall    : 0%\nload   : 0%\nstore  : 0%\nmul    : NA (no mul vectorizable/vectorized instructions)\nadd-sub: NA (no add-sub vectorizable/vectorized instructions)\nfma    : NA (no fma vectorizable/vectorized instructions)\nother  : 0%\nFP\nall     : 16%\nload    : 0%\nstore   : 0%\nmul     : 0%\nadd-sub : 0%\nfma     : NA (no fma vectorizable/vectorized instructions)\ndiv/sqrt: 0%\nother   : 100%\nINT+FP\nall     : 7%\nload    : 0%\nstore   : 0%\nmul     : 0%\nadd-sub : 0%\nfma     : NA (no fma vectorizable/vectorized instructions)\ndiv/sqrt: 0%\nother   : 25%\n",
        },
        {
          title = "Vector efficiency ratios",
          txt = "INT\nall    : 16%\nload   : 17%\nstore  : 12%\nmul    : NA (no mul vectorizable/vectorized instructions)\nadd-sub: NA (no add-sub vectorizable/vectorized instructions)\nfma    : NA (no fma vectorizable/vectorized instructions)\nother  : 12%\nFP\nall     : 29%\nload    : 25%\nstore   : 25%\nmul     : 25%\nadd-sub : 25%\nfma     : NA (no fma vectorizable/vectorized instructions)\ndiv/sqrt: 25%\nother   : 50%\nINT+FP\nall     : 22%\nload    : 19%\nstore   : 20%\nmul     : 25%\nadd-sub : 25%\nfma     : NA (no fma vectorizable/vectorized instructions)\ndiv/sqrt: 25%\nother   : 21%\n",
        },
        {
          title = "Cycles and memory resources usage",
          txt = "Assuming all data fit into the L1 cache, each call to the function takes 13.00 cycles. At this rate:\n - 6% of peak load performance is reached (4.31 out of 64.00 bytes loaded per cycle (GB/s @ 1GHz))\n - 4% of peak store performance is reached (1.54 out of 32.00 bytes stored per cycle (GB/s @ 1GHz))\n",
        },
        {
          title = "Front-end bottlenecks",
          txt = "Found no such bottlenecks.",
        },
        {
          title = "ASM code",
          txt = "In the binary file, the address of the function is: 5c30\n\nInstruction                      | Nb FU | P0   | P1   | P2   | P3   | P4 | P5   | P6   | P7   | Latency | Recip. throughput\n----------------------------------------------------------------------------------------------------------------------------\nENDBR64\nPUSH %RBP                        | 1     | 0    | 0    | 0.33 | 0.33 | 1  | 0    | 0    | 0.33 | 3       | 1\nMOV %RSP,%RBP                    | 1     | 0    | 0    | 0    | 0    | 0  | 0    | 0    | 0    | 0       | 0.25\nPUSH %R15                        | 1     | 0    | 0    | 0.33 | 0.33 | 1  | 0    | 0    | 0.33 | 3       | 1\nPUSH %R14                        | 1     | 0    | 0    | 0.33 | 0.33 | 1  | 0    | 0    | 0.33 | 3       | 1\nPUSH %R13                        | 1     | 0    | 0    | 0.33 | 0.33 | 1  | 0    | 0    | 0.33 | 3       | 1\nPUSH %R12                        | 1     | 0    | 0    | 0.33 | 0.33 | 1  | 0    | 0    | 0.33 | 3       | 1\nPUSH %RBX                        | 1     | 0    | 0    | 0.33 | 0.33 | 1  | 0    | 0    | 0.33 | 3       | 1\nSUB $0x28,%RSP                   | 1     | 0.25 | 0.25 | 0    | 0    | 0  | 0.25 | 0.25 | 0    | 1       | 0.25\nCALLQ 0x63a5(%RIP)               | 3     | 0    | 0    | 0.83 | 0.83 | 1  | 0    | 1    | 0.33 | 0       | 3\nMOV 0x76ae(%RIP),%R13            | 1     | 0    | 0    | 0.50 | 0.50 | 0  | 0    | 0    | 0    | 2       | 0.50\nMOV 0xc(%RDI),%EAX               | 1     | 0    | 0    | 0.50 | 0.50 | 0  | 0    | 0    | 0    | 2       | 0.50\nMOV %RDI,%R15                    | 1     | 0    | 0    | 0    | 0    | 0  | 0    | 0    | 0    | 0       | 0.25\nCMP %EAX,0x18(%RDI)              | 1     | 0.25 | 0.25 | 0.50 | 0.50 | 0  | 0.25 | 0.25 | 0    | 1       | 0.50\nJNE 5c64 <time_bcast+0x34>       | 1     | 0.50 | 0    | 0    | 0    | 0  | 0    | 0.50 | 0    | 0       | 0.50-1\nMOV 0x76cc(%RIP),%R13            | 1     | 0    | 0    | 0.50 | 0.50 | 0  | 0    | 0    | 0    | 2       | 0.50\nLEA 0x6a55(%RIP),%RDI            | 1     | 0    | 1    | 0    | 0    | 0  | 0    | 0    | 0    | 3       | 1\nCALL 22e0 <.plt.sec@start>       | 2     | 0    | 0    | 0.33 | 0.33 | 1  | 0    | 1    | 0.33 | 0       | 2\nCALL 2520 <.plt.sec@start+0x240> | 2     | 0    | 0    | 0.33 | 0.33 | 1  | 0    | 1    | 0.33 | 0       | 2\nMOV 0x8(%R15),%ESI               | 1     | 0    | 0    | 0.50 | 0.50 | 0  | 0    | 0    | 0    | 2       | 0.50\nMOVL $0,-0x34(%RBP)              | 1     | 0    | 0    | 0.33 | 0.33 | 1  | 0    | 0    | 0.33 | 2       | 1\nVMOVSD %XMM0,0x7670(%RIP)        | 1     | 0    | 0    | 0.33 | 0.33 | 1  | 0    | 0    | 0.33 | 3       | 1\nTEST %ESI,%ESI                   | 1     | 0.25 | 0.25 | 0    | 0    | 0  | 0.25 | 0.25 | 0    | 1       | 0.25\nJG 5cde <time_bcast+0xae>        | 1     | 0.50 | 0    | 0    | 0    | 0  | 0    | 0.50 | 0    | 0       | 0.50-1\nJMP 6002 <time_bcast+0x3d2>      | 1     | 0    | 0    | 0    | 0    | 0  | 0    | 1    | 0    | 0       | 1-2\nNOPL (%RAX)                      | 1     | 0    | 0    | 0    | 0    | 0  | 0    | 0    | 0    | 0       | 0.25\nNOPL (%RAX)                      | 1     | 0    | 0    | 0    | 0    | 0  | 0    | 0    | 0    | 0       | 0.25\nCALL 2520 <.plt.sec@start+0x240> | 2     | 0    | 0    | 0.33 | 0.33 | 1  | 0    | 1    | 0.33 | 0       | 2\nVMOVSD %XMM0,0x72e1(%RIP)        | 1     | 0    | 0    | 0.33 | 0.33 | 1  | 0    | 0    | 0.33 | 3       | 1\nVSUBSD 0x72e1(%RIP),%XMM0,%XMM0  | 1     | 0.50 | 0.50 | 0.50 | 0.50 | 0  | 0    | 0    | 0    | 4       | 0.50\nVXORPS %XMM2,%XMM2,%XMM2         | 1     | 0    | 0    | 0    | 0    | 0  | 0    | 0    | 0    | 0       | 0.25\nVCVTSI2SDL 0x8(%R15),%XMM2,%XMM3 | 1     | 0.50 | 0.50 | 0.50 | 0.50 | 0  | 0    | 0    | 0    | 6       | 1\nVMULSD 0x3877(%RIP),%XMM0,%XMM1  | 1     | 0.50 | 0.50 | 0.50 | 0.50 | 0  | 0    | 0    | 0    | 4       | 0.50\nADD $0x28,%RSP                   | 1     | 0.25 | 0.25 | 0    | 0    | 0  | 0.25 | 0.25 | 0    | 1       | 0.25\nPOP %RBX                         | 1     | 0    | 0    | 0.50 | 0.50 | 0  | 0    | 0    | 0    | 2       | 0.50\nPOP %R12                         | 1     | 0    | 0    | 0.50 | 0.50 | 0  | 0    | 0    | 0    | 2       | 0.50\nPOP %R13                         | 1     | 0    | 0    | 0.50 | 0.50 | 0  | 0    | 0    | 0    | 2       | 0.50\nPOP %R14                         | 1     | 0    | 0    | 0.50 | 0.50 | 0  | 0    | 0    | 0    | 2       | 0.50\nPOP %R15                         | 1     | 0    | 0    | 0.50 | 0.50 | 0  | 0    | 0    | 0    | 2       | 0.50\nVDIVSD %XMM3,%XMM1,%XMM0         | 1     | 1    | 0    | 0    | 0    | 0  | 0    | 0    | 0    | 13-14   | 4\nPOP %RBP                         | 1     | 0    | 0    | 0.50 | 0.50 | 0  | 0    | 0    | 0    | 2       | 0.50\nRET                              | 1     | 0    | 0    | 0.33 | 0.33 | 0  | 0    | 1    | 0.33 | 0       | 1\nNOPL (%RAX)                      | 1     | 0    | 0    | 0    | 0    | 0  | 0    | 0    | 0    | 0       | 0.25\nNOPW %CS:(%RAX,%RAX,1)           | 1     | 0    | 0    | 0    | 0    | 0  | 0    | 0    | 0    | 0       | 0.25\nNOPL (%RAX)                      | 1     | 0    | 0    | 0    | 0    | 0  | 0    | 0    | 0    | 0       | 0.25\n",
        },
      },
      header = {
        "Warnings:\n - The number of fused uops of the instruction [ENDBR64] is unknown\n - Detected a function call instruction: ignoring called function instructions.\nRerun with --follow-calls=append to include them to analysis  or with --follow-calls=inline to simulate inlining.\n",
        "1% of peak computational performance is used (0.23 out of 16.00 FLOP per cycle (GFLOPS @ 1GHz))",
      },
      brief = {
      },
      gain = {
        {
          workaround = " - Try to reorganize arrays of structures to structures of arrays\n - Consider to permute loops (see vectorization gain report)\n",
          title = "Code clean check",
          txt = "Detected a slowdown caused by scalar integer instructions (typically used for address computation).\nBy removing them, you can lower the cost of an iteration from 13.00 to 4.00 cycles (3.25x speedup).",
        },
        {
          workaround = " - Try another compiler or update/tune your current one\n - Make array accesses unit-stride:\n  * If your function streams arrays of structures (AoS), try to use structures of arrays instead (SoA):\nfor(i) a[i].x = b[i].x; (slow, non stride 1) => for(i) a.x[i] = b.x[i]; (fast, stride 1)\n",
          details = "Store and arithmetical SSE/AVX instructions are used in scalar version (process only one data element in vector registers).\nSince your execution units are vector units, only a vectorized function can use their full power.\n",
          title = "Vectorization",
          txt = "Your function is probably not vectorized.\nOnly 22% of vector register length is used (average across all SSE/AVX instructions).\nBy vectorizing your function, you can lower the cost of an iteration from 13.00 to 2.00 cycles (6.50x speedup).",
        },
        {
          workaround = " - Write less array elements\n - Provide more information to your compiler:\n  * use the 'restrict' C99 keyword\n",
          title = "Execution units bottlenecks",
          txt = "Performance is limited by writing data to caches/RAM (the store unit is a bottleneck).\n\nBy removing all these bottlenecks, you can lower the cost of an iteration from 13.00 to 12.25 cycles (1.06x speedup).\n",
        },
      },
      potential = {
        {
          workaround = "Try to change order in which elements are evaluated (using parentheses) in arithmetic expressions containing both ADD/SUB and MUL operations to enable your compiler to generate FMA instructions wherever possible.\nFor instance a + b*c is a valid FMA (MUL then ADD).\nHowever (a+b)* c cannot be translated into an FMA (ADD then MUL).",
          title = "FMA",
          txt = "Presence of both ADD/SUB and MUL operations.",
        },
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
          workaround = "Avoid mixing data with different types. In particular, check if the type of constants is the same as array elements.",
          details = " - VCVTSI2SD (INT32/64 to FP64, scalar): 1 occurrences\n",
          title = "Conversion instructions",
          txt = "Detected expensive conversion instructions.",
        },
        {
          title = "Type of elements and instruction set",
          txt = "3 SSE or AVX instructions are processing arithmetic or math operations on double precision FP elements in scalar mode (one at a time).\n",
        },
        {
          title = "Matching between your function (in the source code) and the binary function",
          txt = "The binary function is composed of 3 FP arithmetical operations:\n - 1: addition or subtraction\n - 1: multiply\n - 1: divide\nThe binary function is loading 56 bytes (7 double precision FP elements).\nThe binary function is storing 20 bytes (2 double precision FP elements).",
        },
        {
          title = "Arithmetic intensity",
          txt = "Arithmetic intensity is 0.04 FP operations per loaded or stored byte.",
        },
      },
      expert = {
        {
          title = "General properties",
          txt = "nb instructions    : 45\nnb uops            : 49\nloop length        : 188\nused x86 registers : 10\nused mmx registers : 0\nused xmm registers : 4\nused ymm registers : 0\nused zmm registers : 0\nnb stack references: 1\nADD-SUB / MUL ratio: 1.00\n",
        },
        {
          title = "Front-end",
          txt = "MACRO FUSION NOT POSSIBLE\nFIT IN UOP CACHE\nmicro-operation queue: 12.25 cycles\nfront end            : 12.25 cycles\n",
        },
        {
          title = "Back-end",
          txt = "       | P0   | P1   | P2   | P3   | P4    | P5   | P6   | P7\n---------------------------------------------------------------\nuops   | 3.75 | 3.75 | 9.83 | 9.50 | 13.00 | 3.50 | 6.00 | 9.67\ncycles | 3.75 | 3.75 | 9.83 | 9.50 | 13.00 | 3.50 | 6.00 | 9.67\n\nCycles executing div or sqrt instructions: 4.00\n",
        },
        {
          title = "Cycles summary",
          txt = "Front-end : 12.25\nDispatch  : 13.00\nDIV/SQRT  : 4.00\nOverall L1: 13.00\n",
        },
        {
          title = "Vectorization ratios",
          txt = "INT\nall    : 0%\nload   : 0%\nstore  : 0%\nmul    : NA (no mul vectorizable/vectorized instructions)\nadd-sub: NA (no add-sub vectorizable/vectorized instructions)\nfma    : NA (no fma vectorizable/vectorized instructions)\nother  : 0%\nFP\nall     : 16%\nload    : 0%\nstore   : 0%\nmul     : 0%\nadd-sub : 0%\nfma     : NA (no fma vectorizable/vectorized instructions)\ndiv/sqrt: 0%\nother   : 100%\nINT+FP\nall     : 7%\nload    : 0%\nstore   : 0%\nmul     : 0%\nadd-sub : 0%\nfma     : NA (no fma vectorizable/vectorized instructions)\ndiv/sqrt: 0%\nother   : 25%\n",
        },
        {
          title = "Vector efficiency ratios",
          txt = "INT\nall    : 16%\nload   : 17%\nstore  : 12%\nmul    : NA (no mul vectorizable/vectorized instructions)\nadd-sub: NA (no add-sub vectorizable/vectorized instructions)\nfma    : NA (no fma vectorizable/vectorized instructions)\nother  : 12%\nFP\nall     : 29%\nload    : 25%\nstore   : 25%\nmul     : 25%\nadd-sub : 25%\nfma     : NA (no fma vectorizable/vectorized instructions)\ndiv/sqrt: 25%\nother   : 50%\nINT+FP\nall     : 22%\nload    : 19%\nstore   : 20%\nmul     : 25%\nadd-sub : 25%\nfma     : NA (no fma vectorizable/vectorized instructions)\ndiv/sqrt: 25%\nother   : 21%\n",
        },
        {
          title = "Cycles and memory resources usage",
          txt = "Assuming all data fit into the L1 cache, each call to the function takes 13.00 cycles. At this rate:\n - 6% of peak load performance is reached (4.31 out of 64.00 bytes loaded per cycle (GB/s @ 1GHz))\n - 4% of peak store performance is reached (1.54 out of 32.00 bytes stored per cycle (GB/s @ 1GHz))\n",
        },
        {
          title = "Front-end bottlenecks",
          txt = "Found no such bottlenecks.",
        },
        {
          title = "ASM code",
          txt = "In the binary file, the address of the function is: 5c30\n\nInstruction                      | Nb FU | P0   | P1   | P2   | P3   | P4 | P5   | P6   | P7   | Latency | Recip. throughput\n----------------------------------------------------------------------------------------------------------------------------\nENDBR64\nPUSH %RBP                        | 1     | 0    | 0    | 0.33 | 0.33 | 1  | 0    | 0    | 0.33 | 3       | 1\nMOV %RSP,%RBP                    | 1     | 0    | 0    | 0    | 0    | 0  | 0    | 0    | 0    | 0       | 0.25\nPUSH %R15                        | 1     | 0    | 0    | 0.33 | 0.33 | 1  | 0    | 0    | 0.33 | 3       | 1\nPUSH %R14                        | 1     | 0    | 0    | 0.33 | 0.33 | 1  | 0    | 0    | 0.33 | 3       | 1\nPUSH %R13                        | 1     | 0    | 0    | 0.33 | 0.33 | 1  | 0    | 0    | 0.33 | 3       | 1\nPUSH %R12                        | 1     | 0    | 0    | 0.33 | 0.33 | 1  | 0    | 0    | 0.33 | 3       | 1\nPUSH %RBX                        | 1     | 0    | 0    | 0.33 | 0.33 | 1  | 0    | 0    | 0.33 | 3       | 1\nSUB $0x28,%RSP                   | 1     | 0.25 | 0.25 | 0    | 0    | 0  | 0.25 | 0.25 | 0    | 1       | 0.25\nCALLQ 0x63a5(%RIP)               | 3     | 0    | 0    | 0.83 | 0.83 | 1  | 0    | 1    | 0.33 | 0       | 3\nMOV 0x76ae(%RIP),%R13            | 1     | 0    | 0    | 0.50 | 0.50 | 0  | 0    | 0    | 0    | 2       | 0.50\nMOV 0xc(%RDI),%EAX               | 1     | 0    | 0    | 0.50 | 0.50 | 0  | 0    | 0    | 0    | 2       | 0.50\nMOV %RDI,%R15                    | 1     | 0    | 0    | 0    | 0    | 0  | 0    | 0    | 0    | 0       | 0.25\nCMP %EAX,0x18(%RDI)              | 1     | 0.25 | 0.25 | 0.50 | 0.50 | 0  | 0.25 | 0.25 | 0    | 1       | 0.50\nJNE 5c64 <time_bcast+0x34>       | 1     | 0.50 | 0    | 0    | 0    | 0  | 0    | 0.50 | 0    | 0       | 0.50-1\nMOV 0x76cc(%RIP),%R13            | 1     | 0    | 0    | 0.50 | 0.50 | 0  | 0    | 0    | 0    | 2       | 0.50\nLEA 0x6a55(%RIP),%RDI            | 1     | 0    | 1    | 0    | 0    | 0  | 0    | 0    | 0    | 3       | 1\nCALL 22e0 <.plt.sec@start>       | 2     | 0    | 0    | 0.33 | 0.33 | 1  | 0    | 1    | 0.33 | 0       | 2\nCALL 2520 <.plt.sec@start+0x240> | 2     | 0    | 0    | 0.33 | 0.33 | 1  | 0    | 1    | 0.33 | 0       | 2\nMOV 0x8(%R15),%ESI               | 1     | 0    | 0    | 0.50 | 0.50 | 0  | 0    | 0    | 0    | 2       | 0.50\nMOVL $0,-0x34(%RBP)              | 1     | 0    | 0    | 0.33 | 0.33 | 1  | 0    | 0    | 0.33 | 2       | 1\nVMOVSD %XMM0,0x7670(%RIP)        | 1     | 0    | 0    | 0.33 | 0.33 | 1  | 0    | 0    | 0.33 | 3       | 1\nTEST %ESI,%ESI                   | 1     | 0.25 | 0.25 | 0    | 0    | 0  | 0.25 | 0.25 | 0    | 1       | 0.25\nJG 5cde <time_bcast+0xae>        | 1     | 0.50 | 0    | 0    | 0    | 0  | 0    | 0.50 | 0    | 0       | 0.50-1\nJMP 6002 <time_bcast+0x3d2>      | 1     | 0    | 0    | 0    | 0    | 0  | 0    | 1    | 0    | 0       | 1-2\nNOPL (%RAX)                      | 1     | 0    | 0    | 0    | 0    | 0  | 0    | 0    | 0    | 0       | 0.25\nNOPL (%RAX)                      | 1     | 0    | 0    | 0    | 0    | 0  | 0    | 0    | 0    | 0       | 0.25\nCALL 2520 <.plt.sec@start+0x240> | 2     | 0    | 0    | 0.33 | 0.33 | 1  | 0    | 1    | 0.33 | 0       | 2\nVMOVSD %XMM0,0x72e1(%RIP)        | 1     | 0    | 0    | 0.33 | 0.33 | 1  | 0    | 0    | 0.33 | 3       | 1\nVSUBSD 0x72e1(%RIP),%XMM0,%XMM0  | 1     | 0.50 | 0.50 | 0.50 | 0.50 | 0  | 0    | 0    | 0    | 4       | 0.50\nVXORPS %XMM2,%XMM2,%XMM2         | 1     | 0    | 0    | 0    | 0    | 0  | 0    | 0    | 0    | 0       | 0.25\nVCVTSI2SDL 0x8(%R15),%XMM2,%XMM3 | 1     | 0.50 | 0.50 | 0.50 | 0.50 | 0  | 0    | 0    | 0    | 6       | 1\nVMULSD 0x3877(%RIP),%XMM0,%XMM1  | 1     | 0.50 | 0.50 | 0.50 | 0.50 | 0  | 0    | 0    | 0    | 4       | 0.50\nADD $0x28,%RSP                   | 1     | 0.25 | 0.25 | 0    | 0    | 0  | 0.25 | 0.25 | 0    | 1       | 0.25\nPOP %RBX                         | 1     | 0    | 0    | 0.50 | 0.50 | 0  | 0    | 0    | 0    | 2       | 0.50\nPOP %R12                         | 1     | 0    | 0    | 0.50 | 0.50 | 0  | 0    | 0    | 0    | 2       | 0.50\nPOP %R13                         | 1     | 0    | 0    | 0.50 | 0.50 | 0  | 0    | 0    | 0    | 2       | 0.50\nPOP %R14                         | 1     | 0    | 0    | 0.50 | 0.50 | 0  | 0    | 0    | 0    | 2       | 0.50\nPOP %R15                         | 1     | 0    | 0    | 0.50 | 0.50 | 0  | 0    | 0    | 0    | 2       | 0.50\nVDIVSD %XMM3,%XMM1,%XMM0         | 1     | 1    | 0    | 0    | 0    | 0  | 0    | 0    | 0    | 13-14   | 4\nPOP %RBP                         | 1     | 0    | 0    | 0.50 | 0.50 | 0  | 0    | 0    | 0    | 2       | 0.50\nRET                              | 1     | 0    | 0    | 0.33 | 0.33 | 0  | 0    | 1    | 0.33 | 0       | 1\nNOPL (%RAX)                      | 1     | 0    | 0    | 0    | 0    | 0  | 0    | 0    | 0    | 0       | 0.25\nNOPW %CS:(%RAX,%RAX,1)           | 1     | 0    | 0    | 0    | 0    | 0  | 0    | 0    | 0    | 0       | 0.25\nNOPL (%RAX)                      | 1     | 0    | 0    | 0    | 0    | 0  | 0    | 0    | 0    | 0       | 0.25\n",
        },
      },
      header = {
        "Warnings:\n - The number of fused uops of the instruction [ENDBR64] is unknown\n - Detected a function call instruction: ignoring called function instructions.\nRerun with --follow-calls=append to include them to analysis  or with --follow-calls=inline to simulate inlining.\n",
        "1% of peak computational performance is used (0.23 out of 16.00 FLOP per cycle (GFLOPS @ 1GHz))",
      },
      brief = {
      },
      gain = {
        {
          workaround = " - Try to reorganize arrays of structures to structures of arrays\n - Consider to permute loops (see vectorization gain report)\n",
          title = "Code clean check",
          txt = "Detected a slowdown caused by scalar integer instructions (typically used for address computation).\nBy removing them, you can lower the cost of an iteration from 13.00 to 4.00 cycles (3.25x speedup).",
        },
        {
          workaround = " - Try another compiler or update/tune your current one\n - Make array accesses unit-stride:\n  * If your function streams arrays of structures (AoS), try to use structures of arrays instead (SoA):\nfor(i) a[i].x = b[i].x; (slow, non stride 1) => for(i) a.x[i] = b.x[i]; (fast, stride 1)\n",
          details = "Store and arithmetical SSE/AVX instructions are used in scalar version (process only one data element in vector registers).\nSince your execution units are vector units, only a vectorized function can use their full power.\n",
          title = "Vectorization",
          txt = "Your function is probably not vectorized.\nOnly 22% of vector register length is used (average across all SSE/AVX instructions).\nBy vectorizing your function, you can lower the cost of an iteration from 13.00 to 2.00 cycles (6.50x speedup).",
        },
        {
          workaround = " - Write less array elements\n - Provide more information to your compiler:\n  * use the 'restrict' C99 keyword\n",
          title = "Execution units bottlenecks",
          txt = "Performance is limited by writing data to caches/RAM (the store unit is a bottleneck).\n\nBy removing all these bottlenecks, you can lower the cost of an iteration from 13.00 to 12.25 cycles (1.06x speedup).\n",
        },
      },
      potential = {
        {
          workaround = "Try to change order in which elements are evaluated (using parentheses) in arithmetic expressions containing both ADD/SUB and MUL operations to enable your compiler to generate FMA instructions wherever possible.\nFor instance a + b*c is a valid FMA (MUL then ADD).\nHowever (a+b)* c cannot be translated into an FMA (ADD then MUL).",
          title = "FMA",
          txt = "Presence of both ADD/SUB and MUL operations.",
        },
      },
    },
  common = {
    header = {
      "The function is defined in:\n - /usr/include/x86_64-linux-gnu/bits/stdio2.h:107\n - /home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:455-457,473-477,488-492,524-548\n - /usr/include/x86_64-linux-gnu/bits/string_fortified.h:71\n\n",
      "Warnings:\nIgnoring paths for analysis",
    },
  },
}
