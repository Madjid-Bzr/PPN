_cqa_text_report = {
  paths = {
    {
      hint = {
        {
          details = "Calling (and then returning from) a function prevents many compiler optimizations (like vectorization), breaks control flow (which reduces pipeline performance) and executes extra instructions to save/restore the registers used inside it, which is very expensive (dozens of cycles). Consider to inline small functions.\n - unknown: 5 occurrences\n",
          title = "CALL instructions",
          txt = "Detected function call instructions.\n",
        },
        {
          details = "These instructions generate more than one micro-operation and only one of them can be decoded during a cycle and the extra micro-operations increase pressure on execution units.\n - INC: 2 occurrences\n - PUSH: 2 occurrences\n",
          title = "Complex instructions",
          txt = "Detected COMPLEX INSTRUCTIONS.\n",
        },
        {
          title = "Type of elements and instruction set",
          txt = "No instructions are processing arithmetic or math operations on FP elements. This loop is probably writing/copying data or processing integer elements.",
        },
        {
          title = "Matching between your loop (in the source code) and the binary loop",
          txt = "The binary loop does not contain any FP arithmetical operations.\nThe binary loop is loading 224 bytes.\nThe binary loop is storing 16 bytes.",
        },
      },
      expert = {
        {
          title = "General properties",
          txt = "nb instructions    : 83\nnb uops            : 93\nloop length        : 348\nused x86 registers : 15\nused mmx registers : 0\nused xmm registers : 0\nused ymm registers : 0\nused zmm registers : 0\nnb stack references: 3\n",
        },
        {
          title = "Front-end",
          txt = "ASSUMED MACRO FUSION\nFIT IN UOP CACHE\nmicro-operation queue: 23.25 cycles\nfront end            : 23.25 cycles\n",
        },
        {
          title = "Back-end",
          txt = "       | P0   | P1   | P2    | P3    | P4    | P5   | P6   | P7\n------------------------------------------------------------------\nuops   | 8.50 | 8.50 | 18.50 | 18.50 | 14.00 | 8.50 | 8.50 | 14.00\ncycles | 8.50 | 8.50 | 18.50 | 18.50 | 14.00 | 8.50 | 8.50 | 14.00\n\nCycles executing div or sqrt instructions: NA\n",
        },
        {
          title = "Cycles summary",
          txt = "Front-end : 23.25\nDispatch  : 18.50\nOverall L1: 23.25\n",
        },
        {
          title = "Vectorization ratios",
          txt = "all     : 0%\nload    : 0%\nstore   : 0%\nmul     : NA (no mul vectorizable/vectorized instructions)\nadd-sub : 0%\nfma     : NA (no fma vectorizable/vectorized instructions)\ndiv/sqrt: NA (no div/sqrt vectorizable/vectorized instructions)\nother   : 0%\n",
        },
        {
          title = "Vector efficiency ratios",
          txt = "all     : 19%\nload    : 20%\nstore   : 16%\nmul     : NA (no mul vectorizable/vectorized instructions)\nadd-sub : 19%\nfma     : NA (no fma vectorizable/vectorized instructions)\ndiv/sqrt: NA (no div/sqrt vectorizable/vectorized instructions)\nother   : 15%\n",
        },
        {
          title = "Cycles and memory resources usage",
          txt = "Assuming all data fit into the L1 cache, each iteration of the binary loop takes 23.25 cycles. At this rate:\n - 15% of peak load performance is reached (9.63 out of 64.00 bytes loaded per cycle (GB/s @ 1GHz))\n - 2% of peak store performance is reached (0.69 out of 32.00 bytes stored per cycle (GB/s @ 1GHz))\n",
        },
        {
          title = "Front-end bottlenecks",
          txt = "Performance is limited by instruction throughput (loading/decoding program instructions to execution core) (front-end is a bottleneck).\n\nBy removing all these bottlenecks, you can lower the cost of an iteration from 23.25 to 18.50 cycles (1.26x speedup).\n",
        },
        {
          title = "ASM code",
          txt = "In the binary file, the address of the loop is: 7b3f\n\nInstruction                      | Nb FU | P0   | P1   | P2   | P3   | P4 | P5   | P6   | P7   | Latency | Recip. throughput\n----------------------------------------------------------------------------------------------------------------------------\nMOV 0x5856(%RIP),%EBX            | 1     | 0    | 0    | 0.50 | 0.50 | 0  | 0    | 0    | 0    | 2       | 0.50\nTEST %EBX,%EBX                   | 1     | 0.25 | 0.25 | 0    | 0    | 0  | 0.25 | 0.25 | 0    | 1       | 0.25\nJE 7ae3 <time_gatherv+0x113>     | 1     | 0.50 | 0    | 0    | 0    | 0  | 0    | 0.50 | 0    | 0       | 0.50-1\nDEC %R10D                        | 1     | 0.25 | 0.25 | 0    | 0    | 0  | 0.25 | 0.25 | 0    | 1       | 0.25\nCMP -0x34(%RBP),%R10D            | 1     | 0.25 | 0.25 | 0.50 | 0.50 | 0  | 0.25 | 0.25 | 0    | 1       | 0.50\nJE 7b49 <time_gatherv+0x179>     | 1     | 0.50 | 0    | 0    | 0    | 0  | 0    | 0.50 | 0    | 0       | 0.50-1\nSUB $0x8,%RSP                    | 1     | 0.25 | 0.25 | 0    | 0    | 0  | 0.25 | 0.25 | 0    | 1       | 0.25\nMOV 0x28(%R12),%RDX              | 1     | 0    | 0    | 0.50 | 0.50 | 0  | 0    | 0    | 0    | 2       | 0.50\nPUSHQ 0x10(%R12)                 | 2     | 0    | 0    | 0.83 | 0.83 | 1  | 0    | 0    | 0.33 | 3       | 1\nMOV 0xc(%R12),%R10D              | 1     | 0    | 0    | 0.50 | 0.50 | 0  | 0    | 0    | 0    | 2       | 0.50\nMOV 0x5833(%RIP),%RDI            | 1     | 0    | 0    | 0.50 | 0.50 | 0  | 0    | 0    | 0    | 2       | 0.50\nPUSH %R10                        | 1     | 0    | 0    | 0.33 | 0.33 | 1  | 0    | 0    | 0.33 | 3       | 1\nMOV 0x5812(%RIP),%R9             | 1     | 0    | 0    | 0.50 | 0.50 | 0  | 0    | 0    | 0    | 2       | 0.50\nMOV 0x57fb(%RIP),%R8             | 1     | 0    | 0    | 0.50 | 0.50 | 0  | 0    | 0    | 0    | 2       | 0.50\nPUSH %RDX                        | 1     | 0    | 0    | 0.33 | 0.33 | 1  | 0    | 0    | 0.33 | 3       | 1\nMOV 0x57eb(%RIP),%RCX            | 1     | 0    | 0    | 0.50 | 0.50 | 0  | 0    | 0    | 0    | 2       | 0.50\nMOV -0x38(%RBP),%ESI             | 1     | 0    | 0    | 0.50 | 0.50 | 0  | 0    | 0    | 0    | 2       | 0.50\nCALL 2540 <.plt.sec@start+0x260> | 2     | 0    | 0    | 0.33 | 0.33 | 1  | 0    | 1    | 0.33 | 0       | 2\nMOV 0x10(%R12),%RDI              | 1     | 0    | 0    | 0.50 | 0.50 | 0  | 0    | 0    | 0    | 2       | 0.50\nADD $0x20,%RSP                   | 1     | 0.25 | 0.25 | 0    | 0    | 0  | 0.25 | 0.25 | 0    | 1       | 0.25\nCALL 22e0 <.plt.sec@start>       | 2     | 0    | 0    | 0.33 | 0.33 | 1  | 0    | 1    | 0.33 | 0       | 2\nINCL -0x34(%RBP)                 | 3     | 0.25 | 0.25 | 0.83 | 0.83 | 1  | 0.25 | 0.25 | 0.33 | 5       | 1\nMOV 0x8(%R12),%R10D              | 1     | 0    | 0    | 0.50 | 0.50 | 0  | 0    | 0    | 0    | 2       | 0.50\nMOV -0x34(%RBP),%ESI             | 1     | 0    | 0    | 0.50 | 0.50 | 0  | 0    | 0    | 0    | 2       | 0.50\nCMP %ESI,%R10D                   | 1     | 0.25 | 0.25 | 0    | 0    | 0  | 0.25 | 0.25 | 0    | 1       | 0.25\nJLE 7f03 <time_gatherv+0x533>    | 1     | 0.50 | 0    | 0    | 0    | 0  | 0    | 0.50 | 0    | 0       | 0.50-1\nMOV 0x57df(%RIP),%ESI            | 1     | 0    | 0    | 0.50 | 0.50 | 0  | 0    | 0    | 0    | 2       | 0.50\nTEST %ESI,%ESI                   | 1     | 0.25 | 0.25 | 0    | 0    | 0  | 0.25 | 0.25 | 0    | 1       | 0.25\nJE 7ad0 <time_gatherv+0x100>     | 1     | 0.50 | 0    | 0    | 0    | 0  | 0    | 0.50 | 0    | 0       | 0.50-1\nMOV 0x5780(%RIP),%R11            | 1     | 0    | 0    | 0.50 | 0.50 | 0  | 0    | 0    | 0    | 2       | 0.50\nMOV 0x18(%R12),%EDI              | 1     | 0    | 0    | 0.50 | 0.50 | 0  | 0    | 0    | 0    | 2       | 0.50\nTEST %R11,%R11                   | 1     | 0.25 | 0.25 | 0    | 0    | 0  | 0.25 | 0.25 | 0    | 1       | 0.25\nJE 7b87 <time_gatherv+0x1b7>     | 1     | 0.50 | 0    | 0    | 0    | 0  | 0    | 0.50 | 0    | 0       | 0.50-1\nINC %EDI                         | 1     | 0.25 | 0.25 | 0    | 0    | 0  | 0.25 | 0.25 | 0    | 1       | 0.25\nMOV %EDI,%EDX                    | 1     | 0    | 0    | 0    | 0    | 0  | 0    | 0    | 0    | 0       | 0.25\nXOR %R9D,%R9D                    | 1     | 0    | 0    | 0    | 0    | 0  | 0    | 0    | 0    | 0       | 0.25\nINC %EDI                         | 1     | 0.25 | 0.25 | 0    | 0    | 0  | 0.25 | 0.25 | 0    | 1       | 0.25\nNOPL (%RAX,%RAX,1)               | 1     | 0    | 0    | 0    | 0    | 0  | 0    | 0    | 0    | 0       | 0.25\nMOV 0x5772(%RIP),%RDI            | 1     | 0    | 0    | 0.50 | 0.50 | 0  | 0    | 0    | 0    | 2       | 0.50\nMOV %R11,%RDX                    | 1     | 0    | 0    | 0    | 0    | 0  | 0    | 0    | 0    | 0       | 0.25\nXOR %ESI,%ESI                    | 1     | 0    | 0    | 0    | 0    | 0  | 0    | 0    | 0    | 0       | 0.25\nCALL 22f0 <.plt.sec@start+0x10>  | 2     | 0    | 0    | 0.33 | 0.33 | 1  | 0    | 1    | 0.33 | 0       | 2\nSUB $0x8,%RSP                    | 1     | 0.25 | 0.25 | 0    | 0    | 0  | 0.25 | 0.25 | 0    | 1       | 0.25\nMOV 0x28(%R12),%RDX              | 1     | 0    | 0    | 0.50 | 0.50 | 0  | 0    | 0    | 0    | 2       | 0.50\nPUSHQ 0x10(%R12)                 | 2     | 0    | 0    | 0.83 | 0.83 | 1  | 0    | 0    | 0.33 | 3       | 1\nMOV 0xc(%R12),%R13D              | 1     | 0    | 0    | 0.50 | 0.50 | 0  | 0    | 0    | 0    | 2       | 0.50\nMOV 0x5766(%RIP),%R9             | 1     | 0    | 0    | 0.50 | 0.50 | 0  | 0    | 0    | 0    | 2       | 0.50\nPUSH %R13                        | 1     | 0    | 0    | 0.33 | 0.33 | 1  | 0    | 0    | 0.33 | 3       | 1\nMOV 0x574d(%RIP),%R8             | 1     | 0    | 0    | 0.50 | 0.50 | 0  | 0    | 0    | 0    | 2       | 0.50\nMOV 0x573e(%RIP),%RCX            | 1     | 0    | 0    | 0.50 | 0.50 | 0  | 0    | 0    | 0    | 2       | 0.50\nPUSH %RDX                        | 1     | 0    | 0    | 0.33 | 0.33 | 1  | 0    | 0    | 0.33 | 3       | 1\nMOV -0x38(%RBP),%ESI             | 1     | 0    | 0    | 0.50 | 0.50 | 0  | 0    | 0    | 0    | 2       | 0.50\nMOV 0x5763(%RIP),%RDI            | 1     | 0    | 0    | 0.50 | 0.50 | 0  | 0    | 0    | 0    | 2       | 0.50\nCALL 2540 <.plt.sec@start+0x260> | 2     | 0    | 0    | 0.33 | 0.33 | 1  | 0    | 1    | 0.33 | 0       | 2\nMOV 0x10(%R12),%RDI              | 1     | 0    | 0    | 0.50 | 0.50 | 0  | 0    | 0    | 0    | 2       | 0.50\nADD $0x20,%RSP                   | 1     | 0.25 | 0.25 | 0    | 0    | 0  | 0.25 | 0.25 | 0    | 1       | 0.25\nCALL 22e0 <.plt.sec@start>       | 2     | 0    | 0    | 0.33 | 0.33 | 1  | 0    | 1    | 0.33 | 0       | 2\nMOV 0x56e9(%RIP),%RAX            | 1     | 0    | 0    | 0.50 | 0.50 | 0  | 0    | 0    | 0    | 2       | 0.50\nMOV 0x18(%R12),%R15D             | 1     | 0    | 0    | 0.50 | 0.50 | 0  | 0    | 0    | 0    | 2       | 0.50\nTEST %RAX,%RAX                   | 1     | 0.25 | 0.25 | 0    | 0    | 0  | 0.25 | 0.25 | 0    | 1       | 0.25\nJE 7c5f <time_gatherv+0x28f>     | 1     | 0.50 | 0    | 0    | 0    | 0  | 0    | 0.50 | 0    | 0       | 0.50-1\nLEA 0x1(%R15),%EBX               | 1     | 0    | 0.50 | 0    | 0    | 0  | 0.50 | 0    | 0    | 1       | 0.50\nMOV %EBX,%R13D                   | 1     | 0    | 0    | 0    | 0    | 0  | 0    | 0    | 0    | 0       | 0.25\nMOV 0x5731(%RIP),%RSI            | 1     | 0    | 0    | 0.50 | 0.50 | 0  | 0    | 0    | 0    | 2       | 0.50\nINC %EBX                         | 1     | 0.25 | 0.25 | 0    | 0    | 0  | 0.25 | 0.25 | 0    | 1       | 0.25\nXOR %ECX,%ECX                    | 1     | 0    | 0    | 0    | 0    | 0  | 0    | 0    | 0    | 0       | 0.25\nJMP 7c48 <time_gatherv+0x278>    | 1     | 0    | 0    | 0    | 0    | 0  | 0    | 1    | 0    | 0       | 1-2\nMOV 0x18(%R12),%R15D             | 1     | 0    | 0    | 0.50 | 0.50 | 0  | 0    | 0    | 0    | 2       | 0.50\nCMP %R15D,0xc(%R12)              | 1     | 0.25 | 0.25 | 0.50 | 0.50 | 0  | 0.25 | 0.25 | 0    | 1       | 0.50\nJNE 7b2b <time_gatherv+0x15b>    | 1     | 0.50 | 0    | 0    | 0    | 0  | 0    | 0.50 | 0    | 0       | 0.50-1\nMOV 0x1c(%R12),%EAX              | 1     | 0    | 0    | 0.50 | 0.50 | 0  | 0    | 0    | 0    | 2       | 0.50\nTEST %EAX,%EAX                   | 1     | 0.25 | 0.25 | 0    | 0    | 0  | 0.25 | 0.25 | 0    | 1       | 0.25\nJLE 7b2b <time_gatherv+0x15b>    | 1     | 0.50 | 0    | 0    | 0    | 0  | 0    | 0.50 | 0    | 0       | 0.50-1\nXOR %R10D,%R10D                  | 1     | 0    | 0    | 0    | 0    | 0  | 0    | 0    | 0    | 0       | 0.25\nMOV %R12,-0x58(%RBP)             | 1     | 0    | 0    | 0.33 | 0.33 | 1  | 0    | 0    | 0.33 | 3       | 1\nMOV %R10,%R12                    | 1     | 0    | 0    | 0    | 0    | 0  | 0    | 0    | 0    | 0       | 0.25\nNOPL (%RAX)                      | 1     | 0    | 0    | 0    | 0    | 0  | 0    | 0    | 0    | 0       | 0.25\nINCL -0x34(%RBP)                 | 3     | 0.25 | 0.25 | 0.83 | 0.83 | 1  | 0.25 | 0.25 | 0.33 | 5       | 1\nMOV -0x58(%RBP),%R12             | 1     | 0    | 0    | 0.50 | 0.50 | 0  | 0    | 0    | 0    | 2       | 0.50\nMOV 0x8(%R12),%R10D              | 1     | 0    | 0    | 0.50 | 0.50 | 0  | 0    | 0    | 0    | 2       | 0.50\nMOV -0x34(%RBP),%ESI             | 1     | 0    | 0    | 0.50 | 0.50 | 0  | 0    | 0    | 0    | 2       | 0.50\nCMP %ESI,%R10D                   | 1     | 0.25 | 0.25 | 0    | 0    | 0  | 0.25 | 0.25 | 0    | 1       | 0.25\nJG 7b3f <time_gatherv+0x16f>     | 1     | 0.50 | 0    | 0    | 0    | 0  | 0    | 0.50 | 0    | 0       | 0.50-1\n",
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
          workaround = " - Try another compiler or update/tune your current one\n - Remove inter-iterations dependences from your loop and make it unit-stride:\n  * If your arrays have 2 or more dimensions, check whether elements are accessed contiguously and, otherwise, try to permute loops accordingly:\nC storage order is row-major: for(i) for(j) a[j][i] = b[j][i]; (slow, non stride 1) => for(i) for(j) a[i][j] = b[i][j]; (fast, stride 1)\n  * If your loop streams arrays of structures (AoS), try to use structures of arrays instead (SoA):\nfor(i) a[i].x = b[i].x; (slow, non stride 1) => for(i) a.x[i] = b.x[i]; (fast, stride 1)\n",
          details = "All SSE/AVX instructions are used in scalar version (process only one data element in vector registers).\nSince your execution units are vector units, only a vectorized loop can use their full power.\n",
          title = "Vectorization",
          txt = "Your loop is not vectorized.\nOnly 19% of vector register length is used (average across all SSE/AVX instructions).\nBy vectorizing your loop, you can lower the cost of an iteration from 23.25 to 3.64 cycles (6.38x speedup).",
        },
        {
          title = "Execution units bottlenecks",
          txt = "Found no such bottlenecks but see expert reports for more complex bottlenecks.",
        },
      },
      potential = {
      },
    },
  },
  AVG = {
      hint = {
        {
          details = "Calling (and then returning from) a function prevents many compiler optimizations (like vectorization), breaks control flow (which reduces pipeline performance) and executes extra instructions to save/restore the registers used inside it, which is very expensive (dozens of cycles). Consider to inline small functions.\n - unknown: 5 occurrences\n",
          title = "CALL instructions",
          txt = "Detected function call instructions.\n",
        },
        {
          details = "These instructions generate more than one micro-operation and only one of them can be decoded during a cycle and the extra micro-operations increase pressure on execution units.\n - INC: 2 occurrences\n - PUSH: 2 occurrences\n",
          title = "Complex instructions",
          txt = "Detected COMPLEX INSTRUCTIONS.\n",
        },
        {
          title = "Type of elements and instruction set",
          txt = "No instructions are processing arithmetic or math operations on FP elements. This loop is probably writing/copying data or processing integer elements.",
        },
        {
          title = "Matching between your loop (in the source code) and the binary loop",
          txt = "The binary loop does not contain any FP arithmetical operations.\nThe binary loop is loading 224 bytes.\nThe binary loop is storing 16 bytes.",
        },
      },
      expert = {
        {
          title = "General properties",
          txt = "nb instructions    : 83\nnb uops            : 93\nloop length        : 348\nused x86 registers : 15\nused mmx registers : 0\nused xmm registers : 0\nused ymm registers : 0\nused zmm registers : 0\nnb stack references: 3\n",
        },
        {
          title = "Front-end",
          txt = "ASSUMED MACRO FUSION\nFIT IN UOP CACHE\nmicro-operation queue: 23.25 cycles\nfront end            : 23.25 cycles\n",
        },
        {
          title = "Back-end",
          txt = "       | P0   | P1   | P2    | P3    | P4    | P5   | P6   | P7\n------------------------------------------------------------------\nuops   | 8.50 | 8.50 | 18.50 | 18.50 | 14.00 | 8.50 | 8.50 | 14.00\ncycles | 8.50 | 8.50 | 18.50 | 18.50 | 14.00 | 8.50 | 8.50 | 14.00\n\nCycles executing div or sqrt instructions: NA\n",
        },
        {
          title = "Cycles summary",
          txt = "Front-end : 23.25\nDispatch  : 18.50\nOverall L1: 23.25\n",
        },
        {
          title = "Vectorization ratios",
          txt = "all     : 0%\nload    : 0%\nstore   : 0%\nmul     : NA (no mul vectorizable/vectorized instructions)\nadd-sub : 0%\nfma     : NA (no fma vectorizable/vectorized instructions)\ndiv/sqrt: NA (no div/sqrt vectorizable/vectorized instructions)\nother   : 0%\n",
        },
        {
          title = "Vector efficiency ratios",
          txt = "all     : 19%\nload    : 20%\nstore   : 16%\nmul     : NA (no mul vectorizable/vectorized instructions)\nadd-sub : 19%\nfma     : NA (no fma vectorizable/vectorized instructions)\ndiv/sqrt: NA (no div/sqrt vectorizable/vectorized instructions)\nother   : 15%\n",
        },
        {
          title = "Cycles and memory resources usage",
          txt = "Assuming all data fit into the L1 cache, each iteration of the binary loop takes 23.25 cycles. At this rate:\n - 15% of peak load performance is reached (9.63 out of 64.00 bytes loaded per cycle (GB/s @ 1GHz))\n - 2% of peak store performance is reached (0.69 out of 32.00 bytes stored per cycle (GB/s @ 1GHz))\n",
        },
        {
          title = "Front-end bottlenecks",
          txt = "Performance is limited by instruction throughput (loading/decoding program instructions to execution core) (front-end is a bottleneck).\n\nBy removing all these bottlenecks, you can lower the cost of an iteration from 23.25 to 18.50 cycles (1.26x speedup).\n",
        },
        {
          title = "ASM code",
          txt = "In the binary file, the address of the loop is: 7b3f\n\nInstruction                      | Nb FU | P0   | P1   | P2   | P3   | P4 | P5   | P6   | P7   | Latency | Recip. throughput\n----------------------------------------------------------------------------------------------------------------------------\nMOV 0x5856(%RIP),%EBX            | 1     | 0    | 0    | 0.50 | 0.50 | 0  | 0    | 0    | 0    | 2       | 0.50\nTEST %EBX,%EBX                   | 1     | 0.25 | 0.25 | 0    | 0    | 0  | 0.25 | 0.25 | 0    | 1       | 0.25\nJE 7ae3 <time_gatherv+0x113>     | 1     | 0.50 | 0    | 0    | 0    | 0  | 0    | 0.50 | 0    | 0       | 0.50-1\nDEC %R10D                        | 1     | 0.25 | 0.25 | 0    | 0    | 0  | 0.25 | 0.25 | 0    | 1       | 0.25\nCMP -0x34(%RBP),%R10D            | 1     | 0.25 | 0.25 | 0.50 | 0.50 | 0  | 0.25 | 0.25 | 0    | 1       | 0.50\nJE 7b49 <time_gatherv+0x179>     | 1     | 0.50 | 0    | 0    | 0    | 0  | 0    | 0.50 | 0    | 0       | 0.50-1\nSUB $0x8,%RSP                    | 1     | 0.25 | 0.25 | 0    | 0    | 0  | 0.25 | 0.25 | 0    | 1       | 0.25\nMOV 0x28(%R12),%RDX              | 1     | 0    | 0    | 0.50 | 0.50 | 0  | 0    | 0    | 0    | 2       | 0.50\nPUSHQ 0x10(%R12)                 | 2     | 0    | 0    | 0.83 | 0.83 | 1  | 0    | 0    | 0.33 | 3       | 1\nMOV 0xc(%R12),%R10D              | 1     | 0    | 0    | 0.50 | 0.50 | 0  | 0    | 0    | 0    | 2       | 0.50\nMOV 0x5833(%RIP),%RDI            | 1     | 0    | 0    | 0.50 | 0.50 | 0  | 0    | 0    | 0    | 2       | 0.50\nPUSH %R10                        | 1     | 0    | 0    | 0.33 | 0.33 | 1  | 0    | 0    | 0.33 | 3       | 1\nMOV 0x5812(%RIP),%R9             | 1     | 0    | 0    | 0.50 | 0.50 | 0  | 0    | 0    | 0    | 2       | 0.50\nMOV 0x57fb(%RIP),%R8             | 1     | 0    | 0    | 0.50 | 0.50 | 0  | 0    | 0    | 0    | 2       | 0.50\nPUSH %RDX                        | 1     | 0    | 0    | 0.33 | 0.33 | 1  | 0    | 0    | 0.33 | 3       | 1\nMOV 0x57eb(%RIP),%RCX            | 1     | 0    | 0    | 0.50 | 0.50 | 0  | 0    | 0    | 0    | 2       | 0.50\nMOV -0x38(%RBP),%ESI             | 1     | 0    | 0    | 0.50 | 0.50 | 0  | 0    | 0    | 0    | 2       | 0.50\nCALL 2540 <.plt.sec@start+0x260> | 2     | 0    | 0    | 0.33 | 0.33 | 1  | 0    | 1    | 0.33 | 0       | 2\nMOV 0x10(%R12),%RDI              | 1     | 0    | 0    | 0.50 | 0.50 | 0  | 0    | 0    | 0    | 2       | 0.50\nADD $0x20,%RSP                   | 1     | 0.25 | 0.25 | 0    | 0    | 0  | 0.25 | 0.25 | 0    | 1       | 0.25\nCALL 22e0 <.plt.sec@start>       | 2     | 0    | 0    | 0.33 | 0.33 | 1  | 0    | 1    | 0.33 | 0       | 2\nINCL -0x34(%RBP)                 | 3     | 0.25 | 0.25 | 0.83 | 0.83 | 1  | 0.25 | 0.25 | 0.33 | 5       | 1\nMOV 0x8(%R12),%R10D              | 1     | 0    | 0    | 0.50 | 0.50 | 0  | 0    | 0    | 0    | 2       | 0.50\nMOV -0x34(%RBP),%ESI             | 1     | 0    | 0    | 0.50 | 0.50 | 0  | 0    | 0    | 0    | 2       | 0.50\nCMP %ESI,%R10D                   | 1     | 0.25 | 0.25 | 0    | 0    | 0  | 0.25 | 0.25 | 0    | 1       | 0.25\nJLE 7f03 <time_gatherv+0x533>    | 1     | 0.50 | 0    | 0    | 0    | 0  | 0    | 0.50 | 0    | 0       | 0.50-1\nMOV 0x57df(%RIP),%ESI            | 1     | 0    | 0    | 0.50 | 0.50 | 0  | 0    | 0    | 0    | 2       | 0.50\nTEST %ESI,%ESI                   | 1     | 0.25 | 0.25 | 0    | 0    | 0  | 0.25 | 0.25 | 0    | 1       | 0.25\nJE 7ad0 <time_gatherv+0x100>     | 1     | 0.50 | 0    | 0    | 0    | 0  | 0    | 0.50 | 0    | 0       | 0.50-1\nMOV 0x5780(%RIP),%R11            | 1     | 0    | 0    | 0.50 | 0.50 | 0  | 0    | 0    | 0    | 2       | 0.50\nMOV 0x18(%R12),%EDI              | 1     | 0    | 0    | 0.50 | 0.50 | 0  | 0    | 0    | 0    | 2       | 0.50\nTEST %R11,%R11                   | 1     | 0.25 | 0.25 | 0    | 0    | 0  | 0.25 | 0.25 | 0    | 1       | 0.25\nJE 7b87 <time_gatherv+0x1b7>     | 1     | 0.50 | 0    | 0    | 0    | 0  | 0    | 0.50 | 0    | 0       | 0.50-1\nINC %EDI                         | 1     | 0.25 | 0.25 | 0    | 0    | 0  | 0.25 | 0.25 | 0    | 1       | 0.25\nMOV %EDI,%EDX                    | 1     | 0    | 0    | 0    | 0    | 0  | 0    | 0    | 0    | 0       | 0.25\nXOR %R9D,%R9D                    | 1     | 0    | 0    | 0    | 0    | 0  | 0    | 0    | 0    | 0       | 0.25\nINC %EDI                         | 1     | 0.25 | 0.25 | 0    | 0    | 0  | 0.25 | 0.25 | 0    | 1       | 0.25\nNOPL (%RAX,%RAX,1)               | 1     | 0    | 0    | 0    | 0    | 0  | 0    | 0    | 0    | 0       | 0.25\nMOV 0x5772(%RIP),%RDI            | 1     | 0    | 0    | 0.50 | 0.50 | 0  | 0    | 0    | 0    | 2       | 0.50\nMOV %R11,%RDX                    | 1     | 0    | 0    | 0    | 0    | 0  | 0    | 0    | 0    | 0       | 0.25\nXOR %ESI,%ESI                    | 1     | 0    | 0    | 0    | 0    | 0  | 0    | 0    | 0    | 0       | 0.25\nCALL 22f0 <.plt.sec@start+0x10>  | 2     | 0    | 0    | 0.33 | 0.33 | 1  | 0    | 1    | 0.33 | 0       | 2\nSUB $0x8,%RSP                    | 1     | 0.25 | 0.25 | 0    | 0    | 0  | 0.25 | 0.25 | 0    | 1       | 0.25\nMOV 0x28(%R12),%RDX              | 1     | 0    | 0    | 0.50 | 0.50 | 0  | 0    | 0    | 0    | 2       | 0.50\nPUSHQ 0x10(%R12)                 | 2     | 0    | 0    | 0.83 | 0.83 | 1  | 0    | 0    | 0.33 | 3       | 1\nMOV 0xc(%R12),%R13D              | 1     | 0    | 0    | 0.50 | 0.50 | 0  | 0    | 0    | 0    | 2       | 0.50\nMOV 0x5766(%RIP),%R9             | 1     | 0    | 0    | 0.50 | 0.50 | 0  | 0    | 0    | 0    | 2       | 0.50\nPUSH %R13                        | 1     | 0    | 0    | 0.33 | 0.33 | 1  | 0    | 0    | 0.33 | 3       | 1\nMOV 0x574d(%RIP),%R8             | 1     | 0    | 0    | 0.50 | 0.50 | 0  | 0    | 0    | 0    | 2       | 0.50\nMOV 0x573e(%RIP),%RCX            | 1     | 0    | 0    | 0.50 | 0.50 | 0  | 0    | 0    | 0    | 2       | 0.50\nPUSH %RDX                        | 1     | 0    | 0    | 0.33 | 0.33 | 1  | 0    | 0    | 0.33 | 3       | 1\nMOV -0x38(%RBP),%ESI             | 1     | 0    | 0    | 0.50 | 0.50 | 0  | 0    | 0    | 0    | 2       | 0.50\nMOV 0x5763(%RIP),%RDI            | 1     | 0    | 0    | 0.50 | 0.50 | 0  | 0    | 0    | 0    | 2       | 0.50\nCALL 2540 <.plt.sec@start+0x260> | 2     | 0    | 0    | 0.33 | 0.33 | 1  | 0    | 1    | 0.33 | 0       | 2\nMOV 0x10(%R12),%RDI              | 1     | 0    | 0    | 0.50 | 0.50 | 0  | 0    | 0    | 0    | 2       | 0.50\nADD $0x20,%RSP                   | 1     | 0.25 | 0.25 | 0    | 0    | 0  | 0.25 | 0.25 | 0    | 1       | 0.25\nCALL 22e0 <.plt.sec@start>       | 2     | 0    | 0    | 0.33 | 0.33 | 1  | 0    | 1    | 0.33 | 0       | 2\nMOV 0x56e9(%RIP),%RAX            | 1     | 0    | 0    | 0.50 | 0.50 | 0  | 0    | 0    | 0    | 2       | 0.50\nMOV 0x18(%R12),%R15D             | 1     | 0    | 0    | 0.50 | 0.50 | 0  | 0    | 0    | 0    | 2       | 0.50\nTEST %RAX,%RAX                   | 1     | 0.25 | 0.25 | 0    | 0    | 0  | 0.25 | 0.25 | 0    | 1       | 0.25\nJE 7c5f <time_gatherv+0x28f>     | 1     | 0.50 | 0    | 0    | 0    | 0  | 0    | 0.50 | 0    | 0       | 0.50-1\nLEA 0x1(%R15),%EBX               | 1     | 0    | 0.50 | 0    | 0    | 0  | 0.50 | 0    | 0    | 1       | 0.50\nMOV %EBX,%R13D                   | 1     | 0    | 0    | 0    | 0    | 0  | 0    | 0    | 0    | 0       | 0.25\nMOV 0x5731(%RIP),%RSI            | 1     | 0    | 0    | 0.50 | 0.50 | 0  | 0    | 0    | 0    | 2       | 0.50\nINC %EBX                         | 1     | 0.25 | 0.25 | 0    | 0    | 0  | 0.25 | 0.25 | 0    | 1       | 0.25\nXOR %ECX,%ECX                    | 1     | 0    | 0    | 0    | 0    | 0  | 0    | 0    | 0    | 0       | 0.25\nJMP 7c48 <time_gatherv+0x278>    | 1     | 0    | 0    | 0    | 0    | 0  | 0    | 1    | 0    | 0       | 1-2\nMOV 0x18(%R12),%R15D             | 1     | 0    | 0    | 0.50 | 0.50 | 0  | 0    | 0    | 0    | 2       | 0.50\nCMP %R15D,0xc(%R12)              | 1     | 0.25 | 0.25 | 0.50 | 0.50 | 0  | 0.25 | 0.25 | 0    | 1       | 0.50\nJNE 7b2b <time_gatherv+0x15b>    | 1     | 0.50 | 0    | 0    | 0    | 0  | 0    | 0.50 | 0    | 0       | 0.50-1\nMOV 0x1c(%R12),%EAX              | 1     | 0    | 0    | 0.50 | 0.50 | 0  | 0    | 0    | 0    | 2       | 0.50\nTEST %EAX,%EAX                   | 1     | 0.25 | 0.25 | 0    | 0    | 0  | 0.25 | 0.25 | 0    | 1       | 0.25\nJLE 7b2b <time_gatherv+0x15b>    | 1     | 0.50 | 0    | 0    | 0    | 0  | 0    | 0.50 | 0    | 0       | 0.50-1\nXOR %R10D,%R10D                  | 1     | 0    | 0    | 0    | 0    | 0  | 0    | 0    | 0    | 0       | 0.25\nMOV %R12,-0x58(%RBP)             | 1     | 0    | 0    | 0.33 | 0.33 | 1  | 0    | 0    | 0.33 | 3       | 1\nMOV %R10,%R12                    | 1     | 0    | 0    | 0    | 0    | 0  | 0    | 0    | 0    | 0       | 0.25\nNOPL (%RAX)                      | 1     | 0    | 0    | 0    | 0    | 0  | 0    | 0    | 0    | 0       | 0.25\nINCL -0x34(%RBP)                 | 3     | 0.25 | 0.25 | 0.83 | 0.83 | 1  | 0.25 | 0.25 | 0.33 | 5       | 1\nMOV -0x58(%RBP),%R12             | 1     | 0    | 0    | 0.50 | 0.50 | 0  | 0    | 0    | 0    | 2       | 0.50\nMOV 0x8(%R12),%R10D              | 1     | 0    | 0    | 0.50 | 0.50 | 0  | 0    | 0    | 0    | 2       | 0.50\nMOV -0x34(%RBP),%ESI             | 1     | 0    | 0    | 0.50 | 0.50 | 0  | 0    | 0    | 0    | 2       | 0.50\nCMP %ESI,%R10D                   | 1     | 0.25 | 0.25 | 0    | 0    | 0  | 0.25 | 0.25 | 0    | 1       | 0.25\nJG 7b3f <time_gatherv+0x16f>     | 1     | 0.50 | 0    | 0    | 0    | 0  | 0    | 0.50 | 0    | 0       | 0.50-1\n",
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
          workaround = " - Try another compiler or update/tune your current one\n - Remove inter-iterations dependences from your loop and make it unit-stride:\n  * If your arrays have 2 or more dimensions, check whether elements are accessed contiguously and, otherwise, try to permute loops accordingly:\nC storage order is row-major: for(i) for(j) a[j][i] = b[j][i]; (slow, non stride 1) => for(i) for(j) a[i][j] = b[i][j]; (fast, stride 1)\n  * If your loop streams arrays of structures (AoS), try to use structures of arrays instead (SoA):\nfor(i) a[i].x = b[i].x; (slow, non stride 1) => for(i) a.x[i] = b.x[i]; (fast, stride 1)\n",
          details = "All SSE/AVX instructions are used in scalar version (process only one data element in vector registers).\nSince your execution units are vector units, only a vectorized loop can use their full power.\n",
          title = "Vectorization",
          txt = "Your loop is not vectorized.\nOnly 19% of vector register length is used (average across all SSE/AVX instructions).\nBy vectorizing your loop, you can lower the cost of an iteration from 23.25 to 3.64 cycles (6.38x speedup).",
        },
        {
          title = "Execution units bottlenecks",
          txt = "Found no such bottlenecks but see expert reports for more complex bottlenecks.",
        },
      },
      potential = {
      },
    },
  common = {
    header = {
      "The loop is defined in:\n - /usr/include/x86_64-linux-gnu/bits/stdio2.h:107\n - /home/benbachir/Documents/PPN/mpiBench-main/mpiBench.c:455-457,473-477,488-492,734-748\n - /usr/include/x86_64-linux-gnu/bits/string_fortified.h:71\n\n",
      "Warnings:\n - Non-innermost loop: analyzing only self part (ignoring child loops).\n - Ignoring paths for analysis\n - Too many paths. If you really need to analyze all of the 3094 paths individually, rerun with max-paths=3094\n - RecMII not computed since number of paths is unknown or > max_paths\n - Streams not analyzed since number of paths is unknown or > max_paths\n",
      "Try to simplify control and/or increase the maximum number of paths per function/loop through the 'max-paths-nb' option.\n",
      "This loop has 3094 execution paths.\n",
      "The presence of multiple execution paths is typically the main/first bottleneck.\nTry to simplify control inside loop: ideally, try to remove all conditional expressions, for example by (if applicable):\n - hoisting them (moving them outside the loop)\n - turning them into conditional moves, MIN or MAX\n\n",
      "Ex: if (x<0) x=0 => x = (x<0 ? 0 : x) (or MAX(0,x) after defining the corresponding macro)\n",
    },
    nb_paths = 3094,
  },
}
