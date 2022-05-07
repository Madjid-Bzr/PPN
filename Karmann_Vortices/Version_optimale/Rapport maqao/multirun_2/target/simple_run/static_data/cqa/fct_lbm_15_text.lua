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
          workaround = "Use vector aligned instructions:\n 1) align your arrays on 64 bytes boundaries: replace { void *p = malloc (size); } with { void *p; posix_memalign (&p, 64, size); }.\n 2) inform your compiler that your arrays are vector aligned: if array 'foo' is 64 bytes-aligned, define a pointer 'p_foo' as __builtin_assume_aligned (foo, 64) and use it instead of 'foo' in the loop.\n",
          details = " - VMOVUPD: 2 occurrences\n",
          title = "Vector unaligned load/store instructions",
          txt = "Detected 2 optimal vector unaligned load/store instructions.\n",
        },
        {
          title = "Type of elements and instruction set",
          txt = "No instructions are processing arithmetic or math operations on FP elements. This function is probably writing/copying data or processing integer elements.",
        },
        {
          title = "Matching between your function (in the source code) and the binary function",
          txt = "The binary function does not contain any FP arithmetical operations.\nThe binary function is loading 252 bytes.",
        },
      },
      expert = {
        {
          title = "General properties",
          txt = "nb instructions    : 67\nloop length        : 292\nused x86 registers : 14\nused mmx registers : 0\nused xmm registers : 10\nused ymm registers : 0\nused zmm registers : 2\nnb stack references: 1\n",
        },
        {
          title = "Front-end",
          txt = "MACRO FUSION NOT POSSIBLE\ninstruction fetch    : 19.00 cycles\ninstruction queue    : 33.50 cycles\ndecoding             : 33.50 cycles\nmicro-operation queue: 37.00 cycles\nfront end            : 37.00 cycles\n",
        },
        {
          title = "Back-end",
          txt = "       | P0    | P1   | P2    | P3    | P4    | P5    | P6\n------------------------------------------------------------\nuops   | 18.50 | 0.00 | 12.00 | 12.00 | 23.50 | 23.00 | 5.00\ncycles | 18.50 | 0.00 | 12.00 | 12.00 | 23.50 | 23.00 | 5.00\n\nCycles executing div or sqrt instructions: 22.00-95.00\n",
        },
        {
          title = "Cycles summary",
          txt = "Front-end : 37.00\nDispatch  : 23.50\nDIV/SQRT  : 22.00-95.00\nOverall L1: 37.00-95.00\n",
        },
        {
          title = "Vectorization ratios",
          txt = "INT\nall    : 6%\nload   : 0%\nstore  : NA (no store vectorizable/vectorized instructions)\nmul    : NA (no mul vectorizable/vectorized instructions)\nadd-sub: 0%\nfma    : NA (no fma vectorizable/vectorized instructions)\nother  : 9%\nFP\nall     : 18%\nload    : 18%\nstore   : NA (no store vectorizable/vectorized instructions)\nmul     : NA (no mul vectorizable/vectorized instructions)\nadd-sub : NA (no add-sub vectorizable/vectorized instructions)\nfma     : NA (no fma vectorizable/vectorized instructions)\ndiv/sqrt: NA (no div/sqrt vectorizable/vectorized instructions)\nother   : NA (no other vectorizable/vectorized instructions)\nINT+FP\nall     : 11%\nload    : 14%\nstore   : NA (no store vectorizable/vectorized instructions)\nmul     : NA (no mul vectorizable/vectorized instructions)\nadd-sub : 0%\nfma     : NA (no fma vectorizable/vectorized instructions)\ndiv/sqrt: 0%\nother   : 10%\n",
        },
        {
          title = "Vector efficiency ratios",
          txt = "INT\nall    : 10%\nload   : 12%\nstore  : NA (no store vectorizable/vectorized instructions)\nmul    : NA (no mul vectorizable/vectorized instructions)\nadd-sub: 6%\nfma    : NA (no fma vectorizable/vectorized instructions)\nother  : 10%\nFP\nall     : 28%\nload    : 28%\nstore   : NA (no store vectorizable/vectorized instructions)\nmul     : NA (no mul vectorizable/vectorized instructions)\nadd-sub : NA (no add-sub vectorizable/vectorized instructions)\nfma     : NA (no fma vectorizable/vectorized instructions)\ndiv/sqrt: NA (no div/sqrt vectorizable/vectorized instructions)\nother   : NA (no other vectorizable/vectorized instructions)\nINT+FP\nall     : 18%\nload    : 25%\nstore   : NA (no store vectorizable/vectorized instructions)\nmul     : NA (no mul vectorizable/vectorized instructions)\nadd-sub : 6%\nfma     : NA (no fma vectorizable/vectorized instructions)\ndiv/sqrt: 12%\nother   : 10%\n",
        },
        {
          title = "Cycles and memory resources usage",
          txt = "Assuming all data fit into the L1 cache, each call to the function takes 95.00 cycles. At this rate:\n - 2% of peak load performance is reached (2.65 out of 128.00 bytes loaded per cycle (GB/s @ 1GHz))\n",
        },
        {
          title = "Front-end bottlenecks",
          txt = "Found no such bottlenecks.",
        },
        {
          title = "ASM code",
          txt = "In the binary file, the address of the function is: 4310\n\nInstruction                          | Nb FU | P0    | P1 | P2   | P3   | P4    | P5   | P6 | Latency | Recip. throughput\n-------------------------------------------------------------------------------------------------------------------------\nENDBR64\nPUSH %RBP                            | 1     | 0     | 0  | 0    | 0    | 1     | 1    | 0  | 0       | 1\nMOV %RSP,%RBP                        | 1     | 0     | 0  | 0    | 0    | 0.50  | 0.50 | 0  | 0       | 0.50\nPUSH %R14                            | 1     | 0     | 0  | 0    | 0    | 1     | 1    | 0  | 0       | 1\nPUSH %R13                            | 1     | 0     | 0  | 0    | 0    | 1     | 1    | 0  | 0       | 1\nPUSH %R12                            | 1     | 0     | 0  | 0    | 0    | 1     | 1    | 0  | 0       | 1\nPUSH %RBX                            | 1     | 0     | 0  | 0    | 0    | 1     | 1    | 0  | 0       | 1\nMOV 0x8(%RDI),%R14                   | 1     | 0     | 0  | 1    | 0    | 0     | 0    | 0  | 4       | 1\nAND $-0x40,%RSP                      | 1     | 0     | 0  | 0    | 0    | 0.50  | 0.50 | 0  | 1       | 0.50\nMOV 0x8(%R14),%EAX                   | 1     | 0     | 0  | 1    | 0    | 0     | 0    | 0  | 4       | 1\nMOV %EAX,%EBX                        | 1     | 0     | 0  | 0    | 0    | 0.50  | 0.50 | 0  | 0       | 0.50\nSUB $0x1,%EBX                        | 1     | 0     | 0  | 0    | 0    | 0.50  | 0.50 | 0  | 1       | 0.50\nCMP $0x1,%EBX                        | 1     | 0     | 0  | 0    | 0    | 0.50  | 0.50 | 0  | 1       | 0.50\nJBE 46af <collision._omp_fn.0+0x39f> | 1     | 0     | 0  | 0    | 0    | 0     | 1    | 0  | 0       | 1-2\nLEA (%RDI),%R13                      | 1     | 0     | 0  | 0    | 0    | 0.50  | 0.50 | 0  | 1       | 0.50\nCALL 1210 <.plt.sec@start+0x20>      | 1     | 0     | 0  | 0    | 0    | 0.50  | 0.50 | 0  | 0       | 2\nMOVSXD %EAX,%R12                     | 1     | 0     | 0  | 0    | 0    | 1     | 0    | 0  | 1       | 1\nCALL 12b0 <.plt.sec@start+0xc0>      | 1     | 0     | 0  | 0    | 0    | 0.50  | 0.50 | 0  | 0       | 2\nMOVSXD %EAX,%R11                     | 1     | 0     | 0  | 0    | 0    | 1     | 0    | 0  | 1       | 1\nXOR %EDX,%EDX\nLEA -0x1(%RBX),%RAX                  | 1     | 0     | 0  | 0    | 0    | 0.50  | 0.50 | 0  | 1       | 0.50\nDIV %R12                             | 23    | 11.50 | 0  | 0    | 0    | 11.50 | 0    | 0  | 39-95   | 22-95\nCMP %RDX,%R11                        | 1     | 0     | 0  | 0    | 0    | 0.50  | 0.50 | 0  | 1       | 0.50\nJB 46bc <collision._omp_fn.0+0x3ac>  | 1     | 0     | 0  | 0    | 0    | 0     | 1    | 0  | 0       | 1-2\nIMUL %RAX,%R11                       | 1     | 0     | 0  | 0    | 0    | 1     | 0    | 0  | 5       | 2\nADD %RDX,%R11                        | 1     | 0     | 0  | 0    | 0    | 0.50  | 0.50 | 0  | 1       | 0.50\nADD %R11,%RAX                        | 1     | 0     | 0  | 0    | 0    | 0.50  | 0.50 | 0  | 1       | 0.50\nCMP %RAX,%R11                        | 1     | 0     | 0  | 0    | 0    | 0.50  | 0.50 | 0  | 1       | 0.50\nJAE 46af <collision._omp_fn.0+0x39f> | 1     | 0     | 0  | 0    | 0    | 0     | 1    | 0  | 0       | 1-2\nMOV (%R13),%RCX                      | 1     | 0     | 0  | 1    | 0    | 0     | 0    | 0  | 4       | 1\nLEA 0x1(%R11),%R11                   | 1     | 0     | 0  | 0    | 0    | 0.50  | 0.50 | 0  | 1       | 0.50\nMOV 0xc(%R14),%R13D                  | 1     | 0     | 0  | 1    | 0    | 0     | 0    | 0  | 4       | 1\nLEA 0x1(%RAX),%R12                   | 1     | 0     | 0  | 0    | 0    | 0.50  | 0.50 | 0  | 1       | 0.50\nMOV %R13D,%R8D                       | 1     | 0     | 0  | 0    | 0    | 0.50  | 0.50 | 0  | 0       | 0.50\nSUB $0x1,%R8D                        | 1     | 0     | 0  | 0    | 0    | 0.50  | 0.50 | 0  | 1       | 0.50\nCMP $0x1,%R8D                        | 1     | 0     | 0  | 0    | 0    | 0.50  | 0.50 | 0  | 1       | 0.50\nJBE 46af <collision._omp_fn.0+0x39f> | 1     | 0     | 0  | 0    | 0    | 0     | 1    | 0  | 0       | 1-2\nMOV (%R14),%R10                      | 1     | 0     | 0  | 1    | 0    | 0     | 0    | 0  | 4       | 1\nLEA (%R13),%EBX                      | 1     | 0     | 0  | 0    | 0    | 0.50  | 0.50 | 0  | 1       | 0.50\nIMUL %R11D,%EBX                      | 1     | 0     | 0  | 0    | 0    | 1     | 0    | 0  | 3       | 1\nMOV (%RCX),%R9                       | 1     | 0     | 0  | 1    | 0    | 0     | 0    | 0  | 4       | 1\nVMOVUPD 0x11de(%RIP),%ZMM16          | 1     | 0     | 0  | 0.50 | 0.50 | 0     | 0    | 0  | 5       | 0.50\nVMOVUPD 0x1174(%RIP),%ZMM15          | 1     | 0     | 0  | 0.50 | 0.50 | 0     | 0    | 0  | 5       | 0.50\nVMOVSD 0x2ca4(%RIP),%XMM5            | 1     | 0     | 0  | 0.50 | 0.50 | 0     | 0    | 0  | 5       | 0.50\nMOV 0xc(%RCX),%R14D                  | 1     | 0     | 0  | 1    | 0    | 0     | 0    | 0  | 4       | 1\nVMOVSD 0x1230(%RIP),%XMM7            | 1     | 0     | 0  | 0.50 | 0.50 | 0     | 0    | 0  | 5       | 0.50\nVMOVSD 0x1220(%RIP),%XMM10           | 1     | 0     | 0  | 0.50 | 0.50 | 0     | 0    | 0  | 5       | 0.50\nVMOVSD 0x1228(%RIP),%XMM14           | 1     | 0     | 0  | 0.50 | 0.50 | 0     | 0    | 0  | 5       | 0.50\nVMOVSD 0x1230(%RIP),%XMM8            | 1     | 0     | 0  | 0.50 | 0.50 | 0     | 0    | 0  | 5       | 0.50\nVMOVSD 0x1220(%RIP),%XMM9            | 1     | 0     | 0  | 0.50 | 0.50 | 0     | 0    | 0  | 5       | 0.50\nVMOVSD 0x1228(%RIP),%XMM13           | 1     | 0     | 0  | 0.50 | 0.50 | 0     | 0    | 0  | 5       | 0.50\nVMOVSD 0x1248(%RIP),%XMM12           | 1     | 0     | 0  | 0.50 | 0.50 | 0     | 0    | 0  | 5       | 0.50\nVMOVSD 0x1220(%RIP),%XMM11           | 1     | 0     | 0  | 0.50 | 0.50 | 0     | 0    | 0  | 5       | 0.50\nVMOVQ 0x1268(%RIP),%XMM6             | 1     | 0     | 0  | 0.50 | 0.50 | 0     | 0    | 0  | 5       | 0.50\nNOPL (%RAX,%RAX,1)                   | 1     | 0     | 0  | 0    | 0    | 0.50  | 0.50 | 0  | 0       | 0.50\nVZEROUPPER                           | 19    | 0     | 0  | 0    | 0    | 0     | 0    | 0  | 0       | 36\nLEA -0x20(%RBP),%RSP                 | 1     | 0     | 0  | 0    | 0    | 0.50  | 0.50 | 0  | 1       | 0.50\nPOP %RBX                             | 2     | 0     | 0  | 0.50 | 0.50 | 0     | 0    | 1  | 0       | 1\nPOP %R12                             | 2     | 0     | 0  | 0.50 | 0.50 | 0     | 0    | 1  | 0       | 1\nPOP %R13                             | 2     | 0     | 0  | 0.50 | 0.50 | 0     | 0    | 1  | 0       | 1\nPOP %R14                             | 2     | 0     | 0  | 0.50 | 0.50 | 0     | 0    | 1  | 0       | 1\nPOP %RBP                             | 2     | 0     | 0  | 0.50 | 0.50 | 0     | 0    | 1  | 0       | 1\nRET\nADD $0x1,%RAX                        | 1     | 0     | 0  | 0    | 0    | 0.50  | 0.50 | 0  | 1       | 0.50\nXOR %EDX,%EDX\nJMP 435e <collision._omp_fn.0+0x4e>  | 1     | 0     | 0  | 0    | 0    | 0     | 1    | 0  | 0       | 2\nNOPW (%RAX,%RAX,1)                   | 1     | 0     | 0  | 0    | 0    | 0.50  | 0.50 | 0  | 0       | 0.50\n",
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
          txt = "Detected a slowdown caused by scalar integer instructions (typically used for address computation).\nBy removing them, you can lower the cost of an iteration from 95.00 to 11.00 cycles (8.64x speedup).",
        },
        {
          workaround = " - Try another compiler or update/tune your current one\n - Make array accesses unit-stride:\n  * If your function streams arrays of structures (AoS), try to use structures of arrays instead (SoA):\nfor(i) a[i].x = b[i].x; (slow, non stride 1) => for(i) a.x[i] = b.x[i]; (fast, stride 1)\n",
          details = "Store and arithmetical SSE/AVX instructions are used in scalar version (process only one data element in vector registers).\nSince your execution units are vector units, only a vectorized function can use their full power.\n",
          title = "Vectorization",
          txt = "Your function is probably not vectorized.\nOnly 18% of vector register length is used (average across all SSE/AVX instructions).\nBy vectorizing your function, you can lower the cost of an iteration from 95.00 to 27.30 cycles (3.48x speedup).",
        },
        {
          workaround = "Reduce the number of division or square root instructions:\n - If denominator is constant over iterations, use reciprocal (replace x/y with x*(1/y)). Check precision impact. This will be done by your compiler with ffast-math or Ofast\n",
          title = "Execution units bottlenecks",
          txt = "Performance is limited by execution of divide and square root operations (the divide/square root unit is a bottleneck).\n\nBy removing all these bottlenecks, you can lower the cost of an iteration from 95.00 to 37.00 cycles (2.57x speedup).\n",
        },
      },
      potential = {
        {
          title = "Expensive FP math instructions/calls",
          txt = "Detected performance impact from expensive FP math instructions/calls.\nBy removing/reexpressing them, you can lower the cost of an iteration from 95.00 to 37.00 cycles (2.57x speedup).",
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
          workaround = "Use vector aligned instructions:\n 1) align your arrays on 64 bytes boundaries: replace { void *p = malloc (size); } with { void *p; posix_memalign (&p, 64, size); }.\n 2) inform your compiler that your arrays are vector aligned: if array 'foo' is 64 bytes-aligned, define a pointer 'p_foo' as __builtin_assume_aligned (foo, 64) and use it instead of 'foo' in the loop.\n",
          details = " - VMOVUPD: 2 occurrences\n",
          title = "Vector unaligned load/store instructions",
          txt = "Detected 2 optimal vector unaligned load/store instructions.\n",
        },
        {
          title = "Type of elements and instruction set",
          txt = "No instructions are processing arithmetic or math operations on FP elements. This function is probably writing/copying data or processing integer elements.",
        },
        {
          title = "Matching between your function (in the source code) and the binary function",
          txt = "The binary function does not contain any FP arithmetical operations.\nThe binary function is loading 252 bytes.",
        },
      },
      expert = {
        {
          title = "General properties",
          txt = "nb instructions    : 67\nloop length        : 292\nused x86 registers : 14\nused mmx registers : 0\nused xmm registers : 10\nused ymm registers : 0\nused zmm registers : 2\nnb stack references: 1\n",
        },
        {
          title = "Front-end",
          txt = "MACRO FUSION NOT POSSIBLE\ninstruction fetch    : 19.00 cycles\ninstruction queue    : 33.50 cycles\ndecoding             : 33.50 cycles\nmicro-operation queue: 37.00 cycles\nfront end            : 37.00 cycles\n",
        },
        {
          title = "Back-end",
          txt = "       | P0    | P1   | P2    | P3    | P4    | P5    | P6\n------------------------------------------------------------\nuops   | 18.50 | 0.00 | 12.00 | 12.00 | 23.50 | 23.00 | 5.00\ncycles | 18.50 | 0.00 | 12.00 | 12.00 | 23.50 | 23.00 | 5.00\n\nCycles executing div or sqrt instructions: 22.00-95.00\n",
        },
        {
          title = "Cycles summary",
          txt = "Front-end : 37.00\nDispatch  : 23.50\nDIV/SQRT  : 22.00-95.00\nOverall L1: 37.00-95.00\n",
        },
        {
          title = "Vectorization ratios",
          txt = "INT\nall    : 6%\nload   : 0%\nstore  : NA (no store vectorizable/vectorized instructions)\nmul    : NA (no mul vectorizable/vectorized instructions)\nadd-sub: 0%\nfma    : NA (no fma vectorizable/vectorized instructions)\nother  : 9%\nFP\nall     : 18%\nload    : 18%\nstore   : NA (no store vectorizable/vectorized instructions)\nmul     : NA (no mul vectorizable/vectorized instructions)\nadd-sub : NA (no add-sub vectorizable/vectorized instructions)\nfma     : NA (no fma vectorizable/vectorized instructions)\ndiv/sqrt: NA (no div/sqrt vectorizable/vectorized instructions)\nother   : NA (no other vectorizable/vectorized instructions)\nINT+FP\nall     : 11%\nload    : 14%\nstore   : NA (no store vectorizable/vectorized instructions)\nmul     : NA (no mul vectorizable/vectorized instructions)\nadd-sub : 0%\nfma     : NA (no fma vectorizable/vectorized instructions)\ndiv/sqrt: 0%\nother   : 10%\n",
        },
        {
          title = "Vector efficiency ratios",
          txt = "INT\nall    : 10%\nload   : 12%\nstore  : NA (no store vectorizable/vectorized instructions)\nmul    : NA (no mul vectorizable/vectorized instructions)\nadd-sub: 6%\nfma    : NA (no fma vectorizable/vectorized instructions)\nother  : 10%\nFP\nall     : 28%\nload    : 28%\nstore   : NA (no store vectorizable/vectorized instructions)\nmul     : NA (no mul vectorizable/vectorized instructions)\nadd-sub : NA (no add-sub vectorizable/vectorized instructions)\nfma     : NA (no fma vectorizable/vectorized instructions)\ndiv/sqrt: NA (no div/sqrt vectorizable/vectorized instructions)\nother   : NA (no other vectorizable/vectorized instructions)\nINT+FP\nall     : 18%\nload    : 25%\nstore   : NA (no store vectorizable/vectorized instructions)\nmul     : NA (no mul vectorizable/vectorized instructions)\nadd-sub : 6%\nfma     : NA (no fma vectorizable/vectorized instructions)\ndiv/sqrt: 12%\nother   : 10%\n",
        },
        {
          title = "Cycles and memory resources usage",
          txt = "Assuming all data fit into the L1 cache, each call to the function takes 95.00 cycles. At this rate:\n - 2% of peak load performance is reached (2.65 out of 128.00 bytes loaded per cycle (GB/s @ 1GHz))\n",
        },
        {
          title = "Front-end bottlenecks",
          txt = "Found no such bottlenecks.",
        },
        {
          title = "ASM code",
          txt = "In the binary file, the address of the function is: 4310\n\nInstruction                          | Nb FU | P0    | P1 | P2   | P3   | P4    | P5   | P6 | Latency | Recip. throughput\n-------------------------------------------------------------------------------------------------------------------------\nENDBR64\nPUSH %RBP                            | 1     | 0     | 0  | 0    | 0    | 1     | 1    | 0  | 0       | 1\nMOV %RSP,%RBP                        | 1     | 0     | 0  | 0    | 0    | 0.50  | 0.50 | 0  | 0       | 0.50\nPUSH %R14                            | 1     | 0     | 0  | 0    | 0    | 1     | 1    | 0  | 0       | 1\nPUSH %R13                            | 1     | 0     | 0  | 0    | 0    | 1     | 1    | 0  | 0       | 1\nPUSH %R12                            | 1     | 0     | 0  | 0    | 0    | 1     | 1    | 0  | 0       | 1\nPUSH %RBX                            | 1     | 0     | 0  | 0    | 0    | 1     | 1    | 0  | 0       | 1\nMOV 0x8(%RDI),%R14                   | 1     | 0     | 0  | 1    | 0    | 0     | 0    | 0  | 4       | 1\nAND $-0x40,%RSP                      | 1     | 0     | 0  | 0    | 0    | 0.50  | 0.50 | 0  | 1       | 0.50\nMOV 0x8(%R14),%EAX                   | 1     | 0     | 0  | 1    | 0    | 0     | 0    | 0  | 4       | 1\nMOV %EAX,%EBX                        | 1     | 0     | 0  | 0    | 0    | 0.50  | 0.50 | 0  | 0       | 0.50\nSUB $0x1,%EBX                        | 1     | 0     | 0  | 0    | 0    | 0.50  | 0.50 | 0  | 1       | 0.50\nCMP $0x1,%EBX                        | 1     | 0     | 0  | 0    | 0    | 0.50  | 0.50 | 0  | 1       | 0.50\nJBE 46af <collision._omp_fn.0+0x39f> | 1     | 0     | 0  | 0    | 0    | 0     | 1    | 0  | 0       | 1-2\nLEA (%RDI),%R13                      | 1     | 0     | 0  | 0    | 0    | 0.50  | 0.50 | 0  | 1       | 0.50\nCALL 1210 <.plt.sec@start+0x20>      | 1     | 0     | 0  | 0    | 0    | 0.50  | 0.50 | 0  | 0       | 2\nMOVSXD %EAX,%R12                     | 1     | 0     | 0  | 0    | 0    | 1     | 0    | 0  | 1       | 1\nCALL 12b0 <.plt.sec@start+0xc0>      | 1     | 0     | 0  | 0    | 0    | 0.50  | 0.50 | 0  | 0       | 2\nMOVSXD %EAX,%R11                     | 1     | 0     | 0  | 0    | 0    | 1     | 0    | 0  | 1       | 1\nXOR %EDX,%EDX\nLEA -0x1(%RBX),%RAX                  | 1     | 0     | 0  | 0    | 0    | 0.50  | 0.50 | 0  | 1       | 0.50\nDIV %R12                             | 23    | 11.50 | 0  | 0    | 0    | 11.50 | 0    | 0  | 39-95   | 22-95\nCMP %RDX,%R11                        | 1     | 0     | 0  | 0    | 0    | 0.50  | 0.50 | 0  | 1       | 0.50\nJB 46bc <collision._omp_fn.0+0x3ac>  | 1     | 0     | 0  | 0    | 0    | 0     | 1    | 0  | 0       | 1-2\nIMUL %RAX,%R11                       | 1     | 0     | 0  | 0    | 0    | 1     | 0    | 0  | 5       | 2\nADD %RDX,%R11                        | 1     | 0     | 0  | 0    | 0    | 0.50  | 0.50 | 0  | 1       | 0.50\nADD %R11,%RAX                        | 1     | 0     | 0  | 0    | 0    | 0.50  | 0.50 | 0  | 1       | 0.50\nCMP %RAX,%R11                        | 1     | 0     | 0  | 0    | 0    | 0.50  | 0.50 | 0  | 1       | 0.50\nJAE 46af <collision._omp_fn.0+0x39f> | 1     | 0     | 0  | 0    | 0    | 0     | 1    | 0  | 0       | 1-2\nMOV (%R13),%RCX                      | 1     | 0     | 0  | 1    | 0    | 0     | 0    | 0  | 4       | 1\nLEA 0x1(%R11),%R11                   | 1     | 0     | 0  | 0    | 0    | 0.50  | 0.50 | 0  | 1       | 0.50\nMOV 0xc(%R14),%R13D                  | 1     | 0     | 0  | 1    | 0    | 0     | 0    | 0  | 4       | 1\nLEA 0x1(%RAX),%R12                   | 1     | 0     | 0  | 0    | 0    | 0.50  | 0.50 | 0  | 1       | 0.50\nMOV %R13D,%R8D                       | 1     | 0     | 0  | 0    | 0    | 0.50  | 0.50 | 0  | 0       | 0.50\nSUB $0x1,%R8D                        | 1     | 0     | 0  | 0    | 0    | 0.50  | 0.50 | 0  | 1       | 0.50\nCMP $0x1,%R8D                        | 1     | 0     | 0  | 0    | 0    | 0.50  | 0.50 | 0  | 1       | 0.50\nJBE 46af <collision._omp_fn.0+0x39f> | 1     | 0     | 0  | 0    | 0    | 0     | 1    | 0  | 0       | 1-2\nMOV (%R14),%R10                      | 1     | 0     | 0  | 1    | 0    | 0     | 0    | 0  | 4       | 1\nLEA (%R13),%EBX                      | 1     | 0     | 0  | 0    | 0    | 0.50  | 0.50 | 0  | 1       | 0.50\nIMUL %R11D,%EBX                      | 1     | 0     | 0  | 0    | 0    | 1     | 0    | 0  | 3       | 1\nMOV (%RCX),%R9                       | 1     | 0     | 0  | 1    | 0    | 0     | 0    | 0  | 4       | 1\nVMOVUPD 0x11de(%RIP),%ZMM16          | 1     | 0     | 0  | 0.50 | 0.50 | 0     | 0    | 0  | 5       | 0.50\nVMOVUPD 0x1174(%RIP),%ZMM15          | 1     | 0     | 0  | 0.50 | 0.50 | 0     | 0    | 0  | 5       | 0.50\nVMOVSD 0x2ca4(%RIP),%XMM5            | 1     | 0     | 0  | 0.50 | 0.50 | 0     | 0    | 0  | 5       | 0.50\nMOV 0xc(%RCX),%R14D                  | 1     | 0     | 0  | 1    | 0    | 0     | 0    | 0  | 4       | 1\nVMOVSD 0x1230(%RIP),%XMM7            | 1     | 0     | 0  | 0.50 | 0.50 | 0     | 0    | 0  | 5       | 0.50\nVMOVSD 0x1220(%RIP),%XMM10           | 1     | 0     | 0  | 0.50 | 0.50 | 0     | 0    | 0  | 5       | 0.50\nVMOVSD 0x1228(%RIP),%XMM14           | 1     | 0     | 0  | 0.50 | 0.50 | 0     | 0    | 0  | 5       | 0.50\nVMOVSD 0x1230(%RIP),%XMM8            | 1     | 0     | 0  | 0.50 | 0.50 | 0     | 0    | 0  | 5       | 0.50\nVMOVSD 0x1220(%RIP),%XMM9            | 1     | 0     | 0  | 0.50 | 0.50 | 0     | 0    | 0  | 5       | 0.50\nVMOVSD 0x1228(%RIP),%XMM13           | 1     | 0     | 0  | 0.50 | 0.50 | 0     | 0    | 0  | 5       | 0.50\nVMOVSD 0x1248(%RIP),%XMM12           | 1     | 0     | 0  | 0.50 | 0.50 | 0     | 0    | 0  | 5       | 0.50\nVMOVSD 0x1220(%RIP),%XMM11           | 1     | 0     | 0  | 0.50 | 0.50 | 0     | 0    | 0  | 5       | 0.50\nVMOVQ 0x1268(%RIP),%XMM6             | 1     | 0     | 0  | 0.50 | 0.50 | 0     | 0    | 0  | 5       | 0.50\nNOPL (%RAX,%RAX,1)                   | 1     | 0     | 0  | 0    | 0    | 0.50  | 0.50 | 0  | 0       | 0.50\nVZEROUPPER                           | 19    | 0     | 0  | 0    | 0    | 0     | 0    | 0  | 0       | 36\nLEA -0x20(%RBP),%RSP                 | 1     | 0     | 0  | 0    | 0    | 0.50  | 0.50 | 0  | 1       | 0.50\nPOP %RBX                             | 2     | 0     | 0  | 0.50 | 0.50 | 0     | 0    | 1  | 0       | 1\nPOP %R12                             | 2     | 0     | 0  | 0.50 | 0.50 | 0     | 0    | 1  | 0       | 1\nPOP %R13                             | 2     | 0     | 0  | 0.50 | 0.50 | 0     | 0    | 1  | 0       | 1\nPOP %R14                             | 2     | 0     | 0  | 0.50 | 0.50 | 0     | 0    | 1  | 0       | 1\nPOP %RBP                             | 2     | 0     | 0  | 0.50 | 0.50 | 0     | 0    | 1  | 0       | 1\nRET\nADD $0x1,%RAX                        | 1     | 0     | 0  | 0    | 0    | 0.50  | 0.50 | 0  | 1       | 0.50\nXOR %EDX,%EDX\nJMP 435e <collision._omp_fn.0+0x4e>  | 1     | 0     | 0  | 0    | 0    | 0     | 1    | 0  | 0       | 2\nNOPW (%RAX,%RAX,1)                   | 1     | 0     | 0  | 0    | 0    | 0.50  | 0.50 | 0  | 0       | 0.50\n",
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
          txt = "Detected a slowdown caused by scalar integer instructions (typically used for address computation).\nBy removing them, you can lower the cost of an iteration from 95.00 to 11.00 cycles (8.64x speedup).",
        },
        {
          workaround = " - Try another compiler or update/tune your current one\n - Make array accesses unit-stride:\n  * If your function streams arrays of structures (AoS), try to use structures of arrays instead (SoA):\nfor(i) a[i].x = b[i].x; (slow, non stride 1) => for(i) a.x[i] = b.x[i]; (fast, stride 1)\n",
          details = "Store and arithmetical SSE/AVX instructions are used in scalar version (process only one data element in vector registers).\nSince your execution units are vector units, only a vectorized function can use their full power.\n",
          title = "Vectorization",
          txt = "Your function is probably not vectorized.\nOnly 18% of vector register length is used (average across all SSE/AVX instructions).\nBy vectorizing your function, you can lower the cost of an iteration from 95.00 to 27.30 cycles (3.48x speedup).",
        },
        {
          workaround = "Reduce the number of division or square root instructions:\n - If denominator is constant over iterations, use reciprocal (replace x/y with x*(1/y)). Check precision impact. This will be done by your compiler with ffast-math or Ofast\n",
          title = "Execution units bottlenecks",
          txt = "Performance is limited by execution of divide and square root operations (the divide/square root unit is a bottleneck).\n\nBy removing all these bottlenecks, you can lower the cost of an iteration from 95.00 to 37.00 cycles (2.57x speedup).\n",
        },
      },
      potential = {
        {
          title = "Expensive FP math instructions/calls",
          txt = "Detected performance impact from expensive FP math instructions/calls.\nBy removing/reexpressing them, you can lower the cost of an iteration from 95.00 to 37.00 cycles (2.57x speedup).",
        },
      },
    },
  common = {
    header = {
      "The function is defined in:\n - /users/user2207/lbm_opt/include/lbm_struct.h:130\n - /usr/lib/gcc/x86_64-linux-gnu/9/include/avx512fintrin.h:5852,12478,15884\n - /usr/lib/gcc/x86_64-linux-gnu/9/include/avxintrin.h:513\n - /users/user2207/lbm_opt/src/lbm_phys.c:47,58-59,92-100,117,215-219\n\n",
      "Warnings:\nIgnoring paths for analysis",
    },
  },
}
