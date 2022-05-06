_cqa_text_report = {
  paths = {
    {
      hint = {
        {
          details = "Calling (and then returning from) a function prevents many compiler optimizations (like vectorization), breaks control flow (which reduces pipeline performance) and executes extra instructions to save/restore the registers used inside it, which is very expensive (dozens of cycles). Consider to inline small functions.\n - unknown: 3 occurrences\n",
          title = "CALL instructions",
          txt = "Detected function call instructions.\n",
        },
        {
          workaround = "Pass to your compiler a micro-architecture specialization option:\n - Please read your compiler manual\n",
          details = "These instructions generate more than one micro-operation and only one of them can be decoded during a cycle and the extra micro-operations increase pressure on execution units.\n - CVTSI2SD: 1 occurrences\n - DIV: 1 occurrences\n - IDIV: 2 occurrences\n - LEAVE: 1 occurrences\n",
          title = "Complex instructions",
          txt = "Detected COMPLEX INSTRUCTIONS.\n",
        },
        {
          workaround = "Avoid mixing data with different types. In particular, check if the type of constants is the same as array elements.",
          details = " - CVTSI2SD (INT32/64 to FP64, scalar): 1 occurrences\n",
          title = "Conversion instructions",
          txt = "Detected expensive conversion instructions.",
        },
        {
          title = "Type of elements and instruction set",
          txt = "3 SSE or AVX instructions are processing arithmetic or math operations on double precision FP elements in scalar mode (one at a time).\n",
        },
        {
          title = "Matching between your function (in the source code) and the binary function",
          txt = "The binary function is composed of 3 FP arithmetical operations:\n - 1: addition or subtraction\n - 1: multiply\n - 1: divide\nThe binary function is loading 132 bytes (16 double precision FP elements).\nThe binary function is storing 56 bytes (7 double precision FP elements).",
        },
        {
          title = "Arithmetic intensity",
          txt = "Arithmetic intensity is 0.02 FP operations per loaded or stored byte.",
        },
      },
      expert = {
        {
          title = "General properties",
          txt = "nb instructions    : 63\nnb uops            : 75\nloop length        : 250\nused x86 registers : 7\nused mmx registers : 0\nused xmm registers : 2\nused ymm registers : 0\nused zmm registers : 0\nnb stack references: 6\nADD-SUB / MUL ratio: 1.00\n",
        },
        {
          title = "Front-end",
          txt = "MACRO FUSION NOT POSSIBLE\nFIT IN UOP CACHE\nmicro-operation queue: 15.00 cycles\nfront end            : 15.00 cycles\n",
        },
        {
          title = "Back-end",
          txt = "       | P0   | P1   | P2    | P3    | P4   | P5   | P6   | P7   | P8   | P9\n------------------------------------------------------------------------------\nuops   | 9.75 | 9.75 | 11.00 | 11.00 | 7.00 | 9.75 | 9.75 | 7.50 | 7.50 | 7.00\ncycles | 9.75 | 9.75 | 11.00 | 11.00 | 7.00 | 9.75 | 9.75 | 7.50 | 7.50 | 7.00\n\nCycles executing div or sqrt instructions: 26.00\n",
        },
        {
          title = "Cycles summary",
          txt = "Front-end : 15.00\nDispatch  : 11.00\nDIV/SQRT  : 26.00\nOverall L1: 26.00\n",
        },
        {
          title = "Vectorization ratios",
          txt = "INT\nall    : 0%\nload   : 0%\nstore  : 0%\nmul    : NA (no mul vectorizable/vectorized instructions)\nadd-sub: 0%\nfma    : NA (no fma vectorizable/vectorized instructions)\nother  : 0%\nFP\nall     : 14%\nload    : 0%\nstore   : NA (no store vectorizable/vectorized instructions)\nmul     : 0%\nadd-sub : 0%\nfma     : NA (no fma vectorizable/vectorized instructions)\ndiv/sqrt: 0%\nother   : 100%\nINT+FP\nall     : 3%\nload    : 0%\nstore   : 0%\nmul     : 0%\nadd-sub : 0%\nfma     : NA (no fma vectorizable/vectorized instructions)\ndiv/sqrt: 0%\nother   : 12%\n",
        },
        {
          title = "Vector efficiency ratios",
          txt = "INT\nall    : 8%\nload   : 6%\nstore  : 8%\nmul    : NA (no mul vectorizable/vectorized instructions)\nadd-sub: 12%\nfma    : NA (no fma vectorizable/vectorized instructions)\nother  : 8%\nFP\nall     : 14%\nload    : 12%\nstore   : NA (no store vectorizable/vectorized instructions)\nmul     : 12%\nadd-sub : 12%\nfma     : NA (no fma vectorizable/vectorized instructions)\ndiv/sqrt: 12%\nother   : 25%\nINT+FP\nall     : 10%\nload    : 10%\nstore   : 8%\nmul     : 12%\nadd-sub : 12%\nfma     : NA (no fma vectorizable/vectorized instructions)\ndiv/sqrt: 9%\nother   : 10%\n",
        },
        {
          title = "Cycles and memory resources usage",
          txt = "Assuming all data fit into the L1 cache, each call to the function takes 26.00 cycles. At this rate:\n - 3% of peak load performance is reached (5.08 out of 128.00 bytes loaded per cycle (GB/s @ 1GHz))\n - 3% of peak store performance is reached (2.15 out of 64.00 bytes stored per cycle (GB/s @ 1GHz))\n",
        },
        {
          title = "Front-end bottlenecks",
          txt = "Found no such bottlenecks.",
        },
        {
          title = "ASM code",
          txt = "In the binary file, the address of the function is: 3b16\n\nInstruction                      | Nb FU | P0   | P1   | P2   | P3   | P4   | P5   | P6   | P7   | P8   | P9   | Latency | Recip. throughput\n--------------------------------------------------------------------------------------------------------------------------------------------\nENDBR64\nPUSH %RBP                        | 1     | 0    | 0    | 0    | 0    | 0.50 | 0    | 0    | 0.50 | 0.50 | 0.50 | 3       | 0.50\nMOV %RSP,%RBP                    | 1     | 0    | 0    | 0    | 0    | 0    | 0    | 0    | 0    | 0    | 0    | 0       | 0.25\nSUB $0x40,%RSP                   | 1     | 0.25 | 0.25 | 0    | 0    | 0    | 0.25 | 0.25 | 0    | 0    | 0    | 1       | 0.25\nMOV %RDI,-0x38(%RBP)             | 1     | 0    | 0    | 0    | 0    | 0.50 | 0    | 0    | 0.50 | 0.50 | 0.50 | 3       | 0.50\nMOVL $0,-0x1c(%RBP)              | 1     | 0    | 0    | 0    | 0    | 0.50 | 0    | 0    | 0.50 | 0.50 | 0.50 | 2       | 0.50\nMOV -0x38(%RBP),%RAX             | 1     | 0    | 0    | 0.50 | 0.50 | 0    | 0    | 0    | 0    | 0    | 0    | 2       | 0.50\nMOV 0x20(%RAX),%EAX              | 1     | 0    | 0    | 0.50 | 0.50 | 0    | 0    | 0    | 0    | 0    | 0    | 2       | 0.50\nMOV -0x38(%RBP),%RDX             | 1     | 0    | 0    | 0.50 | 0.50 | 0    | 0    | 0    | 0    | 0    | 0    | 2       | 0.50\nMOV 0x1c(%RDX),%ESI              | 1     | 0    | 0    | 0.50 | 0.50 | 0    | 0    | 0    | 0    | 0    | 0    | 2       | 0.50\nCLTD\nIDIV %ESI                        | 4     | 0.25 | 2.25 | 0    | 0    | 0    | 1.25 | 0.25 | 0    | 0    | 0    | 10-15   | 6\nMOV %EAX,-0x18(%RBP)             | 1     | 0    | 0    | 0    | 0    | 0.50 | 0    | 0    | 0.50 | 0.50 | 0.50 | 3       | 0.50\nCMPL $0,-0x18(%RBP)              | 1     | 0.25 | 0.25 | 0.50 | 0.50 | 0    | 0.25 | 0.25 | 0    | 0    | 0    | 1       | 0.50\nJNE 3b4e <time_allgatherv+0x38>  | 1     | 0.50 | 0    | 0    | 0    | 0    | 0    | 0.50 | 0    | 0    | 0    | 0       | 0.50-1\nMOVL $0x1,-0x18(%RBP)            | 1     | 0    | 0    | 0    | 0    | 0.50 | 0    | 0    | 0.50 | 0.50 | 0.50 | 2       | 0.50\nMOVL $0,-0x24(%RBP)              | 1     | 0    | 0    | 0    | 0    | 0.50 | 0    | 0    | 0.50 | 0.50 | 0.50 | 2       | 0.50\nJMP 3baa <time_allgatherv+0x94>  | 1     | 0    | 0    | 0    | 0    | 0    | 0    | 1    | 0    | 0    | 0    | 0       | 1-2\nMOV -0x38(%RBP),%RAX             | 1     | 0    | 0    | 0.50 | 0.50 | 0    | 0    | 0    | 0    | 0    | 0    | 2       | 0.50\nMOV 0x20(%RAX),%EAX              | 1     | 0    | 0    | 0.50 | 0.50 | 0    | 0    | 0    | 0    | 0    | 0    | 2       | 0.50\nTEST %EAX,%EAX                   | 1     | 0.25 | 0.25 | 0    | 0    | 0    | 0.25 | 0.25 | 0    | 0    | 0    | 1       | 0.25\nJLE 3bdc <time_allgatherv+0xc6>  | 1     | 0.50 | 0    | 0    | 0    | 0    | 0    | 0.50 | 0    | 0    | 0    | 0       | 0.50-1\nMOV -0x38(%RBP),%RAX             | 1     | 0    | 0    | 0.50 | 0.50 | 0    | 0    | 0    | 0    | 0    | 0    | 2       | 0.50\nMOV (%RAX),%RAX                  | 1     | 0    | 0    | 0.50 | 0.50 | 0    | 0    | 0    | 0    | 0    | 0    | 2       | 0.50\nMOV -0x38(%RBP),%RDX             | 1     | 0    | 0    | 0.50 | 0.50 | 0    | 0    | 0    | 0    | 0    | 0    | 2       | 0.50\nMOV 0x20(%RDX),%EDX              | 1     | 0    | 0    | 0.50 | 0.50 | 0    | 0    | 0    | 0    | 0    | 0    | 2       | 0.50\nMOVSXD %EDX,%RSI                 | 1     | 0.25 | 0.25 | 0    | 0    | 0    | 0.25 | 0.25 | 0    | 0    | 0    | 1       | 0.25\nMOV $0,%EDX                      | 1     | 0.25 | 0.25 | 0    | 0    | 0    | 0.25 | 0.25 | 0    | 0    | 0    | 1       | 0.25\nDIV %RSI                         | 4     | 0.25 | 3.25 | 0    | 0    | 0    | 0.25 | 0.25 | 0    | 0    | 0    | 14-18   | 10\nJMP 3be1 <time_allgatherv+0xcb>  | 1     | 0    | 0    | 0    | 0    | 0    | 0    | 1    | 0    | 0    | 0    | 0       | 1-2\nMOV $0,%EAX                      | 1     | 0.25 | 0.25 | 0    | 0    | 0    | 0.25 | 0.25 | 0    | 0    | 0    | 1       | 0.25\nMOV %RAX,-0x8(%RBP)              | 1     | 0    | 0    | 0    | 0    | 0.50 | 0    | 0    | 0.50 | 0.50 | 0.50 | 3       | 0.50\nLEA 0x5af4(%RIP),%RDI            | 1     | 0    | 1    | 0    | 0    | 0    | 0    | 0    | 0    | 0    | 0    | 3       | 1\nCALL 22c0 <.plt.sec@start>       | 2     | 0    | 0    | 0    | 0    | 0.50 | 0    | 1    | 0.50 | 0.50 | 0.50 | 0       | 2\nMOV -0x38(%RBP),%RAX             | 1     | 0    | 0    | 0.50 | 0.50 | 0    | 0    | 0    | 0    | 0    | 0    | 2       | 0.50\nMOV 0x18(%RAX),%EAX              | 1     | 0    | 0    | 0.50 | 0.50 | 0    | 0    | 0    | 0    | 0    | 0    | 2       | 0.50\nIMUL -0x18(%RBP),%EAX            | 1     | 0    | 1    | 0.50 | 0.50 | 0    | 0    | 0    | 0    | 0    | 0    | 3       | 1\nMOV -0x38(%RBP),%RDX             | 1     | 0    | 0    | 0.50 | 0.50 | 0    | 0    | 0    | 0    | 0    | 0    | 2       | 0.50\nMOV 0x20(%RDX),%EDX              | 1     | 0    | 0    | 0.50 | 0.50 | 0    | 0    | 0    | 0    | 0    | 0    | 2       | 0.50\nLEA 0x1(%RDX),%ECX               | 1     | 0.25 | 0.25 | 0    | 0    | 0    | 0.25 | 0.25 | 0    | 0    | 0    | 1       | 0.25\nCLTD\nIDIV %ECX                        | 4     | 0.25 | 2.25 | 0    | 0    | 0    | 1.25 | 0.25 | 0    | 0    | 0    | 10-15   | 6\nMOV %EDX,-0x14(%RBP)             | 1     | 0    | 0    | 0    | 0    | 0.50 | 0    | 0    | 0.50 | 0.50 | 0.50 | 3       | 0.50\nCALL 24e0 <.plt.sec@start+0x220> | 2     | 0    | 0    | 0    | 0    | 0.50 | 0    | 1    | 0.50 | 0.50 | 0.50 | 0       | 2\nMOVQ %XMM0,%RAX                  | 1     | 1    | 0    | 0    | 0    | 0    | 0    | 0    | 0    | 0    | 0    | 1       | 1\nMOV %RAX,0x66fb(%RIP)            | 1     | 0    | 0    | 0    | 0    | 0.50 | 0    | 0    | 0.50 | 0.50 | 0.50 | 3       | 0.50\nMOVL $0,-0x24(%RBP)              | 1     | 0    | 0    | 0    | 0    | 0.50 | 0    | 0    | 0.50 | 0.50 | 0.50 | 2       | 0.50\nJMP 3d65 <time_allgatherv+0x24f> | 1     | 0    | 0    | 0    | 0    | 0    | 0    | 1    | 0    | 0    | 0    | 0       | 1-2\nCALL 24e0 <.plt.sec@start+0x220> | 2     | 0    | 0    | 0    | 0    | 0.50 | 0    | 1    | 0.50 | 0.50 | 0.50 | 0       | 2\nMOVQ %XMM0,%RAX                  | 1     | 1    | 0    | 0    | 0    | 0    | 0    | 0    | 0    | 0    | 0    | 1       | 1\nMOV %RAX,0x658a(%RIP)            | 1     | 0    | 0    | 0    | 0    | 0.50 | 0    | 0    | 0.50 | 0.50 | 0.50 | 3       | 0.50\nMOVSD 0x6582(%RIP),%XMM0         | 1     | 0    | 0    | 0.50 | 0.50 | 0    | 0    | 0    | 0    | 0    | 0    | 0       | 0.50\nMOVSD 0x6582(%RIP),%XMM1         | 1     | 0    | 0    | 0.50 | 0.50 | 0    | 0    | 0    | 0    | 0    | 0    | 0       | 0.50\nSUBSD %XMM1,%XMM0                | 1     | 0.50 | 0.50 | 0    | 0    | 0    | 0    | 0    | 0    | 0    | 0    | 4       | 1\nMOVAPD %XMM0,%XMM1               | 1     | 0    | 0    | 0    | 0    | 0    | 0    | 0    | 0    | 0    | 0    | 0       | 0.25\nMOVSD 0x2b12(%RIP),%XMM0         | 1     | 0    | 0    | 0.50 | 0.50 | 0    | 0    | 0    | 0    | 0    | 0    | 0       | 0.50\nMULSD %XMM1,%XMM0                | 1     | 0.50 | 0.50 | 0    | 0    | 0    | 0    | 0    | 0    | 0    | 0    | 4       | 0.50\nMOV -0x38(%RBP),%RAX             | 1     | 0    | 0    | 0.50 | 0.50 | 0    | 0    | 0    | 0    | 0    | 0    | 2       | 0.50\nMOV 0x8(%RAX),%EAX               | 1     | 0    | 0    | 0.50 | 0.50 | 0    | 0    | 0    | 0    | 0    | 0    | 2       | 0.50\nCVTSI2SD %EAX,%XMM1              | 2     | 0.50 | 0.50 | 0    | 0    | 0    | 1    | 0    | 0    | 0    | 0    | 7       | 1\nDIVSD %XMM1,%XMM0                | 1     | 1    | 0    | 0    | 0    | 0    | 0    | 0    | 0    | 0    | 0    | 13-15   | 4\nLEAVE                            | 3     | 0.50 | 0.50 | 0.50 | 0.50 | 0    | 0.50 | 0.50 | 0    | 0    | 0    | 6       | 2\nRET                              | 1     | 0    | 0    | 0    | 0    | 0    | 0    | 1    | 0.50 | 0.50 | 0    | 0       | 1\n",
        },
      },
      header = {
        "Warnings:\n - The number of fused uops of the instruction [ENDBR64] is unknown\n - The number of fused uops of the instruction [CLTD] is unknown\n - Detected a function call instruction: ignoring called function instructions.\nRerun with --follow-calls=append to include them to analysis  or with --follow-calls=inline to simulate inlining.\n",
        "0% of peak computational performance is used (0.12 out of 32.00 FLOP per cycle (GFLOPS @ 1GHz))",
      },
      brief = {
      },
      gain = {
        {
          workaround = " - Try to reorganize arrays of structures to structures of arrays\n - Consider to permute loops (see vectorization gain report)\n",
          title = "Code clean check",
          txt = "Detected a slowdown caused by scalar integer instructions (typically used for address computation).\nBy removing them, you can lower the cost of an iteration from 26.00 to 4.20 cycles (6.19x speedup).",
        },
        {
          workaround = " - Try another compiler or update/tune your current one\n - Make array accesses unit-stride:\n  * If your function streams arrays of structures (AoS), try to use structures of arrays instead (SoA)\n",
          details = "Store and arithmetical SSE/AVX instructions are used in scalar version (process only one data element in vector registers).\nSince your execution units are vector units, only a vectorized function can use their full power.\n",
          title = "Vectorization",
          txt = "Your function is probably not vectorized.\nOnly 10% of vector register length is used (average across all SSE/AVX instructions).\nBy vectorizing your function, you can lower the cost of an iteration from 26.00 to 5.00 cycles (5.20x speedup).",
        },
        {
          workaround = " - Reduce the number of division or square root instructions:\n  * If denominator is constant over iterations, use reciprocal (replace x/y with x*(1/y)). Check precision impact.\n - Check whether you really need double precision. If not, switch to single precision to speedup execution\n",
          title = "Execution units bottlenecks",
          txt = "Performance is limited by execution of divide and square root operations (the divide/square root unit is a bottleneck).\n\nBy removing all these bottlenecks, you can lower the cost of an iteration from 26.00 to 15.00 cycles (1.73x speedup).\n",
        },
      },
      potential = {
        {
          workaround = " - Pass to your compiler a micro-architecture specialization option:\n  * Please read your compiler manual\n - Try to change order in which elements are evaluated (using parentheses) in arithmetic expressions containing both ADD/SUB and MUL operations to enable your compiler to generate FMA instructions wherever possible.\nFor instance a + b*c is a valid FMA (MUL then ADD).\nHowever (a+b)* c cannot be translated into an FMA (ADD then MUL).\n",
          title = "FMA",
          txt = "Presence of both ADD/SUB and MUL operations.",
        },
      },
    },
  },
  AVG = {
      hint = {
        {
          details = "Calling (and then returning from) a function prevents many compiler optimizations (like vectorization), breaks control flow (which reduces pipeline performance) and executes extra instructions to save/restore the registers used inside it, which is very expensive (dozens of cycles). Consider to inline small functions.\n - unknown: 3 occurrences\n",
          title = "CALL instructions",
          txt = "Detected function call instructions.\n",
        },
        {
          workaround = "Pass to your compiler a micro-architecture specialization option:\n - Please read your compiler manual\n",
          details = "These instructions generate more than one micro-operation and only one of them can be decoded during a cycle and the extra micro-operations increase pressure on execution units.\n - CVTSI2SD: 1 occurrences\n - DIV: 1 occurrences\n - IDIV: 2 occurrences\n - LEAVE: 1 occurrences\n",
          title = "Complex instructions",
          txt = "Detected COMPLEX INSTRUCTIONS.\n",
        },
        {
          workaround = "Avoid mixing data with different types. In particular, check if the type of constants is the same as array elements.",
          details = " - CVTSI2SD (INT32/64 to FP64, scalar): 1 occurrences\n",
          title = "Conversion instructions",
          txt = "Detected expensive conversion instructions.",
        },
        {
          title = "Type of elements and instruction set",
          txt = "3 SSE or AVX instructions are processing arithmetic or math operations on double precision FP elements in scalar mode (one at a time).\n",
        },
        {
          title = "Matching between your function (in the source code) and the binary function",
          txt = "The binary function is composed of 3 FP arithmetical operations:\n - 1: addition or subtraction\n - 1: multiply\n - 1: divide\nThe binary function is loading 132 bytes (16 double precision FP elements).\nThe binary function is storing 56 bytes (7 double precision FP elements).",
        },
        {
          title = "Arithmetic intensity",
          txt = "Arithmetic intensity is 0.02 FP operations per loaded or stored byte.",
        },
      },
      expert = {
        {
          title = "General properties",
          txt = "nb instructions    : 63\nnb uops            : 75\nloop length        : 250\nused x86 registers : 7\nused mmx registers : 0\nused xmm registers : 2\nused ymm registers : 0\nused zmm registers : 0\nnb stack references: 6\nADD-SUB / MUL ratio: 1.00\n",
        },
        {
          title = "Front-end",
          txt = "MACRO FUSION NOT POSSIBLE\nFIT IN UOP CACHE\nmicro-operation queue: 15.00 cycles\nfront end            : 15.00 cycles\n",
        },
        {
          title = "Back-end",
          txt = "       | P0   | P1   | P2    | P3    | P4   | P5   | P6   | P7   | P8   | P9\n------------------------------------------------------------------------------\nuops   | 9.75 | 9.75 | 11.00 | 11.00 | 7.00 | 9.75 | 9.75 | 7.50 | 7.50 | 7.00\ncycles | 9.75 | 9.75 | 11.00 | 11.00 | 7.00 | 9.75 | 9.75 | 7.50 | 7.50 | 7.00\n\nCycles executing div or sqrt instructions: 26.00\n",
        },
        {
          title = "Cycles summary",
          txt = "Front-end : 15.00\nDispatch  : 11.00\nDIV/SQRT  : 26.00\nOverall L1: 26.00\n",
        },
        {
          title = "Vectorization ratios",
          txt = "INT\nall    : 0%\nload   : 0%\nstore  : 0%\nmul    : NA (no mul vectorizable/vectorized instructions)\nadd-sub: 0%\nfma    : NA (no fma vectorizable/vectorized instructions)\nother  : 0%\nFP\nall     : 14%\nload    : 0%\nstore   : NA (no store vectorizable/vectorized instructions)\nmul     : 0%\nadd-sub : 0%\nfma     : NA (no fma vectorizable/vectorized instructions)\ndiv/sqrt: 0%\nother   : 100%\nINT+FP\nall     : 3%\nload    : 0%\nstore   : 0%\nmul     : 0%\nadd-sub : 0%\nfma     : NA (no fma vectorizable/vectorized instructions)\ndiv/sqrt: 0%\nother   : 12%\n",
        },
        {
          title = "Vector efficiency ratios",
          txt = "INT\nall    : 8%\nload   : 6%\nstore  : 8%\nmul    : NA (no mul vectorizable/vectorized instructions)\nadd-sub: 12%\nfma    : NA (no fma vectorizable/vectorized instructions)\nother  : 8%\nFP\nall     : 14%\nload    : 12%\nstore   : NA (no store vectorizable/vectorized instructions)\nmul     : 12%\nadd-sub : 12%\nfma     : NA (no fma vectorizable/vectorized instructions)\ndiv/sqrt: 12%\nother   : 25%\nINT+FP\nall     : 10%\nload    : 10%\nstore   : 8%\nmul     : 12%\nadd-sub : 12%\nfma     : NA (no fma vectorizable/vectorized instructions)\ndiv/sqrt: 9%\nother   : 10%\n",
        },
        {
          title = "Cycles and memory resources usage",
          txt = "Assuming all data fit into the L1 cache, each call to the function takes 26.00 cycles. At this rate:\n - 3% of peak load performance is reached (5.08 out of 128.00 bytes loaded per cycle (GB/s @ 1GHz))\n - 3% of peak store performance is reached (2.15 out of 64.00 bytes stored per cycle (GB/s @ 1GHz))\n",
        },
        {
          title = "Front-end bottlenecks",
          txt = "Found no such bottlenecks.",
        },
        {
          title = "ASM code",
          txt = "In the binary file, the address of the function is: 3b16\n\nInstruction                      | Nb FU | P0   | P1   | P2   | P3   | P4   | P5   | P6   | P7   | P8   | P9   | Latency | Recip. throughput\n--------------------------------------------------------------------------------------------------------------------------------------------\nENDBR64\nPUSH %RBP                        | 1     | 0    | 0    | 0    | 0    | 0.50 | 0    | 0    | 0.50 | 0.50 | 0.50 | 3       | 0.50\nMOV %RSP,%RBP                    | 1     | 0    | 0    | 0    | 0    | 0    | 0    | 0    | 0    | 0    | 0    | 0       | 0.25\nSUB $0x40,%RSP                   | 1     | 0.25 | 0.25 | 0    | 0    | 0    | 0.25 | 0.25 | 0    | 0    | 0    | 1       | 0.25\nMOV %RDI,-0x38(%RBP)             | 1     | 0    | 0    | 0    | 0    | 0.50 | 0    | 0    | 0.50 | 0.50 | 0.50 | 3       | 0.50\nMOVL $0,-0x1c(%RBP)              | 1     | 0    | 0    | 0    | 0    | 0.50 | 0    | 0    | 0.50 | 0.50 | 0.50 | 2       | 0.50\nMOV -0x38(%RBP),%RAX             | 1     | 0    | 0    | 0.50 | 0.50 | 0    | 0    | 0    | 0    | 0    | 0    | 2       | 0.50\nMOV 0x20(%RAX),%EAX              | 1     | 0    | 0    | 0.50 | 0.50 | 0    | 0    | 0    | 0    | 0    | 0    | 2       | 0.50\nMOV -0x38(%RBP),%RDX             | 1     | 0    | 0    | 0.50 | 0.50 | 0    | 0    | 0    | 0    | 0    | 0    | 2       | 0.50\nMOV 0x1c(%RDX),%ESI              | 1     | 0    | 0    | 0.50 | 0.50 | 0    | 0    | 0    | 0    | 0    | 0    | 2       | 0.50\nCLTD\nIDIV %ESI                        | 4     | 0.25 | 2.25 | 0    | 0    | 0    | 1.25 | 0.25 | 0    | 0    | 0    | 10-15   | 6\nMOV %EAX,-0x18(%RBP)             | 1     | 0    | 0    | 0    | 0    | 0.50 | 0    | 0    | 0.50 | 0.50 | 0.50 | 3       | 0.50\nCMPL $0,-0x18(%RBP)              | 1     | 0.25 | 0.25 | 0.50 | 0.50 | 0    | 0.25 | 0.25 | 0    | 0    | 0    | 1       | 0.50\nJNE 3b4e <time_allgatherv+0x38>  | 1     | 0.50 | 0    | 0    | 0    | 0    | 0    | 0.50 | 0    | 0    | 0    | 0       | 0.50-1\nMOVL $0x1,-0x18(%RBP)            | 1     | 0    | 0    | 0    | 0    | 0.50 | 0    | 0    | 0.50 | 0.50 | 0.50 | 2       | 0.50\nMOVL $0,-0x24(%RBP)              | 1     | 0    | 0    | 0    | 0    | 0.50 | 0    | 0    | 0.50 | 0.50 | 0.50 | 2       | 0.50\nJMP 3baa <time_allgatherv+0x94>  | 1     | 0    | 0    | 0    | 0    | 0    | 0    | 1    | 0    | 0    | 0    | 0       | 1-2\nMOV -0x38(%RBP),%RAX             | 1     | 0    | 0    | 0.50 | 0.50 | 0    | 0    | 0    | 0    | 0    | 0    | 2       | 0.50\nMOV 0x20(%RAX),%EAX              | 1     | 0    | 0    | 0.50 | 0.50 | 0    | 0    | 0    | 0    | 0    | 0    | 2       | 0.50\nTEST %EAX,%EAX                   | 1     | 0.25 | 0.25 | 0    | 0    | 0    | 0.25 | 0.25 | 0    | 0    | 0    | 1       | 0.25\nJLE 3bdc <time_allgatherv+0xc6>  | 1     | 0.50 | 0    | 0    | 0    | 0    | 0    | 0.50 | 0    | 0    | 0    | 0       | 0.50-1\nMOV -0x38(%RBP),%RAX             | 1     | 0    | 0    | 0.50 | 0.50 | 0    | 0    | 0    | 0    | 0    | 0    | 2       | 0.50\nMOV (%RAX),%RAX                  | 1     | 0    | 0    | 0.50 | 0.50 | 0    | 0    | 0    | 0    | 0    | 0    | 2       | 0.50\nMOV -0x38(%RBP),%RDX             | 1     | 0    | 0    | 0.50 | 0.50 | 0    | 0    | 0    | 0    | 0    | 0    | 2       | 0.50\nMOV 0x20(%RDX),%EDX              | 1     | 0    | 0    | 0.50 | 0.50 | 0    | 0    | 0    | 0    | 0    | 0    | 2       | 0.50\nMOVSXD %EDX,%RSI                 | 1     | 0.25 | 0.25 | 0    | 0    | 0    | 0.25 | 0.25 | 0    | 0    | 0    | 1       | 0.25\nMOV $0,%EDX                      | 1     | 0.25 | 0.25 | 0    | 0    | 0    | 0.25 | 0.25 | 0    | 0    | 0    | 1       | 0.25\nDIV %RSI                         | 4     | 0.25 | 3.25 | 0    | 0    | 0    | 0.25 | 0.25 | 0    | 0    | 0    | 14-18   | 10\nJMP 3be1 <time_allgatherv+0xcb>  | 1     | 0    | 0    | 0    | 0    | 0    | 0    | 1    | 0    | 0    | 0    | 0       | 1-2\nMOV $0,%EAX                      | 1     | 0.25 | 0.25 | 0    | 0    | 0    | 0.25 | 0.25 | 0    | 0    | 0    | 1       | 0.25\nMOV %RAX,-0x8(%RBP)              | 1     | 0    | 0    | 0    | 0    | 0.50 | 0    | 0    | 0.50 | 0.50 | 0.50 | 3       | 0.50\nLEA 0x5af4(%RIP),%RDI            | 1     | 0    | 1    | 0    | 0    | 0    | 0    | 0    | 0    | 0    | 0    | 3       | 1\nCALL 22c0 <.plt.sec@start>       | 2     | 0    | 0    | 0    | 0    | 0.50 | 0    | 1    | 0.50 | 0.50 | 0.50 | 0       | 2\nMOV -0x38(%RBP),%RAX             | 1     | 0    | 0    | 0.50 | 0.50 | 0    | 0    | 0    | 0    | 0    | 0    | 2       | 0.50\nMOV 0x18(%RAX),%EAX              | 1     | 0    | 0    | 0.50 | 0.50 | 0    | 0    | 0    | 0    | 0    | 0    | 2       | 0.50\nIMUL -0x18(%RBP),%EAX            | 1     | 0    | 1    | 0.50 | 0.50 | 0    | 0    | 0    | 0    | 0    | 0    | 3       | 1\nMOV -0x38(%RBP),%RDX             | 1     | 0    | 0    | 0.50 | 0.50 | 0    | 0    | 0    | 0    | 0    | 0    | 2       | 0.50\nMOV 0x20(%RDX),%EDX              | 1     | 0    | 0    | 0.50 | 0.50 | 0    | 0    | 0    | 0    | 0    | 0    | 2       | 0.50\nLEA 0x1(%RDX),%ECX               | 1     | 0.25 | 0.25 | 0    | 0    | 0    | 0.25 | 0.25 | 0    | 0    | 0    | 1       | 0.25\nCLTD\nIDIV %ECX                        | 4     | 0.25 | 2.25 | 0    | 0    | 0    | 1.25 | 0.25 | 0    | 0    | 0    | 10-15   | 6\nMOV %EDX,-0x14(%RBP)             | 1     | 0    | 0    | 0    | 0    | 0.50 | 0    | 0    | 0.50 | 0.50 | 0.50 | 3       | 0.50\nCALL 24e0 <.plt.sec@start+0x220> | 2     | 0    | 0    | 0    | 0    | 0.50 | 0    | 1    | 0.50 | 0.50 | 0.50 | 0       | 2\nMOVQ %XMM0,%RAX                  | 1     | 1    | 0    | 0    | 0    | 0    | 0    | 0    | 0    | 0    | 0    | 1       | 1\nMOV %RAX,0x66fb(%RIP)            | 1     | 0    | 0    | 0    | 0    | 0.50 | 0    | 0    | 0.50 | 0.50 | 0.50 | 3       | 0.50\nMOVL $0,-0x24(%RBP)              | 1     | 0    | 0    | 0    | 0    | 0.50 | 0    | 0    | 0.50 | 0.50 | 0.50 | 2       | 0.50\nJMP 3d65 <time_allgatherv+0x24f> | 1     | 0    | 0    | 0    | 0    | 0    | 0    | 1    | 0    | 0    | 0    | 0       | 1-2\nCALL 24e0 <.plt.sec@start+0x220> | 2     | 0    | 0    | 0    | 0    | 0.50 | 0    | 1    | 0.50 | 0.50 | 0.50 | 0       | 2\nMOVQ %XMM0,%RAX                  | 1     | 1    | 0    | 0    | 0    | 0    | 0    | 0    | 0    | 0    | 0    | 1       | 1\nMOV %RAX,0x658a(%RIP)            | 1     | 0    | 0    | 0    | 0    | 0.50 | 0    | 0    | 0.50 | 0.50 | 0.50 | 3       | 0.50\nMOVSD 0x6582(%RIP),%XMM0         | 1     | 0    | 0    | 0.50 | 0.50 | 0    | 0    | 0    | 0    | 0    | 0    | 0       | 0.50\nMOVSD 0x6582(%RIP),%XMM1         | 1     | 0    | 0    | 0.50 | 0.50 | 0    | 0    | 0    | 0    | 0    | 0    | 0       | 0.50\nSUBSD %XMM1,%XMM0                | 1     | 0.50 | 0.50 | 0    | 0    | 0    | 0    | 0    | 0    | 0    | 0    | 4       | 1\nMOVAPD %XMM0,%XMM1               | 1     | 0    | 0    | 0    | 0    | 0    | 0    | 0    | 0    | 0    | 0    | 0       | 0.25\nMOVSD 0x2b12(%RIP),%XMM0         | 1     | 0    | 0    | 0.50 | 0.50 | 0    | 0    | 0    | 0    | 0    | 0    | 0       | 0.50\nMULSD %XMM1,%XMM0                | 1     | 0.50 | 0.50 | 0    | 0    | 0    | 0    | 0    | 0    | 0    | 0    | 4       | 0.50\nMOV -0x38(%RBP),%RAX             | 1     | 0    | 0    | 0.50 | 0.50 | 0    | 0    | 0    | 0    | 0    | 0    | 2       | 0.50\nMOV 0x8(%RAX),%EAX               | 1     | 0    | 0    | 0.50 | 0.50 | 0    | 0    | 0    | 0    | 0    | 0    | 2       | 0.50\nCVTSI2SD %EAX,%XMM1              | 2     | 0.50 | 0.50 | 0    | 0    | 0    | 1    | 0    | 0    | 0    | 0    | 7       | 1\nDIVSD %XMM1,%XMM0                | 1     | 1    | 0    | 0    | 0    | 0    | 0    | 0    | 0    | 0    | 0    | 13-15   | 4\nLEAVE                            | 3     | 0.50 | 0.50 | 0.50 | 0.50 | 0    | 0.50 | 0.50 | 0    | 0    | 0    | 6       | 2\nRET                              | 1     | 0    | 0    | 0    | 0    | 0    | 0    | 1    | 0.50 | 0.50 | 0    | 0       | 1\n",
        },
      },
      header = {
        "Warnings:\n - The number of fused uops of the instruction [ENDBR64] is unknown\n - The number of fused uops of the instruction [CLTD] is unknown\n - Detected a function call instruction: ignoring called function instructions.\nRerun with --follow-calls=append to include them to analysis  or with --follow-calls=inline to simulate inlining.\n",
        "0% of peak computational performance is used (0.12 out of 32.00 FLOP per cycle (GFLOPS @ 1GHz))",
      },
      brief = {
      },
      gain = {
        {
          workaround = " - Try to reorganize arrays of structures to structures of arrays\n - Consider to permute loops (see vectorization gain report)\n",
          title = "Code clean check",
          txt = "Detected a slowdown caused by scalar integer instructions (typically used for address computation).\nBy removing them, you can lower the cost of an iteration from 26.00 to 4.20 cycles (6.19x speedup).",
        },
        {
          workaround = " - Try another compiler or update/tune your current one\n - Make array accesses unit-stride:\n  * If your function streams arrays of structures (AoS), try to use structures of arrays instead (SoA)\n",
          details = "Store and arithmetical SSE/AVX instructions are used in scalar version (process only one data element in vector registers).\nSince your execution units are vector units, only a vectorized function can use their full power.\n",
          title = "Vectorization",
          txt = "Your function is probably not vectorized.\nOnly 10% of vector register length is used (average across all SSE/AVX instructions).\nBy vectorizing your function, you can lower the cost of an iteration from 26.00 to 5.00 cycles (5.20x speedup).",
        },
        {
          workaround = " - Reduce the number of division or square root instructions:\n  * If denominator is constant over iterations, use reciprocal (replace x/y with x*(1/y)). Check precision impact.\n - Check whether you really need double precision. If not, switch to single precision to speedup execution\n",
          title = "Execution units bottlenecks",
          txt = "Performance is limited by execution of divide and square root operations (the divide/square root unit is a bottleneck).\n\nBy removing all these bottlenecks, you can lower the cost of an iteration from 26.00 to 15.00 cycles (1.73x speedup).\n",
        },
      },
      potential = {
        {
          workaround = " - Pass to your compiler a micro-architecture specialization option:\n  * Please read your compiler manual\n - Try to change order in which elements are evaluated (using parentheses) in arithmetic expressions containing both ADD/SUB and MUL operations to enable your compiler to generate FMA instructions wherever possible.\nFor instance a + b*c is a valid FMA (MUL then ADD).\nHowever (a+b)* c cannot be translated into an FMA (ADD then MUL).\n",
          title = "FMA",
          txt = "Presence of both ADD/SUB and MUL operations.",
        },
      },
    },
  common = {
    header = {
      "",
      "Warnings:\nIgnoring paths for analysis",
    },
  },
}
