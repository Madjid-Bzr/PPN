_cqa_text_report = {
  paths = {
    {
      hint = {
        {
          title = "Type of elements and instruction set",
          txt = "No instructions are processing arithmetic or math operations on FP elements. This loop is probably writing/copying data or processing integer elements.",
        },
        {
          title = "Matching between your loop (in the source code) and the binary loop",
          txt = "The binary loop does not contain any FP arithmetical operations.\nThe binary loop is loading 4 bytes.\nThe binary loop is storing 4 bytes.",
        },
      },
      expert = {
        {
          title = "General properties",
          txt = "nb instructions    : 10\nloop length        : 40\nused x86 registers : 5\nused mmx registers : 0\nused xmm registers : 0\nused ymm registers : 0\nused zmm registers : 0\nnb stack references: 1\n",
        },
        {
          title = "Front-end",
          txt = "MACRO FUSION NOT POSSIBLE\ninstruction fetch    : 3.00 cycles\ninstruction queue    : 5.00 cycles\ndecoding             : 5.00 cycles\nmicro-operation queue: 5.00 cycles\nfront end            : 5.00 cycles\n",
        },
        {
          title = "Back-end",
          txt = "       | P0   | P1   | P2   | P3   | P4   | P5   | P6\n-------------------------------------------------------\nuops   | 0.00 | 0.00 | 1.00 | 1.00 | 4.00 | 4.00 | 1.00\ncycles | 0.00 | 0.00 | 1.00 | 1.00 | 4.00 | 4.00 | 1.00\n\nCycles executing div or sqrt instructions: NA\nLongest recurrence chain latency (RecMII): 2.00\n",
        },
        {
          title = "Cycles summary",
          txt = "Front-end : 5.00\nDispatch  : 4.00\nData deps.: 2.00\nOverall L1: 5.00\n",
        },
        {
          title = "Vectorization ratios",
          txt = "all     : 0%\nload    : 0%\nstore   : 0%\nmul     : NA (no mul vectorizable/vectorized instructions)\nadd-sub : 0%\nfma     : NA (no fma vectorizable/vectorized instructions)\ndiv/sqrt: NA (no div/sqrt vectorizable/vectorized instructions)\nother   : 0%\n",
        },
        {
          title = "Vector efficiency ratios",
          txt = "all     : 6%\nload    : 6%\nstore   : 6%\nmul     : NA (no mul vectorizable/vectorized instructions)\nadd-sub : 6%\nfma     : NA (no fma vectorizable/vectorized instructions)\ndiv/sqrt: NA (no div/sqrt vectorizable/vectorized instructions)\nother   : 6%\n",
        },
        {
          title = "Cycles and memory resources usage",
          txt = "Assuming all data fit into the L1 cache, each iteration of the binary loop takes 5.00 cycles. At this rate:\n - 0% of peak load performance is reached (0.80 out of 128.00 bytes loaded per cycle (GB/s @ 1GHz))\n - 1% of peak store performance is reached (0.80 out of 64.00 bytes stored per cycle (GB/s @ 1GHz))\n",
        },
        {
          title = "Front-end bottlenecks",
          txt = "Performance is limited by instruction throughput (loading/decoding program instructions to execution core) (front-end is a bottleneck).\n\nBy removing all these bottlenecks, you can lower the cost of an iteration from 5.00 to 4.00 cycles (1.25x speedup).\n",
        },
        {
          title = "ASM code",
          txt = "In the binary file, the address of the loop is: f090\n\nInstruction                       | Nb FU | P0 | P1 | P2   | P3   | P4   | P5   | P6 | Latency | Recip. throughput\n------------------------------------------------------------------------------------------------------------------\nLEA (%R14),%RBX                   | 1     | 0  | 0  | 0    | 0    | 0.50 | 0.50 | 0  | 1       | 0.50\nMOV 0x2d971(%RIP),%R13D           | 1     | 0  | 0  | 1    | 0    | 0    | 0    | 0  | 4       | 1\nADD %EBX,%R13D                    | 1     | 0  | 0  | 0    | 0    | 0.50 | 0.50 | 0  | 1       | 0.50\nADD $0x1,%R13D                    | 1     | 0  | 0  | 0    | 0    | 0.50 | 0.50 | 0  | 1       | 0.50\nMOV %R13D,0xcc(%RSP)              | 1     | 0  | 0  | 0.50 | 0.50 | 0    | 0    | 1  | 0       | 1\nCMP $0x1,%R13D                    | 1     | 0  | 0  | 0    | 0    | 0.50 | 0.50 | 0  | 1       | 0.50\nJNE f078 <setiv_._omp_fn.0+0x138> | 1     | 0  | 0  | 0    | 0    | 0    | 1    | 0  | 0       | 1-2\nCMP %R15,%RBX                     | 1     | 0  | 0  | 0    | 0    | 0.50 | 0.50 | 0  | 1       | 0.50\nLEA 0x1(%RBX),%R14                | 1     | 0  | 0  | 0    | 0    | 0.50 | 0.50 | 0  | 1       | 0.50\nJNE f08d <setiv_._omp_fn.0+0x14d> | 1     | 0  | 0  | 0    | 0    | 0    | 1    | 0  | 0       | 1-2\n",
        },
      },
      header = {
        "0% of peak computational performance is used (0.00 out of 4.00 FLOP per cycle (GFLOPS @ 1GHz))",
      },
      brief = {
      },
      gain = {
        {
          workaround = " - Try another compiler or update/tune your current one:\n  * recompile with fassociative-math (included in Ofast or ffast-math) to extend loop vectorization to FP reductions.\n - Remove inter-iterations dependences from your loop and make it unit-stride:\n  * If your arrays have 2 or more dimensions, check whether elements are accessed contiguously and, otherwise, try to permute loops accordingly:\nFortran storage order is column-major: do i do j a(i,j) = b(i,j) (slow, non stride 1) => do i do j a(j,i) = b(i,j) (fast, stride 1)\n  * If your loop streams arrays of structures (AoS), try to use structures of arrays instead (SoA):\ndo i a(i)%x = b(i)%x (slow, non stride 1) => do i a%x(i) = b%x(i) (fast, stride 1)\n",
          details = "All SSE/AVX instructions are used in scalar version (process only one data element in vector registers).\nSince your execution units are vector units, only a vectorized loop can use their full power.\n",
          title = "Vectorization",
          txt = "Your loop is not vectorized.\n16 data elements could be processed at once in vector registers.\nBy vectorizing your loop, you can lower the cost of an iteration from 5.00 to 0.31 cycles (16.00x speedup).",
        },
        {
          title = "Execution units bottlenecks",
          txt = "Found no such bottlenecks but see expert reports for more complex bottlenecks.",
        },
      },
      potential = {
      },
    },
    {
      hint = {
        {
          title = "Type of elements and instruction set",
          txt = "No instructions are processing arithmetic or math operations on FP elements. This loop is probably writing/copying data or processing integer elements.",
        },
        {
          title = "Matching between your loop (in the source code) and the binary loop",
          txt = "The binary loop does not contain any FP arithmetical operations.\nThe binary loop is loading 8 bytes.\nThe binary loop is storing 4 bytes.",
        },
      },
      expert = {
        {
          title = "General properties",
          txt = "nb instructions    : 13\nloop length        : 52\nused x86 registers : 6\nused mmx registers : 0\nused xmm registers : 0\nused ymm registers : 0\nused zmm registers : 0\nnb stack references: 1\n",
        },
        {
          title = "Front-end",
          txt = "MACRO FUSION NOT POSSIBLE\ninstruction fetch    : 4.00 cycles\ninstruction queue    : 6.50 cycles\ndecoding             : 6.50 cycles\nmicro-operation queue: 7.00 cycles\nfront end            : 7.00 cycles\n",
        },
        {
          title = "Back-end",
          txt = "       | P0   | P1   | P2   | P3   | P4   | P5   | P6\n-------------------------------------------------------\nuops   | 0.00 | 0.00 | 2.00 | 1.00 | 5.00 | 5.00 | 1.00\ncycles | 0.00 | 0.00 | 2.00 | 1.00 | 5.00 | 5.00 | 1.00\n\nCycles executing div or sqrt instructions: NA\nLongest recurrence chain latency (RecMII): 2.00\n",
        },
        {
          title = "Cycles summary",
          txt = "Front-end : 7.00\nDispatch  : 5.00\nData deps.: 2.00\nOverall L1: 7.00\n",
        },
        {
          title = "Vectorization ratios",
          txt = "all     : 0%\nload    : 0%\nstore   : 0%\nmul     : NA (no mul vectorizable/vectorized instructions)\nadd-sub : NA (no add-sub vectorizable/vectorized instructions)\nfma     : NA (no fma vectorizable/vectorized instructions)\ndiv/sqrt: NA (no div/sqrt vectorizable/vectorized instructions)\nother   : 0%\n",
        },
        {
          title = "Vector efficiency ratios",
          txt = "all     : 7%\nload    : 6%\nstore   : 6%\nmul     : NA (no mul vectorizable/vectorized instructions)\nadd-sub : NA (no add-sub vectorizable/vectorized instructions)\nfma     : NA (no fma vectorizable/vectorized instructions)\ndiv/sqrt: NA (no div/sqrt vectorizable/vectorized instructions)\nother   : 9%\n",
        },
        {
          title = "Cycles and memory resources usage",
          txt = "Assuming all data fit into the L1 cache, each iteration of the binary loop takes 7.00 cycles. At this rate:\n - 0% of peak load performance is reached (1.14 out of 128.00 bytes loaded per cycle (GB/s @ 1GHz))\n - 0% of peak store performance is reached (0.57 out of 64.00 bytes stored per cycle (GB/s @ 1GHz))\n",
        },
        {
          title = "Front-end bottlenecks",
          txt = "Performance is limited by instruction throughput (loading/decoding program instructions to execution core) (front-end is a bottleneck).\n\nBy removing all these bottlenecks, you can lower the cost of an iteration from 7.00 to 6.50 cycles (1.08x speedup).\n",
        },
        {
          title = "ASM code",
          txt = "In the binary file, the address of the loop is: f090\n\nInstruction                       | Nb FU | P0 | P1 | P2   | P3   | P4   | P5   | P6 | Latency | Recip. throughput\n------------------------------------------------------------------------------------------------------------------\nMOV 0x2d859(%RIP),%R8D            | 1     | 0  | 0  | 1    | 0    | 0    | 0    | 0  | 4       | 1\nLEA 0x1(%RBX),%R14                | 1     | 0  | 0  | 0    | 0    | 0.50 | 0.50 | 0  | 1       | 0.50\nCMP %R8D,%R13D                    | 1     | 0  | 0  | 0    | 0    | 0.50 | 0.50 | 0  | 1       | 0.50\nJNE f0e0 <setiv_._omp_fn.0+0x1a0> | 1     | 0  | 0  | 0    | 0    | 0    | 1    | 0  | 0       | 1-2\nCMP %R15,%RBX                     | 1     | 0  | 0  | 0    | 0    | 0.50 | 0.50 | 0  | 1       | 0.50\nJE f0b5 <setiv_._omp_fn.0+0x175>  | 1     | 0  | 0  | 0    | 0    | 0    | 1    | 0  | 0       | 1-2\nLEA (%R14),%RBX                   | 1     | 0  | 0  | 0    | 0    | 0.50 | 0.50 | 0  | 1       | 0.50\nMOV 0x2d971(%RIP),%R13D           | 1     | 0  | 0  | 1    | 0    | 0    | 0    | 0  | 4       | 1\nADD %EBX,%R13D                    | 1     | 0  | 0  | 0    | 0    | 0.50 | 0.50 | 0  | 1       | 0.50\nADD $0x1,%R13D                    | 1     | 0  | 0  | 0    | 0    | 0.50 | 0.50 | 0  | 1       | 0.50\nMOV %R13D,0xcc(%RSP)              | 1     | 0  | 0  | 0.50 | 0.50 | 0    | 0    | 1  | 0       | 1\nCMP $0x1,%R13D                    | 1     | 0  | 0  | 0    | 0    | 0.50 | 0.50 | 0  | 1       | 0.50\nJNE f078 <setiv_._omp_fn.0+0x138> | 1     | 0  | 0  | 0    | 0    | 0    | 1    | 0  | 0       | 1-2\n",
        },
      },
      header = {
        "0% of peak computational performance is used (0.00 out of 4.00 FLOP per cycle (GFLOPS @ 1GHz))",
      },
      brief = {
      },
      gain = {
        {
          workaround = " - Try another compiler or update/tune your current one:\n  * recompile with fassociative-math (included in Ofast or ffast-math) to extend loop vectorization to FP reductions.\n - Remove inter-iterations dependences from your loop and make it unit-stride:\n  * If your arrays have 2 or more dimensions, check whether elements are accessed contiguously and, otherwise, try to permute loops accordingly:\nFortran storage order is column-major: do i do j a(i,j) = b(i,j) (slow, non stride 1) => do i do j a(j,i) = b(i,j) (fast, stride 1)\n  * If your loop streams arrays of structures (AoS), try to use structures of arrays instead (SoA):\ndo i a(i)%x = b(i)%x (slow, non stride 1) => do i a%x(i) = b%x(i) (fast, stride 1)\n",
          details = "All SSE/AVX instructions are used in scalar version (process only one data element in vector registers).\nSince your execution units are vector units, only a vectorized loop can use their full power.\n",
          title = "Vectorization",
          txt = "Your loop is not vectorized.\nOnly 7% of vector register length is used (average across all SSE/AVX instructions).\nBy vectorizing your loop, you can lower the cost of an iteration from 7.00 to 0.47 cycles (14.86x speedup).",
        },
        {
          title = "Execution units bottlenecks",
          txt = "Found no such bottlenecks but see expert reports for more complex bottlenecks.",
        },
      },
      potential = {
      },
    },
    {
      hint = {
        {
          details = "Calling (and then returning from) a function prevents many compiler optimizations (like vectorization), breaks control flow (which reduces pipeline performance) and executes extra instructions to save/restore the registers used inside it, which is very expensive (dozens of cycles). Consider to inline small functions.\n - exact: 6 occurrences\n",
          title = "CALL instructions",
          txt = "Detected function call instructions.\n",
        },
        {
          workaround = " - Try to reorganize arrays of structures to structures of arrays\n - Consider to permute loops (see vectorization gain report)\n",
          details = " - Constant unknown stride: 1 occurrence(s)\nNon-unit stride (uncontiguous) accesses are not efficiently using data caches\n",
          title = "Slow data structures access",
          txt = "Detected data structures (typically arrays) that cannot be efficiently read/written",
        },
        {
          workaround = "Avoid mixing data with different types. In particular, check if the type of constants is the same as array elements.",
          details = " - VCVTSI2SD (INT32/64 to FP64, scalar): 2 occurrences\n",
          title = "Conversion instructions",
          txt = "Detected expensive conversion instructions.",
        },
        {
          title = "Type of elements and instruction set",
          txt = "17 SSE or AVX instructions are processing arithmetic or math operations on double precision FP elements in scalar mode (one at a time).\n16 AVX instructions are processing arithmetic or math operations on double precision FP elements in vector mode (four at a time).\n",
        },
        {
          title = "Matching between your loop (in the source code) and the binary loop",
          txt = "The binary loop is composed of 111 FP arithmetical operations:\n - 60: addition or subtraction (30 inside FMA instructions)\n - 50: multiply (30 inside FMA instructions)\n - 1: divide\nThe binary loop is loading 560 bytes (70 double precision FP elements).\nThe binary loop is storing 204 bytes (25 double precision FP elements).",
        },
        {
          title = "Arithmetic intensity",
          txt = "Arithmetic intensity is 0.15 FP operations per loaded or stored byte.",
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
          txt = "nb instructions    : 138\nloop length        : 810\nused x86 registers : 15\nused mmx registers : 0\nused xmm registers : 15\nused ymm registers : 15\nused zmm registers : 0\nnb stack references: 26\nADD-SUB / MUL ratio: 1.50\n",
        },
        {
          title = "Front-end",
          txt = "MACRO FUSION NOT POSSIBLE\ninstruction fetch    : 51.00 cycles\ninstruction queue    : 69.00 cycles\ndecoding             : 69.00 cycles\nmicro-operation queue: 72.00 cycles\nfront end            : 72.00 cycles\n",
        },
        {
          title = "Back-end",
          txt = "       | P0    | P1    | P2    | P3    | P4    | P5    | P6\n--------------------------------------------------------------\nuops   | 19.00 | 19.00 | 31.00 | 31.00 | 26.00 | 26.00 | 17.00\ncycles | 19.00 | 19.00 | 31.00 | 31.00 | 26.00 | 26.00 | 17.00\n\nCycles executing div or sqrt instructions: 12.00-32.00\nLongest recurrence chain latency (RecMII): 2.00\n",
        },
        {
          title = "Cycles summary",
          txt = "Front-end : 72.00\nDispatch  : 31.00\nDIV/SQRT  : 12.00-32.00\nData deps.: 2.00\nOverall L1: 72.00\n",
        },
        {
          title = "Vectorization ratios",
          txt = "INT\nall    : 0%\nload   : 0%\nstore  : 0%\nmul    : NA (no mul vectorizable/vectorized instructions)\nadd-sub: NA (no add-sub vectorizable/vectorized instructions)\nfma    : NA (no fma vectorizable/vectorized instructions)\nother  : 0%\nFP\nall     : 47%\nload    : 50%\nstore   : 42%\nmul     : 50%\nadd-sub : 50%\nfma     : 50%\ndiv/sqrt: 0%\nother   : 50%\nINT+FP\nall     : 34%\nload    : 42%\nstore   : 17%\nmul     : 50%\nadd-sub : 50%\nfma     : 50%\ndiv/sqrt: 0%\nother   : 12%\n",
        },
        {
          title = "Vector efficiency ratios",
          txt = "INT\nall    : 10%\nload   : 12%\nstore  : 11%\nmul    : NA (no mul vectorizable/vectorized instructions)\nadd-sub: NA (no add-sub vectorizable/vectorized instructions)\nfma    : NA (no fma vectorizable/vectorized instructions)\nother  : 8%\nFP\nall     : 30%\nload    : 31%\nstore   : 28%\nmul     : 31%\nadd-sub : 31%\nfma     : 31%\ndiv/sqrt: 12%\nother   : 31%\nINT+FP\nall     : 24%\nload    : 28%\nstore   : 18%\nmul     : 31%\nadd-sub : 31%\nfma     : 31%\ndiv/sqrt: 12%\nother   : 14%\n",
        },
        {
          title = "Cycles and memory resources usage",
          txt = "Assuming all data fit into the L1 cache, each iteration of the binary loop takes 72.00 cycles. At this rate:\n - 6% of peak load performance is reached (7.78 out of 128.00 bytes loaded per cycle (GB/s @ 1GHz))\n - 4% of peak store performance is reached (2.83 out of 64.00 bytes stored per cycle (GB/s @ 1GHz))\n",
        },
        {
          title = "Front-end bottlenecks",
          txt = "Performance is limited by instruction throughput (loading/decoding program instructions to execution core) (front-end is a bottleneck).\n",
        },
        {
          title = "ASM code",
          txt = "In the binary file, the address of the loop is: f090\n\nInstruction                           | Nb FU | P0   | P1   | P2   | P3   | P4   | P5   | P6 | Latency | Recip. throughput\n--------------------------------------------------------------------------------------------------------------------------\nMOV 0x2d859(%RIP),%R8D                | 1     | 0    | 0    | 1    | 0    | 0    | 0    | 0  | 4       | 1\nLEA 0x1(%RBX),%R14                    | 1     | 0    | 0    | 0    | 0    | 0.50 | 0.50 | 0  | 1       | 0.50\nCMP %R8D,%R13D                        | 1     | 0    | 0    | 0    | 0    | 0.50 | 0.50 | 0  | 1       | 0.50\nJNE f0e0 <setiv_._omp_fn.0+0x1a0>     | 1     | 0    | 0    | 0    | 0    | 0    | 1    | 0  | 0       | 1-2\nCMP %R15,%RBX                         | 1     | 0    | 0    | 0    | 0    | 0.50 | 0.50 | 0  | 1       | 0.50\nJE f0b5 <setiv_._omp_fn.0+0x175>      | 1     | 0    | 0    | 0    | 0    | 0    | 1    | 0  | 0       | 1-2\nLEA (%R14),%RBX                       | 1     | 0    | 0    | 0    | 0    | 0.50 | 0.50 | 0  | 1       | 0.50\nMOV 0x2d971(%RIP),%R13D               | 1     | 0    | 0    | 1    | 0    | 0    | 0    | 0  | 4       | 1\nADD %EBX,%R13D                        | 1     | 0    | 0    | 0    | 0    | 0.50 | 0.50 | 0  | 1       | 0.50\nADD $0x1,%R13D                        | 1     | 0    | 0    | 0    | 0    | 0.50 | 0.50 | 0  | 1       | 0.50\nMOV %R13D,0xcc(%RSP)                  | 1     | 0    | 0    | 0.50 | 0.50 | 0    | 0    | 1  | 0       | 1\nCMP $0x1,%R13D                        | 1     | 0    | 0    | 0    | 0    | 0.50 | 0.50 | 0  | 1       | 0.50\nJNE f078 <setiv_._omp_fn.0+0x138>     | 1     | 0    | 0    | 0    | 0    | 0    | 1    | 0  | 0       | 1-2\nLEA -0x1(%R13),%EAX                   | 1     | 0    | 0    | 0    | 0    | 0.50 | 0.50 | 0  | 1       | 0.50\nLEA -0x1(%R8),%EDX                    | 1     | 0    | 0    | 0    | 0    | 0.50 | 0.50 | 0  | 1       | 0.50\nVCVTSI2SD %EAX,%XMM2,%XMM2            | 1     | 1    | 0    | 0    | 0    | 0    | 0    | 0  | 5       | 1\nLEA 0xc8(%RSP),%R10                   | 1     | 0    | 0    | 0    | 0    | 0.50 | 0.50 | 0  | 1       | 0.50\nVMOVAPD %YMM3,0x50(%RSP)              | 1     | 0    | 0    | 0.50 | 0.50 | 0    | 0    | 1  | 2       | 1\nLEA 0xd0(%RSP),%RCX                   | 1     | 0    | 0    | 0    | 0    | 0.50 | 0.50 | 0  | 1       | 0.50\nVCVTSI2SD %EDX,%XMM3,%XMM3            | 1     | 1    | 0    | 0    | 0    | 0    | 0    | 0  | 5       | 1\nLEA 0x2d7cb(%RIP),%R8                 | 1     | 0    | 0    | 0    | 0    | 0.50 | 0.50 | 0  | 1       | 0.50\nMOV 0x18(%R12),%RSI                   | 1     | 0    | 0    | 1    | 0    | 0    | 0    | 0  | 4       | 1\nLEA 0xc4(%RSP),%RDX                   | 1     | 0    | 0    | 0    | 0    | 0.50 | 0.50 | 0  | 1       | 0.50\nLEA 0x28a93(%RIP),%RDI                | 1     | 0    | 0    | 0    | 0    | 0.50 | 0.50 | 0  | 1       | 0.50\nLEA 0xcc(%RSP),%R13                   | 1     | 0    | 0    | 0    | 0    | 0.50 | 0.50 | 0  | 1       | 0.50\nVMOVAPD %YMM14,0x70(%RSP)             | 1     | 0    | 0    | 0.50 | 0.50 | 0    | 0    | 1  | 2       | 1\nVDIVSD %XMM3,%XMM2,%XMM4              | 3     | 1    | 0    | 0    | 0    | 0    | 0    | 0  | 40-42   | 12-32\nMOV %RSI,(%RSP)                       | 1     | 0    | 0    | 0.50 | 0.50 | 0    | 0    | 1  | 0       | 1\nLEA (%R10),%RSI                       | 1     | 0    | 0    | 0    | 0    | 0.50 | 0.50 | 0  | 1       | 0.50\nMOV 0x10(%R12),%R9                    | 1     | 0    | 0    | 1    | 0    | 0    | 0    | 0  | 4       | 1\nVMOVSD %XMM5,0x98(%RSP)               | 1     | 0    | 0    | 0.50 | 0.50 | 0    | 0    | 1  | 2       | 1\nVMOVSD %XMM15,0xa0(%RSP)              | 1     | 0    | 0    | 0.50 | 0.50 | 0    | 0    | 1  | 2       | 1\nMOV %R10,0xb0(%RSP)                   | 1     | 0    | 0    | 0.50 | 0.50 | 0    | 0    | 1  | 0       | 1\nMOV %RDX,0xb8(%RSP)                   | 1     | 0    | 0    | 0.50 | 0.50 | 0    | 0    | 1  | 0       | 1\nVMOVSD %XMM4,0xa8(%RSP)               | 1     | 0    | 0    | 0.50 | 0.50 | 0    | 0    | 1  | 2       | 1\nCALL edd0 <exact_>                    | 1     | 0    | 0    | 0    | 0    | 0.50 | 0.50 | 0  | 0       | 2\nMOV 0x18(%R12),%RDI                   | 1     | 0    | 0    | 1    | 0    | 0    | 0    | 0  | 4       | 1\nLEA 0x2d75d(%RIP),%R8                 | 1     | 0    | 0    | 0    | 0    | 0.50 | 0.50 | 0  | 1       | 0.50\nMOV 0xb8(%RSP),%RDX                   | 1     | 0    | 0    | 1    | 0    | 0    | 0    | 0  | 4       | 1\nLEA 0x110(%RSP),%RCX                  | 1     | 0    | 0    | 0    | 0    | 0.50 | 0.50 | 0  | 1       | 0.50\nMOV 0xb0(%RSP),%RSI                   | 1     | 0    | 0    | 1    | 0    | 0    | 0    | 0  | 4       | 1\nMOV %RDI,(%RSP)                       | 1     | 0    | 0    | 0.50 | 0.50 | 0    | 0    | 1  | 0       | 1\nLEA (%R8),%RDI                        | 1     | 0    | 0    | 0    | 0    | 0.50 | 0.50 | 0  | 1       | 0.50\nMOV 0x10(%R12),%R9                    | 1     | 0    | 0    | 1    | 0    | 0    | 0    | 0  | 4       | 1\nCALL edd0 <exact_>                    | 1     | 0    | 0    | 0    | 0    | 0.50 | 0.50 | 0  | 0       | 2\nMOV 0x18(%R12),%R9                    | 1     | 0    | 0    | 1    | 0    | 0    | 0    | 0  | 4       | 1\nLEA (%R13),%RDI                       | 1     | 0    | 0    | 0    | 0    | 0.50 | 0.50 | 0  | 1       | 0.50\nMOV 0xb8(%RSP),%RDX                   | 1     | 0    | 0    | 1    | 0    | 0    | 0    | 0  | 4       | 1\nLEA 0x150(%RSP),%RCX                  | 1     | 0    | 0    | 0    | 0    | 0.50 | 0.50 | 0  | 1       | 0.50\nLEA 0x2d714(%RIP),%R8                 | 1     | 0    | 0    | 0    | 0    | 0.50 | 0.50 | 0  | 1       | 0.50\nLEA 0x289e9(%RIP),%RSI                | 1     | 0    | 0    | 0    | 0    | 0.50 | 0.50 | 0  | 1       | 0.50\nMOV %R9,(%RSP)                        | 1     | 0    | 0    | 0.50 | 0.50 | 0    | 0    | 1  | 0       | 1\nMOV 0x10(%R12),%R9                    | 1     | 0    | 0    | 1    | 0    | 0    | 0    | 0  | 4       | 1\nCALL edd0 <exact_>                    | 1     | 0    | 0    | 0    | 0    | 0.50 | 0.50 | 0  | 0       | 2\nMOV 0x18(%R12),%R11                   | 1     | 0    | 0    | 1    | 0    | 0    | 0    | 0  | 4       | 1\nLEA (%R13),%RDI                       | 1     | 0    | 0    | 0    | 0    | 0.50 | 0.50 | 0  | 1       | 0.50\nMOV 0x10(%R12),%RSI                   | 1     | 0    | 0    | 1    | 0    | 0    | 0    | 0  | 4       | 1\nLEA 0x190(%RSP),%RCX                  | 1     | 0    | 0    | 0    | 0    | 0.50 | 0.50 | 0  | 1       | 0.50\nMOV 0xb8(%RSP),%RDX                   | 1     | 0    | 0    | 1    | 0    | 0    | 0    | 0  | 4       | 1\nLEA 0x2d6da(%RIP),%R8                 | 1     | 0    | 0    | 0    | 0    | 0.50 | 0.50 | 0  | 1       | 0.50\nMOV %R11,(%RSP)                       | 1     | 0    | 0    | 0.50 | 0.50 | 0    | 0    | 1  | 0       | 1\nLEA (%RSI),%R9                        | 1     | 0    | 0    | 0    | 0    | 0.50 | 0.50 | 0  | 1       | 0.50\nCALL edd0 <exact_>                    | 1     | 0    | 0    | 0    | 0    | 0.50 | 0.50 | 0  | 0       | 2\nMOV 0x18(%R12),%R8                    | 1     | 0    | 0    | 1    | 0    | 0    | 0    | 0  | 4       | 1\nLEA (%R13),%RDI                       | 1     | 0    | 0    | 0    | 0    | 0.50 | 0.50 | 0  | 1       | 0.50\nMOV 0xb0(%RSP),%RAX                   | 1     | 0    | 0    | 1    | 0    | 0    | 0    | 0  | 4       | 1\nLEA 0x1d0(%RSP),%RCX                  | 1     | 0    | 0    | 0    | 0    | 0.50 | 0.50 | 0  | 1       | 0.50\nLEA 0x2898a(%RIP),%RDX                | 1     | 0    | 0    | 0    | 0    | 0.50 | 0.50 | 0  | 1       | 0.50\nMOV %R8,(%RSP)                        | 1     | 0    | 0    | 0.50 | 0.50 | 0    | 0    | 1  | 0       | 1\nLEA 0x2d6a3(%RIP),%R8                 | 1     | 0    | 0    | 0    | 0    | 0.50 | 0.50 | 0  | 1       | 0.50\nMOV 0x10(%R12),%R9                    | 1     | 0    | 0    | 1    | 0    | 0    | 0    | 0  | 4       | 1\nLEA (%RAX),%RSI                       | 1     | 0    | 0    | 0    | 0    | 0.50 | 0.50 | 0  | 1       | 0.50\nMOV %RAX,0xb8(%RSP)                   | 1     | 0    | 0    | 0.50 | 0.50 | 0    | 0    | 1  | 0       | 1\nCALL edd0 <exact_>                    | 1     | 0    | 0    | 0    | 0    | 0.50 | 0.50 | 0  | 0       | 2\nMOV 0x18(%R12),%RDX                   | 1     | 0    | 0    | 1    | 0    | 0    | 0    | 0  | 4       | 1\nLEA (%R13),%RDI                       | 1     | 0    | 0    | 0    | 0    | 0.50 | 0.50 | 0  | 1       | 0.50\nMOV 0xb8(%RSP),%RSI                   | 1     | 0    | 0    | 1    | 0    | 0    | 0    | 0  | 4       | 1\nLEA 0x210(%RSP),%RCX                  | 1     | 0    | 0    | 0    | 0    | 0.50 | 0.50 | 0  | 1       | 0.50\nLEA 0x2d66e(%RIP),%R8                 | 1     | 0    | 0    | 0    | 0    | 0.50 | 0.50 | 0  | 1       | 0.50\nMOV %RDX,(%RSP)                       | 1     | 0    | 0    | 0.50 | 0.50 | 0    | 0    | 1  | 0       | 1\nMOV 0x10(%R12),%R9                    | 1     | 0    | 0    | 1    | 0    | 0    | 0    | 0  | 4       | 1\nCALL edd0 <exact_>                    | 1     | 0    | 0    | 0    | 0    | 0.50 | 0.50 | 0  | 0       | 2\nVMOVSD 0xa8(%RSP),%XMM12              | 1     | 0    | 0    | 0.50 | 0.50 | 0    | 0    | 0  | 5       | 0.50\nLEA (%R14,%R14,4),%RDI                | 1     | 0    | 0    | 0    | 0    | 0.50 | 0.50 | 0  | 1       | 0.50\nVMOVAPD 0x70(%RSP),%YMM14             | 1     | 0    | 0    | 0.50 | 0.50 | 0    | 0    | 0  | 5       | 0.50\nVBROADCASTSD %XMM12,%YMM8             | 1     | 1    | 0    | 0    | 0    | 0    | 0    | 0  | 5       | 1\nVMOVAPD 0x28928(%RIP),%YMM10          | 1     | 0    | 0    | 0.50 | 0.50 | 0    | 0    | 0  | 5       | 0.50\nVMULPD 0x110(%RSP),%YMM8,%YMM5        | 1     | 0.50 | 0.50 | 0.50 | 0.50 | 0    | 0    | 0  | 6       | 0.50\nVSUBPD %YMM8,%YMM10,%YMM6             | 1     | 0.50 | 0.50 | 0    | 0    | 0    | 0    | 0  | 6       | 0.50\nVSUBPD %YMM14,%YMM10,%YMM15           | 1     | 0.50 | 0.50 | 0    | 0    | 0    | 0    | 0  | 6       | 0.50\nVMOVAPD 0x50(%RSP),%YMM3              | 1     | 0    | 0    | 0.50 | 0.50 | 0    | 0    | 0  | 5       | 0.50\nVMULPD 0x190(%RSP),%YMM14,%YMM11      | 1     | 0.50 | 0.50 | 0.50 | 0.50 | 0    | 0    | 0  | 6       | 0.50\nVSUBPD %YMM3,%YMM10,%YMM9             | 1     | 0.50 | 0.50 | 0    | 0    | 0    | 0    | 0  | 6       | 0.50\nMOVSXD 0xc4(%RSP),%RDX                | 1     | 0    | 0    | 1    | 0    | 0    | 0    | 0  | 4       | 1\nVMOVAPD %YMM6,%YMM13                  | 1     | 0.50 | 0.50 | 0    | 0    | 0    | 0    | 0  | 2       | 0.50\nVMULPD 0x210(%RSP),%YMM3,%YMM0        | 1     | 0.50 | 0.50 | 0.50 | 0.50 | 0    | 0    | 0  | 6       | 0.50\nVFMADD132PD 0xd0(%RSP),%YMM5,%YMM13   | 1     | 0.50 | 0.50 | 0.50 | 0.50 | 0    | 0    | 0  | 6       | 0.50\nMOVSXD 0xc8(%RSP),%R13                | 1     | 0    | 0    | 1    | 0    | 0    | 0    | 0  | 4       | 1\nIMUL 0x40(%RSP),%RDX                  | 1     | 0    | 0    | 1    | 0    | 1    | 0    | 0  | 5       | 2\nMOV 0x48(%RSP),%RCX                   | 1     | 0    | 0    | 1    | 0    | 0    | 0    | 0  | 4       | 1\nVFMADD132PD 0x150(%RSP),%YMM11,%YMM15 | 1     | 0.50 | 0.50 | 0.50 | 0.50 | 0    | 0    | 0  | 6       | 0.50\nVADDPD %YMM13,%YMM15,%YMM1            | 1     | 0.50 | 0.50 | 0    | 0    | 0    | 0    | 0  | 6       | 0.50\nVMULPD %YMM13,%YMM15,%YMM7            | 1     | 0.50 | 0.50 | 0    | 0    | 0    | 0    | 0  | 6       | 0.50\nIMUL 0x38(%RSP),%R13                  | 1     | 0    | 0    | 1    | 0    | 1    | 0    | 0  | 5       | 2\nVFMADD132PD 0x1d0(%RSP),%YMM0,%YMM9   | 1     | 0.50 | 0.50 | 0.50 | 0.50 | 0    | 0    | 0  | 6       | 0.50\nMOV 0x27f2d(%RIP),%R11                | 1     | 0    | 0    | 1    | 0    | 0    | 0    | 0  | 4       | 1\nVADDPD %YMM9,%YMM1,%YMM2              | 1     | 0.50 | 0.50 | 0    | 0    | 0    | 0    | 0  | 6       | 0.50\nLEA (%RDX),%R10                       | 1     | 0    | 0    | 0    | 0    | 0.50 | 0.50 | 0  | 1       | 0.50\nMOV (%R12),%R9                        | 1     | 0    | 0    | 1    | 0    | 0    | 0    | 0  | 4       | 1\nADD %RCX,%R10                         | 1     | 0    | 0    | 0    | 0    | 0.50 | 0.50 | 0  | 1       | 0.50\nVMOVQ %R11,%XMM8                      | 1     | 0.50 | 0.50 | 0    | 0    | 0    | 0    | 0  | 2       | 0.50\nADD %R10,%R13                         | 1     | 0    | 0    | 0    | 0    | 0.50 | 0.50 | 0  | 1       | 0.50\nVSUBPD %YMM7,%YMM2,%YMM4              | 1     | 0.50 | 0.50 | 0    | 0    | 0    | 0    | 0  | 6       | 0.50\nVMOVSD 0x98(%RSP),%XMM5               | 1     | 0    | 0    | 0.50 | 0.50 | 0    | 0    | 0  | 5       | 0.50\nVSUBSD %XMM12,%XMM8,%XMM10            | 1     | 0.50 | 0.50 | 0    | 0    | 0    | 0    | 0  | 6       | 0.50\nVMULSD 0x1b0(%RSP),%XMM5,%XMM6        | 1     | 0.50 | 0.50 | 0.50 | 0.50 | 0    | 0    | 0  | 6       | 0.50\nADD %RDI,%R13                         | 1     | 0    | 0    | 0    | 0    | 0.50 | 0.50 | 0  | 1       | 0.50\nVMULSD 0x130(%RSP),%XMM12,%XMM12      | 1     | 0.50 | 0.50 | 0.50 | 0.50 | 0    | 0    | 0  | 6       | 0.50\nVFNMADD132PD %YMM9,%YMM4,%YMM15       | 1     | 0.50 | 0.50 | 0    | 0    | 0    | 0    | 0  | 6       | 0.50\nVFNMADD231PD %YMM9,%YMM13,%YMM15      | 1     | 0.50 | 0.50 | 0    | 0    | 0    | 0    | 0  | 6       | 0.50\nVSUBSD %XMM5,%XMM8,%XMM13             | 1     | 0.50 | 0.50 | 0    | 0    | 0    | 0    | 0  | 6       | 0.50\nVFMADD231PD %YMM9,%YMM7,%YMM15        | 1     | 0.50 | 0.50 | 0    | 0    | 0    | 0    | 0  | 6       | 0.50\nVMOVUPD %YMM15,0x8(%R9,%R13,8)        | 1     | 0    | 0    | 0.50 | 0.50 | 0    | 0    | 1  | 2       | 1\nVMOVSD 0xa0(%RSP),%XMM15              | 1     | 0    | 0    | 0.50 | 0.50 | 0    | 0    | 0  | 5       | 0.50\nVMULSD 0x230(%RSP),%XMM15,%XMM9       | 1     | 0.50 | 0.50 | 0.50 | 0.50 | 0    | 0    | 0  | 6       | 0.50\nVFMADD132SD 0x170(%RSP),%XMM6,%XMM13  | 1     | 0.50 | 0.50 | 0.50 | 0.50 | 0    | 0    | 0  | 6       | 0.50\nVFMADD231SD 0xf0(%RSP),%XMM10,%XMM12  | 1     | 0.50 | 0.50 | 0.50 | 0.50 | 0    | 0    | 0  | 6       | 0.50\nVSUBSD %XMM15,%XMM8,%XMM11            | 1     | 0.50 | 0.50 | 0    | 0    | 0    | 0    | 0  | 6       | 0.50\nVADDSD %XMM13,%XMM12,%XMM7            | 1     | 0.50 | 0.50 | 0    | 0    | 0    | 0    | 0  | 6       | 0.50\nVMULSD %XMM13,%XMM12,%XMM0            | 1     | 0.50 | 0.50 | 0    | 0    | 0    | 0    | 0  | 6       | 0.50\nVFMADD132SD 0x1f0(%RSP),%XMM9,%XMM11  | 1     | 0.50 | 0.50 | 0.50 | 0.50 | 0    | 0    | 0  | 6       | 0.50\nVADDSD %XMM11,%XMM7,%XMM1             | 1     | 0.50 | 0.50 | 0    | 0    | 0    | 0    | 0  | 6       | 0.50\nVSUBSD %XMM0,%XMM1,%XMM2              | 1     | 0.50 | 0.50 | 0    | 0    | 0    | 0    | 0  | 6       | 0.50\nVFNMADD132SD %XMM11,%XMM2,%XMM13      | 1     | 0.50 | 0.50 | 0    | 0    | 0    | 0    | 0  | 6       | 0.50\nVFNMADD132SD %XMM11,%XMM13,%XMM12     | 1     | 0.50 | 0.50 | 0    | 0    | 0    | 0    | 0  | 6       | 0.50\nVFMADD231SD %XMM0,%XMM11,%XMM12       | 1     | 0.50 | 0.50 | 0    | 0    | 0    | 0    | 0  | 6       | 0.50\nVMOVSD %XMM12,0x28(%R9,%R13,8)        | 1     | 0    | 0    | 0.50 | 0.50 | 0    | 0    | 1  | 2       | 1\nJMP f088 <setiv_._omp_fn.0+0x148>     | 1     | 0    | 0    | 0    | 0    | 0    | 1    | 0  | 0       | 2\n",
        },
      },
      header = {
        "Warnings:\nDetected a function call instruction: ignoring called function instructions.\nRerun with --follow-calls=append to include them to analysis  or with --follow-calls=inline to simulate inlining.",
        "4% of peak computational performance is used (1.54 out of 32.00 FLOP per cycle (GFLOPS @ 1GHz))",
      },
      brief = {
      },
      gain = {
        {
          workaround = " - Try to reorganize arrays of structures to structures of arrays\n - Consider to permute loops (see vectorization gain report)\n - To reference allocatable arrays, use \"allocatable\" instead of \"pointer\" pointers or qualify them with the \"contiguous\" attribute (Fortran 2008)\n - For structures, limit to one indirection. For example, use a_b%c instead of a%b%c with a_b set to a%b before this loop\n",
          title = "Code clean check",
          txt = "Detected a slowdown caused by scalar integer instructions (typically used for address computation).\nBy removing them, you can lower the cost of an iteration from 72.00 to 34.00 cycles (2.12x speedup).",
        },
        {
          workaround = " - Try another compiler or update/tune your current one:\n  * recompile with fassociative-math (included in Ofast or ffast-math) to extend loop vectorization to FP reductions.\n - Remove inter-iterations dependences from your loop and make it unit-stride:\n  * If your arrays have 2 or more dimensions, check whether elements are accessed contiguously and, otherwise, try to permute loops accordingly:\nFortran storage order is column-major: do i do j a(i,j) = b(i,j) (slow, non stride 1) => do i do j a(j,i) = b(i,j) (fast, stride 1)\n  * If your loop streams arrays of structures (AoS), try to use structures of arrays instead (SoA):\ndo i a(i)%x = b(i)%x (slow, non stride 1) => do i a%x(i) = b%x(i) (fast, stride 1)\n",
          details = "34% of SSE/AVX instructions are used in vector version (process two or more data elements in vector registers):\n - 42% of SSE/AVX loads are used in vector version.\n - 17% of SSE/AVX stores are used in vector version.\n - 50% of SSE/AVX addition or subtraction instructions are used in vector version.\n - 50% of SSE/AVX multiply instructions are used in vector version.\n - 50% of SSE/AVX fused multiply-add instructions are used in vector version.\n - 0% of SSE/AVX nil are used in vector version.\n - 12% of SSE/AVX instructions that are not load, store, addition, subtraction nor multiply instructions are used in vector version.\nSince your execution units are vector units, only a fully vectorized loop can use their full power.\n",
          title = "Vectorization",
          txt = "Your loop is poorly vectorized.\nOnly 24% of vector register length is used (average across all SSE/AVX instructions).\nBy fully vectorizing your loop, you can lower the cost of an iteration from 72.00 to 10.76 cycles (6.69x speedup).",
        },
        {
          title = "Execution units bottlenecks",
          txt = "Found no such bottlenecks but see expert reports for more complex bottlenecks.",
        },
      },
      potential = {
        {
          workaround = "Try to change order in which elements are evaluated (using parentheses) in arithmetic expressions containing both ADD/SUB and MUL operations to enable your compiler to generate FMA instructions wherever possible.\nFor instance a + b*c is a valid FMA (MUL then ADD).\nHowever (a+b)* c cannot be translated into an FMA (ADD then MUL).",
          title = "FMA",
          txt = "Detected 30 FMA (fused multiply-add) operations.\nPresence of both ADD/SUB and MUL operations.",
        },
      },
    },
  },
  AVG = {
      hint = {
        {
          title = "Type of elements and instruction set",
          txt = "5 SSE or AVX instructions are processing arithmetic or math operations on double precision FP elements in scalar mode (one at a time).\n5 AVX instructions are processing arithmetic or math operations on double precision FP elements in vector mode (four at a time).\n",
        },
        {
          title = "Matching between your loop (in the source code) and the binary loop",
          txt = "The binary loop is composed of 37 FP arithmetical operations:\n - 20: addition or subtraction (10 inside FMA instructions)\n - 16.67: multiply (10 inside FMA instructions)\n - 0.33: divide\nThe binary loop is loading 190 bytes (23 double precision FP elements).\nThe binary loop is storing 70 bytes (8 double precision FP elements).",
        },
        {
          title = "Arithmetic intensity",
          txt = "Arithmetic intensity is 0.14 FP operations per loaded or stored byte.",
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
          txt = "nb instructions    : 53.67\nloop length        : 300.67\nused x86 registers : 8.67\nused mmx registers : 0\nused xmm registers : 5\nused ymm registers : 5\nused zmm registers : 0\nnb stack references: 9.33\n",
        },
        {
          title = "Front-end",
          txt = "MACRO FUSION NOT POSSIBLE\ninstruction fetch    : 19.33 cycles\ninstruction queue    : 26.83 cycles\ndecoding             : 26.83 cycles\nmicro-operation queue: 28.00 cycles\nfront end            : 28.00 cycles\n",
        },
        {
          title = "Back-end",
          txt = "       | P0   | P1   | P2    | P3    | P4    | P5    | P6\n-----------------------------------------------------------\nuops   | 6.33 | 6.33 | 11.33 | 11.00 | 11.67 | 11.67 | 6.33\ncycles | 6.33 | 6.33 | 11.33 | 11.00 | 11.67 | 11.67 | 6.33\n\nCycles executing div or sqrt instructions: 4.00-10.67\nLongest recurrence chain latency (RecMII): 2.00\n",
        },
        {
          title = "Cycles summary",
          txt = "Front-end : 28.00\nDispatch  : 13.33\nDIV/SQRT  : 4.00-10.67\nData deps.: 2.00\nOverall L1: 28.00\n",
        },
        {
          title = "Vectorization ratios",
          txt = "INT\nall    : 0%\nload   : 0%\nstore  : 0%\nmul    : NA (no mul vectorizable/vectorized instructions)\nadd-sub: 0%\nfma    : NA (no fma vectorizable/vectorized instructions)\nother  : 0%\nFP\nall     : 47%\nload    : 50%\nstore   : 42%\nmul     : 50%\nadd-sub : 50%\nfma     : 50%\ndiv/sqrt: 0%\nother   : 50%\nINT+FP\nall     : 11%\nload    : 14%\nstore   : 5%\nmul     : 50%\nadd-sub : 25%\nfma     : 50%\ndiv/sqrt: 0%\nother   : 4%\n",
        },
        {
          title = "Vector efficiency ratios",
          txt = "INT\nall    : 8%\nload   : 8%\nstore  : 8%\nmul    : NA (no mul vectorizable/vectorized instructions)\nadd-sub: 6%\nfma    : NA (no fma vectorizable/vectorized instructions)\nother  : 7%\nFP\nall     : 30%\nload    : 31%\nstore   : 28%\nmul     : 31%\nadd-sub : 31%\nfma     : 31%\ndiv/sqrt: 12%\nother   : 31%\nINT+FP\nall     : 12%\nload    : 13%\nstore   : 10%\nmul     : 31%\nadd-sub : 18%\nfma     : 31%\ndiv/sqrt: 12%\nother   : 9%\n",
        },
        {
          title = "Cycles and memory resources usage",
          txt = "Assuming all data fit into the L1 cache, each iteration of the binary loop takes 28.00 cycles. At this rate:\n - 2% of peak load performance is reached (3.24 out of 128.00 bytes loaded per cycle (GB/s @ 1GHz))\n - 2% of peak store performance is reached (1.40 out of 64.00 bytes stored per cycle (GB/s @ 1GHz))\n",
        },
      },
      header = {
        "1% of peak computational performance is used (0.51 out of 32.00 FLOP per cycle (GFLOPS @ 1GHz))",
      },
      brief = {
      },
      gain = {
        {
          workaround = " - Try another compiler or update/tune your current one:\n  * recompile with fassociative-math (included in Ofast or ffast-math) to extend loop vectorization to FP reductions.\n - Remove inter-iterations dependences from your loop and make it unit-stride:\n  * If your arrays have 2 or more dimensions, check whether elements are accessed contiguously and, otherwise, try to permute loops accordingly:\nFortran storage order is column-major: do i do j a(i,j) = b(i,j) (slow, non stride 1) => do i do j a(j,i) = b(i,j) (fast, stride 1)\n  * If your loop streams arrays of structures (AoS), try to use structures of arrays instead (SoA):\ndo i a(i)%x = b(i)%x (slow, non stride 1) => do i a%x(i) = b%x(i) (fast, stride 1)\n",
          details = "11% of SSE/AVX instructions are used in vector version (process two or more data elements in vector registers):\n - 14% of SSE/AVX loads are used in vector version.\n - 5% of SSE/AVX stores are used in vector version.\n - 25% of SSE/AVX addition or subtraction instructions are used in vector version.\n - 50% of SSE/AVX multiply instructions are used in vector version.\n - 50% of SSE/AVX fused multiply-add instructions are used in vector version.\n - 0% of SSE/AVX nil are used in vector version.\n - 4% of SSE/AVX instructions that are not load, store, addition, subtraction nor multiply instructions are used in vector version.\nSince your execution units are vector units, only a fully vectorized loop can use their full power.\n",
          title = "Vectorization",
          txt = "Your loop is not vectorized.\nOnly 12% of vector register length is used (average across all SSE/AVX instructions).\nBy fully vectorizing your loop, you can lower the cost of an iteration from 28.00 to 3.85 cycles (7.28x speedup).",
        },
      },
      potential = {
        {
          workaround = "Try to change order in which elements are evaluated (using parentheses) in arithmetic expressions containing both ADD/SUB and MUL operations to enable your compiler to generate FMA instructions wherever possible.\nEstimated speedup by perfect pairing: 4.67x.\nFor instance a + b*c is a valid FMA (MUL then ADD).\nHowever (a+b)* c cannot be translated into an FMA (ADD then MUL).",
          title = "FMA",
          txt = "Detected 10 FMA (fused multiply-add) operations.\nPresence of both ADD/SUB and MUL operations.",
        },
      },
    },
  common = {
    header = {
      "The loop is defined in /users/user2210/NPB3.4-MZ-MPI/LU-MZ/setiv.f90:40-60.\n",
      "The related source loop is not unrolled or unrolled with no peel/tail loop.",
      "This loop has 3 execution paths.\n",
      "The presence of multiple execution paths is typically the main/first bottleneck.\nTry to simplify control inside loop: ideally, try to remove all conditional expressions, for example by (if applicable):\n - hoisting them (moving them outside the loop)\n - turning them into conditional moves, MIN or MAX\n\n",
      "Ex: if (x<0) x=0 => x = max(0,x) (Fortran instrinsic procedure)\n",
    },
    nb_paths = 3,
  },
}
