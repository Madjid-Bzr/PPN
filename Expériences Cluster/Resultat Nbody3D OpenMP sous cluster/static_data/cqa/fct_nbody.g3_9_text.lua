_cqa_text_report = {
  paths = {
    {
      hint = {
        {
          details = "Calling (and then returning from) a function prevents many compiler optimizations (like vectorization), breaks control flow (which reduces pipeline performance) and executes extra instructions to save/restore the registers used inside it, which is very expensive (dozens of cycles). Consider to inline small functions.\n - unknown: 2 occurrences\n",
          title = "CALL instructions",
          txt = "Detected function call instructions.\n",
        },
        {
          title = "Type of elements and instruction set",
          txt = "No instructions are processing arithmetic or math operations on FP elements. This function is probably writing/copying data or processing integer elements.",
        },
        {
          title = "Matching between your function (in the source code) and the binary function",
          txt = "The binary function does not contain any FP arithmetical operations.\nThe binary function is loading 140 bytes.\nThe binary function is storing 8 bytes.",
        },
      },
      expert = {
        {
          title = "General properties",
          txt = "nb instructions    : 62\nloop length        : 233\nused x86 registers : 16\nused mmx registers : 0\nused xmm registers : 3\nused ymm registers : 0\nused zmm registers : 1\nnb stack references: 2\n",
        },
        {
          title = "Front-end",
          txt = "MACRO FUSION NOT POSSIBLE\ninstruction fetch    : 15.00 cycles\ninstruction queue    : 31.00 cycles\ndecoding             : 31.00 cycles\nmicro-operation queue: 35.00 cycles\nfront end            : 35.00 cycles\n",
        },
        {
          title = "Back-end",
          txt = "       | P0    | P1   | P2   | P3   | P4    | P5    | P6\n----------------------------------------------------------\nuops   | 19.00 | 0.00 | 9.50 | 9.50 | 23.50 | 23.50 | 7.00\ncycles | 19.00 | 0.00 | 9.50 | 9.50 | 23.50 | 23.50 | 7.00\n\nCycles executing div or sqrt instructions: 22.00-95.00\n",
        },
        {
          title = "Cycles summary",
          txt = "Front-end : 35.00\nDispatch  : 23.50\nDIV/SQRT  : 22.00-95.00\nOverall L1: 35.00-95.00\n",
        },
        {
          title = "Vectorization ratios",
          txt = "INT\nall    : 5%\nload   : 0%\nstore  : 0%\nmul    : NA (no mul vectorizable/vectorized instructions)\nadd-sub: NA (no add-sub vectorizable/vectorized instructions)\nfma    : NA (no fma vectorizable/vectorized instructions)\nother  : 7%\nFP\nall     : 25%\nload    : 25%\nstore   : NA (no store vectorizable/vectorized instructions)\nmul     : NA (no mul vectorizable/vectorized instructions)\nadd-sub : NA (no add-sub vectorizable/vectorized instructions)\nfma     : NA (no fma vectorizable/vectorized instructions)\ndiv/sqrt: NA (no div/sqrt vectorizable/vectorized instructions)\nother   : NA (no other vectorizable/vectorized instructions)\nINT+FP\nall     : 8%\nload    : 11%\nstore   : 0%\nmul     : NA (no mul vectorizable/vectorized instructions)\nadd-sub : NA (no add-sub vectorizable/vectorized instructions)\nfma     : NA (no fma vectorizable/vectorized instructions)\ndiv/sqrt: 0%\nother   : 7%\n",
        },
        {
          title = "Vector efficiency ratios",
          txt = "INT\nall    : 12%\nload   : 12%\nstore  : 12%\nmul    : NA (no mul vectorizable/vectorized instructions)\nadd-sub: NA (no add-sub vectorizable/vectorized instructions)\nfma    : NA (no fma vectorizable/vectorized instructions)\nother  : 12%\nFP\nall     : 29%\nload    : 29%\nstore   : NA (no store vectorizable/vectorized instructions)\nmul     : NA (no mul vectorizable/vectorized instructions)\nadd-sub : NA (no add-sub vectorizable/vectorized instructions)\nfma     : NA (no fma vectorizable/vectorized instructions)\ndiv/sqrt: NA (no div/sqrt vectorizable/vectorized instructions)\nother   : NA (no other vectorizable/vectorized instructions)\nINT+FP\nall     : 15%\nload    : 20%\nstore   : 12%\nmul     : NA (no mul vectorizable/vectorized instructions)\nadd-sub : NA (no add-sub vectorizable/vectorized instructions)\nfma     : NA (no fma vectorizable/vectorized instructions)\ndiv/sqrt: 12%\nother   : 12%\n",
        },
        {
          title = "Cycles and memory resources usage",
          txt = "Assuming all data fit into the L1 cache, each call to the function takes 95.00 cycles. At this rate:\n - 1% of peak load performance is reached (1.47 out of 128.00 bytes loaded per cycle (GB/s @ 1GHz))\n - 0% of peak store performance is reached (0.08 out of 64.00 bytes stored per cycle (GB/s @ 1GHz))\n",
        },
        {
          title = "Front-end bottlenecks",
          txt = "Found no such bottlenecks.",
        },
        {
          title = "ASM code",
          txt = "In the binary file, the address of the function is: 2520\n\nInstruction                               | Nb FU | P0    | P1 | P2   | P3   | P4    | P5   | P6 | Latency | Recip. throughput\n------------------------------------------------------------------------------------------------------------------------------\nENDBR64\nPUSH %RBP                                 | 1     | 0     | 0  | 0    | 0    | 1     | 1    | 0  | 0       | 1\nMOV %RSP,%RBP                             | 1     | 0     | 0  | 0    | 0    | 0.50  | 0.50 | 0  | 0       | 0.50\nPUSH %R15                                 | 1     | 0     | 0  | 0    | 0    | 1     | 1    | 0  | 0       | 1\nPUSH %R14                                 | 1     | 0     | 0  | 0    | 0    | 1     | 1    | 0  | 0       | 1\nPUSH %R13                                 | 1     | 0     | 0  | 0    | 0    | 1     | 1    | 0  | 0       | 1\nPUSH %R12                                 | 1     | 0     | 0  | 0    | 0    | 1     | 1    | 0  | 0       | 1\nPUSH %RBX                                 | 1     | 0     | 0  | 0    | 0    | 1     | 1    | 0  | 0       | 1\nAND $-0x40,%RSP                           | 1     | 0     | 0  | 0    | 0    | 0.50  | 0.50 | 0  | 1       | 0.50\nSUB $0x40,%RSP                            | 1     | 0     | 0  | 0    | 0    | 0.50  | 0.50 | 0  | 1       | 0.50\nMOV 0x8(%RDI),%RBX                        | 1     | 0     | 0  | 1    | 0    | 0     | 0    | 0  | 4       | 1\nTEST %RBX,%RBX                            | 1     | 0     | 0  | 0    | 0    | 0.50  | 0.50 | 0  | 1       | 0.50\nJE 2d15 <move_particles._omp_fn.0+0x7f5>  | 1     | 0     | 0  | 0    | 0    | 0     | 1    | 0  | 0       | 1-2\nMOV %RDI,%R13                             | 1     | 0     | 0  | 0    | 0    | 0.50  | 0.50 | 0  | 0       | 0.50\nCALL 1170 <.plt.sec@start+0x60>           | 1     | 0     | 0  | 0    | 0    | 0.50  | 0.50 | 0  | 0       | 2\nMOV %EAX,%R12D                            | 1     | 0     | 0  | 0    | 0    | 0.50  | 0.50 | 0  | 0       | 0.50\nCALL 1140 <.plt.sec@start+0x30>           | 1     | 0     | 0  | 0    | 0    | 0.50  | 0.50 | 0  | 0       | 2\nMOVSXD %R12D,%RCX                         | 1     | 0     | 0  | 0    | 0    | 1     | 0    | 0  | 1       | 1\nXOR %EDX,%EDX\nMOVSXD %EAX,%R8                           | 1     | 0     | 0  | 0    | 0    | 1     | 0    | 0  | 1       | 1\nMOV %RBX,%RAX                             | 1     | 0     | 0  | 0    | 0    | 0.50  | 0.50 | 0  | 0       | 0.50\nDIV %RCX                                  | 23    | 11.50 | 0  | 0    | 0    | 11.50 | 0    | 0  | 39-95   | 22-95\nCMP %RDX,%R8                              | 1     | 0     | 0  | 0    | 0    | 0.50  | 0.50 | 0  | 1       | 0.50\nJB 2d3d <move_particles._omp_fn.0+0x81d>  | 1     | 0     | 0  | 0    | 0    | 0     | 1    | 0  | 0       | 1-2\nIMUL %RAX,%R8                             | 1     | 0     | 0  | 0    | 0    | 1     | 0    | 0  | 5       | 2\nADD %RDX,%R8                              | 1     | 0     | 0  | 0    | 0    | 0.50  | 0.50 | 0  | 1       | 0.50\nLEA (%RAX,%R8,1),%R11                     | 1     | 0     | 0  | 0    | 0    | 0.50  | 0.50 | 0  | 1       | 0.50\nCMP %R11,%R8                              | 1     | 0     | 0  | 0    | 0    | 0.50  | 0.50 | 0  | 1       | 0.50\nJAE 2d15 <move_particles._omp_fn.0+0x7f5> | 1     | 0     | 0  | 0    | 0    | 0     | 1    | 0  | 0       | 1-2\nMOV (%R13),%RDI                           | 1     | 0     | 0  | 1    | 0    | 0     | 0    | 0  | 4       | 1\nLEA -0x1(%RBX),%R9                        | 1     | 0     | 0  | 0    | 0    | 0.50  | 0.50 | 0  | 1       | 0.50\nMOV %RBX,%R10                             | 1     | 0     | 0  | 0    | 0    | 0.50  | 0.50 | 0  | 0       | 0.50\nMOV %RBX,%R15                             | 1     | 0     | 0  | 0    | 0    | 0.50  | 0.50 | 0  | 0       | 0.50\nMOV %R9,0x38(%RSP)                        | 1     | 0     | 0  | 0.50 | 0.50 | 0     | 0    | 1  | 0       | 1\nSHR $0x4,%R10                             | 1     | 0     | 0  | 0    | 0    | 1     | 0    | 0  | 1       | 1\nVMOVSS 0x10(%R13),%XMM11                  | 1     | 0     | 0  | 0.50 | 0.50 | 0     | 0    | 0  | 5       | 0.50\nAND $-0x10,%R15                           | 1     | 0     | 0  | 0    | 0    | 0.50  | 0.50 | 0  | 1       | 0.50\nMOV (%RDI),%RSI                           | 1     | 0     | 0  | 1    | 0    | 0     | 0    | 0  | 4       | 1\nMOV 0x8(%RDI),%RCX                        | 1     | 0     | 0  | 1    | 0    | 0     | 0    | 0  | 4       | 1\nSAL $0x6,%R10                             | 1     | 0     | 0  | 0    | 0    | 1     | 0    | 0  | 1       | 1\nMOV 0x10(%RDI),%RDX                       | 1     | 0     | 0  | 1    | 0    | 0     | 0    | 0  | 4       | 1\nMOV 0x18(%RDI),%R14                       | 1     | 0     | 0  | 1    | 0    | 0     | 0    | 0  | 4       | 1\nMOV 0x20(%RDI),%R13                       | 1     | 0     | 0  | 1    | 0    | 0     | 0    | 0  | 4       | 1\nMOV 0x28(%RDI),%R12                       | 1     | 0     | 0  | 1    | 0    | 0     | 0    | 0  | 4       | 1\nVMOVSS 0x1bc3(%RIP),%XMM9                 | 1     | 0     | 0  | 0.50 | 0.50 | 0     | 0    | 0  | 5       | 0.50\nVMOVSS 0x1bbf(%RIP),%XMM8                 | 1     | 0     | 0  | 0.50 | 0.50 | 0     | 0    | 0  | 5       | 0.50\nVMOVAPS 0x1be9(%RIP),%ZMM10               | 1     | 0     | 0  | 0.50 | 0.50 | 0     | 0    | 0  | 5       | 0.50\nNOPW (%RAX,%RAX,1)                        | 1     | 0     | 0  | 0    | 0    | 0.50  | 0.50 | 0  | 0       | 0.50\nVZEROUPPER                                | 19    | 0     | 0  | 0    | 0    | 0     | 0    | 0  | 0       | 36\nLEA -0x28(%RBP),%RSP                      | 1     | 0     | 0  | 0    | 0    | 0.50  | 0.50 | 0  | 1       | 0.50\nPOP %RBX                                  | 2     | 0     | 0  | 0.50 | 0.50 | 0     | 0    | 1  | 0       | 1\nPOP %R12                                  | 2     | 0     | 0  | 0.50 | 0.50 | 0     | 0    | 1  | 0       | 1\nPOP %R13                                  | 2     | 0     | 0  | 0.50 | 0.50 | 0     | 0    | 1  | 0       | 1\nPOP %R14                                  | 2     | 0     | 0  | 0.50 | 0.50 | 0     | 0    | 1  | 0       | 1\nPOP %R15                                  | 2     | 0     | 0  | 0.50 | 0.50 | 0     | 0    | 1  | 0       | 1\nPOP %RBP                                  | 2     | 0     | 0  | 0.50 | 0.50 | 0     | 0    | 1  | 0       | 1\nRET\nNOPL (%RAX)                               | 1     | 0     | 0  | 0    | 0    | 0.50  | 0.50 | 0  | 0       | 0.50\nADD $0x1,%RAX                             | 1     | 0     | 0  | 0    | 0    | 0.50  | 0.50 | 0  | 1       | 0.50\nXOR %EDX,%EDX\nJMP 256d <move_particles._omp_fn.0+0x4d>  | 1     | 0     | 0  | 0    | 0    | 0     | 1    | 0  | 0       | 2\nNOPL (%RAX,%RAX,1)                        | 1     | 0     | 0  | 0    | 0    | 0.50  | 0.50 | 0  | 0       | 0.50\n",
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
          workaround = " - Try to reorganize arrays of structures to structures of arrays\n - Consider to permute loops (see vectorization gain report)\n",
          title = "Code clean check",
          txt = "Detected a slowdown caused by scalar integer instructions (typically used for address computation).\nBy removing them, you can lower the cost of an iteration from 95.00 to 6.00 cycles (15.83x speedup).",
        },
        {
          workaround = " - Try another compiler or update/tune your current one\n - Make array accesses unit-stride:\n  * If your function streams arrays of structures (AoS), try to use structures of arrays instead (SoA):\nfor(i) a[i].x = b[i].x; (slow, non stride 1) => for(i) a.x[i] = b.x[i]; (fast, stride 1)\n",
          details = "Store and arithmetical SSE/AVX instructions are used in scalar version (process only one data element in vector registers).\nSince your execution units are vector units, only a vectorized function can use their full power.\n",
          title = "Vectorization",
          txt = "Your function is probably not vectorized.\nOnly 15% of vector register length is used (average across all SSE/AVX instructions).\nBy vectorizing your function, you can lower the cost of an iteration from 95.00 to 26.57 cycles (3.58x speedup).",
        },
        {
          workaround = "Reduce the number of division or square root instructions:\n - If denominator is constant over iterations, use reciprocal (replace x/y with x*(1/y)). Check precision impact. This will be done by your compiler with ffast-math or Ofast\n",
          title = "Execution units bottlenecks",
          txt = "Performance is limited by execution of divide and square root operations (the divide/square root unit is a bottleneck).\n\nBy removing all these bottlenecks, you can lower the cost of an iteration from 95.00 to 35.00 cycles (2.71x speedup).\n",
        },
      },
      potential = {
        {
          title = "Expensive FP math instructions/calls",
          txt = "Detected performance impact from expensive FP math instructions/calls.\nBy removing/reexpressing them, you can lower the cost of an iteration from 95.00 to 35.00 cycles (2.71x speedup).",
        },
      },
    },
  },
  AVG = {
      hint = {
        {
          details = "Calling (and then returning from) a function prevents many compiler optimizations (like vectorization), breaks control flow (which reduces pipeline performance) and executes extra instructions to save/restore the registers used inside it, which is very expensive (dozens of cycles). Consider to inline small functions.\n - unknown: 2 occurrences\n",
          title = "CALL instructions",
          txt = "Detected function call instructions.\n",
        },
        {
          title = "Type of elements and instruction set",
          txt = "No instructions are processing arithmetic or math operations on FP elements. This function is probably writing/copying data or processing integer elements.",
        },
        {
          title = "Matching between your function (in the source code) and the binary function",
          txt = "The binary function does not contain any FP arithmetical operations.\nThe binary function is loading 140 bytes.\nThe binary function is storing 8 bytes.",
        },
      },
      expert = {
        {
          title = "General properties",
          txt = "nb instructions    : 62\nloop length        : 233\nused x86 registers : 16\nused mmx registers : 0\nused xmm registers : 3\nused ymm registers : 0\nused zmm registers : 1\nnb stack references: 2\n",
        },
        {
          title = "Front-end",
          txt = "MACRO FUSION NOT POSSIBLE\ninstruction fetch    : 15.00 cycles\ninstruction queue    : 31.00 cycles\ndecoding             : 31.00 cycles\nmicro-operation queue: 35.00 cycles\nfront end            : 35.00 cycles\n",
        },
        {
          title = "Back-end",
          txt = "       | P0    | P1   | P2   | P3   | P4    | P5    | P6\n----------------------------------------------------------\nuops   | 19.00 | 0.00 | 9.50 | 9.50 | 23.50 | 23.50 | 7.00\ncycles | 19.00 | 0.00 | 9.50 | 9.50 | 23.50 | 23.50 | 7.00\n\nCycles executing div or sqrt instructions: 22.00-95.00\n",
        },
        {
          title = "Cycles summary",
          txt = "Front-end : 35.00\nDispatch  : 23.50\nDIV/SQRT  : 22.00-95.00\nOverall L1: 35.00-95.00\n",
        },
        {
          title = "Vectorization ratios",
          txt = "INT\nall    : 5%\nload   : 0%\nstore  : 0%\nmul    : NA (no mul vectorizable/vectorized instructions)\nadd-sub: NA (no add-sub vectorizable/vectorized instructions)\nfma    : NA (no fma vectorizable/vectorized instructions)\nother  : 7%\nFP\nall     : 25%\nload    : 25%\nstore   : NA (no store vectorizable/vectorized instructions)\nmul     : NA (no mul vectorizable/vectorized instructions)\nadd-sub : NA (no add-sub vectorizable/vectorized instructions)\nfma     : NA (no fma vectorizable/vectorized instructions)\ndiv/sqrt: NA (no div/sqrt vectorizable/vectorized instructions)\nother   : NA (no other vectorizable/vectorized instructions)\nINT+FP\nall     : 8%\nload    : 11%\nstore   : 0%\nmul     : NA (no mul vectorizable/vectorized instructions)\nadd-sub : NA (no add-sub vectorizable/vectorized instructions)\nfma     : NA (no fma vectorizable/vectorized instructions)\ndiv/sqrt: 0%\nother   : 7%\n",
        },
        {
          title = "Vector efficiency ratios",
          txt = "INT\nall    : 12%\nload   : 12%\nstore  : 12%\nmul    : NA (no mul vectorizable/vectorized instructions)\nadd-sub: NA (no add-sub vectorizable/vectorized instructions)\nfma    : NA (no fma vectorizable/vectorized instructions)\nother  : 12%\nFP\nall     : 29%\nload    : 29%\nstore   : NA (no store vectorizable/vectorized instructions)\nmul     : NA (no mul vectorizable/vectorized instructions)\nadd-sub : NA (no add-sub vectorizable/vectorized instructions)\nfma     : NA (no fma vectorizable/vectorized instructions)\ndiv/sqrt: NA (no div/sqrt vectorizable/vectorized instructions)\nother   : NA (no other vectorizable/vectorized instructions)\nINT+FP\nall     : 15%\nload    : 20%\nstore   : 12%\nmul     : NA (no mul vectorizable/vectorized instructions)\nadd-sub : NA (no add-sub vectorizable/vectorized instructions)\nfma     : NA (no fma vectorizable/vectorized instructions)\ndiv/sqrt: 12%\nother   : 12%\n",
        },
        {
          title = "Cycles and memory resources usage",
          txt = "Assuming all data fit into the L1 cache, each call to the function takes 95.00 cycles. At this rate:\n - 1% of peak load performance is reached (1.47 out of 128.00 bytes loaded per cycle (GB/s @ 1GHz))\n - 0% of peak store performance is reached (0.08 out of 64.00 bytes stored per cycle (GB/s @ 1GHz))\n",
        },
        {
          title = "Front-end bottlenecks",
          txt = "Found no such bottlenecks.",
        },
        {
          title = "ASM code",
          txt = "In the binary file, the address of the function is: 2520\n\nInstruction                               | Nb FU | P0    | P1 | P2   | P3   | P4    | P5   | P6 | Latency | Recip. throughput\n------------------------------------------------------------------------------------------------------------------------------\nENDBR64\nPUSH %RBP                                 | 1     | 0     | 0  | 0    | 0    | 1     | 1    | 0  | 0       | 1\nMOV %RSP,%RBP                             | 1     | 0     | 0  | 0    | 0    | 0.50  | 0.50 | 0  | 0       | 0.50\nPUSH %R15                                 | 1     | 0     | 0  | 0    | 0    | 1     | 1    | 0  | 0       | 1\nPUSH %R14                                 | 1     | 0     | 0  | 0    | 0    | 1     | 1    | 0  | 0       | 1\nPUSH %R13                                 | 1     | 0     | 0  | 0    | 0    | 1     | 1    | 0  | 0       | 1\nPUSH %R12                                 | 1     | 0     | 0  | 0    | 0    | 1     | 1    | 0  | 0       | 1\nPUSH %RBX                                 | 1     | 0     | 0  | 0    | 0    | 1     | 1    | 0  | 0       | 1\nAND $-0x40,%RSP                           | 1     | 0     | 0  | 0    | 0    | 0.50  | 0.50 | 0  | 1       | 0.50\nSUB $0x40,%RSP                            | 1     | 0     | 0  | 0    | 0    | 0.50  | 0.50 | 0  | 1       | 0.50\nMOV 0x8(%RDI),%RBX                        | 1     | 0     | 0  | 1    | 0    | 0     | 0    | 0  | 4       | 1\nTEST %RBX,%RBX                            | 1     | 0     | 0  | 0    | 0    | 0.50  | 0.50 | 0  | 1       | 0.50\nJE 2d15 <move_particles._omp_fn.0+0x7f5>  | 1     | 0     | 0  | 0    | 0    | 0     | 1    | 0  | 0       | 1-2\nMOV %RDI,%R13                             | 1     | 0     | 0  | 0    | 0    | 0.50  | 0.50 | 0  | 0       | 0.50\nCALL 1170 <.plt.sec@start+0x60>           | 1     | 0     | 0  | 0    | 0    | 0.50  | 0.50 | 0  | 0       | 2\nMOV %EAX,%R12D                            | 1     | 0     | 0  | 0    | 0    | 0.50  | 0.50 | 0  | 0       | 0.50\nCALL 1140 <.plt.sec@start+0x30>           | 1     | 0     | 0  | 0    | 0    | 0.50  | 0.50 | 0  | 0       | 2\nMOVSXD %R12D,%RCX                         | 1     | 0     | 0  | 0    | 0    | 1     | 0    | 0  | 1       | 1\nXOR %EDX,%EDX\nMOVSXD %EAX,%R8                           | 1     | 0     | 0  | 0    | 0    | 1     | 0    | 0  | 1       | 1\nMOV %RBX,%RAX                             | 1     | 0     | 0  | 0    | 0    | 0.50  | 0.50 | 0  | 0       | 0.50\nDIV %RCX                                  | 23    | 11.50 | 0  | 0    | 0    | 11.50 | 0    | 0  | 39-95   | 22-95\nCMP %RDX,%R8                              | 1     | 0     | 0  | 0    | 0    | 0.50  | 0.50 | 0  | 1       | 0.50\nJB 2d3d <move_particles._omp_fn.0+0x81d>  | 1     | 0     | 0  | 0    | 0    | 0     | 1    | 0  | 0       | 1-2\nIMUL %RAX,%R8                             | 1     | 0     | 0  | 0    | 0    | 1     | 0    | 0  | 5       | 2\nADD %RDX,%R8                              | 1     | 0     | 0  | 0    | 0    | 0.50  | 0.50 | 0  | 1       | 0.50\nLEA (%RAX,%R8,1),%R11                     | 1     | 0     | 0  | 0    | 0    | 0.50  | 0.50 | 0  | 1       | 0.50\nCMP %R11,%R8                              | 1     | 0     | 0  | 0    | 0    | 0.50  | 0.50 | 0  | 1       | 0.50\nJAE 2d15 <move_particles._omp_fn.0+0x7f5> | 1     | 0     | 0  | 0    | 0    | 0     | 1    | 0  | 0       | 1-2\nMOV (%R13),%RDI                           | 1     | 0     | 0  | 1    | 0    | 0     | 0    | 0  | 4       | 1\nLEA -0x1(%RBX),%R9                        | 1     | 0     | 0  | 0    | 0    | 0.50  | 0.50 | 0  | 1       | 0.50\nMOV %RBX,%R10                             | 1     | 0     | 0  | 0    | 0    | 0.50  | 0.50 | 0  | 0       | 0.50\nMOV %RBX,%R15                             | 1     | 0     | 0  | 0    | 0    | 0.50  | 0.50 | 0  | 0       | 0.50\nMOV %R9,0x38(%RSP)                        | 1     | 0     | 0  | 0.50 | 0.50 | 0     | 0    | 1  | 0       | 1\nSHR $0x4,%R10                             | 1     | 0     | 0  | 0    | 0    | 1     | 0    | 0  | 1       | 1\nVMOVSS 0x10(%R13),%XMM11                  | 1     | 0     | 0  | 0.50 | 0.50 | 0     | 0    | 0  | 5       | 0.50\nAND $-0x10,%R15                           | 1     | 0     | 0  | 0    | 0    | 0.50  | 0.50 | 0  | 1       | 0.50\nMOV (%RDI),%RSI                           | 1     | 0     | 0  | 1    | 0    | 0     | 0    | 0  | 4       | 1\nMOV 0x8(%RDI),%RCX                        | 1     | 0     | 0  | 1    | 0    | 0     | 0    | 0  | 4       | 1\nSAL $0x6,%R10                             | 1     | 0     | 0  | 0    | 0    | 1     | 0    | 0  | 1       | 1\nMOV 0x10(%RDI),%RDX                       | 1     | 0     | 0  | 1    | 0    | 0     | 0    | 0  | 4       | 1\nMOV 0x18(%RDI),%R14                       | 1     | 0     | 0  | 1    | 0    | 0     | 0    | 0  | 4       | 1\nMOV 0x20(%RDI),%R13                       | 1     | 0     | 0  | 1    | 0    | 0     | 0    | 0  | 4       | 1\nMOV 0x28(%RDI),%R12                       | 1     | 0     | 0  | 1    | 0    | 0     | 0    | 0  | 4       | 1\nVMOVSS 0x1bc3(%RIP),%XMM9                 | 1     | 0     | 0  | 0.50 | 0.50 | 0     | 0    | 0  | 5       | 0.50\nVMOVSS 0x1bbf(%RIP),%XMM8                 | 1     | 0     | 0  | 0.50 | 0.50 | 0     | 0    | 0  | 5       | 0.50\nVMOVAPS 0x1be9(%RIP),%ZMM10               | 1     | 0     | 0  | 0.50 | 0.50 | 0     | 0    | 0  | 5       | 0.50\nNOPW (%RAX,%RAX,1)                        | 1     | 0     | 0  | 0    | 0    | 0.50  | 0.50 | 0  | 0       | 0.50\nVZEROUPPER                                | 19    | 0     | 0  | 0    | 0    | 0     | 0    | 0  | 0       | 36\nLEA -0x28(%RBP),%RSP                      | 1     | 0     | 0  | 0    | 0    | 0.50  | 0.50 | 0  | 1       | 0.50\nPOP %RBX                                  | 2     | 0     | 0  | 0.50 | 0.50 | 0     | 0    | 1  | 0       | 1\nPOP %R12                                  | 2     | 0     | 0  | 0.50 | 0.50 | 0     | 0    | 1  | 0       | 1\nPOP %R13                                  | 2     | 0     | 0  | 0.50 | 0.50 | 0     | 0    | 1  | 0       | 1\nPOP %R14                                  | 2     | 0     | 0  | 0.50 | 0.50 | 0     | 0    | 1  | 0       | 1\nPOP %R15                                  | 2     | 0     | 0  | 0.50 | 0.50 | 0     | 0    | 1  | 0       | 1\nPOP %RBP                                  | 2     | 0     | 0  | 0.50 | 0.50 | 0     | 0    | 1  | 0       | 1\nRET\nNOPL (%RAX)                               | 1     | 0     | 0  | 0    | 0    | 0.50  | 0.50 | 0  | 0       | 0.50\nADD $0x1,%RAX                             | 1     | 0     | 0  | 0    | 0    | 0.50  | 0.50 | 0  | 1       | 0.50\nXOR %EDX,%EDX\nJMP 256d <move_particles._omp_fn.0+0x4d>  | 1     | 0     | 0  | 0    | 0    | 0     | 1    | 0  | 0       | 2\nNOPL (%RAX,%RAX,1)                        | 1     | 0     | 0  | 0    | 0    | 0.50  | 0.50 | 0  | 0       | 0.50\n",
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
          workaround = " - Try to reorganize arrays of structures to structures of arrays\n - Consider to permute loops (see vectorization gain report)\n",
          title = "Code clean check",
          txt = "Detected a slowdown caused by scalar integer instructions (typically used for address computation).\nBy removing them, you can lower the cost of an iteration from 95.00 to 6.00 cycles (15.83x speedup).",
        },
        {
          workaround = " - Try another compiler or update/tune your current one\n - Make array accesses unit-stride:\n  * If your function streams arrays of structures (AoS), try to use structures of arrays instead (SoA):\nfor(i) a[i].x = b[i].x; (slow, non stride 1) => for(i) a.x[i] = b.x[i]; (fast, stride 1)\n",
          details = "Store and arithmetical SSE/AVX instructions are used in scalar version (process only one data element in vector registers).\nSince your execution units are vector units, only a vectorized function can use their full power.\n",
          title = "Vectorization",
          txt = "Your function is probably not vectorized.\nOnly 15% of vector register length is used (average across all SSE/AVX instructions).\nBy vectorizing your function, you can lower the cost of an iteration from 95.00 to 26.57 cycles (3.58x speedup).",
        },
        {
          workaround = "Reduce the number of division or square root instructions:\n - If denominator is constant over iterations, use reciprocal (replace x/y with x*(1/y)). Check precision impact. This will be done by your compiler with ffast-math or Ofast\n",
          title = "Execution units bottlenecks",
          txt = "Performance is limited by execution of divide and square root operations (the divide/square root unit is a bottleneck).\n\nBy removing all these bottlenecks, you can lower the cost of an iteration from 95.00 to 35.00 cycles (2.71x speedup).\n",
        },
      },
      potential = {
        {
          title = "Expensive FP math instructions/calls",
          txt = "Detected performance impact from expensive FP math instructions/calls.\nBy removing/reexpressing them, you can lower the cost of an iteration from 95.00 to 35.00 cycles (2.71x speedup).",
        },
      },
    },
  common = {
    header = {
      "The function is defined in /users/user2234/VersionFinaleNbody3DOptimisé/nbody3.c:81-115.\n",
      "Warnings:\nIgnoring paths for analysis",
    },
  },
}
