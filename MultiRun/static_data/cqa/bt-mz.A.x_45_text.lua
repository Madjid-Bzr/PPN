_cqa_text_report = {
  paths = {
    {
      hint = {
        {
          details = "Calling (and then returning from) a function prevents many compiler optimizations (like vectorization), breaks control flow (which reduces pipeline performance) and executes extra instructions to save/restore the registers used inside it, which is very expensive (dozens of cycles). Consider to inline small functions.\n - exact_solution: 1 occurrences\n",
          title = "CALL instructions",
          txt = "Detected function call instructions.\n",
        },
        {
          details = "These instructions generate more than one micro-operation and only one of them can be decoded during a cycle and the extra micro-operations increase pressure on execution units.\n - VCVTSI2SD: 1 occurrences\n - VZEROUPPER: 1 occurrences\n",
          title = "Complex instructions",
          txt = "Detected COMPLEX INSTRUCTIONS.\n",
        },
        {
          workaround = " - Try to reorganize arrays of structures to structures of arrays\n - Consider to permute loops (see vectorization gain report)\n",
          details = " - Constant unknown stride: 1 occurrence(s)\n - Constant non-unit stride: 2 occurrence(s)\nNon-unit stride (uncontiguous) accesses are not efficiently using data caches\n",
          title = "Slow data structures access",
          txt = "Detected data structures (typically arrays) that cannot be efficiently read/written",
        },
        {
          workaround = "Avoid mixing data with different types. In particular, check if the type of constants is the same as array elements.",
          details = " - VCVTSI2SD (INT32/64 to FP64, scalar): 1 occurrences\n",
          title = "Conversion instructions",
          txt = "Detected expensive conversion instructions.",
        },
        {
          title = "Type of elements and instruction set",
          txt = "17 SSE or AVX instructions are processing arithmetic or math operations on double precision FP elements in scalar mode (one at a time).\n",
        },
        {
          title = "Matching between your loop (in the source code) and the binary loop",
          txt = "The binary loop is composed of 17 FP arithmetical operations:\n - 4: addition or subtraction\n - 12: multiply\n - 1: divide\nThe binary loop is loading 192 bytes (24 double precision FP elements).\nThe binary loop is storing 104 bytes (13 double precision FP elements).",
        },
        {
          title = "Arithmetic intensity",
          txt = "Arithmetic intensity is 0.06 FP operations per loaded or stored byte.",
        },
        {
          workaround = "Unroll your loop if trip count is significantly higher than target unroll factor and if some data references are common to consecutive iterations. This can be done manually. Or by recompiling with -funroll-loops and/or -floop-unroll-and-jam.",
          title = "Unroll opportunity",
          txt = "Loop is potentially data access bound.",
        },
      },
      expert = {
        {
          title = "General properties",
          txt = "nb instructions    : 59\nnb uops            : 64\nloop length        : 385\nused x86 registers : 11\nused mmx registers : 0\nused xmm registers : 16\nused ymm registers : 2\nused zmm registers : 0\nnb stack references: 11\nADD-SUB / MUL ratio: 0.33\n",
        },
        {
          title = "Front-end",
          txt = "ASSUMED MACRO FUSION\nFIT IN UOP CACHE\nmicro-operation queue: 16.50 cycles\nfront end            : 16.50 cycles\n",
        },
        {
          title = "Back-end",
          txt = "       | P0    | P1   | P2    | P3    | P4    | P5\n----------------------------------------------------\nuops   | 14.00 | 7.33 | 16.00 | 16.00 | 14.00 | 7.67\ncycles | 14.00 | 7.33 | 16.00 | 16.00 | 14.00 | 7.67\n\nCycles executing div or sqrt instructions: 10.00-22.00\nLongest recurrence chain latency (RecMII): 1.00\n",
        },
        {
          title = "Cycles summary",
          txt = "Front-end : 16.50\nDispatch  : 16.00\nDIV/SQRT  : 10.00-22.00\nData deps.: 1.00\nOverall L1: 16.50-22.00\n",
        },
        {
          title = "Vectorization ratios",
          txt = "INT\nall    : 12%\nload   : 0%\nstore  : NA (no store vectorizable/vectorized instructions)\nmul    : NA (no mul vectorizable/vectorized instructions)\nadd-sub: NA (no add-sub vectorizable/vectorized instructions)\nfma    : NA (no fma vectorizable/vectorized instructions)\nother  : 25%\nFP\nall     : 7%\nload    : 20%\nstore   : 0%\nmul     : 0%\nadd-sub : 0%\nfma     : NA (no fma vectorizable/vectorized instructions)\ndiv/sqrt: 0%\nother   : 100%\nINT+FP\nall     : 8%\nload    : 14%\nstore   : 0%\nmul     : 0%\nadd-sub : 0%\nfma     : NA (no fma vectorizable/vectorized instructions)\ndiv/sqrt: 0%\nother   : 40%\n",
        },
        {
          title = "Vector efficiency ratios",
          txt = "INT\nall    : 53%\nload   : 50%\nstore  : NA (no store vectorizable/vectorized instructions)\nmul    : NA (no mul vectorizable/vectorized instructions)\nadd-sub: NA (no add-sub vectorizable/vectorized instructions)\nfma    : NA (no fma vectorizable/vectorized instructions)\nother  : 56%\nFP\nall     : 29%\nload    : 40%\nstore   : 25%\nmul     : 25%\nadd-sub : 25%\nfma     : NA (no fma vectorizable/vectorized instructions)\ndiv/sqrt: 25%\nother   : 50%\nINT+FP\nall     : 33%\nload    : 42%\nstore   : 25%\nmul     : 25%\nadd-sub : 25%\nfma     : NA (no fma vectorizable/vectorized instructions)\ndiv/sqrt: 25%\nother   : 55%\n",
        },
        {
          title = "Cycles and memory resources usage",
          txt = "Assuming all data fit into the L1 cache, each iteration of the binary loop takes 22.00 cycles. At this rate:\n - 27% of peak load performance is reached (8.73 out of 32.00 bytes loaded per cycle (GB/s @ 1GHz))\n - 29% of peak store performance is reached (4.73 out of 16.00 bytes stored per cycle (GB/s @ 1GHz))\n",
        },
        {
          title = "Front-end bottlenecks",
          txt = "Found no such bottlenecks.",
        },
        {
          title = "ASM code",
          txt = "In the binary file, the address of the loop is: 7960\n\nInstruction                           | Nb FU | P0   | P1   | P2   | P3   | P4 | P5   | Latency | Recip. throughput\n-------------------------------------------------------------------------------------------------------------------\nVXORPD %XMM7,%XMM7,%XMM7              | 1     | 0    | 0    | 0    | 0    | 0  | 0    | 0       | 0.25\nVCVTSI2SD %EBX,%XMM7,%XMM3            | 2     | 1    | 1    | 0    | 0    | 0  | 0    | 4       | 1.50\nMOV 0x138(%RSP),%RDX                  | 1     | 0    | 0    | 0.50 | 0.50 | 0  | 0    | 2       | 0.50\nMOV %R14,%RCX                         | 1     | 0.33 | 0.33 | 0    | 0    | 0  | 0.33 | 1       | 0.33\nVMULSD 0x24fcd(%RIP),%XMM3,%XMM5      | 1     | 1    | 0    | 0.50 | 0.50 | 0  | 0    | 5       | 1\nMOV 0x130(%RSP),%RSI                  | 1     | 0    | 0    | 0.50 | 0.50 | 0  | 0    | 2       | 0.50\nMOV 0x128(%RSP),%RDI                  | 1     | 0    | 0    | 0.50 | 0.50 | 0  | 0    | 2       | 0.50\nVMOVSD %XMM5,0x160(%RSP)              | 1     | 0    | 0    | 0.50 | 0.50 | 1  | 0    | 3       | 1\nVZEROUPPER                            | 4     | 0    | 0    | 0    | 0    | 0  | 0    | 2       | 1\nCALL 7120 <exact_solution_>           | 3     | 0    | 0    | 0.50 | 0.50 | 1  | 1    | 0       | 2\nADD $0x8,%R12                         | 1     | 0.33 | 0.33 | 0    | 0    | 0  | 0.33 | 1       | 0.33\nMOV %RBX,%R8                          | 1     | 0.33 | 0.33 | 0    | 0    | 0  | 0.33 | 1       | 0.33\nVMOVSD 0x170(%RSP),%XMM12             | 1     | 0    | 0    | 0.50 | 0.50 | 0  | 0    | 3       | 0.50\nADD $0x8,%R13                         | 1     | 0.33 | 0.33 | 0    | 0    | 0  | 0.33 | 1       | 0.33\nVMOVSD 0x20a00(%RIP),%XMM0            | 1     | 0    | 0    | 0.50 | 0.50 | 0  | 0    | 3       | 0.50\nVMOVSD 0x178(%RSP),%XMM13             | 1     | 0    | 0    | 0.50 | 0.50 | 0  | 0    | 3       | 0.50\nVMOVSD %XMM12,-0x8(%R12)              | 1     | 0    | 0    | 0.50 | 0.50 | 1  | 0    | 3       | 1\nVDIVSD %XMM12,%XMM0,%XMM4             | 1     | 1    | 0    | 0    | 0    | 0  | 0    | 10-22   | 10-22\nMOV 0x20b04(%RIP),%RSI                | 1     | 0    | 0    | 0.50 | 0.50 | 0  | 0    | 2       | 0.50\nVMOVSD 0x180(%RSP),%XMM14             | 1     | 0    | 0    | 0.50 | 0.50 | 0  | 0    | 3       | 0.50\nVMOVSD %XMM13,0x1d0(%R12)             | 1     | 0    | 0    | 0.50 | 0.50 | 1  | 0    | 3       | 1\nVMOVSD 0x188(%RSP),%XMM15             | 1     | 0    | 0    | 0.50 | 0.50 | 0  | 0    | 3       | 0.50\nVMOVSD %XMM14,0x3a8(%R12)             | 1     | 0    | 0    | 0.50 | 0.50 | 1  | 0    | 3       | 1\nMOV 0x20adf(%RIP),%RAX                | 1     | 0    | 0    | 0.50 | 0.50 | 0  | 0    | 2       | 0.50\nVMOVSD %XMM15,0x580(%R12)             | 1     | 0    | 0    | 0.50 | 0.50 | 1  | 0    | 3       | 1\nVMOVSD 0x190(%RSP),%XMM11             | 1     | 0    | 0    | 0.50 | 0.50 | 0  | 0    | 3       | 0.50\nMOV 0x140(%RSP),%RDI                  | 1     | 0    | 0    | 0.50 | 0.50 | 0  | 0    | 2       | 0.50\nVMOVSD %XMM11,0x758(%R12)             | 1     | 0    | 0    | 0.50 | 0.50 | 1  | 0    | 3       | 1\nMOV %FS:,%RCX                         | 1     | 0    | 0    | 0.50 | 0.50 | 0  | 0    | 2       | 0.50\nLEA -0xf390(%RCX),%RCX                | 1     | 0.50 | 0.50 | 0    | 0    | 0  | 0    | 1       | 0.50\nVMULSD %XMM13,%XMM4,%XMM8             | 1     | 1    | 0    | 0    | 0    | 0  | 0    | 5       | 1\nVMULSD %XMM14,%XMM4,%XMM6             | 1     | 1    | 0    | 0    | 0    | 0  | 0    | 5       | 1\nVMULSD %XMM15,%XMM4,%XMM2             | 1     | 1    | 0    | 0    | 0    | 0  | 0    | 5       | 1\nVMULSD %XMM11,%XMM4,%XMM1             | 1     | 1    | 0    | 0    | 0    | 0  | 0    | 5       | 1\nVMOVAPD 0x20a2e(%RIP),%YMM4           | 1     | 0    | 0    | 0.50 | 0.50 | 0  | 0    | 4       | 1\nVMOVSD %XMM8,0x1d0(%R13)              | 1     | 0    | 0    | 0.50 | 0.50 | 1  | 0    | 3       | 1\nVMULSD %XMM13,%XMM8,%XMM12            | 1     | 1    | 0    | 0    | 0    | 0  | 0    | 5       | 1\nVMOVSD %XMM6,0x3a8(%R13)              | 1     | 0    | 0    | 0.50 | 0.50 | 1  | 0    | 3       | 1\nVMULSD %XMM14,%XMM6,%XMM13            | 1     | 1    | 0    | 0    | 0    | 0  | 0    | 5       | 1\nVMULSD %XMM8,%XMM8,%XMM9              | 1     | 1    | 0    | 0    | 0    | 0  | 0    | 5       | 1\nVMOVSD %XMM2,0x580(%R13)              | 1     | 0    | 0    | 0.50 | 0.50 | 1  | 0    | 3       | 1\nVMOVSD %XMM1,0x758(%R13)              | 1     | 0    | 0    | 0.50 | 0.50 | 1  | 0    | 3       | 1\nVMULSD %XMM6,%XMM6,%XMM10             | 1     | 1    | 0    | 0    | 0    | 0  | 0    | 5       | 1\nVMULSD %XMM15,%XMM2,%XMM15            | 1     | 1    | 0    | 0    | 0    | 0  | 0    | 5       | 1\nVMULSD %XMM2,%XMM2,%XMM3              | 1     | 1    | 0    | 0    | 0    | 0  | 0    | 5       | 1\nVADDSD %XMM13,%XMM12,%XMM14           | 1     | 0    | 1    | 0    | 0    | 0  | 0    | 3       | 1\nVMOVSD %XMM9,(%RDI,%RBX,8)            | 1     | 0    | 0    | 0.50 | 0.50 | 1  | 0    | 3       | 1\nVADDSD %XMM9,%XMM10,%XMM7             | 1     | 0    | 1    | 0    | 0    | 0  | 0    | 3       | 1\nVADDSD %XMM15,%XMM14,%XMM11           | 1     | 0    | 1    | 0    | 0    | 0  | 0    | 3       | 1\nVMULSD 0x20a3a(%RIP),%XMM11,%XMM0     | 1     | 1    | 0    | 0.50 | 0.50 | 0  | 0    | 5       | 1\nVADDSD %XMM3,%XMM7,%XMM5              | 1     | 0    | 1    | 0    | 0    | 0  | 0    | 3       | 1\nVMOVAPD 0x209e6(%RIP),%YMM7           | 1     | 0    | 0    | 0.50 | 0.50 | 0  | 0    | 4       | 1\nVMOVQ %RSI,%XMM3                      | 1     | 0.33 | 0.33 | 0    | 0    | 0  | 0.33 | 1       | 0.33\nVMOVSD %XMM5,-0x8(%R13)               | 1     | 0    | 0    | 0.50 | 0.50 | 1  | 0    | 3       | 1\nVMOVQ %RAX,%XMM5                      | 1     | 0.33 | 0.33 | 0    | 0    | 0  | 0.33 | 1       | 0.33\nVMOVSD %XMM0,(%RCX,%RBX,8)            | 1     | 0    | 0    | 0.50 | 0.50 | 1  | 0    | 3       | 1\nADD $0x1,%RBX                         | 1     | 0.33 | 0.33 | 0    | 0    | 0  | 0.33 | 1       | 0.33\nCMP 0x148(%RSP),%R8                   | 1     | 0.33 | 0.33 | 0.50 | 0.50 | 0  | 0.33 | 1       | 0.50\nJNE 7960 <exact_rhs_._omp_fn.0+0x610> | 1     | 0    | 0    | 0    | 0    | 0  | 1    | 0       | 1-2\n",
        },
      },
      header = {
        "Warnings:\nDetected a function call instruction: ignoring called function instructions.\nRerun with --follow-calls=append to include them to analysis  or with --follow-calls=inline to simulate inlining.",
        "9% of peak computational performance is used (0.77 out of 8.00 FLOP per cycle (GFLOPS @ 1GHz))",
      },
      brief = {
      },
      gain = {
        {
          workaround = " - Try another compiler or update/tune your current one:\n  * recompile with fassociative-math (included in Ofast or ffast-math) to extend loop vectorization to FP reductions.\n - Remove inter-iterations dependences from your loop and make it unit-stride:\n  * If your arrays have 2 or more dimensions, check whether elements are accessed contiguously and, otherwise, try to permute loops accordingly:\nFortran storage order is column-major: do i do j a(i,j) = b(i,j) (slow, non stride 1) => do i do j a(j,i) = b(i,j) (fast, stride 1)\n  * If your loop streams arrays of structures (AoS), try to use structures of arrays instead (SoA):\ndo i a(i)%x = b(i)%x (slow, non stride 1) => do i a%x(i) = b%x(i) (fast, stride 1)\n",
          details = "Store and arithmetical SSE/AVX instructions are used in scalar version (process only one data element in vector registers).\nSince your execution units are vector units, only a vectorized loop can use their full power.\n",
          title = "Vectorization",
          txt = "Your loop is probably not vectorized.\nOnly 33% of vector register length is used (average across all SSE/AVX instructions).\nBy vectorizing your loop, you can lower the cost of an iteration from 22.00 to 11.00 cycles (2.00x speedup).",
        },
        {
          workaround = " - Reduce the number of division or square root instructions:\n  * If denominator is constant over iterations, use reciprocal (replace x/y with x*(1/y)). Check precision impact. This will be done by your compiler with ffast-math or Ofast\n - Check whether you really need double precision. If not, switch to single precision to speedup execution\n",
          title = "Execution units bottlenecks",
          txt = "Performance is limited by execution of divide and square root operations (the divide/square root unit is a bottleneck).\n\nBy removing all these bottlenecks, you can lower the cost of an iteration from 22.00 to 16.50 cycles (1.33x speedup).\n",
        },
      },
      potential = {
        {
          title = "Expensive FP math instructions/calls",
          txt = "Detected performance impact from expensive FP math instructions/calls.\nBy removing/reexpressing them, you can lower the cost of an iteration from 22.00 to 16.50 cycles (1.33x speedup).",
        },
      },
    },
  },
  AVG = {
      hint = {
        {
          details = "Calling (and then returning from) a function prevents many compiler optimizations (like vectorization), breaks control flow (which reduces pipeline performance) and executes extra instructions to save/restore the registers used inside it, which is very expensive (dozens of cycles). Consider to inline small functions.\n - exact_solution: 1 occurrences\n",
          title = "CALL instructions",
          txt = "Detected function call instructions.\n",
        },
        {
          details = "These instructions generate more than one micro-operation and only one of them can be decoded during a cycle and the extra micro-operations increase pressure on execution units.\n - VCVTSI2SD: 1 occurrences\n - VZEROUPPER: 1 occurrences\n",
          title = "Complex instructions",
          txt = "Detected COMPLEX INSTRUCTIONS.\n",
        },
        {
          workaround = " - Try to reorganize arrays of structures to structures of arrays\n - Consider to permute loops (see vectorization gain report)\n",
          details = " - Constant unknown stride: 1 occurrence(s)\n - Constant non-unit stride: 2 occurrence(s)\nNon-unit stride (uncontiguous) accesses are not efficiently using data caches\n",
          title = "Slow data structures access",
          txt = "Detected data structures (typically arrays) that cannot be efficiently read/written",
        },
        {
          workaround = "Avoid mixing data with different types. In particular, check if the type of constants is the same as array elements.",
          details = " - VCVTSI2SD (INT32/64 to FP64, scalar): 1 occurrences\n",
          title = "Conversion instructions",
          txt = "Detected expensive conversion instructions.",
        },
        {
          title = "Type of elements and instruction set",
          txt = "17 SSE or AVX instructions are processing arithmetic or math operations on double precision FP elements in scalar mode (one at a time).\n",
        },
        {
          title = "Matching between your loop (in the source code) and the binary loop",
          txt = "The binary loop is composed of 17 FP arithmetical operations:\n - 4: addition or subtraction\n - 12: multiply\n - 1: divide\nThe binary loop is loading 192 bytes (24 double precision FP elements).\nThe binary loop is storing 104 bytes (13 double precision FP elements).",
        },
        {
          title = "Arithmetic intensity",
          txt = "Arithmetic intensity is 0.06 FP operations per loaded or stored byte.",
        },
        {
          workaround = "Unroll your loop if trip count is significantly higher than target unroll factor and if some data references are common to consecutive iterations. This can be done manually. Or by recompiling with -funroll-loops and/or -floop-unroll-and-jam.",
          title = "Unroll opportunity",
          txt = "Loop is potentially data access bound.",
        },
      },
      expert = {
        {
          title = "General properties",
          txt = "nb instructions    : 59\nnb uops            : 64\nloop length        : 385\nused x86 registers : 11\nused mmx registers : 0\nused xmm registers : 16\nused ymm registers : 2\nused zmm registers : 0\nnb stack references: 11\nADD-SUB / MUL ratio: 0.33\n",
        },
        {
          title = "Front-end",
          txt = "ASSUMED MACRO FUSION\nFIT IN UOP CACHE\nmicro-operation queue: 16.50 cycles\nfront end            : 16.50 cycles\n",
        },
        {
          title = "Back-end",
          txt = "       | P0    | P1   | P2    | P3    | P4    | P5\n----------------------------------------------------\nuops   | 14.00 | 7.33 | 16.00 | 16.00 | 14.00 | 7.67\ncycles | 14.00 | 7.33 | 16.00 | 16.00 | 14.00 | 7.67\n\nCycles executing div or sqrt instructions: 10.00-22.00\nLongest recurrence chain latency (RecMII): 1.00\n",
        },
        {
          title = "Cycles summary",
          txt = "Front-end : 16.50\nDispatch  : 16.00\nDIV/SQRT  : 10.00-22.00\nData deps.: 1.00\nOverall L1: 16.50-22.00\n",
        },
        {
          title = "Vectorization ratios",
          txt = "INT\nall    : 12%\nload   : 0%\nstore  : NA (no store vectorizable/vectorized instructions)\nmul    : NA (no mul vectorizable/vectorized instructions)\nadd-sub: NA (no add-sub vectorizable/vectorized instructions)\nfma    : NA (no fma vectorizable/vectorized instructions)\nother  : 25%\nFP\nall     : 7%\nload    : 20%\nstore   : 0%\nmul     : 0%\nadd-sub : 0%\nfma     : NA (no fma vectorizable/vectorized instructions)\ndiv/sqrt: 0%\nother   : 100%\nINT+FP\nall     : 8%\nload    : 14%\nstore   : 0%\nmul     : 0%\nadd-sub : 0%\nfma     : NA (no fma vectorizable/vectorized instructions)\ndiv/sqrt: 0%\nother   : 40%\n",
        },
        {
          title = "Vector efficiency ratios",
          txt = "INT\nall    : 53%\nload   : 50%\nstore  : NA (no store vectorizable/vectorized instructions)\nmul    : NA (no mul vectorizable/vectorized instructions)\nadd-sub: NA (no add-sub vectorizable/vectorized instructions)\nfma    : NA (no fma vectorizable/vectorized instructions)\nother  : 56%\nFP\nall     : 29%\nload    : 40%\nstore   : 25%\nmul     : 25%\nadd-sub : 25%\nfma     : NA (no fma vectorizable/vectorized instructions)\ndiv/sqrt: 25%\nother   : 50%\nINT+FP\nall     : 33%\nload    : 42%\nstore   : 25%\nmul     : 25%\nadd-sub : 25%\nfma     : NA (no fma vectorizable/vectorized instructions)\ndiv/sqrt: 25%\nother   : 55%\n",
        },
        {
          title = "Cycles and memory resources usage",
          txt = "Assuming all data fit into the L1 cache, each iteration of the binary loop takes 22.00 cycles. At this rate:\n - 27% of peak load performance is reached (8.73 out of 32.00 bytes loaded per cycle (GB/s @ 1GHz))\n - 29% of peak store performance is reached (4.73 out of 16.00 bytes stored per cycle (GB/s @ 1GHz))\n",
        },
        {
          title = "Front-end bottlenecks",
          txt = "Found no such bottlenecks.",
        },
        {
          title = "ASM code",
          txt = "In the binary file, the address of the loop is: 7960\n\nInstruction                           | Nb FU | P0   | P1   | P2   | P3   | P4 | P5   | Latency | Recip. throughput\n-------------------------------------------------------------------------------------------------------------------\nVXORPD %XMM7,%XMM7,%XMM7              | 1     | 0    | 0    | 0    | 0    | 0  | 0    | 0       | 0.25\nVCVTSI2SD %EBX,%XMM7,%XMM3            | 2     | 1    | 1    | 0    | 0    | 0  | 0    | 4       | 1.50\nMOV 0x138(%RSP),%RDX                  | 1     | 0    | 0    | 0.50 | 0.50 | 0  | 0    | 2       | 0.50\nMOV %R14,%RCX                         | 1     | 0.33 | 0.33 | 0    | 0    | 0  | 0.33 | 1       | 0.33\nVMULSD 0x24fcd(%RIP),%XMM3,%XMM5      | 1     | 1    | 0    | 0.50 | 0.50 | 0  | 0    | 5       | 1\nMOV 0x130(%RSP),%RSI                  | 1     | 0    | 0    | 0.50 | 0.50 | 0  | 0    | 2       | 0.50\nMOV 0x128(%RSP),%RDI                  | 1     | 0    | 0    | 0.50 | 0.50 | 0  | 0    | 2       | 0.50\nVMOVSD %XMM5,0x160(%RSP)              | 1     | 0    | 0    | 0.50 | 0.50 | 1  | 0    | 3       | 1\nVZEROUPPER                            | 4     | 0    | 0    | 0    | 0    | 0  | 0    | 2       | 1\nCALL 7120 <exact_solution_>           | 3     | 0    | 0    | 0.50 | 0.50 | 1  | 1    | 0       | 2\nADD $0x8,%R12                         | 1     | 0.33 | 0.33 | 0    | 0    | 0  | 0.33 | 1       | 0.33\nMOV %RBX,%R8                          | 1     | 0.33 | 0.33 | 0    | 0    | 0  | 0.33 | 1       | 0.33\nVMOVSD 0x170(%RSP),%XMM12             | 1     | 0    | 0    | 0.50 | 0.50 | 0  | 0    | 3       | 0.50\nADD $0x8,%R13                         | 1     | 0.33 | 0.33 | 0    | 0    | 0  | 0.33 | 1       | 0.33\nVMOVSD 0x20a00(%RIP),%XMM0            | 1     | 0    | 0    | 0.50 | 0.50 | 0  | 0    | 3       | 0.50\nVMOVSD 0x178(%RSP),%XMM13             | 1     | 0    | 0    | 0.50 | 0.50 | 0  | 0    | 3       | 0.50\nVMOVSD %XMM12,-0x8(%R12)              | 1     | 0    | 0    | 0.50 | 0.50 | 1  | 0    | 3       | 1\nVDIVSD %XMM12,%XMM0,%XMM4             | 1     | 1    | 0    | 0    | 0    | 0  | 0    | 10-22   | 10-22\nMOV 0x20b04(%RIP),%RSI                | 1     | 0    | 0    | 0.50 | 0.50 | 0  | 0    | 2       | 0.50\nVMOVSD 0x180(%RSP),%XMM14             | 1     | 0    | 0    | 0.50 | 0.50 | 0  | 0    | 3       | 0.50\nVMOVSD %XMM13,0x1d0(%R12)             | 1     | 0    | 0    | 0.50 | 0.50 | 1  | 0    | 3       | 1\nVMOVSD 0x188(%RSP),%XMM15             | 1     | 0    | 0    | 0.50 | 0.50 | 0  | 0    | 3       | 0.50\nVMOVSD %XMM14,0x3a8(%R12)             | 1     | 0    | 0    | 0.50 | 0.50 | 1  | 0    | 3       | 1\nMOV 0x20adf(%RIP),%RAX                | 1     | 0    | 0    | 0.50 | 0.50 | 0  | 0    | 2       | 0.50\nVMOVSD %XMM15,0x580(%R12)             | 1     | 0    | 0    | 0.50 | 0.50 | 1  | 0    | 3       | 1\nVMOVSD 0x190(%RSP),%XMM11             | 1     | 0    | 0    | 0.50 | 0.50 | 0  | 0    | 3       | 0.50\nMOV 0x140(%RSP),%RDI                  | 1     | 0    | 0    | 0.50 | 0.50 | 0  | 0    | 2       | 0.50\nVMOVSD %XMM11,0x758(%R12)             | 1     | 0    | 0    | 0.50 | 0.50 | 1  | 0    | 3       | 1\nMOV %FS:,%RCX                         | 1     | 0    | 0    | 0.50 | 0.50 | 0  | 0    | 2       | 0.50\nLEA -0xf390(%RCX),%RCX                | 1     | 0.50 | 0.50 | 0    | 0    | 0  | 0    | 1       | 0.50\nVMULSD %XMM13,%XMM4,%XMM8             | 1     | 1    | 0    | 0    | 0    | 0  | 0    | 5       | 1\nVMULSD %XMM14,%XMM4,%XMM6             | 1     | 1    | 0    | 0    | 0    | 0  | 0    | 5       | 1\nVMULSD %XMM15,%XMM4,%XMM2             | 1     | 1    | 0    | 0    | 0    | 0  | 0    | 5       | 1\nVMULSD %XMM11,%XMM4,%XMM1             | 1     | 1    | 0    | 0    | 0    | 0  | 0    | 5       | 1\nVMOVAPD 0x20a2e(%RIP),%YMM4           | 1     | 0    | 0    | 0.50 | 0.50 | 0  | 0    | 4       | 1\nVMOVSD %XMM8,0x1d0(%R13)              | 1     | 0    | 0    | 0.50 | 0.50 | 1  | 0    | 3       | 1\nVMULSD %XMM13,%XMM8,%XMM12            | 1     | 1    | 0    | 0    | 0    | 0  | 0    | 5       | 1\nVMOVSD %XMM6,0x3a8(%R13)              | 1     | 0    | 0    | 0.50 | 0.50 | 1  | 0    | 3       | 1\nVMULSD %XMM14,%XMM6,%XMM13            | 1     | 1    | 0    | 0    | 0    | 0  | 0    | 5       | 1\nVMULSD %XMM8,%XMM8,%XMM9              | 1     | 1    | 0    | 0    | 0    | 0  | 0    | 5       | 1\nVMOVSD %XMM2,0x580(%R13)              | 1     | 0    | 0    | 0.50 | 0.50 | 1  | 0    | 3       | 1\nVMOVSD %XMM1,0x758(%R13)              | 1     | 0    | 0    | 0.50 | 0.50 | 1  | 0    | 3       | 1\nVMULSD %XMM6,%XMM6,%XMM10             | 1     | 1    | 0    | 0    | 0    | 0  | 0    | 5       | 1\nVMULSD %XMM15,%XMM2,%XMM15            | 1     | 1    | 0    | 0    | 0    | 0  | 0    | 5       | 1\nVMULSD %XMM2,%XMM2,%XMM3              | 1     | 1    | 0    | 0    | 0    | 0  | 0    | 5       | 1\nVADDSD %XMM13,%XMM12,%XMM14           | 1     | 0    | 1    | 0    | 0    | 0  | 0    | 3       | 1\nVMOVSD %XMM9,(%RDI,%RBX,8)            | 1     | 0    | 0    | 0.50 | 0.50 | 1  | 0    | 3       | 1\nVADDSD %XMM9,%XMM10,%XMM7             | 1     | 0    | 1    | 0    | 0    | 0  | 0    | 3       | 1\nVADDSD %XMM15,%XMM14,%XMM11           | 1     | 0    | 1    | 0    | 0    | 0  | 0    | 3       | 1\nVMULSD 0x20a3a(%RIP),%XMM11,%XMM0     | 1     | 1    | 0    | 0.50 | 0.50 | 0  | 0    | 5       | 1\nVADDSD %XMM3,%XMM7,%XMM5              | 1     | 0    | 1    | 0    | 0    | 0  | 0    | 3       | 1\nVMOVAPD 0x209e6(%RIP),%YMM7           | 1     | 0    | 0    | 0.50 | 0.50 | 0  | 0    | 4       | 1\nVMOVQ %RSI,%XMM3                      | 1     | 0.33 | 0.33 | 0    | 0    | 0  | 0.33 | 1       | 0.33\nVMOVSD %XMM5,-0x8(%R13)               | 1     | 0    | 0    | 0.50 | 0.50 | 1  | 0    | 3       | 1\nVMOVQ %RAX,%XMM5                      | 1     | 0.33 | 0.33 | 0    | 0    | 0  | 0.33 | 1       | 0.33\nVMOVSD %XMM0,(%RCX,%RBX,8)            | 1     | 0    | 0    | 0.50 | 0.50 | 1  | 0    | 3       | 1\nADD $0x1,%RBX                         | 1     | 0.33 | 0.33 | 0    | 0    | 0  | 0.33 | 1       | 0.33\nCMP 0x148(%RSP),%R8                   | 1     | 0.33 | 0.33 | 0.50 | 0.50 | 0  | 0.33 | 1       | 0.50\nJNE 7960 <exact_rhs_._omp_fn.0+0x610> | 1     | 0    | 0    | 0    | 0    | 0  | 1    | 0       | 1-2\n",
        },
      },
      header = {
        "Warnings:\nDetected a function call instruction: ignoring called function instructions.\nRerun with --follow-calls=append to include them to analysis  or with --follow-calls=inline to simulate inlining.",
        "9% of peak computational performance is used (0.77 out of 8.00 FLOP per cycle (GFLOPS @ 1GHz))",
      },
      brief = {
      },
      gain = {
        {
          workaround = " - Try another compiler or update/tune your current one:\n  * recompile with fassociative-math (included in Ofast or ffast-math) to extend loop vectorization to FP reductions.\n - Remove inter-iterations dependences from your loop and make it unit-stride:\n  * If your arrays have 2 or more dimensions, check whether elements are accessed contiguously and, otherwise, try to permute loops accordingly:\nFortran storage order is column-major: do i do j a(i,j) = b(i,j) (slow, non stride 1) => do i do j a(j,i) = b(i,j) (fast, stride 1)\n  * If your loop streams arrays of structures (AoS), try to use structures of arrays instead (SoA):\ndo i a(i)%x = b(i)%x (slow, non stride 1) => do i a%x(i) = b%x(i) (fast, stride 1)\n",
          details = "Store and arithmetical SSE/AVX instructions are used in scalar version (process only one data element in vector registers).\nSince your execution units are vector units, only a vectorized loop can use their full power.\n",
          title = "Vectorization",
          txt = "Your loop is probably not vectorized.\nOnly 33% of vector register length is used (average across all SSE/AVX instructions).\nBy vectorizing your loop, you can lower the cost of an iteration from 22.00 to 11.00 cycles (2.00x speedup).",
        },
        {
          workaround = " - Reduce the number of division or square root instructions:\n  * If denominator is constant over iterations, use reciprocal (replace x/y with x*(1/y)). Check precision impact. This will be done by your compiler with ffast-math or Ofast\n - Check whether you really need double precision. If not, switch to single precision to speedup execution\n",
          title = "Execution units bottlenecks",
          txt = "Performance is limited by execution of divide and square root operations (the divide/square root unit is a bottleneck).\n\nBy removing all these bottlenecks, you can lower the cost of an iteration from 22.00 to 16.50 cycles (1.33x speedup).\n",
        },
      },
      potential = {
        {
          title = "Expensive FP math instructions/calls",
          txt = "Detected performance impact from expensive FP math instructions/calls.\nBy removing/reexpressing them, you can lower the cost of an iteration from 22.00 to 16.50 cycles (1.33x speedup).",
        },
      },
    },
  common = {
    header = {
      "The loop is defined in /users/user2210/NPB3.4-MZ-MPI/BT-MZ/exact_rhs.f90:48-66.\n",
      "The related source loop is not unrolled or unrolled with no peel/tail loop.",
    },
    nb_paths = 1,
  },
}
