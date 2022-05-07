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
          workaround = "Avoid mixing data with different types. In particular, check if the type of constants is the same as array elements.",
          details = " - VCVTUSI2SD (INT32/64 to FP64, scalar): 1 occurrences\n",
          title = "Conversion instructions",
          txt = "Detected expensive conversion instructions.",
        },
        {
          title = "Type of elements and instruction set",
          txt = "2 SSE or AVX instructions are processing arithmetic or math operations on double precision FP elements in scalar mode (one at a time).\n",
        },
        {
          title = "Matching between your function (in the source code) and the binary function",
          txt = "The binary function is composed of 2 FP arithmetical operations:\n - 1: multiply\n - 1: divide\nThe binary function is loading 84 bytes (10 double precision FP elements).",
        },
        {
          title = "Arithmetic intensity",
          txt = "Arithmetic intensity is 0.02 FP operations per loaded or stored byte.",
        },
      },
      expert = {
        {
          title = "General properties",
          txt = "nb instructions    : 71\nloop length        : 277\nused x86 registers : 13\nused mmx registers : 0\nused xmm registers : 8\nused ymm registers : 0\nused zmm registers : 0\nnb stack references: 4\n",
        },
        {
          title = "Front-end",
          txt = "MACRO FUSION NOT POSSIBLE\ninstruction fetch    : 18.00 cycles\ninstruction queue    : 35.50 cycles\ndecoding             : 35.50 cycles\nmicro-operation queue: 39.00 cycles\nfront end            : 39.00 cycles\n",
        },
        {
          title = "Back-end",
          txt = "       | P0    | P1   | P2   | P3   | P4    | P5    | P6\n----------------------------------------------------------\nuops   | 19.50 | 1.00 | 8.00 | 8.00 | 28.50 | 28.00 | 4.00\ncycles | 19.50 | 1.00 | 8.00 | 8.00 | 28.50 | 28.00 | 4.00\n\nCycles executing div or sqrt instructions: 34.00-127.00\n",
        },
        {
          title = "Cycles summary",
          txt = "Front-end : 39.00\nDispatch  : 28.50\nDIV/SQRT  : 34.00-127.00\nOverall L1: 39.00-127.00\n",
        },
        {
          title = "Vectorization ratios",
          txt = "INT\nall    : 0%\nload   : 0%\nstore  : NA (no store vectorizable/vectorized instructions)\nmul    : NA (no mul vectorizable/vectorized instructions)\nadd-sub: 0%\nfma    : NA (no fma vectorizable/vectorized instructions)\nother  : 0%\nFP\nall     : 0%\nload    : 0%\nstore   : NA (no store vectorizable/vectorized instructions)\nmul     : 0%\nadd-sub : NA (no add-sub vectorizable/vectorized instructions)\nfma     : NA (no fma vectorizable/vectorized instructions)\ndiv/sqrt: 0%\nother   : 0%\nINT+FP\nall     : 0%\nload    : 0%\nstore   : NA (no store vectorizable/vectorized instructions)\nmul     : 0%\nadd-sub : 0%\nfma     : NA (no fma vectorizable/vectorized instructions)\ndiv/sqrt: 0%\nother   : 0%\n",
        },
        {
          title = "Vector efficiency ratios",
          txt = "INT\nall    : 9%\nload   : 9%\nstore  : NA (no store vectorizable/vectorized instructions)\nmul    : NA (no mul vectorizable/vectorized instructions)\nadd-sub: 6%\nfma    : NA (no fma vectorizable/vectorized instructions)\nother  : 9%\nFP\nall     : 12%\nload    : 12%\nstore   : NA (no store vectorizable/vectorized instructions)\nmul     : 12%\nadd-sub : NA (no add-sub vectorizable/vectorized instructions)\nfma     : NA (no fma vectorizable/vectorized instructions)\ndiv/sqrt: 12%\nother   : 12%\nINT+FP\nall     : 10%\nload    : 11%\nstore   : NA (no store vectorizable/vectorized instructions)\nmul     : 12%\nadd-sub : 6%\nfma     : NA (no fma vectorizable/vectorized instructions)\ndiv/sqrt: 12%\nother   : 9%\n",
        },
        {
          title = "Cycles and memory resources usage",
          txt = "Assuming all data fit into the L1 cache, each call to the function takes 127.00 cycles. At this rate:\n - 0% of peak load performance is reached (0.66 out of 128.00 bytes loaded per cycle (GB/s @ 1GHz))\n",
        },
        {
          title = "Front-end bottlenecks",
          txt = "Found no such bottlenecks.",
        },
        {
          title = "ASM code",
          txt = "In the binary file, the address of the function is: 39b0\n\nInstruction                              | Nb FU | P0    | P1   | P2   | P3   | P4    | P5   | P6 | Latency | Recip. throughput\n-------------------------------------------------------------------------------------------------------------------------------\nENDBR64\nPUSH %R13                                | 1     | 0     | 0    | 0    | 0    | 1     | 1    | 0  | 0       | 1\nPUSH %R12                                | 1     | 0     | 0    | 0    | 0    | 1     | 1    | 0  | 0       | 1\nPUSH %RBP                                | 1     | 0     | 0    | 0    | 0    | 1     | 1    | 0  | 0       | 1\nPUSH %RBX                                | 1     | 0     | 0    | 0    | 0    | 1     | 1    | 0  | 0       | 1\nLEA -0x8(%RSP),%RSP                      | 1     | 0     | 0    | 0    | 0    | 0.50  | 0.50 | 0  | 1       | 0.50\nMOV (%RDI),%RBX                          | 1     | 0     | 0    | 1    | 0    | 0     | 0    | 0  | 4       | 1\nMOV 0x8(%RBX),%EAX                       | 1     | 0     | 0    | 1    | 0    | 0     | 0    | 0  | 4       | 1\nMOV %EAX,%EBP                            | 1     | 0     | 0    | 0    | 0    | 0.50  | 0.50 | 0  | 0       | 0.50\nSUB $0x1,%EBP                            | 1     | 0     | 0    | 0    | 0    | 0.50  | 0.50 | 0  | 1       | 0.50\nCMP $0x1,%EBP                            | 1     | 0     | 0    | 0    | 0    | 0.50  | 0.50 | 0  | 1       | 0.50\nJBE 3c37 <special_cells._omp_fn.0+0x287> | 1     | 0     | 0    | 0    | 0    | 0     | 1    | 0  | 0       | 1-2\nLEA (%RDI),%R13                          | 1     | 0     | 0    | 0    | 0    | 0.50  | 0.50 | 0  | 1       | 0.50\nCALL 1210 <.plt.sec@start+0x20>          | 1     | 0     | 0    | 0    | 0    | 0.50  | 0.50 | 0  | 0       | 2\nMOVSXD %EAX,%R12                         | 1     | 0     | 0    | 0    | 0    | 1     | 0    | 0  | 1       | 1\nCALL 12b0 <.plt.sec@start+0xc0>          | 1     | 0     | 0    | 0    | 0    | 0.50  | 0.50 | 0  | 0       | 2\nMOVSXD %EAX,%R8                          | 1     | 0     | 0    | 0    | 0    | 1     | 0    | 0  | 1       | 1\nXOR %EDX,%EDX\nLEA -0x1(%RBP),%RAX                      | 1     | 0     | 0    | 0    | 0    | 0.50  | 0.50 | 0  | 1       | 0.50\nDIV %R12                                 | 23    | 11.50 | 0    | 0    | 0    | 11.50 | 0    | 0  | 39-95   | 22-95\nCMP %RDX,%R8                             | 1     | 0     | 0    | 0    | 0    | 0.50  | 0.50 | 0  | 1       | 0.50\nJB 3ee2 <special_cells._omp_fn.0+0x532>  | 1     | 0     | 0    | 0    | 0    | 0     | 1    | 0  | 0       | 1-2\nIMUL %RAX,%R8                            | 1     | 0     | 0    | 0    | 0    | 1     | 0    | 0  | 5       | 2\nADD %RDX,%R8                             | 1     | 0     | 0    | 0    | 0    | 0.50  | 0.50 | 0  | 1       | 0.50\nADD %R8,%RAX                             | 1     | 0     | 0    | 0    | 0    | 0.50  | 0.50 | 0  | 1       | 0.50\nCMP %RAX,%R8                             | 1     | 0     | 0    | 0    | 0    | 0.50  | 0.50 | 0  | 1       | 0.50\nJAE 3c37 <special_cells._omp_fn.0+0x287> | 1     | 0     | 0    | 0    | 0    | 0     | 1    | 0  | 0       | 1-2\nMOV 0xc(%RBX),%ESI                       | 1     | 0     | 0    | 1    | 0    | 0     | 0    | 0  | 4       | 1\nLEA 0x1(%R8),%R8                         | 1     | 0     | 0    | 0    | 0    | 0.50  | 0.50 | 0  | 1       | 0.50\nVMOVSD 0x1bce(%RIP),%XMM6                | 1     | 0     | 0    | 0.50 | 0.50 | 0     | 0    | 0  | 5       | 0.50\nLEA 0x1(%RAX),%R10                       | 1     | 0     | 0    | 0    | 0    | 0.50  | 0.50 | 0  | 1       | 0.50\nMOV 0x10(%R13),%R11                      | 1     | 0     | 0    | 1    | 0    | 0     | 0    | 0  | 4       | 1\nLEA (%RSI),%R9D                          | 1     | 0     | 0    | 0    | 0    | 0.50  | 0.50 | 0  | 1       | 0.50\nLEA (%RSI),%RDI                          | 1     | 0     | 0    | 0    | 0    | 0.50  | 0.50 | 0  | 1       | 0.50\nLEA -0x1(%RSI),%RSI                      | 1     | 0     | 0    | 0    | 0    | 0.50  | 0.50 | 0  | 1       | 0.50\nSUB $0x1,%R9D                            | 1     | 0     | 0    | 0    | 0    | 0.50  | 0.50 | 0  | 1       | 0.50\nVCVTUSI2SD %RSI,%XMM5,%XMM5              | 1     | 1     | 0    | 0    | 0    | 0     | 0    | 0  | 5       | 1\nCMP $0x1,%R9D                            | 1     | 0     | 0    | 0    | 0    | 0.50  | 0.50 | 0  | 1       | 0.50\nMOV 0x8(%R13),%R13                       | 1     | 0     | 0    | 1    | 0    | 0     | 0    | 0  | 4       | 1\nVMULSD %XMM5,%XMM5,%XMM0                 | 1     | 0.50  | 0.50 | 0    | 0    | 0     | 0    | 0  | 6       | 0.50\nVDIVSD %XMM0,%XMM6,%XMM6                 | 3     | 1     | 0    | 0    | 0    | 0     | 0    | 0  | 40-42   | 12-32\nJBE 3c37 <special_cells._omp_fn.0+0x287> | 1     | 0     | 0    | 0    | 0    | 0     | 1    | 0  | 0       | 1-2\nVMOVSD 0x1bd4(%RIP),%XMM3                | 1     | 0     | 0    | 0.50 | 0.50 | 0     | 0    | 0  | 5       | 0.50\nLEA (%RDI,%RDI,8),%EBP                   | 1     | 0     | 0    | 0    | 0    | 0.50  | 0.50 | 0  | 1       | 0.50\nLEA (%RBP),%EDI                          | 1     | 0     | 0    | 0    | 0    | 0.50  | 0.50 | 0  | 1       | 0.50\nVMOVSD %XMM3,%XMM3,%XMM4                 | 1     | 1     | 0    | 0    | 0    | 0     | 0    | 0  | 2       | 1\nIMUL %R8D,%EDI                           | 1     | 0     | 0    | 0    | 0    | 1     | 0    | 0  | 3       | 1\nMOV (%R13),%RSI                          | 1     | 0     | 0    | 1    | 0    | 0     | 0    | 0  | 4       | 1\nMOV 0xc(%R13),%R12D                      | 1     | 0     | 0    | 1    | 0    | 0     | 0    | 0  | 4       | 1\nVMOVSD 0x1bbe(%RIP),%XMM9                | 1     | 0     | 0    | 0.50 | 0.50 | 0     | 0    | 0  | 5       | 0.50\nVMOVSD 0x1b7e(%RIP),%XMM8                | 1     | 0     | 0    | 0.50 | 0.50 | 0     | 0    | 0  | 5       | 0.50\nVMOVSD 0x1bb6(%RIP),%XMM7                | 1     | 0     | 0    | 0.50 | 0.50 | 0     | 0    | 0  | 5       | 0.50\nNOPW %CS:(%RAX,%RAX,1)                   | 1     | 0     | 0    | 0    | 0    | 0.50  | 0.50 | 0  | 0       | 0.50\nNOPL (%RAX)                              | 1     | 0     | 0    | 0    | 0    | 0.50  | 0.50 | 0  | 0       | 0.50\nNOPW (%RAX,%RAX,1)                       | 1     | 0     | 0    | 0    | 0    | 0.50  | 0.50 | 0  | 0       | 0.50\nLEA 0x8(%RSP),%RSP                       | 1     | 0     | 0    | 0    | 0    | 0.50  | 0.50 | 0  | 1       | 0.50\nPOP %RBX                                 | 2     | 0     | 0    | 0.50 | 0.50 | 0     | 0    | 1  | 0       | 1\nPOP %RBP                                 | 2     | 0     | 0    | 0.50 | 0.50 | 0     | 0    | 1  | 0       | 1\nPOP %R12                                 | 2     | 0     | 0    | 0.50 | 0.50 | 0     | 0    | 1  | 0       | 1\nPOP %R13                                 | 2     | 0     | 0    | 0.50 | 0.50 | 0     | 0    | 1  | 0       | 1\nRET\nNOPL (%RAX,%RAX,1)                       | 1     | 0     | 0    | 0    | 0    | 0.50  | 0.50 | 0  | 0       | 0.50\nXCHG %AX,%AX                             | 1     | 0     | 0    | 0    | 0    | 0.50  | 0.50 | 0  | 0       | 0.50\nNOPL (%RAX,%RAX,1)                       | 1     | 0     | 0    | 0    | 0    | 0.50  | 0.50 | 0  | 0       | 0.50\nNOPL (%RAX)                              | 1     | 0     | 0    | 0    | 0    | 0.50  | 0.50 | 0  | 0       | 0.50\nNOPL (%RAX,%RAX,1)                       | 1     | 0     | 0    | 0    | 0    | 0.50  | 0.50 | 0  | 0       | 0.50\nNOP                                      | 1     | 0     | 0    | 0    | 0    | 0.50  | 0.50 | 0  | 0       | 0.50\nADD $0x1,%RAX                            | 1     | 0     | 0    | 0    | 0    | 0.50  | 0.50 | 0  | 1       | 0.50\nXOR %EDX,%EDX\nJMP 39f8 <special_cells._omp_fn.0+0x48>  | 1     | 0     | 0    | 0    | 0    | 0     | 1    | 0  | 0       | 2\nNOPL (%RAX)                              | 1     | 0     | 0    | 0    | 0    | 0.50  | 0.50 | 0  | 0       | 0.50\n",
        },
      },
      header = {
        "Warnings:\nDetected a function call instruction: ignoring called function instructions.\nRerun with --follow-calls=append to include them to analysis  or with --follow-calls=inline to simulate inlining.",
        "0% of peak computational performance is used (0.02 out of 32.00 FLOP per cycle (GFLOPS @ 1GHz))",
      },
      brief = {
      },
      gain = {
        {
          workaround = " - Try to reorganize arrays of structures to structures of arrays\n - Consider to permute loops (see vectorization gain report)\n",
          title = "Code clean check",
          txt = "Detected a slowdown caused by scalar integer instructions (typically used for address computation).\nBy removing them, you can lower the cost of an iteration from 127.00 to 32.00 cycles (3.97x speedup).",
        },
        {
          workaround = " - Try another compiler or update/tune your current one\n - Make array accesses unit-stride:\n  * If your function streams arrays of structures (AoS), try to use structures of arrays instead (SoA):\nfor(i) a[i].x = b[i].x; (slow, non stride 1) => for(i) a.x[i] = b.x[i]; (fast, stride 1)\n",
          details = "All SSE/AVX instructions are used in scalar version (process only one data element in vector registers).\nSince your execution units are vector units, only a vectorized function can use their full power.\n",
          title = "Vectorization",
          txt = "Your function is not vectorized.\nOnly 10% of vector register length is used (average across all SSE/AVX instructions).\nBy vectorizing your function, you can lower the cost of an iteration from 127.00 to 15.87 cycles (8.00x speedup).",
        },
        {
          workaround = " - Reduce the number of division or square root instructions:\n  * If denominator is constant over iterations, use reciprocal (replace x/y with x*(1/y)). Check precision impact. This will be done by your compiler with ffast-math or Ofast\n - Check whether you really need double precision. If not, switch to single precision to speedup execution\n",
          title = "Execution units bottlenecks",
          txt = "Performance is limited by execution of divide and square root operations (the divide/square root unit is a bottleneck).\n\nBy removing all these bottlenecks, you can lower the cost of an iteration from 127.00 to 39.00 cycles (3.26x speedup).\n",
        },
      },
      potential = {
        {
          title = "Expensive FP math instructions/calls",
          txt = "Detected performance impact from expensive FP math instructions/calls.\nBy removing/reexpressing them, you can lower the cost of an iteration from 127.00 to 39.00 cycles (3.26x speedup).",
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
          workaround = "Avoid mixing data with different types. In particular, check if the type of constants is the same as array elements.",
          details = " - VCVTUSI2SD (INT32/64 to FP64, scalar): 1 occurrences\n",
          title = "Conversion instructions",
          txt = "Detected expensive conversion instructions.",
        },
        {
          title = "Type of elements and instruction set",
          txt = "2 SSE or AVX instructions are processing arithmetic or math operations on double precision FP elements in scalar mode (one at a time).\n",
        },
        {
          title = "Matching between your function (in the source code) and the binary function",
          txt = "The binary function is composed of 2 FP arithmetical operations:\n - 1: multiply\n - 1: divide\nThe binary function is loading 84 bytes (10 double precision FP elements).",
        },
        {
          title = "Arithmetic intensity",
          txt = "Arithmetic intensity is 0.02 FP operations per loaded or stored byte.",
        },
      },
      expert = {
        {
          title = "General properties",
          txt = "nb instructions    : 71\nloop length        : 277\nused x86 registers : 13\nused mmx registers : 0\nused xmm registers : 8\nused ymm registers : 0\nused zmm registers : 0\nnb stack references: 4\n",
        },
        {
          title = "Front-end",
          txt = "MACRO FUSION NOT POSSIBLE\ninstruction fetch    : 18.00 cycles\ninstruction queue    : 35.50 cycles\ndecoding             : 35.50 cycles\nmicro-operation queue: 39.00 cycles\nfront end            : 39.00 cycles\n",
        },
        {
          title = "Back-end",
          txt = "       | P0    | P1   | P2   | P3   | P4    | P5    | P6\n----------------------------------------------------------\nuops   | 19.50 | 1.00 | 8.00 | 8.00 | 28.50 | 28.00 | 4.00\ncycles | 19.50 | 1.00 | 8.00 | 8.00 | 28.50 | 28.00 | 4.00\n\nCycles executing div or sqrt instructions: 34.00-127.00\n",
        },
        {
          title = "Cycles summary",
          txt = "Front-end : 39.00\nDispatch  : 28.50\nDIV/SQRT  : 34.00-127.00\nOverall L1: 39.00-127.00\n",
        },
        {
          title = "Vectorization ratios",
          txt = "INT\nall    : 0%\nload   : 0%\nstore  : NA (no store vectorizable/vectorized instructions)\nmul    : NA (no mul vectorizable/vectorized instructions)\nadd-sub: 0%\nfma    : NA (no fma vectorizable/vectorized instructions)\nother  : 0%\nFP\nall     : 0%\nload    : 0%\nstore   : NA (no store vectorizable/vectorized instructions)\nmul     : 0%\nadd-sub : NA (no add-sub vectorizable/vectorized instructions)\nfma     : NA (no fma vectorizable/vectorized instructions)\ndiv/sqrt: 0%\nother   : 0%\nINT+FP\nall     : 0%\nload    : 0%\nstore   : NA (no store vectorizable/vectorized instructions)\nmul     : 0%\nadd-sub : 0%\nfma     : NA (no fma vectorizable/vectorized instructions)\ndiv/sqrt: 0%\nother   : 0%\n",
        },
        {
          title = "Vector efficiency ratios",
          txt = "INT\nall    : 9%\nload   : 9%\nstore  : NA (no store vectorizable/vectorized instructions)\nmul    : NA (no mul vectorizable/vectorized instructions)\nadd-sub: 6%\nfma    : NA (no fma vectorizable/vectorized instructions)\nother  : 9%\nFP\nall     : 12%\nload    : 12%\nstore   : NA (no store vectorizable/vectorized instructions)\nmul     : 12%\nadd-sub : NA (no add-sub vectorizable/vectorized instructions)\nfma     : NA (no fma vectorizable/vectorized instructions)\ndiv/sqrt: 12%\nother   : 12%\nINT+FP\nall     : 10%\nload    : 11%\nstore   : NA (no store vectorizable/vectorized instructions)\nmul     : 12%\nadd-sub : 6%\nfma     : NA (no fma vectorizable/vectorized instructions)\ndiv/sqrt: 12%\nother   : 9%\n",
        },
        {
          title = "Cycles and memory resources usage",
          txt = "Assuming all data fit into the L1 cache, each call to the function takes 127.00 cycles. At this rate:\n - 0% of peak load performance is reached (0.66 out of 128.00 bytes loaded per cycle (GB/s @ 1GHz))\n",
        },
        {
          title = "Front-end bottlenecks",
          txt = "Found no such bottlenecks.",
        },
        {
          title = "ASM code",
          txt = "In the binary file, the address of the function is: 39b0\n\nInstruction                              | Nb FU | P0    | P1   | P2   | P3   | P4    | P5   | P6 | Latency | Recip. throughput\n-------------------------------------------------------------------------------------------------------------------------------\nENDBR64\nPUSH %R13                                | 1     | 0     | 0    | 0    | 0    | 1     | 1    | 0  | 0       | 1\nPUSH %R12                                | 1     | 0     | 0    | 0    | 0    | 1     | 1    | 0  | 0       | 1\nPUSH %RBP                                | 1     | 0     | 0    | 0    | 0    | 1     | 1    | 0  | 0       | 1\nPUSH %RBX                                | 1     | 0     | 0    | 0    | 0    | 1     | 1    | 0  | 0       | 1\nLEA -0x8(%RSP),%RSP                      | 1     | 0     | 0    | 0    | 0    | 0.50  | 0.50 | 0  | 1       | 0.50\nMOV (%RDI),%RBX                          | 1     | 0     | 0    | 1    | 0    | 0     | 0    | 0  | 4       | 1\nMOV 0x8(%RBX),%EAX                       | 1     | 0     | 0    | 1    | 0    | 0     | 0    | 0  | 4       | 1\nMOV %EAX,%EBP                            | 1     | 0     | 0    | 0    | 0    | 0.50  | 0.50 | 0  | 0       | 0.50\nSUB $0x1,%EBP                            | 1     | 0     | 0    | 0    | 0    | 0.50  | 0.50 | 0  | 1       | 0.50\nCMP $0x1,%EBP                            | 1     | 0     | 0    | 0    | 0    | 0.50  | 0.50 | 0  | 1       | 0.50\nJBE 3c37 <special_cells._omp_fn.0+0x287> | 1     | 0     | 0    | 0    | 0    | 0     | 1    | 0  | 0       | 1-2\nLEA (%RDI),%R13                          | 1     | 0     | 0    | 0    | 0    | 0.50  | 0.50 | 0  | 1       | 0.50\nCALL 1210 <.plt.sec@start+0x20>          | 1     | 0     | 0    | 0    | 0    | 0.50  | 0.50 | 0  | 0       | 2\nMOVSXD %EAX,%R12                         | 1     | 0     | 0    | 0    | 0    | 1     | 0    | 0  | 1       | 1\nCALL 12b0 <.plt.sec@start+0xc0>          | 1     | 0     | 0    | 0    | 0    | 0.50  | 0.50 | 0  | 0       | 2\nMOVSXD %EAX,%R8                          | 1     | 0     | 0    | 0    | 0    | 1     | 0    | 0  | 1       | 1\nXOR %EDX,%EDX\nLEA -0x1(%RBP),%RAX                      | 1     | 0     | 0    | 0    | 0    | 0.50  | 0.50 | 0  | 1       | 0.50\nDIV %R12                                 | 23    | 11.50 | 0    | 0    | 0    | 11.50 | 0    | 0  | 39-95   | 22-95\nCMP %RDX,%R8                             | 1     | 0     | 0    | 0    | 0    | 0.50  | 0.50 | 0  | 1       | 0.50\nJB 3ee2 <special_cells._omp_fn.0+0x532>  | 1     | 0     | 0    | 0    | 0    | 0     | 1    | 0  | 0       | 1-2\nIMUL %RAX,%R8                            | 1     | 0     | 0    | 0    | 0    | 1     | 0    | 0  | 5       | 2\nADD %RDX,%R8                             | 1     | 0     | 0    | 0    | 0    | 0.50  | 0.50 | 0  | 1       | 0.50\nADD %R8,%RAX                             | 1     | 0     | 0    | 0    | 0    | 0.50  | 0.50 | 0  | 1       | 0.50\nCMP %RAX,%R8                             | 1     | 0     | 0    | 0    | 0    | 0.50  | 0.50 | 0  | 1       | 0.50\nJAE 3c37 <special_cells._omp_fn.0+0x287> | 1     | 0     | 0    | 0    | 0    | 0     | 1    | 0  | 0       | 1-2\nMOV 0xc(%RBX),%ESI                       | 1     | 0     | 0    | 1    | 0    | 0     | 0    | 0  | 4       | 1\nLEA 0x1(%R8),%R8                         | 1     | 0     | 0    | 0    | 0    | 0.50  | 0.50 | 0  | 1       | 0.50\nVMOVSD 0x1bce(%RIP),%XMM6                | 1     | 0     | 0    | 0.50 | 0.50 | 0     | 0    | 0  | 5       | 0.50\nLEA 0x1(%RAX),%R10                       | 1     | 0     | 0    | 0    | 0    | 0.50  | 0.50 | 0  | 1       | 0.50\nMOV 0x10(%R13),%R11                      | 1     | 0     | 0    | 1    | 0    | 0     | 0    | 0  | 4       | 1\nLEA (%RSI),%R9D                          | 1     | 0     | 0    | 0    | 0    | 0.50  | 0.50 | 0  | 1       | 0.50\nLEA (%RSI),%RDI                          | 1     | 0     | 0    | 0    | 0    | 0.50  | 0.50 | 0  | 1       | 0.50\nLEA -0x1(%RSI),%RSI                      | 1     | 0     | 0    | 0    | 0    | 0.50  | 0.50 | 0  | 1       | 0.50\nSUB $0x1,%R9D                            | 1     | 0     | 0    | 0    | 0    | 0.50  | 0.50 | 0  | 1       | 0.50\nVCVTUSI2SD %RSI,%XMM5,%XMM5              | 1     | 1     | 0    | 0    | 0    | 0     | 0    | 0  | 5       | 1\nCMP $0x1,%R9D                            | 1     | 0     | 0    | 0    | 0    | 0.50  | 0.50 | 0  | 1       | 0.50\nMOV 0x8(%R13),%R13                       | 1     | 0     | 0    | 1    | 0    | 0     | 0    | 0  | 4       | 1\nVMULSD %XMM5,%XMM5,%XMM0                 | 1     | 0.50  | 0.50 | 0    | 0    | 0     | 0    | 0  | 6       | 0.50\nVDIVSD %XMM0,%XMM6,%XMM6                 | 3     | 1     | 0    | 0    | 0    | 0     | 0    | 0  | 40-42   | 12-32\nJBE 3c37 <special_cells._omp_fn.0+0x287> | 1     | 0     | 0    | 0    | 0    | 0     | 1    | 0  | 0       | 1-2\nVMOVSD 0x1bd4(%RIP),%XMM3                | 1     | 0     | 0    | 0.50 | 0.50 | 0     | 0    | 0  | 5       | 0.50\nLEA (%RDI,%RDI,8),%EBP                   | 1     | 0     | 0    | 0    | 0    | 0.50  | 0.50 | 0  | 1       | 0.50\nLEA (%RBP),%EDI                          | 1     | 0     | 0    | 0    | 0    | 0.50  | 0.50 | 0  | 1       | 0.50\nVMOVSD %XMM3,%XMM3,%XMM4                 | 1     | 1     | 0    | 0    | 0    | 0     | 0    | 0  | 2       | 1\nIMUL %R8D,%EDI                           | 1     | 0     | 0    | 0    | 0    | 1     | 0    | 0  | 3       | 1\nMOV (%R13),%RSI                          | 1     | 0     | 0    | 1    | 0    | 0     | 0    | 0  | 4       | 1\nMOV 0xc(%R13),%R12D                      | 1     | 0     | 0    | 1    | 0    | 0     | 0    | 0  | 4       | 1\nVMOVSD 0x1bbe(%RIP),%XMM9                | 1     | 0     | 0    | 0.50 | 0.50 | 0     | 0    | 0  | 5       | 0.50\nVMOVSD 0x1b7e(%RIP),%XMM8                | 1     | 0     | 0    | 0.50 | 0.50 | 0     | 0    | 0  | 5       | 0.50\nVMOVSD 0x1bb6(%RIP),%XMM7                | 1     | 0     | 0    | 0.50 | 0.50 | 0     | 0    | 0  | 5       | 0.50\nNOPW %CS:(%RAX,%RAX,1)                   | 1     | 0     | 0    | 0    | 0    | 0.50  | 0.50 | 0  | 0       | 0.50\nNOPL (%RAX)                              | 1     | 0     | 0    | 0    | 0    | 0.50  | 0.50 | 0  | 0       | 0.50\nNOPW (%RAX,%RAX,1)                       | 1     | 0     | 0    | 0    | 0    | 0.50  | 0.50 | 0  | 0       | 0.50\nLEA 0x8(%RSP),%RSP                       | 1     | 0     | 0    | 0    | 0    | 0.50  | 0.50 | 0  | 1       | 0.50\nPOP %RBX                                 | 2     | 0     | 0    | 0.50 | 0.50 | 0     | 0    | 1  | 0       | 1\nPOP %RBP                                 | 2     | 0     | 0    | 0.50 | 0.50 | 0     | 0    | 1  | 0       | 1\nPOP %R12                                 | 2     | 0     | 0    | 0.50 | 0.50 | 0     | 0    | 1  | 0       | 1\nPOP %R13                                 | 2     | 0     | 0    | 0.50 | 0.50 | 0     | 0    | 1  | 0       | 1\nRET\nNOPL (%RAX,%RAX,1)                       | 1     | 0     | 0    | 0    | 0    | 0.50  | 0.50 | 0  | 0       | 0.50\nXCHG %AX,%AX                             | 1     | 0     | 0    | 0    | 0    | 0.50  | 0.50 | 0  | 0       | 0.50\nNOPL (%RAX,%RAX,1)                       | 1     | 0     | 0    | 0    | 0    | 0.50  | 0.50 | 0  | 0       | 0.50\nNOPL (%RAX)                              | 1     | 0     | 0    | 0    | 0    | 0.50  | 0.50 | 0  | 0       | 0.50\nNOPL (%RAX,%RAX,1)                       | 1     | 0     | 0    | 0    | 0    | 0.50  | 0.50 | 0  | 0       | 0.50\nNOP                                      | 1     | 0     | 0    | 0    | 0    | 0.50  | 0.50 | 0  | 0       | 0.50\nADD $0x1,%RAX                            | 1     | 0     | 0    | 0    | 0    | 0.50  | 0.50 | 0  | 1       | 0.50\nXOR %EDX,%EDX\nJMP 39f8 <special_cells._omp_fn.0+0x48>  | 1     | 0     | 0    | 0    | 0    | 0     | 1    | 0  | 0       | 2\nNOPL (%RAX)                              | 1     | 0     | 0    | 0    | 0    | 0.50  | 0.50 | 0  | 0       | 0.50\n",
        },
      },
      header = {
        "Warnings:\nDetected a function call instruction: ignoring called function instructions.\nRerun with --follow-calls=append to include them to analysis  or with --follow-calls=inline to simulate inlining.",
        "0% of peak computational performance is used (0.02 out of 32.00 FLOP per cycle (GFLOPS @ 1GHz))",
      },
      brief = {
      },
      gain = {
        {
          workaround = " - Try to reorganize arrays of structures to structures of arrays\n - Consider to permute loops (see vectorization gain report)\n",
          title = "Code clean check",
          txt = "Detected a slowdown caused by scalar integer instructions (typically used for address computation).\nBy removing them, you can lower the cost of an iteration from 127.00 to 32.00 cycles (3.97x speedup).",
        },
        {
          workaround = " - Try another compiler or update/tune your current one\n - Make array accesses unit-stride:\n  * If your function streams arrays of structures (AoS), try to use structures of arrays instead (SoA):\nfor(i) a[i].x = b[i].x; (slow, non stride 1) => for(i) a.x[i] = b.x[i]; (fast, stride 1)\n",
          details = "All SSE/AVX instructions are used in scalar version (process only one data element in vector registers).\nSince your execution units are vector units, only a vectorized function can use their full power.\n",
          title = "Vectorization",
          txt = "Your function is not vectorized.\nOnly 10% of vector register length is used (average across all SSE/AVX instructions).\nBy vectorizing your function, you can lower the cost of an iteration from 127.00 to 15.87 cycles (8.00x speedup).",
        },
        {
          workaround = " - Reduce the number of division or square root instructions:\n  * If denominator is constant over iterations, use reciprocal (replace x/y with x*(1/y)). Check precision impact. This will be done by your compiler with ffast-math or Ofast\n - Check whether you really need double precision. If not, switch to single precision to speedup execution\n",
          title = "Execution units bottlenecks",
          txt = "Performance is limited by execution of divide and square root operations (the divide/square root unit is a bottleneck).\n\nBy removing all these bottlenecks, you can lower the cost of an iteration from 127.00 to 39.00 cycles (3.26x speedup).\n",
        },
      },
      potential = {
        {
          title = "Expensive FP math instructions/calls",
          txt = "Detected performance impact from expensive FP math instructions/calls.\nBy removing/reexpressing them, you can lower the cost of an iteration from 127.00 to 39.00 cycles (3.26x speedup).",
        },
      },
    },
  common = {
    header = {
      "The function is defined in:\n - /users/user2207/lbm_opt/include/lbm_struct.h:130,148\n - /users/user2207/lbm_opt/src/lbm_phys.c:123,129,141-145,161-168,178-180,187-192,200\n\n",
      "Warnings:\nIgnoring paths for analysis",
    },
  },
}
