_cqa_text_report = {
  paths = {
    {
      hint = {
        {
          workaround = " - Try to reorganize arrays of structures to structures of arrays\n - Consider to permute loops (see vectorization gain report)\n",
          details = " - Constant unknown stride: 1 occurrence(s)\nNon-unit stride (uncontiguous) accesses are not efficiently using data caches\n",
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
          txt = "3 SSE or AVX instructions are processing arithmetic or math operations on double precision FP elements in scalar mode (one at a time).\n",
        },
        {
          title = "Matching between your loop (in the source code) and the binary loop",
          txt = "The binary loop is composed of 3 FP arithmetical operations:\n - 2: addition or subtraction (1 inside FMA instructions)\n - 1: multiply (all inside FMA instructions)\nThe binary loop is loading 24 bytes (3 double precision FP elements).\nThe binary loop is storing 4 bytes (0 double precision FP elements).",
        },
        {
          title = "Arithmetic intensity",
          txt = "Arithmetic intensity is 0.11 FP operations per loaded or stored byte.",
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
          txt = "nb instructions    : 22\nloop length        : 83\nused x86 registers : 11\nused mmx registers : 0\nused xmm registers : 5\nused ymm registers : 0\nused zmm registers : 0\nnb stack references: 2\n",
        },
        {
          title = "Front-end",
          txt = "MACRO FUSION NOT POSSIBLE\ninstruction fetch    : 6.00 cycles\ninstruction queue    : 11.00 cycles\ndecoding             : 11.00 cycles\nmicro-operation queue: 11.00 cycles\nfront end            : 11.00 cycles\n",
        },
        {
          title = "Back-end",
          txt = "       | P0   | P1   | P2   | P3   | P4   | P5   | P6\n-------------------------------------------------------\nuops   | 2.50 | 2.50 | 5.00 | 1.00 | 6.00 | 6.00 | 1.00\ncycles | 2.50 | 2.50 | 5.00 | 1.00 | 6.00 | 6.00 | 1.00\n\nCycles executing div or sqrt instructions: NA\nLongest recurrence chain latency (RecMII): 5.00\n",
        },
        {
          title = "Cycles summary",
          txt = "Front-end : 11.00\nDispatch  : 6.00\nData deps.: 5.00\nOverall L1: 11.00\n",
        },
        {
          title = "Vectorization ratios",
          txt = "INT\nall    : 0%\nload   : 0%\nstore  : 0%\nmul    : 0%\nadd-sub: 0%\nfma    : NA (no fma vectorizable/vectorized instructions)\nother  : 0%\nFP\nall     : 0%\nload    : NA (no load vectorizable/vectorized instructions)\nstore   : NA (no store vectorizable/vectorized instructions)\nmul     : NA (no mul vectorizable/vectorized instructions)\nadd-sub : 0%\nfma     : 0%\ndiv/sqrt: NA (no div/sqrt vectorizable/vectorized instructions)\nother   : 0%\nINT+FP\nall     : 0%\nload    : 0%\nstore   : 0%\nmul     : 0%\nadd-sub : 0%\nfma     : 0%\ndiv/sqrt: NA (no div/sqrt vectorizable/vectorized instructions)\nother   : 0%\n",
        },
        {
          title = "Vector efficiency ratios",
          txt = "INT\nall    : 7%\nload   : 6%\nstore  : 6%\nmul    : 6%\nadd-sub: 6%\nfma    : NA (no fma vectorizable/vectorized instructions)\nother  : 12%\nFP\nall     : 12%\nload    : NA (no load vectorizable/vectorized instructions)\nstore   : NA (no store vectorizable/vectorized instructions)\nmul     : NA (no mul vectorizable/vectorized instructions)\nadd-sub : 12%\nfma     : 12%\ndiv/sqrt: NA (no div/sqrt vectorizable/vectorized instructions)\nother   : 12%\nINT+FP\nall     : 8%\nload    : 6%\nstore   : 6%\nmul     : 6%\nadd-sub : 8%\nfma     : 12%\ndiv/sqrt: NA (no div/sqrt vectorizable/vectorized instructions)\nother   : 12%\n",
        },
        {
          title = "Cycles and memory resources usage",
          txt = "Assuming all data fit into the L1 cache, each iteration of the binary loop takes 11.00 cycles. At this rate:\n - 1% of peak load performance is reached (2.18 out of 128.00 bytes loaded per cycle (GB/s @ 1GHz))\n - 0% of peak store performance is reached (0.36 out of 64.00 bytes stored per cycle (GB/s @ 1GHz))\n",
        },
        {
          title = "Front-end bottlenecks",
          txt = "Performance is limited by instruction throughput (loading/decoding program instructions to execution core) (front-end is a bottleneck).\n\nBy removing all these bottlenecks, you can lower the cost of an iteration from 11.00 to 6.00 cycles (1.83x speedup).\n",
        },
        {
          title = "ASM code",
          txt = "In the binary file, the address of the loop is: 2ee0\n\nInstruction                      | Nb FU | P0   | P1   | P2   | P3   | P4   | P5   | P6 | Latency | Recip. throughput\n---------------------------------------------------------------------------------------------------------------------\nVCVTSI2SD %R10,%XMM1,%XMM1       | 1     | 1    | 0    | 0    | 0    | 0    | 0    | 0  | 5       | 1\nVSUBSD %XMM8,%XMM1,%XMM9         | 1     | 0.50 | 0.50 | 0    | 0    | 0    | 0    | 0  | 6       | 0.50\nVFMADD132SD %XMM9,%XMM2,%XMM9    | 1     | 0.50 | 0.50 | 0    | 0    | 0    | 0    | 0  | 6       | 0.50\nVCOMISD %XMM9,%XMM10             | 2     | 1    | 1    | 0    | 0    | 0    | 0    | 0  | 7       | 7\nJB 2f68 <setup_init_state+0x5a8> | 1     | 0    | 0    | 0    | 0    | 0    | 1    | 0  | 0       | 1-2\nMOV 0xc(%RBP),%R8D               | 1     | 0    | 0    | 1    | 0    | 0    | 0    | 0  | 4       | 1\nLEA (%RSI),%R9D                  | 1     | 0    | 0    | 0    | 0    | 0.50 | 0.50 | 0  | 1       | 0.50\nSUB %EDX,%R9D                    | 1     | 0    | 0    | 0    | 0    | 0.50 | 0.50 | 0  | 1       | 0.50\nLEA (%R10),%EDI                  | 1     | 0    | 0    | 0    | 0    | 0.50 | 0.50 | 0  | 1       | 0.50\nMOV (%RBP),%RDX                  | 1     | 0    | 0    | 1    | 0    | 0    | 0    | 0  | 4       | 1\nSUB %ECX,%EDI                    | 1     | 0    | 0    | 0    | 0    | 0.50 | 0.50 | 0  | 1       | 0.50\nIMUL %R9D,%R8D                   | 1     | 0    | 0    | 0    | 0    | 1    | 0    | 0  | 3       | 1\nLEA 0x1(%R10),%R10               | 1     | 0    | 0    | 0    | 0    | 0.50 | 0.50 | 0  | 1       | 0.50\nADD %R8D,%EDI                    | 1     | 0    | 0    | 0    | 0    | 0.50 | 0.50 | 0  | 1       | 0.50\nMOVL $0x1,(%RDX,%RDI,4)          | 1     | 0    | 0    | 0.50 | 0.50 | 0    | 0    | 1  | 1       | 1\nMOV 0x4(%R12),%ECX               | 1     | 0    | 0    | 1    | 0    | 0    | 0    | 0  | 4       | 1\nMOV 0xc(%RBX),%R9D               | 1     | 0    | 0    | 1    | 0    | 0    | 0    | 0  | 4       | 1\nMOV (%R12),%EDX                  | 1     | 0    | 0    | 1    | 0    | 0    | 0    | 0  | 4       | 1\nADD %ECX,%R9D                    | 1     | 0    | 0    | 0    | 0    | 0.50 | 0.50 | 0  | 1       | 0.50\nMOV %R9D,%EAX                    | 1     | 0    | 0    | 0    | 0    | 0.50 | 0.50 | 0  | 0       | 0.50\nCMP %RAX,%R10                    | 1     | 0    | 0    | 0    | 0    | 0.50 | 0.50 | 0  | 1       | 0.50\nJB 2ee0 <setup_init_state+0x520> | 1     | 0    | 0    | 0    | 0    | 0    | 1    | 0  | 0       | 1-2\n",
        },
      },
      header = {
        "0% of peak computational performance is used (0.27 out of 32.00 FLOP per cycle (GFLOPS @ 1GHz))",
      },
      brief = {
      },
      gain = {
        {
          workaround = " - Try to reorganize arrays of structures to structures of arrays\n - Consider to permute loops (see vectorization gain report)\n",
          title = "Code clean check",
          txt = "Detected a slowdown caused by scalar integer instructions (typically used for address computation).\nBy removing them, you can lower the cost of an iteration from 11.00 to 5.00 cycles (2.20x speedup).",
        },
        {
          workaround = " - Try another compiler or update/tune your current one\n - Remove inter-iterations dependences from your loop and make it unit-stride:\n  * If your arrays have 2 or more dimensions, check whether elements are accessed contiguously and, otherwise, try to permute loops accordingly:\nC storage order is row-major: for(i) for(j) a[j][i] = b[j][i]; (slow, non stride 1) => for(i) for(j) a[i][j] = b[i][j]; (fast, stride 1)\n  * If your loop streams arrays of structures (AoS), try to use structures of arrays instead (SoA):\nfor(i) a[i].x = b[i].x; (slow, non stride 1) => for(i) a.x[i] = b.x[i]; (fast, stride 1)\n",
          details = "All SSE/AVX instructions are used in scalar version (process only one data element in vector registers).\nSince your execution units are vector units, only a vectorized loop can use their full power.\n",
          title = "Vectorization",
          txt = "Your loop is not vectorized.\nOnly 8% of vector register length is used (average across all SSE/AVX instructions).\nBy vectorizing your loop, you can lower the cost of an iteration from 11.00 to 0.81 cycles (13.54x speedup).",
        },
        {
          title = "Execution units bottlenecks",
          txt = "Found no such bottlenecks but see expert reports for more complex bottlenecks.",
        },
      },
      potential = {
        {
          title = "FMA",
          txt = "Detected 1 FMA (fused multiply-add) operations.",
        },
      },
    },
    {
      hint = {
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
          title = "Matching between your loop (in the source code) and the binary loop",
          txt = "The binary loop is composed of 3 FP arithmetical operations:\n - 2: addition or subtraction (1 inside FMA instructions)\n - 1: multiply (all inside FMA instructions)\nThe binary loop does not load or store any data.",
        },
      },
      expert = {
        {
          title = "General properties",
          txt = "nb instructions    : 9\nloop length        : 38\nused x86 registers : 3\nused mmx registers : 0\nused xmm registers : 5\nused ymm registers : 0\nused zmm registers : 0\nnb stack references: 0\n",
        },
        {
          title = "Front-end",
          txt = "MACRO FUSION NOT POSSIBLE\ninstruction fetch    : 3.00 cycles\ninstruction queue    : 4.50 cycles\ndecoding             : 4.50 cycles\nmicro-operation queue: 5.00 cycles\nfront end            : 5.00 cycles\n",
        },
        {
          title = "Back-end",
          txt = "       | P0   | P1   | P2   | P3   | P4   | P5   | P6\n-------------------------------------------------------\nuops   | 2.50 | 2.50 | 0.00 | 0.00 | 2.50 | 2.50 | 0.00\ncycles | 2.50 | 2.50 | 0.00 | 0.00 | 2.50 | 2.50 | 0.00\n\nCycles executing div or sqrt instructions: NA\nLongest recurrence chain latency (RecMII): 5.00\n",
        },
        {
          title = "Cycles summary",
          txt = "Front-end : 5.00\nDispatch  : 2.50\nData deps.: 5.00\nOverall L1: 5.00\n",
        },
        {
          title = "Vectorization ratios",
          txt = "INT\nall    : 0%\nload   : NA (no load vectorizable/vectorized instructions)\nstore  : NA (no store vectorizable/vectorized instructions)\nmul    : NA (no mul vectorizable/vectorized instructions)\nadd-sub: NA (no add-sub vectorizable/vectorized instructions)\nfma    : NA (no fma vectorizable/vectorized instructions)\nother  : 0%\nFP\nall     : 0%\nload    : NA (no load vectorizable/vectorized instructions)\nstore   : NA (no store vectorizable/vectorized instructions)\nmul     : NA (no mul vectorizable/vectorized instructions)\nadd-sub : 0%\nfma     : 0%\ndiv/sqrt: NA (no div/sqrt vectorizable/vectorized instructions)\nother   : 0%\nINT+FP\nall     : 0%\nload    : NA (no load vectorizable/vectorized instructions)\nstore   : NA (no store vectorizable/vectorized instructions)\nmul     : NA (no mul vectorizable/vectorized instructions)\nadd-sub : 0%\nfma     : 0%\ndiv/sqrt: NA (no div/sqrt vectorizable/vectorized instructions)\nother   : 0%\n",
        },
        {
          title = "Vector efficiency ratios",
          txt = "INT\nall    : 12%\nload   : NA (no load vectorizable/vectorized instructions)\nstore  : NA (no store vectorizable/vectorized instructions)\nmul    : NA (no mul vectorizable/vectorized instructions)\nadd-sub: NA (no add-sub vectorizable/vectorized instructions)\nfma    : NA (no fma vectorizable/vectorized instructions)\nother  : 12%\nFP\nall     : 12%\nload    : NA (no load vectorizable/vectorized instructions)\nstore   : NA (no store vectorizable/vectorized instructions)\nmul     : NA (no mul vectorizable/vectorized instructions)\nadd-sub : 12%\nfma     : 12%\ndiv/sqrt: NA (no div/sqrt vectorizable/vectorized instructions)\nother   : 12%\nINT+FP\nall     : 12%\nload    : NA (no load vectorizable/vectorized instructions)\nstore   : NA (no store vectorizable/vectorized instructions)\nmul     : NA (no mul vectorizable/vectorized instructions)\nadd-sub : 12%\nfma     : 12%\ndiv/sqrt: NA (no div/sqrt vectorizable/vectorized instructions)\nother   : 12%\n",
        },
        {
          title = "Cycles and memory resources usage",
          txt = "Assuming all data fit into the L1 cache, each iteration of the binary loop takes 5.00 cycles. At this rate:\n",
        },
        {
          title = "Front-end bottlenecks",
          txt = "Performance is limited by instruction throughput (loading/decoding program instructions to execution core) (front-end is a bottleneck).\n\nBy removing all these bottlenecks, you can lower the cost of an iteration from 5.00 to 4.50 cycles (1.11x speedup).\n",
        },
        {
          title = "ASM code",
          txt = "In the binary file, the address of the loop is: 2ee0\n\nInstruction                      | Nb FU | P0   | P1   | P2 | P3 | P4   | P5   | P6 | Latency | Recip. throughput\n-----------------------------------------------------------------------------------------------------------------\nVCVTSI2SD %R10,%XMM1,%XMM1       | 1     | 1    | 0    | 0  | 0  | 0    | 0    | 0  | 5       | 1\nVSUBSD %XMM8,%XMM1,%XMM9         | 1     | 0.50 | 0.50 | 0  | 0  | 0    | 0    | 0  | 6       | 0.50\nVFMADD132SD %XMM9,%XMM2,%XMM9    | 1     | 0.50 | 0.50 | 0  | 0  | 0    | 0    | 0  | 6       | 0.50\nVCOMISD %XMM9,%XMM10             | 2     | 1    | 1    | 0  | 0  | 0    | 0    | 0  | 7       | 7\nJB 2f68 <setup_init_state+0x5a8> | 1     | 0    | 0    | 0  | 0  | 0    | 1    | 0  | 0       | 1-2\nLEA 0x1(%R10),%R10               | 1     | 0    | 0    | 0  | 0  | 0.50 | 0.50 | 0  | 1       | 0.50\nLEA (%R9),%R11D                  | 1     | 0    | 0    | 0  | 0  | 0.50 | 0.50 | 0  | 1       | 0.50\nCMP %R10,%R11                    | 1     | 0    | 0    | 0  | 0  | 0.50 | 0.50 | 0  | 1       | 0.50\nJA 2ee0 <setup_init_state+0x520> | 1     | 0    | 0    | 0  | 0  | 0    | 1    | 0  | 0       | 1-2\n",
        },
      },
      header = {
        "1% of peak computational performance is used (0.60 out of 32.00 FLOP per cycle (GFLOPS @ 1GHz))",
      },
      brief = {
      },
      gain = {
        {
          workaround = " - Try another compiler or update/tune your current one\n - Remove inter-iterations dependences from your loop and make it unit-stride:\n  * If your arrays have 2 or more dimensions, check whether elements are accessed contiguously and, otherwise, try to permute loops accordingly:\nC storage order is row-major: for(i) for(j) a[j][i] = b[j][i]; (slow, non stride 1) => for(i) for(j) a[i][j] = b[i][j]; (fast, stride 1)\n  * If your loop streams arrays of structures (AoS), try to use structures of arrays instead (SoA):\nfor(i) a[i].x = b[i].x; (slow, non stride 1) => for(i) a.x[i] = b.x[i]; (fast, stride 1)\n",
          details = "All SSE/AVX instructions are used in scalar version (process only one data element in vector registers).\nSince your execution units are vector units, only a vectorized loop can use their full power.\n",
          title = "Vectorization",
          txt = "Your loop is not vectorized.\n8 data elements could be processed at once in vector registers.\nBy vectorizing your loop, you can lower the cost of an iteration from 5.00 to 0.62 cycles (8.00x speedup).",
        },
        {
          title = "Execution units bottlenecks",
          txt = "Found no such bottlenecks but see expert reports for more complex bottlenecks.",
        },
      },
      potential = {
        {
          title = "FMA",
          txt = "Detected 1 FMA (fused multiply-add) operations.",
        },
      },
    },
  },
  AVG = {
      hint = {
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
          title = "Matching between your loop (in the source code) and the binary loop",
          txt = "The binary loop is composed of 3 FP arithmetical operations:\n - 2: addition or subtraction (1 inside FMA instructions)\n - 1: multiply (all inside FMA instructions)\nThe binary loop is loading 12 bytes (1 double precision FP elements).\nThe binary loop is storing 2 bytes (0 double precision FP elements).",
        },
        {
          title = "Arithmetic intensity",
          txt = "Arithmetic intensity is 0.21 FP operations per loaded or stored byte.",
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
          txt = "nb instructions    : 15.50\nloop length        : 60.50\nused x86 registers : 7\nused mmx registers : 0\nused xmm registers : 5\nused ymm registers : 0\nused zmm registers : 0\nnb stack references: 1\n",
        },
        {
          title = "Front-end",
          txt = "MACRO FUSION NOT POSSIBLE\ninstruction fetch    : 4.50 cycles\ninstruction queue    : 7.75 cycles\ndecoding             : 7.75 cycles\nmicro-operation queue: 8.00 cycles\nfront end            : 8.00 cycles\n",
        },
        {
          title = "Back-end",
          txt = "       | P0   | P1   | P2   | P3   | P4   | P5   | P6\n-------------------------------------------------------\nuops   | 2.50 | 2.50 | 2.50 | 0.50 | 4.25 | 4.25 | 0.50\ncycles | 2.50 | 2.50 | 2.50 | 0.50 | 4.25 | 4.25 | 0.50\n\nCycles executing div or sqrt instructions: NA\nLongest recurrence chain latency (RecMII): 5.00\n",
        },
        {
          title = "Cycles summary",
          txt = "Front-end : 8.00\nDispatch  : 4.25\nData deps.: 5.00\nOverall L1: 8.00\n",
        },
        {
          title = "Vectorization ratios",
          txt = "INT\nall    : 0%\nload   : 0%\nstore  : 0%\nmul    : 0%\nadd-sub: 0%\nfma    : NA (no fma vectorizable/vectorized instructions)\nother  : 0%\nFP\nall     : 0%\nload    : NA (no load vectorizable/vectorized instructions)\nstore   : NA (no store vectorizable/vectorized instructions)\nmul     : NA (no mul vectorizable/vectorized instructions)\nadd-sub : 0%\nfma     : 0%\ndiv/sqrt: NA (no div/sqrt vectorizable/vectorized instructions)\nother   : 0%\nINT+FP\nall     : 0%\nload    : 0%\nstore   : 0%\nmul     : 0%\nadd-sub : 0%\nfma     : 0%\ndiv/sqrt: NA (no div/sqrt vectorizable/vectorized instructions)\nother   : 0%\n",
        },
        {
          title = "Vector efficiency ratios",
          txt = "INT\nall    : 9%\nload   : 6%\nstore  : 6%\nmul    : 6%\nadd-sub: 6%\nfma    : NA (no fma vectorizable/vectorized instructions)\nother  : 12%\nFP\nall     : 12%\nload    : NA (no load vectorizable/vectorized instructions)\nstore   : NA (no store vectorizable/vectorized instructions)\nmul     : NA (no mul vectorizable/vectorized instructions)\nadd-sub : 12%\nfma     : 12%\ndiv/sqrt: NA (no div/sqrt vectorizable/vectorized instructions)\nother   : 12%\nINT+FP\nall     : 10%\nload    : 6%\nstore   : 6%\nmul     : 6%\nadd-sub : 10%\nfma     : 12%\ndiv/sqrt: NA (no div/sqrt vectorizable/vectorized instructions)\nother   : 12%\n",
        },
        {
          title = "Cycles and memory resources usage",
          txt = "Assuming all data fit into the L1 cache, each iteration of the binary loop takes 8.00 cycles. At this rate:\n - 0% of peak load performance is reached (1.09 out of 128.00 bytes loaded per cycle (GB/s @ 1GHz))\n - 0% of peak store performance is reached (0.18 out of 64.00 bytes stored per cycle (GB/s @ 1GHz))\n",
        },
      },
      header = {
        "1% of peak computational performance is used (0.44 out of 32.00 FLOP per cycle (GFLOPS @ 1GHz))",
      },
      brief = {
      },
      gain = {
        {
          workaround = " - Try another compiler or update/tune your current one\n - Remove inter-iterations dependences from your loop and make it unit-stride:\n  * If your arrays have 2 or more dimensions, check whether elements are accessed contiguously and, otherwise, try to permute loops accordingly:\nC storage order is row-major: for(i) for(j) a[j][i] = b[j][i]; (slow, non stride 1) => for(i) for(j) a[i][j] = b[i][j]; (fast, stride 1)\n  * If your loop streams arrays of structures (AoS), try to use structures of arrays instead (SoA):\nfor(i) a[i].x = b[i].x; (slow, non stride 1) => for(i) a.x[i] = b.x[i]; (fast, stride 1)\n",
          details = "All SSE/AVX instructions are used in scalar version (process only one data element in vector registers).\nSince your execution units are vector units, only a vectorized loop can use their full power.\n",
          title = "Vectorization",
          txt = "Your loop is not vectorized.\nOnly 10% of vector register length is used (average across all SSE/AVX instructions).\nBy vectorizing your loop, you can lower the cost of an iteration from 8.00 to 0.72 cycles (11.13x speedup).",
        },
      },
      potential = {
        {
          title = "FMA",
          txt = "Detected 1 FMA (fused multiply-add) operations.",
        },
      },
    },
  common = {
    header = {
      "The loop is defined in:\n - /users/user2207/lbm_opt/src/lbm_init.c:26-30\n - /users/user2207/lbm_opt/src/../include/lbm_struct.h:148\n\n",
      "The related source loop is not unrolled or unrolled with no peel/tail loop.",
      "The structure of this loop is probably <if then [else] end>.\n",
      "The presence of multiple execution paths is typically the main/first bottleneck.\nTry to simplify control inside loop: ideally, try to remove all conditional expressions, for example by (if applicable):\n - hoisting them (moving them outside the loop)\n - turning them into conditional moves, MIN or MAX\n\n",
      "Ex: if (x<0) x=0 => x = (x<0 ? 0 : x) (or MAX(0,x) after defining the corresponding macro)\n",
    },
    nb_paths = 2,
  },
}
