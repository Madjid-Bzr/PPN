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
          details = "These instructions generate more than one micro-operation and only one of them can be decoded during a cycle and the extra micro-operations increase pressure on execution units.\n - DIV: 1 occurrences\n - RET: 1 occurrences\n - VCVTSI2SD: 1 occurrences\n - VZEROUPPER: 2 occurrences\n",
          title = "Complex instructions",
          txt = "Detected COMPLEX INSTRUCTIONS.\n",
        },
        {
          workaround = "Avoid mixing data with different types. In particular, check if the type of constants is the same as array elements.",
          details = " - VCVTSI2SD (INT32/64 to FP64, scalar): 1 occurrences\n",
          title = "Conversion instructions",
          txt = "Detected expensive conversion instructions.",
        },
        {
          title = "Type of elements and instruction set",
          txt = "No instructions are processing arithmetic or math operations on FP elements. This function is probably writing/copying data or processing integer elements.",
        },
        {
          title = "Matching between your function (in the source code) and the binary function",
          txt = "The binary function does not contain any FP arithmetical operations.\nThe binary function is loading 52 bytes.\nThe binary function is storing 100 bytes.",
        },
      },
      expert = {
        {
          title = "General properties",
          txt = "nb instructions    : 76\nnb uops            : 96\nloop length        : 309\nused x86 registers : 16\nused mmx registers : 0\nused xmm registers : 4\nused ymm registers : 1\nused zmm registers : 0\nnb stack references: 14\n",
        },
        {
          title = "Front-end",
          txt = "MACRO FUSION NOT POSSIBLE\nFIT IN UOP CACHE\nmicro-operation queue: 24.00 cycles\nfront end            : 24.00 cycles\n",
        },
        {
          title = "Back-end",
          txt = "       | P0    | P1    | P2    | P3    | P4    | P5\n------------------------------------------------------\nuops   | 10.67 | 10.67 | 17.00 | 17.00 | 20.00 | 10.67\ncycles | 10.67 | 10.67 | 17.00 | 17.00 | 20.00 | 10.67\n\nCycles executing div or sqrt instructions: 11.00-18.00\n",
        },
        {
          title = "Cycles summary",
          txt = "Front-end : 24.00\nDispatch  : 20.00\nDIV/SQRT  : 11.00-18.00\nOverall L1: 24.00\n",
        },
        {
          title = "Vectorization ratios",
          txt = "INT\nall    : 7%\nload   : 0%\nstore  : 0%\nmul    : NA (no mul vectorizable/vectorized instructions)\nadd-sub: NA (no add-sub vectorizable/vectorized instructions)\nfma    : NA (no fma vectorizable/vectorized instructions)\nother  : 15%\nFP\nall     : 80%\nload    : NA (no load vectorizable/vectorized instructions)\nstore   : 50%\nmul     : NA (no mul vectorizable/vectorized instructions)\nadd-sub : NA (no add-sub vectorizable/vectorized instructions)\nfma     : NA (no fma vectorizable/vectorized instructions)\ndiv/sqrt: NA (no div/sqrt vectorizable/vectorized instructions)\nother   : 100%\nINT+FP\nall     : 19%\nload    : 0%\nstore   : 8%\nmul     : NA (no mul vectorizable/vectorized instructions)\nadd-sub : NA (no add-sub vectorizable/vectorized instructions)\nfma     : NA (no fma vectorizable/vectorized instructions)\ndiv/sqrt: 0%\nother   : 35%\n",
        },
        {
          title = "Vector efficiency ratios",
          txt = "INT\nall    : 36%\nload   : 31%\nstore  : 35%\nmul    : NA (no mul vectorizable/vectorized instructions)\nadd-sub: NA (no add-sub vectorizable/vectorized instructions)\nfma    : NA (no fma vectorizable/vectorized instructions)\nother  : 38%\nFP\nall     : 55%\nload    : NA (no load vectorizable/vectorized instructions)\nstore   : 62%\nmul     : NA (no mul vectorizable/vectorized instructions)\nadd-sub : NA (no add-sub vectorizable/vectorized instructions)\nfma     : NA (no fma vectorizable/vectorized instructions)\ndiv/sqrt: NA (no div/sqrt vectorizable/vectorized instructions)\nother   : 50%\nINT+FP\nall     : 39%\nload    : 31%\nstore   : 39%\nmul     : NA (no mul vectorizable/vectorized instructions)\nadd-sub : NA (no add-sub vectorizable/vectorized instructions)\nfma     : NA (no fma vectorizable/vectorized instructions)\ndiv/sqrt: 25%\nother   : 42%\n",
        },
        {
          title = "Cycles and memory resources usage",
          txt = "Assuming all data fit into the L1 cache, each call to the function takes 24.00 cycles. At this rate:\n - 6% of peak load performance is reached (2.17 out of 32.00 bytes loaded per cycle (GB/s @ 1GHz))\n - 26% of peak store performance is reached (4.17 out of 16.00 bytes stored per cycle (GB/s @ 1GHz))\n",
        },
        {
          title = "Front-end bottlenecks",
          txt = "Performance is limited by instruction throughput (loading/decoding program instructions to execution core) (front-end is a bottleneck).\n\nBy removing all these bottlenecks, you can lower the cost of an iteration from 24.00 to 20.00 cycles (1.20x speedup).\n",
        },
        {
          title = "ASM code",
          txt = "In the binary file, the address of the function is: 1e920\n\nInstruction                             | Nb FU | P0   | P1   | P2   | P3   | P4 | P5   | Latency | Recip. throughput\n---------------------------------------------------------------------------------------------------------------------\nPUSH %RBP                               | 1     | 0    | 0    | 0.50 | 0.50 | 1  | 0    | 3       | 1\nVXORPD %XMM0,%XMM0,%XMM0                | 1     | 0    | 0    | 0    | 0    | 0  | 0    | 0       | 0.25\nMOV %RSP,%RBP                           | 1     | 0.33 | 0.33 | 0    | 0    | 0  | 0.33 | 1       | 0.33\nPUSH %R15                               | 1     | 0    | 0    | 0.50 | 0.50 | 1  | 0    | 3       | 1\nPUSH %R14                               | 1     | 0    | 0    | 0.50 | 0.50 | 1  | 0    | 3       | 1\nPUSH %R13                               | 1     | 0    | 0    | 0.50 | 0.50 | 1  | 0    | 3       | 1\nPUSH %R12                               | 1     | 0    | 0    | 0.50 | 0.50 | 1  | 0    | 3       | 1\nPUSH %RBX                               | 1     | 0    | 0    | 0.50 | 0.50 | 1  | 0    | 3       | 1\nMOV %RDI,%RBX                           | 1     | 0.33 | 0.33 | 0    | 0    | 0  | 0.33 | 1       | 0.33\nAND $-0x20,%RSP                         | 1     | 0.33 | 0.33 | 0    | 0    | 0  | 0.33 | 1       | 0.33\nSUB $0x100,%RSP                         | 1     | 0.33 | 0.33 | 0    | 0    | 0  | 0.33 | 1       | 0.33\nMOV 0x38(%RDI),%RAX                     | 1     | 0    | 0    | 0.50 | 0.50 | 0  | 0    | 2       | 0.50\nVMOVAPD %YMM0,0xa0(%RSP)                | 1     | 0    | 0    | 0.50 | 0.50 | 1  | 0    | 3       | 1\nMOV 0x30(%RDI),%RDX                     | 1     | 0    | 0    | 0.50 | 0.50 | 0  | 0    | 2       | 0.50\nMOVQ $0,0xc0(%RSP)                      | 1     | 0    | 0    | 0.50 | 0.50 | 1  | 0    | 3       | 1\nMOV 0x28(%RDI),%RCX                     | 1     | 0    | 0    | 0.50 | 0.50 | 0  | 0    | 2       | 0.50\nMOV 0x20(%RDI),%RSI                     | 1     | 0    | 0    | 0.50 | 0.50 | 0  | 0    | 2       | 0.50\nMOV 0x18(%RDI),%RDI                     | 1     | 0    | 0    | 0.50 | 0.50 | 0  | 0    | 2       | 0.50\nMOV %RAX,0x20(%RSP)                     | 1     | 0    | 0    | 0.50 | 0.50 | 1  | 0    | 3       | 1\nMOV %RDX,0x18(%RSP)                     | 1     | 0    | 0    | 0.50 | 0.50 | 1  | 0    | 3       | 1\nMOV %RCX,0x10(%RSP)                     | 1     | 0    | 0    | 0.50 | 0.50 | 1  | 0    | 3       | 1\nMOV (%RSI),%R12D                        | 1     | 0    | 0    | 0.50 | 0.50 | 0  | 0    | 2       | 0.50\nMOV (%RDI),%R8D                         | 1     | 0    | 0    | 0.50 | 0.50 | 0  | 0    | 2       | 0.50\nMOV %R8D,0x38(%RSP)                     | 1     | 0    | 0    | 0.50 | 0.50 | 1  | 0    | 3       | 1\nTEST %R12D,%R12D                        | 1     | 0.33 | 0.33 | 0    | 0    | 0  | 0.33 | 1       | 0.33\nJLE 1ec20 <error_norm_._omp_fn.0+0x300> | 1     | 0    | 0    | 0    | 0    | 0  | 1    | 0       | 1-2\nMOV %R8D,%R14D                          | 1     | 0.33 | 0.33 | 0    | 0    | 0  | 0.33 | 1       | 0.33\nTEST %R8D,%R8D                          | 1     | 0.33 | 0.33 | 0    | 0    | 0  | 0.33 | 1       | 0.33\nJLE 1ec20 <error_norm_._omp_fn.0+0x300> | 1     | 0    | 0    | 0    | 0    | 0  | 1    | 0       | 1-2\nVZEROUPPER                              | 4     | 0    | 0    | 0    | 0    | 0  | 0    | 2       | 1\nCALL 2300 <@plt_start@+0x2e0>           | 3     | 0    | 0    | 0.50 | 0.50 | 1  | 1    | 0       | 2\nMOV %EAX,%R13D                          | 1     | 0.33 | 0.33 | 0    | 0    | 0  | 0.33 | 1       | 0.33\nCALL 22a0 <@plt_start@+0x280>           | 3     | 0    | 0    | 0.50 | 0.50 | 1  | 1    | 0       | 2\nXOR %EDX,%EDX                           | 1     | 0    | 0    | 0    | 0    | 0  | 0    | 0       | 0.25\nMOV %EAX,%R9D                           | 1     | 0.33 | 0.33 | 0    | 0    | 0  | 0.33 | 1       | 0.33\nMOV %R12D,%EAX                          | 1     | 0.33 | 0.33 | 0    | 0    | 0  | 0.33 | 1       | 0.33\nIMUL %R14D,%EAX                         | 1     | 0    | 1    | 0    | 0    | 0  | 0    | 3       | 1\nDIV %R13D                               | 10    | 0    | 0    | 0    | 0    | 0  | 0    | 20-28   | 11-18\nMOV %EAX,%R10D                          | 1     | 0.33 | 0.33 | 0    | 0    | 0  | 0.33 | 1       | 0.33\nCMP %EDX,%R9D                           | 1     | 0.33 | 0.33 | 0    | 0    | 0  | 0.33 | 1       | 0.33\nJB 1ec93 <error_norm_._omp_fn.0+0x373>  | 1     | 0    | 0    | 0    | 0    | 0  | 1    | 0       | 1-2\nIMUL %R10D,%R9D                         | 1     | 0    | 1    | 0    | 0    | 0  | 0    | 3       | 1\nLEA (%R9,%RDX,1),%EAX                   | 1     | 0.50 | 0.50 | 0    | 0    | 0  | 0    | 1       | 0.50\nLEA (%R10,%RAX,1),%R11D                 | 1     | 0.50 | 0.50 | 0    | 0    | 0  | 0    | 1       | 0.50\nCMP %R11D,%EAX                          | 1     | 0.33 | 0.33 | 0    | 0    | 0  | 0.33 | 1       | 0.33\nJAE 1ec23 <error_norm_._omp_fn.0+0x303> | 1     | 0    | 0    | 0    | 0    | 0  | 1    | 0       | 1-2\nVXORPD %XMM7,%XMM7,%XMM7                | 1     | 0    | 0    | 0    | 0    | 0  | 0    | 0       | 0.25\nXOR %EDX,%EDX                           | 1     | 0    | 0    | 0    | 0    | 0  | 0    | 0       | 0.25\nMOVL $0,0x3c(%RSP)                      | 1     | 0    | 0    | 0.50 | 0.50 | 1  | 0    | 3       | 1\nVXORPD %XMM15,%XMM15,%XMM15             | 1     | 0    | 0    | 0    | 0    | 0  | 0    | 0       | 0.25\nDIVL 0x38(%RSP)\nLEA -0x1(%R10),%R15D                    | 1     | 0.50 | 0.50 | 0    | 0    | 0  | 0    | 1       | 0.50\nLEA 0xd0(%RSP),%RCX                     | 1     | 0.50 | 0.50 | 0    | 0    | 0  | 0    | 1       | 0.50\nMOV %R15D,0x30(%RSP)                    | 1     | 0    | 0    | 0.50 | 0.50 | 1  | 0    | 3       | 1\nMOV %RCX,0x40(%RSP)                     | 1     | 0    | 0    | 0.50 | 0.50 | 1  | 0    | 3       | 1\nVCVTSI2SD %EAX,%XMM7,%XMM1              | 2     | 1    | 1    | 0    | 0    | 0  | 0    | 4       | 1.50\nMOV %EDX,0x50(%RSP)                     | 1     | 0    | 0    | 0.50 | 0.50 | 1  | 0    | 3       | 1\nMOV %EAX,0x34(%RSP)                     | 1     | 0    | 0    | 0.50 | 0.50 | 1  | 0    | 3       | 1\nVMOVSD %XMM1,0x28(%RSP)                 | 1     | 0    | 0    | 0.50 | 0.50 | 1  | 0    | 3       | 1\nNOPW %CS:(%RAX,%RAX,1)                  | 1     | 0    | 0    | 0    | 0    | 0  | 0    | 0       | 0.25\nVZEROUPPER                              | 4     | 0    | 0    | 0    | 0    | 0  | 0    | 2       | 1\nLEA 0xa0(%RSP),%R8                      | 1     | 0.50 | 0.50 | 0    | 0    | 0  | 0    | 1       | 0.50\nXOR %R12D,%R12D                         | 1     | 0    | 0    | 0    | 0    | 0  | 0    | 0       | 0.25\nLEA -0x28(%RBP),%RSP                    | 1     | 0.50 | 0.50 | 0    | 0    | 0  | 0    | 1       | 0.50\nPOP %RBX                                | 1     | 0    | 0    | 0.50 | 0.50 | 0  | 0    | 2       | 0.50\nPOP %R12                                | 1     | 0    | 0    | 0.50 | 0.50 | 0  | 0    | 2       | 0.50\nPOP %R13                                | 1     | 0    | 0    | 0.50 | 0.50 | 0  | 0    | 2       | 0.50\nPOP %R14                                | 1     | 0    | 0    | 0.50 | 0.50 | 0  | 0    | 2       | 0.50\nPOP %R15                                | 1     | 0    | 0    | 0.50 | 0.50 | 0  | 0    | 2       | 0.50\nPOP %RBP                                | 1     | 0    | 0    | 0.50 | 0.50 | 0  | 0    | 2       | 0.50\nRET                                     | 2     | 0    | 0    | 0.50 | 0.50 | 0  | 1    | 0       | 2\nADD $0x1,%R10D                          | 1     | 0.33 | 0.33 | 0    | 0    | 0  | 0.33 | 1       | 0.33\nXOR %EDX,%EDX                           | 1     | 0    | 0    | 0    | 0    | 0  | 0    | 0       | 0.25\nJMP 1e9c2 <error_norm_._omp_fn.0+0xa2>  | 1     | 0    | 0    | 0    | 0    | 0  | 1    | 0       | 2\nNOPW %CS:(%RAX,%RAX,1)                  | 1     | 0    | 0    | 0    | 0    | 0  | 0    | 0       | 0.25\nXCHG %AX,%AX                            | 1     | 0    | 0    | 0    | 0    | 0  | 0    | 0       | 0.25\n",
        },
      },
      header = {
        "Warnings:\n - The number of fused uops of the instruction [DIVL	0x38(%RSP)] is unknown\n - Detected a function call instruction: ignoring called function instructions.\nRerun with --follow-calls=append to include them to analysis  or with --follow-calls=inline to simulate inlining.\n",
        "0% of peak computational performance is used (0.00 out of 2.00 FLOP per cycle (GFLOPS @ 1GHz))",
      },
      brief = {
      },
      gain = {
        {
          workaround = " - Try to reorganize arrays of structures to structures of arrays\n - Consider to permute loops (see vectorization gain report)\n - To reference allocatable arrays, use \"allocatable\" instead of \"pointer\" pointers or qualify them with the \"contiguous\" attribute (Fortran 2008)\n - For structures, limit to one indirection. For example, use a_b%c instead of a%b%c with a_b set to a%b before this function\n",
          title = "Code clean check",
          txt = "Detected a slowdown caused by scalar integer instructions (typically used for address computation).\nBy removing them, you can lower the cost of an iteration from 24.00 to 6.00 cycles (4.00x speedup).",
        },
        {
          workaround = " - Try another compiler or update/tune your current one\n - Make array accesses unit-stride:\n  * If your function streams arrays of structures (AoS), try to use structures of arrays instead (SoA):\ndo i a(i)%x = b(i)%x (slow, non stride 1) => do i a%x(i) = b%x(i) (fast, stride 1)\n",
          details = "19% of SSE/AVX instructions are used in vector version (process two or more data elements in vector registers):\n - 0% of SSE/AVX loads are used in vector version.\n - 8% of SSE/AVX stores are used in vector version.\n - 0% of SSE/AVX nil are used in vector version.\n - 35% of SSE/AVX instructions that are not load, store, addition, subtraction nor multiply instructions are used in vector version.\nSince your execution units are vector units, only a fully vectorized function can use their full power.\n",
          title = "Vectorization",
          txt = "Your function is not vectorized.\nOnly 39% of vector register length is used (average across all SSE/AVX instructions).\nBy fully vectorizing your function, you can lower the cost of an iteration from 24.00 to 19.42 cycles (1.24x speedup).",
        },
        {
          title = "Execution units bottlenecks",
          txt = "Found no such bottlenecks but see expert reports for more complex bottlenecks.",
        },
      },
      potential = {
        {
          title = "Expensive FP math instructions/calls",
          txt = "Detected performance impact from expensive FP math instructions/calls.\nBy removing/reexpressing them, you can lower the cost of an iteration from 24.00 to 22.00 cycles (1.09x speedup).",
        },
        {
          details = " - CALL: 2 occurrences\n - VCVTSI2SD: 1 occurrences\n",
          title = "Special instructions executing on a single port",
          txt = "1.05x slowdown from special instructions executing on a single port.\n",
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
          details = "These instructions generate more than one micro-operation and only one of them can be decoded during a cycle and the extra micro-operations increase pressure on execution units.\n - DIV: 1 occurrences\n - RET: 1 occurrences\n - VCVTSI2SD: 1 occurrences\n - VZEROUPPER: 2 occurrences\n",
          title = "Complex instructions",
          txt = "Detected COMPLEX INSTRUCTIONS.\n",
        },
        {
          workaround = "Avoid mixing data with different types. In particular, check if the type of constants is the same as array elements.",
          details = " - VCVTSI2SD (INT32/64 to FP64, scalar): 1 occurrences\n",
          title = "Conversion instructions",
          txt = "Detected expensive conversion instructions.",
        },
        {
          title = "Type of elements and instruction set",
          txt = "No instructions are processing arithmetic or math operations on FP elements. This function is probably writing/copying data or processing integer elements.",
        },
        {
          title = "Matching between your function (in the source code) and the binary function",
          txt = "The binary function does not contain any FP arithmetical operations.\nThe binary function is loading 52 bytes.\nThe binary function is storing 100 bytes.",
        },
      },
      expert = {
        {
          title = "General properties",
          txt = "nb instructions    : 76\nnb uops            : 96\nloop length        : 309\nused x86 registers : 16\nused mmx registers : 0\nused xmm registers : 4\nused ymm registers : 1\nused zmm registers : 0\nnb stack references: 14\n",
        },
        {
          title = "Front-end",
          txt = "MACRO FUSION NOT POSSIBLE\nFIT IN UOP CACHE\nmicro-operation queue: 24.00 cycles\nfront end            : 24.00 cycles\n",
        },
        {
          title = "Back-end",
          txt = "       | P0    | P1    | P2    | P3    | P4    | P5\n------------------------------------------------------\nuops   | 10.67 | 10.67 | 17.00 | 17.00 | 20.00 | 10.67\ncycles | 10.67 | 10.67 | 17.00 | 17.00 | 20.00 | 10.67\n\nCycles executing div or sqrt instructions: 11.00-18.00\n",
        },
        {
          title = "Cycles summary",
          txt = "Front-end : 24.00\nDispatch  : 20.00\nDIV/SQRT  : 11.00-18.00\nOverall L1: 24.00\n",
        },
        {
          title = "Vectorization ratios",
          txt = "INT\nall    : 7%\nload   : 0%\nstore  : 0%\nmul    : NA (no mul vectorizable/vectorized instructions)\nadd-sub: NA (no add-sub vectorizable/vectorized instructions)\nfma    : NA (no fma vectorizable/vectorized instructions)\nother  : 15%\nFP\nall     : 80%\nload    : NA (no load vectorizable/vectorized instructions)\nstore   : 50%\nmul     : NA (no mul vectorizable/vectorized instructions)\nadd-sub : NA (no add-sub vectorizable/vectorized instructions)\nfma     : NA (no fma vectorizable/vectorized instructions)\ndiv/sqrt: NA (no div/sqrt vectorizable/vectorized instructions)\nother   : 100%\nINT+FP\nall     : 19%\nload    : 0%\nstore   : 8%\nmul     : NA (no mul vectorizable/vectorized instructions)\nadd-sub : NA (no add-sub vectorizable/vectorized instructions)\nfma     : NA (no fma vectorizable/vectorized instructions)\ndiv/sqrt: 0%\nother   : 35%\n",
        },
        {
          title = "Vector efficiency ratios",
          txt = "INT\nall    : 36%\nload   : 31%\nstore  : 35%\nmul    : NA (no mul vectorizable/vectorized instructions)\nadd-sub: NA (no add-sub vectorizable/vectorized instructions)\nfma    : NA (no fma vectorizable/vectorized instructions)\nother  : 38%\nFP\nall     : 55%\nload    : NA (no load vectorizable/vectorized instructions)\nstore   : 62%\nmul     : NA (no mul vectorizable/vectorized instructions)\nadd-sub : NA (no add-sub vectorizable/vectorized instructions)\nfma     : NA (no fma vectorizable/vectorized instructions)\ndiv/sqrt: NA (no div/sqrt vectorizable/vectorized instructions)\nother   : 50%\nINT+FP\nall     : 39%\nload    : 31%\nstore   : 39%\nmul     : NA (no mul vectorizable/vectorized instructions)\nadd-sub : NA (no add-sub vectorizable/vectorized instructions)\nfma     : NA (no fma vectorizable/vectorized instructions)\ndiv/sqrt: 25%\nother   : 42%\n",
        },
        {
          title = "Cycles and memory resources usage",
          txt = "Assuming all data fit into the L1 cache, each call to the function takes 24.00 cycles. At this rate:\n - 6% of peak load performance is reached (2.17 out of 32.00 bytes loaded per cycle (GB/s @ 1GHz))\n - 26% of peak store performance is reached (4.17 out of 16.00 bytes stored per cycle (GB/s @ 1GHz))\n",
        },
        {
          title = "Front-end bottlenecks",
          txt = "Performance is limited by instruction throughput (loading/decoding program instructions to execution core) (front-end is a bottleneck).\n\nBy removing all these bottlenecks, you can lower the cost of an iteration from 24.00 to 20.00 cycles (1.20x speedup).\n",
        },
        {
          title = "ASM code",
          txt = "In the binary file, the address of the function is: 1e920\n\nInstruction                             | Nb FU | P0   | P1   | P2   | P3   | P4 | P5   | Latency | Recip. throughput\n---------------------------------------------------------------------------------------------------------------------\nPUSH %RBP                               | 1     | 0    | 0    | 0.50 | 0.50 | 1  | 0    | 3       | 1\nVXORPD %XMM0,%XMM0,%XMM0                | 1     | 0    | 0    | 0    | 0    | 0  | 0    | 0       | 0.25\nMOV %RSP,%RBP                           | 1     | 0.33 | 0.33 | 0    | 0    | 0  | 0.33 | 1       | 0.33\nPUSH %R15                               | 1     | 0    | 0    | 0.50 | 0.50 | 1  | 0    | 3       | 1\nPUSH %R14                               | 1     | 0    | 0    | 0.50 | 0.50 | 1  | 0    | 3       | 1\nPUSH %R13                               | 1     | 0    | 0    | 0.50 | 0.50 | 1  | 0    | 3       | 1\nPUSH %R12                               | 1     | 0    | 0    | 0.50 | 0.50 | 1  | 0    | 3       | 1\nPUSH %RBX                               | 1     | 0    | 0    | 0.50 | 0.50 | 1  | 0    | 3       | 1\nMOV %RDI,%RBX                           | 1     | 0.33 | 0.33 | 0    | 0    | 0  | 0.33 | 1       | 0.33\nAND $-0x20,%RSP                         | 1     | 0.33 | 0.33 | 0    | 0    | 0  | 0.33 | 1       | 0.33\nSUB $0x100,%RSP                         | 1     | 0.33 | 0.33 | 0    | 0    | 0  | 0.33 | 1       | 0.33\nMOV 0x38(%RDI),%RAX                     | 1     | 0    | 0    | 0.50 | 0.50 | 0  | 0    | 2       | 0.50\nVMOVAPD %YMM0,0xa0(%RSP)                | 1     | 0    | 0    | 0.50 | 0.50 | 1  | 0    | 3       | 1\nMOV 0x30(%RDI),%RDX                     | 1     | 0    | 0    | 0.50 | 0.50 | 0  | 0    | 2       | 0.50\nMOVQ $0,0xc0(%RSP)                      | 1     | 0    | 0    | 0.50 | 0.50 | 1  | 0    | 3       | 1\nMOV 0x28(%RDI),%RCX                     | 1     | 0    | 0    | 0.50 | 0.50 | 0  | 0    | 2       | 0.50\nMOV 0x20(%RDI),%RSI                     | 1     | 0    | 0    | 0.50 | 0.50 | 0  | 0    | 2       | 0.50\nMOV 0x18(%RDI),%RDI                     | 1     | 0    | 0    | 0.50 | 0.50 | 0  | 0    | 2       | 0.50\nMOV %RAX,0x20(%RSP)                     | 1     | 0    | 0    | 0.50 | 0.50 | 1  | 0    | 3       | 1\nMOV %RDX,0x18(%RSP)                     | 1     | 0    | 0    | 0.50 | 0.50 | 1  | 0    | 3       | 1\nMOV %RCX,0x10(%RSP)                     | 1     | 0    | 0    | 0.50 | 0.50 | 1  | 0    | 3       | 1\nMOV (%RSI),%R12D                        | 1     | 0    | 0    | 0.50 | 0.50 | 0  | 0    | 2       | 0.50\nMOV (%RDI),%R8D                         | 1     | 0    | 0    | 0.50 | 0.50 | 0  | 0    | 2       | 0.50\nMOV %R8D,0x38(%RSP)                     | 1     | 0    | 0    | 0.50 | 0.50 | 1  | 0    | 3       | 1\nTEST %R12D,%R12D                        | 1     | 0.33 | 0.33 | 0    | 0    | 0  | 0.33 | 1       | 0.33\nJLE 1ec20 <error_norm_._omp_fn.0+0x300> | 1     | 0    | 0    | 0    | 0    | 0  | 1    | 0       | 1-2\nMOV %R8D,%R14D                          | 1     | 0.33 | 0.33 | 0    | 0    | 0  | 0.33 | 1       | 0.33\nTEST %R8D,%R8D                          | 1     | 0.33 | 0.33 | 0    | 0    | 0  | 0.33 | 1       | 0.33\nJLE 1ec20 <error_norm_._omp_fn.0+0x300> | 1     | 0    | 0    | 0    | 0    | 0  | 1    | 0       | 1-2\nVZEROUPPER                              | 4     | 0    | 0    | 0    | 0    | 0  | 0    | 2       | 1\nCALL 2300 <@plt_start@+0x2e0>           | 3     | 0    | 0    | 0.50 | 0.50 | 1  | 1    | 0       | 2\nMOV %EAX,%R13D                          | 1     | 0.33 | 0.33 | 0    | 0    | 0  | 0.33 | 1       | 0.33\nCALL 22a0 <@plt_start@+0x280>           | 3     | 0    | 0    | 0.50 | 0.50 | 1  | 1    | 0       | 2\nXOR %EDX,%EDX                           | 1     | 0    | 0    | 0    | 0    | 0  | 0    | 0       | 0.25\nMOV %EAX,%R9D                           | 1     | 0.33 | 0.33 | 0    | 0    | 0  | 0.33 | 1       | 0.33\nMOV %R12D,%EAX                          | 1     | 0.33 | 0.33 | 0    | 0    | 0  | 0.33 | 1       | 0.33\nIMUL %R14D,%EAX                         | 1     | 0    | 1    | 0    | 0    | 0  | 0    | 3       | 1\nDIV %R13D                               | 10    | 0    | 0    | 0    | 0    | 0  | 0    | 20-28   | 11-18\nMOV %EAX,%R10D                          | 1     | 0.33 | 0.33 | 0    | 0    | 0  | 0.33 | 1       | 0.33\nCMP %EDX,%R9D                           | 1     | 0.33 | 0.33 | 0    | 0    | 0  | 0.33 | 1       | 0.33\nJB 1ec93 <error_norm_._omp_fn.0+0x373>  | 1     | 0    | 0    | 0    | 0    | 0  | 1    | 0       | 1-2\nIMUL %R10D,%R9D                         | 1     | 0    | 1    | 0    | 0    | 0  | 0    | 3       | 1\nLEA (%R9,%RDX,1),%EAX                   | 1     | 0.50 | 0.50 | 0    | 0    | 0  | 0    | 1       | 0.50\nLEA (%R10,%RAX,1),%R11D                 | 1     | 0.50 | 0.50 | 0    | 0    | 0  | 0    | 1       | 0.50\nCMP %R11D,%EAX                          | 1     | 0.33 | 0.33 | 0    | 0    | 0  | 0.33 | 1       | 0.33\nJAE 1ec23 <error_norm_._omp_fn.0+0x303> | 1     | 0    | 0    | 0    | 0    | 0  | 1    | 0       | 1-2\nVXORPD %XMM7,%XMM7,%XMM7                | 1     | 0    | 0    | 0    | 0    | 0  | 0    | 0       | 0.25\nXOR %EDX,%EDX                           | 1     | 0    | 0    | 0    | 0    | 0  | 0    | 0       | 0.25\nMOVL $0,0x3c(%RSP)                      | 1     | 0    | 0    | 0.50 | 0.50 | 1  | 0    | 3       | 1\nVXORPD %XMM15,%XMM15,%XMM15             | 1     | 0    | 0    | 0    | 0    | 0  | 0    | 0       | 0.25\nDIVL 0x38(%RSP)\nLEA -0x1(%R10),%R15D                    | 1     | 0.50 | 0.50 | 0    | 0    | 0  | 0    | 1       | 0.50\nLEA 0xd0(%RSP),%RCX                     | 1     | 0.50 | 0.50 | 0    | 0    | 0  | 0    | 1       | 0.50\nMOV %R15D,0x30(%RSP)                    | 1     | 0    | 0    | 0.50 | 0.50 | 1  | 0    | 3       | 1\nMOV %RCX,0x40(%RSP)                     | 1     | 0    | 0    | 0.50 | 0.50 | 1  | 0    | 3       | 1\nVCVTSI2SD %EAX,%XMM7,%XMM1              | 2     | 1    | 1    | 0    | 0    | 0  | 0    | 4       | 1.50\nMOV %EDX,0x50(%RSP)                     | 1     | 0    | 0    | 0.50 | 0.50 | 1  | 0    | 3       | 1\nMOV %EAX,0x34(%RSP)                     | 1     | 0    | 0    | 0.50 | 0.50 | 1  | 0    | 3       | 1\nVMOVSD %XMM1,0x28(%RSP)                 | 1     | 0    | 0    | 0.50 | 0.50 | 1  | 0    | 3       | 1\nNOPW %CS:(%RAX,%RAX,1)                  | 1     | 0    | 0    | 0    | 0    | 0  | 0    | 0       | 0.25\nVZEROUPPER                              | 4     | 0    | 0    | 0    | 0    | 0  | 0    | 2       | 1\nLEA 0xa0(%RSP),%R8                      | 1     | 0.50 | 0.50 | 0    | 0    | 0  | 0    | 1       | 0.50\nXOR %R12D,%R12D                         | 1     | 0    | 0    | 0    | 0    | 0  | 0    | 0       | 0.25\nLEA -0x28(%RBP),%RSP                    | 1     | 0.50 | 0.50 | 0    | 0    | 0  | 0    | 1       | 0.50\nPOP %RBX                                | 1     | 0    | 0    | 0.50 | 0.50 | 0  | 0    | 2       | 0.50\nPOP %R12                                | 1     | 0    | 0    | 0.50 | 0.50 | 0  | 0    | 2       | 0.50\nPOP %R13                                | 1     | 0    | 0    | 0.50 | 0.50 | 0  | 0    | 2       | 0.50\nPOP %R14                                | 1     | 0    | 0    | 0.50 | 0.50 | 0  | 0    | 2       | 0.50\nPOP %R15                                | 1     | 0    | 0    | 0.50 | 0.50 | 0  | 0    | 2       | 0.50\nPOP %RBP                                | 1     | 0    | 0    | 0.50 | 0.50 | 0  | 0    | 2       | 0.50\nRET                                     | 2     | 0    | 0    | 0.50 | 0.50 | 0  | 1    | 0       | 2\nADD $0x1,%R10D                          | 1     | 0.33 | 0.33 | 0    | 0    | 0  | 0.33 | 1       | 0.33\nXOR %EDX,%EDX                           | 1     | 0    | 0    | 0    | 0    | 0  | 0    | 0       | 0.25\nJMP 1e9c2 <error_norm_._omp_fn.0+0xa2>  | 1     | 0    | 0    | 0    | 0    | 0  | 1    | 0       | 2\nNOPW %CS:(%RAX,%RAX,1)                  | 1     | 0    | 0    | 0    | 0    | 0  | 0    | 0       | 0.25\nXCHG %AX,%AX                            | 1     | 0    | 0    | 0    | 0    | 0  | 0    | 0       | 0.25\n",
        },
      },
      header = {
        "Warnings:\n - The number of fused uops of the instruction [DIVL	0x38(%RSP)] is unknown\n - Detected a function call instruction: ignoring called function instructions.\nRerun with --follow-calls=append to include them to analysis  or with --follow-calls=inline to simulate inlining.\n",
        "0% of peak computational performance is used (0.00 out of 2.00 FLOP per cycle (GFLOPS @ 1GHz))",
      },
      brief = {
      },
      gain = {
        {
          workaround = " - Try to reorganize arrays of structures to structures of arrays\n - Consider to permute loops (see vectorization gain report)\n - To reference allocatable arrays, use \"allocatable\" instead of \"pointer\" pointers or qualify them with the \"contiguous\" attribute (Fortran 2008)\n - For structures, limit to one indirection. For example, use a_b%c instead of a%b%c with a_b set to a%b before this function\n",
          title = "Code clean check",
          txt = "Detected a slowdown caused by scalar integer instructions (typically used for address computation).\nBy removing them, you can lower the cost of an iteration from 24.00 to 6.00 cycles (4.00x speedup).",
        },
        {
          workaround = " - Try another compiler or update/tune your current one\n - Make array accesses unit-stride:\n  * If your function streams arrays of structures (AoS), try to use structures of arrays instead (SoA):\ndo i a(i)%x = b(i)%x (slow, non stride 1) => do i a%x(i) = b%x(i) (fast, stride 1)\n",
          details = "19% of SSE/AVX instructions are used in vector version (process two or more data elements in vector registers):\n - 0% of SSE/AVX loads are used in vector version.\n - 8% of SSE/AVX stores are used in vector version.\n - 0% of SSE/AVX nil are used in vector version.\n - 35% of SSE/AVX instructions that are not load, store, addition, subtraction nor multiply instructions are used in vector version.\nSince your execution units are vector units, only a fully vectorized function can use their full power.\n",
          title = "Vectorization",
          txt = "Your function is not vectorized.\nOnly 39% of vector register length is used (average across all SSE/AVX instructions).\nBy fully vectorizing your function, you can lower the cost of an iteration from 24.00 to 19.42 cycles (1.24x speedup).",
        },
        {
          title = "Execution units bottlenecks",
          txt = "Found no such bottlenecks but see expert reports for more complex bottlenecks.",
        },
      },
      potential = {
        {
          title = "Expensive FP math instructions/calls",
          txt = "Detected performance impact from expensive FP math instructions/calls.\nBy removing/reexpressing them, you can lower the cost of an iteration from 24.00 to 22.00 cycles (1.09x speedup).",
        },
        {
          details = " - CALL: 2 occurrences\n - VCVTSI2SD: 1 occurrences\n",
          title = "Special instructions executing on a single port",
          txt = "1.05x slowdown from special instructions executing on a single port.\n",
        },
      },
    },
  common = {
    header = {
      "The function is defined in /users/user2210/NPB3.4-MZ-MPI/BT-MZ/error.f90:29-44,50-51.\n",
      "Warnings:\nIgnoring paths for analysis",
    },
  },
}
