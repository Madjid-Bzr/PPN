_cqa_text_report = {
  paths = {
    {
      hint = {
        {
          workaround = " - Try to reorganize arrays of structures to structures of arrays\n - Consider to permute loops (see vectorization gain report)\n",
          details = " - Constant unknown stride: 2 occurrence(s)\nNon-unit stride (uncontiguous) accesses are not efficiently using data caches\n",
          title = "Slow data structures access",
          txt = "Detected data structures (typically arrays) that cannot be efficiently read/written",
        },
        {
          workaround = "Use vector aligned instructions:\n 1) align your arrays on 64 bytes boundaries: replace { void *p = malloc (size); } with { void *p; posix_memalign (&p, 64, size); }.\n 2) inform your compiler that your arrays are vector aligned: if array 'foo' is 64 bytes-aligned, define a pointer 'p_foo' as __builtin_assume_aligned (foo, 64) and use it instead of 'foo' in the loop.\n",
          details = " - VEXTRACTF128: 3 occurrences\n - VEXTRACTF64X4: 3 occurrences\n",
          title = "Vector unaligned load/store instructions",
          txt = "Detected 6 suboptimal vector unaligned load/store instructions.\n",
        },
        {
          workaround = "Avoid mixing data with different types. In particular, check if the type of constants is the same as array elements. Use double instead of single precision only when/where needed by numerical stability and avoid mixing precision. In C/C++, FP constants are double precision by default and must be suffixed by 'f' to make them single precision.",
          details = " - VCVTSD2SS (FP64 to FP32, scalar): 2 occurrences\n",
          title = "Conversion instructions",
          txt = "Detected expensive conversion instructions.",
        },
        {
          title = "Type of elements and instruction set",
          txt = "6 SSE or AVX instructions are processing arithmetic or math operations on double precision FP elements in scalar mode (one at a time).\n6 SSE or AVX instructions are processing arithmetic or math operations on double precision FP elements in vector mode (two at a time).\n3 AVX instructions are processing arithmetic or math operations on double precision FP elements in vector mode (four at a time).\n2 AVX-512 instructions are processing arithmetic or math operations on double precision FP elements in vector mode (eight at a time).\n",
        },
        {
          title = "Matching between your loop (in the source code) and the binary loop",
          txt = "The binary loop is composed of 47 FP arithmetical operations:\n - 26: addition or subtraction (1 inside FMA instructions)\n - 18: multiply (1 inside FMA instructions)\n - 2: divide\n - 1: square root\nThe binary loop is loading 136 bytes (17 double precision FP elements).\nThe binary loop is storing 8 bytes (1 double precision FP elements).",
        },
        {
          title = "Arithmetic intensity",
          txt = "Arithmetic intensity is 0.33 FP operations per loaded or stored byte.",
        },
      },
      expert = {
        {
          title = "General properties",
          txt = "nb instructions    : 45\nloop length        : 221\nused x86 registers : 11\nused mmx registers : 0\nused xmm registers : 13\nused ymm registers : 8\nused zmm registers : 6\nnb stack references: 0\nADD-SUB / MUL ratio: 3.33\n",
        },
        {
          title = "Front-end",
          txt = "MACRO FUSION NOT POSSIBLE\ninstruction fetch    : 14.00 cycles\ninstruction queue    : 22.50 cycles\ndecoding             : 22.50 cycles\nmicro-operation queue: 23.00 cycles\nfront end            : 23.00 cycles\n",
        },
        {
          title = "Back-end",
          txt = "       | P0    | P1    | P2   | P3   | P4   | P5   | P6\n---------------------------------------------------------\nuops   | 16.50 | 16.50 | 2.50 | 2.50 | 8.00 | 8.00 | 2.00\ncycles | 16.50 | 16.50 | 2.50 | 2.50 | 8.00 | 8.00 | 2.00\n\nCycles executing div or sqrt instructions: 56.00-97.00\nLongest recurrence chain latency (RecMII): 1.00\n",
        },
        {
          title = "Cycles summary",
          txt = "Front-end : 23.00\nDispatch  : 16.50\nDIV/SQRT  : 56.00-97.00\nData deps.: 1.00\nOverall L1: 56.00-97.00\n",
        },
        {
          title = "Vectorization ratios",
          txt = "INT\nall    : 0%\nload   : NA (no load vectorizable/vectorized instructions)\nstore  : NA (no store vectorizable/vectorized instructions)\nmul    : 0%\nadd-sub: 0%\nfma    : NA (no fma vectorizable/vectorized instructions)\nother  : 0%\nFP\nall     : 65%\nload    : 66%\nstore   : 0%\nmul     : 66%\nadd-sub : 90%\nfma     : 0%\ndiv/sqrt: 0%\nother   : 75%\nINT+FP\nall     : 59%\nload    : 66%\nstore   : 0%\nmul     : 50%\nadd-sub : 81%\nfma     : 0%\ndiv/sqrt: 0%\nother   : 66%\n",
        },
        {
          title = "Vector efficiency ratios",
          txt = "INT\nall    : 8%\nload   : NA (no load vectorizable/vectorized instructions)\nstore  : NA (no store vectorizable/vectorized instructions)\nmul    : 6%\nadd-sub: 6%\nfma    : NA (no fma vectorizable/vectorized instructions)\nother  : 12%\nFP\nall     : 35%\nload    : 70%\nstore   : 6%\nmul     : 70%\nadd-sub : 31%\nfma     : 12%\ndiv/sqrt: 12%\nother   : 31%\nINT+FP\nall     : 33%\nload    : 70%\nstore   : 6%\nmul     : 54%\nadd-sub : 28%\nfma     : 12%\ndiv/sqrt: 12%\nother   : 29%\n",
        },
        {
          title = "Cycles and memory resources usage",
          txt = "Assuming all data fit into the L1 cache, each iteration of the binary loop takes 97.00 cycles. At this rate:\n - 1% of peak load performance is reached (1.40 out of 128.00 bytes loaded per cycle (GB/s @ 1GHz))\n - 0% of peak store performance is reached (0.08 out of 64.00 bytes stored per cycle (GB/s @ 1GHz))\n",
        },
        {
          title = "Front-end bottlenecks",
          txt = "Found no such bottlenecks.",
        },
        {
          title = "ASM code",
          txt = "In the binary file, the address of the loop is: 4007\n\nInstruction                      | Nb FU | P0   | P1   | P2   | P3   | P4   | P5   | P6 | Latency | Recip. throughput\n---------------------------------------------------------------------------------------------------------------------\nLEA (%RAX),%R8D                  | 1     | 0    | 0    | 0    | 0    | 0.50 | 0.50 | 0  | 1       | 0.50\nIMUL %R13D,%R8D                  | 1     | 0    | 0    | 0    | 0    | 1    | 0    | 0  | 3       | 1\nADD %R12D,%R8D                   | 1     | 0    | 0    | 0    | 0    | 0.50 | 0.50 | 0  | 1       | 0.50\nMOV %R8D,%R9D                    | 1     | 0    | 0    | 0    | 0    | 0.50 | 0.50 | 0  | 0       | 0.50\nSAL $0x3,%R9D                    | 1     | 0    | 0    | 0    | 0    | 1    | 0    | 0  | 1       | 1\nADD %R8D,%R9D                    | 1     | 0    | 0    | 0    | 0    | 0.50 | 0.50 | 0  | 1       | 0.50\nMOV %R9D,%R9D                    | 1     | 0    | 0    | 0    | 0    | 0.50 | 0.50 | 0  | 0       | 0.50\nLEA (%RDI,%R9,8),%R10            | 1     | 0    | 0    | 0    | 0    | 0.50 | 0.50 | 0  | 1       | 0.50\nVMOVUPD (%R10),%ZMM1             | 1     | 0    | 0    | 0.50 | 0.50 | 0    | 0    | 0  | 5       | 0.50\nVEXTRACTF64X4 $0x1,%ZMM1,%YMM0   | 1     | 1    | 0    | 0    | 0    | 0    | 0    | 0  | 3-6     | 1\nVADDPD %YMM1,%YMM0,%YMM3         | 1     | 0.50 | 0.50 | 0    | 0    | 0    | 0    | 0  | 6       | 0.50\nVMOVUPD 0x8(%R10),%ZMM10         | 1     | 0    | 0    | 0.50 | 0.50 | 0    | 0    | 0  | 5       | 0.50\nVMULPD %ZMM5,%ZMM10,%ZMM11       | 1     | 0.50 | 0.50 | 0    | 0    | 0    | 0    | 0  | 6       | 0.50\nVEXTRACTF128 $0x1,%YMM3,%XMM6    | 1     | 1    | 0    | 0    | 0    | 0    | 0    | 0  | 3-6     | 1\nVADDPD %XMM3,%XMM6,%XMM7         | 1     | 0.50 | 0.50 | 0    | 0    | 0    | 0    | 0  | 6       | 0.50\nVMULPD %ZMM4,%ZMM10,%ZMM3        | 1     | 0.50 | 0.50 | 0    | 0    | 0    | 0    | 0  | 6       | 0.50\nVEXTRACTF64X4 $0x1,%ZMM11,%YMM12 | 1     | 1    | 0    | 0    | 0    | 0    | 0    | 0  | 3-6     | 1\nVADDPD %YMM11,%YMM12,%YMM13      | 1     | 0.50 | 0.50 | 0    | 0    | 0    | 0    | 0  | 6       | 0.50\nVHADDPD %XMM7,%XMM7,%XMM8        | 3     | 1.50 | 1.50 | 0    | 0    | 0    | 0    | 0  | 15      | 8\nVADDSD 0x40(%R10),%XMM8,%XMM9    | 1     | 0.50 | 0.50 | 0.50 | 0.50 | 0    | 0    | 0  | 6       | 0.50\nVEXTRACTF64X4 $0x1,%ZMM3,%YMM2   | 1     | 1    | 0    | 0    | 0    | 0    | 0    | 0  | 3-6     | 1\nVADDPD %YMM3,%YMM2,%YMM6         | 1     | 0.50 | 0.50 | 0    | 0    | 0    | 0    | 0  | 6       | 0.50\nVEXTRACTF128 $0x1,%YMM13,%XMM14  | 1     | 1    | 0    | 0    | 0    | 0    | 0    | 0  | 3-6     | 1\nVADDPD %XMM13,%XMM14,%XMM15      | 1     | 0.50 | 0.50 | 0    | 0    | 0    | 0    | 0  | 6       | 0.50\nVEXTRACTF128 $0x1,%YMM6,%XMM7    | 1     | 1    | 0    | 0    | 0    | 0    | 0    | 0  | 3-6     | 1\nVADDPD %XMM6,%XMM7,%XMM8         | 1     | 0.50 | 0.50 | 0    | 0    | 0    | 0    | 0  | 6       | 0.50\nVHADDPD %XMM15,%XMM15,%XMM1      | 3     | 1.50 | 1.50 | 0    | 0    | 0    | 0    | 0  | 15      | 8\nVDIVSD %XMM9,%XMM1,%XMM0         | 3     | 1    | 0    | 0    | 0    | 0    | 0    | 0  | 40-42   | 12-32\nVHADDPD %XMM8,%XMM8,%XMM10       | 3     | 1.50 | 1.50 | 0    | 0    | 0    | 0    | 0  | 15      | 8\nVDIVSD %XMM9,%XMM10,%XMM11       | 3     | 1    | 0    | 0    | 0    | 0    | 0    | 0  | 40-42   | 12-32\nVCVTSD2SS %XMM9,%XMM9,%XMM9      | 1     | 1    | 0    | 0    | 0    | 0    | 0    | 0  | 2       | 1\nVMULSD %XMM11,%XMM11,%XMM12      | 1     | 0.50 | 0.50 | 0    | 0    | 0    | 0    | 0  | 6       | 0.50\nVMOVSS %XMM9,0x34(%RSP,%RDX,8)   | 1     | 0    | 0    | 0.50 | 0.50 | 0    | 0    | 1  | 2       | 1\nVFMADD132SD %XMM0,%XMM12,%XMM0   | 1     | 0.50 | 0.50 | 0    | 0    | 0    | 0    | 0  | 6       | 0.50\nVSQRTSD %XMM0,%XMM0,%XMM0        | 3     | 3    | 0    | 0    | 0    | 0    | 0    | 0  | 40-42   | 32-33\nVCVTSD2SS %XMM0,%XMM0,%XMM13     | 1     | 1    | 0    | 0    | 0    | 0    | 0    | 0  | 2       | 1\nVMOVSS %XMM13,0x30(%RSP,%RDX,8)  | 1     | 0    | 0    | 0.50 | 0.50 | 0    | 0    | 1  | 2       | 1\nLEA 0x1(%RDX),%RDX               | 1     | 0    | 0    | 0    | 0    | 0.50 | 0.50 | 0  | 1       | 0.50\nCMP $0x1000,%RDX                 | 1     | 0    | 0    | 0    | 0    | 0.50 | 0.50 | 0  | 1       | 0.50\nJA 419a <save_frame+0x23a>       | 1     | 0    | 0    | 0    | 0    | 0    | 1    | 0  | 0       | 1-2\nJE 4130 <save_frame+0x1d0>       | 1     | 0    | 0    | 0    | 0    | 0    | 1    | 0  | 0       | 1-2\nLEA 0x1(%R12),%R12               | 1     | 0    | 0    | 0    | 0    | 0.50 | 0.50 | 0  | 1       | 0.50\nLEA (%RCX),%R11D                 | 1     | 0    | 0    | 0    | 0    | 0.50 | 0.50 | 0  | 1       | 0.50\nCMP %R12,%R11                    | 1     | 0    | 0    | 0    | 0    | 0.50 | 0.50 | 0  | 1       | 0.50\nJA 4007 <save_frame+0xa7>        | 1     | 0    | 0    | 0    | 0    | 0    | 1    | 0  | 0       | 1-2\n",
        },
      },
      header = {
        "1% of peak computational performance is used (0.48 out of 32.00 FLOP per cycle (GFLOPS @ 1GHz))",
      },
      brief = {
      },
      gain = {
        {
          workaround = " - Try another compiler or update/tune your current one\n - Remove inter-iterations dependences from your loop and make it unit-stride:\n  * If your arrays have 2 or more dimensions, check whether elements are accessed contiguously and, otherwise, try to permute loops accordingly:\nC storage order is row-major: for(i) for(j) a[j][i] = b[j][i]; (slow, non stride 1) => for(i) for(j) a[i][j] = b[i][j]; (fast, stride 1)\n  * If your loop streams arrays of structures (AoS), try to use structures of arrays instead (SoA):\nfor(i) a[i].x = b[i].x; (slow, non stride 1) => for(i) a.x[i] = b.x[i]; (fast, stride 1)\n",
          details = "59% of SSE/AVX instructions are used in vector version (process two or more data elements in vector registers):\n - 66% of SSE/AVX loads are used in vector version.\n - 0% of SSE/AVX stores are used in vector version.\n - 81% of SSE/AVX addition or subtraction instructions are used in vector version.\n - 50% of SSE/AVX multiply instructions are used in vector version.\n - 0% of SSE/AVX fused multiply-add instructions are used in vector version.\n - 0% of SSE/AVX nil are used in vector version.\n - 66% of SSE/AVX instructions that are not load, store, addition, subtraction nor multiply instructions are used in vector version.\nSince your execution units are vector units, only a fully vectorized loop can use their full power.\n",
          title = "Vectorization",
          txt = "Your loop is partially vectorized.\nOnly 33% of vector register length is used (average across all SSE/AVX instructions).\nBy fully vectorizing your loop, you can lower the cost of an iteration from 97.00 to 12.12 cycles (8.00x speedup).",
        },
        {
          workaround = " - Reduce the number of division or square root instructions:\n  * If denominator is constant over iterations, use reciprocal (replace x/y with x*(1/y)). Check precision impact. This will be done by your compiler with ffast-math or Ofast\n - Check whether you really need double precision. If not, switch to single precision to speedup execution\n",
          title = "Execution units bottlenecks",
          txt = "Performance is limited by execution of divide and square root operations (the divide/square root unit is a bottleneck).\n\nBy removing all these bottlenecks, you can lower the cost of an iteration from 97.00 to 23.00 cycles (4.22x speedup).\n",
        },
      },
      potential = {
        {
          title = "Expensive FP math instructions/calls",
          txt = "Detected performance impact from expensive FP math instructions/calls.\nBy removing/reexpressing them, you can lower the cost of an iteration from 97.00 to 23.00 cycles (4.22x speedup).",
        },
        {
          workaround = "Try to change order in which elements are evaluated (using parentheses) in arithmetic expressions containing both ADD/SUB and MUL operations to enable your compiler to generate FMA instructions wherever possible.\nFor instance a + b*c is a valid FMA (MUL then ADD).\nHowever (a+b)* c cannot be translated into an FMA (ADD then MUL).",
          title = "FMA",
          txt = "Detected 1 FMA (fused multiply-add) operations.\nPresence of both ADD/SUB and MUL operations.",
        },
      },
    },
  },
  AVG = {
      hint = {
        {
          workaround = " - Try to reorganize arrays of structures to structures of arrays\n - Consider to permute loops (see vectorization gain report)\n",
          details = " - Constant unknown stride: 2 occurrence(s)\nNon-unit stride (uncontiguous) accesses are not efficiently using data caches\n",
          title = "Slow data structures access",
          txt = "Detected data structures (typically arrays) that cannot be efficiently read/written",
        },
        {
          workaround = "Use vector aligned instructions:\n 1) align your arrays on 64 bytes boundaries: replace { void *p = malloc (size); } with { void *p; posix_memalign (&p, 64, size); }.\n 2) inform your compiler that your arrays are vector aligned: if array 'foo' is 64 bytes-aligned, define a pointer 'p_foo' as __builtin_assume_aligned (foo, 64) and use it instead of 'foo' in the loop.\n",
          details = " - VEXTRACTF128: 3 occurrences\n - VEXTRACTF64X4: 3 occurrences\n",
          title = "Vector unaligned load/store instructions",
          txt = "Detected 6 suboptimal vector unaligned load/store instructions.\n",
        },
        {
          workaround = "Avoid mixing data with different types. In particular, check if the type of constants is the same as array elements. Use double instead of single precision only when/where needed by numerical stability and avoid mixing precision. In C/C++, FP constants are double precision by default and must be suffixed by 'f' to make them single precision.",
          details = " - VCVTSD2SS (FP64 to FP32, scalar): 2 occurrences\n",
          title = "Conversion instructions",
          txt = "Detected expensive conversion instructions.",
        },
        {
          title = "Type of elements and instruction set",
          txt = "6 SSE or AVX instructions are processing arithmetic or math operations on double precision FP elements in scalar mode (one at a time).\n6 SSE or AVX instructions are processing arithmetic or math operations on double precision FP elements in vector mode (two at a time).\n3 AVX instructions are processing arithmetic or math operations on double precision FP elements in vector mode (four at a time).\n2 AVX-512 instructions are processing arithmetic or math operations on double precision FP elements in vector mode (eight at a time).\n",
        },
        {
          title = "Matching between your loop (in the source code) and the binary loop",
          txt = "The binary loop is composed of 47 FP arithmetical operations:\n - 26: addition or subtraction (1 inside FMA instructions)\n - 18: multiply (1 inside FMA instructions)\n - 2: divide\n - 1: square root\nThe binary loop is loading 136 bytes (17 double precision FP elements).\nThe binary loop is storing 8 bytes (1 double precision FP elements).",
        },
        {
          title = "Arithmetic intensity",
          txt = "Arithmetic intensity is 0.33 FP operations per loaded or stored byte.",
        },
      },
      expert = {
        {
          title = "General properties",
          txt = "nb instructions    : 45\nloop length        : 221\nused x86 registers : 11\nused mmx registers : 0\nused xmm registers : 13\nused ymm registers : 8\nused zmm registers : 6\nnb stack references: 0\nADD-SUB / MUL ratio: 3.33\n",
        },
        {
          title = "Front-end",
          txt = "MACRO FUSION NOT POSSIBLE\ninstruction fetch    : 14.00 cycles\ninstruction queue    : 22.50 cycles\ndecoding             : 22.50 cycles\nmicro-operation queue: 23.00 cycles\nfront end            : 23.00 cycles\n",
        },
        {
          title = "Back-end",
          txt = "       | P0    | P1    | P2   | P3   | P4   | P5   | P6\n---------------------------------------------------------\nuops   | 16.50 | 16.50 | 2.50 | 2.50 | 8.00 | 8.00 | 2.00\ncycles | 16.50 | 16.50 | 2.50 | 2.50 | 8.00 | 8.00 | 2.00\n\nCycles executing div or sqrt instructions: 56.00-97.00\nLongest recurrence chain latency (RecMII): 1.00\n",
        },
        {
          title = "Cycles summary",
          txt = "Front-end : 23.00\nDispatch  : 16.50\nDIV/SQRT  : 56.00-97.00\nData deps.: 1.00\nOverall L1: 56.00-97.00\n",
        },
        {
          title = "Vectorization ratios",
          txt = "INT\nall    : 0%\nload   : NA (no load vectorizable/vectorized instructions)\nstore  : NA (no store vectorizable/vectorized instructions)\nmul    : 0%\nadd-sub: 0%\nfma    : NA (no fma vectorizable/vectorized instructions)\nother  : 0%\nFP\nall     : 65%\nload    : 66%\nstore   : 0%\nmul     : 66%\nadd-sub : 90%\nfma     : 0%\ndiv/sqrt: 0%\nother   : 75%\nINT+FP\nall     : 59%\nload    : 66%\nstore   : 0%\nmul     : 50%\nadd-sub : 81%\nfma     : 0%\ndiv/sqrt: 0%\nother   : 66%\n",
        },
        {
          title = "Vector efficiency ratios",
          txt = "INT\nall    : 8%\nload   : NA (no load vectorizable/vectorized instructions)\nstore  : NA (no store vectorizable/vectorized instructions)\nmul    : 6%\nadd-sub: 6%\nfma    : NA (no fma vectorizable/vectorized instructions)\nother  : 12%\nFP\nall     : 35%\nload    : 70%\nstore   : 6%\nmul     : 70%\nadd-sub : 31%\nfma     : 12%\ndiv/sqrt: 12%\nother   : 31%\nINT+FP\nall     : 33%\nload    : 70%\nstore   : 6%\nmul     : 54%\nadd-sub : 28%\nfma     : 12%\ndiv/sqrt: 12%\nother   : 29%\n",
        },
        {
          title = "Cycles and memory resources usage",
          txt = "Assuming all data fit into the L1 cache, each iteration of the binary loop takes 97.00 cycles. At this rate:\n - 1% of peak load performance is reached (1.40 out of 128.00 bytes loaded per cycle (GB/s @ 1GHz))\n - 0% of peak store performance is reached (0.08 out of 64.00 bytes stored per cycle (GB/s @ 1GHz))\n",
        },
        {
          title = "Front-end bottlenecks",
          txt = "Found no such bottlenecks.",
        },
        {
          title = "ASM code",
          txt = "In the binary file, the address of the loop is: 4007\n\nInstruction                      | Nb FU | P0   | P1   | P2   | P3   | P4   | P5   | P6 | Latency | Recip. throughput\n---------------------------------------------------------------------------------------------------------------------\nLEA (%RAX),%R8D                  | 1     | 0    | 0    | 0    | 0    | 0.50 | 0.50 | 0  | 1       | 0.50\nIMUL %R13D,%R8D                  | 1     | 0    | 0    | 0    | 0    | 1    | 0    | 0  | 3       | 1\nADD %R12D,%R8D                   | 1     | 0    | 0    | 0    | 0    | 0.50 | 0.50 | 0  | 1       | 0.50\nMOV %R8D,%R9D                    | 1     | 0    | 0    | 0    | 0    | 0.50 | 0.50 | 0  | 0       | 0.50\nSAL $0x3,%R9D                    | 1     | 0    | 0    | 0    | 0    | 1    | 0    | 0  | 1       | 1\nADD %R8D,%R9D                    | 1     | 0    | 0    | 0    | 0    | 0.50 | 0.50 | 0  | 1       | 0.50\nMOV %R9D,%R9D                    | 1     | 0    | 0    | 0    | 0    | 0.50 | 0.50 | 0  | 0       | 0.50\nLEA (%RDI,%R9,8),%R10            | 1     | 0    | 0    | 0    | 0    | 0.50 | 0.50 | 0  | 1       | 0.50\nVMOVUPD (%R10),%ZMM1             | 1     | 0    | 0    | 0.50 | 0.50 | 0    | 0    | 0  | 5       | 0.50\nVEXTRACTF64X4 $0x1,%ZMM1,%YMM0   | 1     | 1    | 0    | 0    | 0    | 0    | 0    | 0  | 3-6     | 1\nVADDPD %YMM1,%YMM0,%YMM3         | 1     | 0.50 | 0.50 | 0    | 0    | 0    | 0    | 0  | 6       | 0.50\nVMOVUPD 0x8(%R10),%ZMM10         | 1     | 0    | 0    | 0.50 | 0.50 | 0    | 0    | 0  | 5       | 0.50\nVMULPD %ZMM5,%ZMM10,%ZMM11       | 1     | 0.50 | 0.50 | 0    | 0    | 0    | 0    | 0  | 6       | 0.50\nVEXTRACTF128 $0x1,%YMM3,%XMM6    | 1     | 1    | 0    | 0    | 0    | 0    | 0    | 0  | 3-6     | 1\nVADDPD %XMM3,%XMM6,%XMM7         | 1     | 0.50 | 0.50 | 0    | 0    | 0    | 0    | 0  | 6       | 0.50\nVMULPD %ZMM4,%ZMM10,%ZMM3        | 1     | 0.50 | 0.50 | 0    | 0    | 0    | 0    | 0  | 6       | 0.50\nVEXTRACTF64X4 $0x1,%ZMM11,%YMM12 | 1     | 1    | 0    | 0    | 0    | 0    | 0    | 0  | 3-6     | 1\nVADDPD %YMM11,%YMM12,%YMM13      | 1     | 0.50 | 0.50 | 0    | 0    | 0    | 0    | 0  | 6       | 0.50\nVHADDPD %XMM7,%XMM7,%XMM8        | 3     | 1.50 | 1.50 | 0    | 0    | 0    | 0    | 0  | 15      | 8\nVADDSD 0x40(%R10),%XMM8,%XMM9    | 1     | 0.50 | 0.50 | 0.50 | 0.50 | 0    | 0    | 0  | 6       | 0.50\nVEXTRACTF64X4 $0x1,%ZMM3,%YMM2   | 1     | 1    | 0    | 0    | 0    | 0    | 0    | 0  | 3-6     | 1\nVADDPD %YMM3,%YMM2,%YMM6         | 1     | 0.50 | 0.50 | 0    | 0    | 0    | 0    | 0  | 6       | 0.50\nVEXTRACTF128 $0x1,%YMM13,%XMM14  | 1     | 1    | 0    | 0    | 0    | 0    | 0    | 0  | 3-6     | 1\nVADDPD %XMM13,%XMM14,%XMM15      | 1     | 0.50 | 0.50 | 0    | 0    | 0    | 0    | 0  | 6       | 0.50\nVEXTRACTF128 $0x1,%YMM6,%XMM7    | 1     | 1    | 0    | 0    | 0    | 0    | 0    | 0  | 3-6     | 1\nVADDPD %XMM6,%XMM7,%XMM8         | 1     | 0.50 | 0.50 | 0    | 0    | 0    | 0    | 0  | 6       | 0.50\nVHADDPD %XMM15,%XMM15,%XMM1      | 3     | 1.50 | 1.50 | 0    | 0    | 0    | 0    | 0  | 15      | 8\nVDIVSD %XMM9,%XMM1,%XMM0         | 3     | 1    | 0    | 0    | 0    | 0    | 0    | 0  | 40-42   | 12-32\nVHADDPD %XMM8,%XMM8,%XMM10       | 3     | 1.50 | 1.50 | 0    | 0    | 0    | 0    | 0  | 15      | 8\nVDIVSD %XMM9,%XMM10,%XMM11       | 3     | 1    | 0    | 0    | 0    | 0    | 0    | 0  | 40-42   | 12-32\nVCVTSD2SS %XMM9,%XMM9,%XMM9      | 1     | 1    | 0    | 0    | 0    | 0    | 0    | 0  | 2       | 1\nVMULSD %XMM11,%XMM11,%XMM12      | 1     | 0.50 | 0.50 | 0    | 0    | 0    | 0    | 0  | 6       | 0.50\nVMOVSS %XMM9,0x34(%RSP,%RDX,8)   | 1     | 0    | 0    | 0.50 | 0.50 | 0    | 0    | 1  | 2       | 1\nVFMADD132SD %XMM0,%XMM12,%XMM0   | 1     | 0.50 | 0.50 | 0    | 0    | 0    | 0    | 0  | 6       | 0.50\nVSQRTSD %XMM0,%XMM0,%XMM0        | 3     | 3    | 0    | 0    | 0    | 0    | 0    | 0  | 40-42   | 32-33\nVCVTSD2SS %XMM0,%XMM0,%XMM13     | 1     | 1    | 0    | 0    | 0    | 0    | 0    | 0  | 2       | 1\nVMOVSS %XMM13,0x30(%RSP,%RDX,8)  | 1     | 0    | 0    | 0.50 | 0.50 | 0    | 0    | 1  | 2       | 1\nLEA 0x1(%RDX),%RDX               | 1     | 0    | 0    | 0    | 0    | 0.50 | 0.50 | 0  | 1       | 0.50\nCMP $0x1000,%RDX                 | 1     | 0    | 0    | 0    | 0    | 0.50 | 0.50 | 0  | 1       | 0.50\nJA 419a <save_frame+0x23a>       | 1     | 0    | 0    | 0    | 0    | 0    | 1    | 0  | 0       | 1-2\nJE 4130 <save_frame+0x1d0>       | 1     | 0    | 0    | 0    | 0    | 0    | 1    | 0  | 0       | 1-2\nLEA 0x1(%R12),%R12               | 1     | 0    | 0    | 0    | 0    | 0.50 | 0.50 | 0  | 1       | 0.50\nLEA (%RCX),%R11D                 | 1     | 0    | 0    | 0    | 0    | 0.50 | 0.50 | 0  | 1       | 0.50\nCMP %R12,%R11                    | 1     | 0    | 0    | 0    | 0    | 0.50 | 0.50 | 0  | 1       | 0.50\nJA 4007 <save_frame+0xa7>        | 1     | 0    | 0    | 0    | 0    | 0    | 1    | 0  | 0       | 1-2\n",
        },
      },
      header = {
        "1% of peak computational performance is used (0.48 out of 32.00 FLOP per cycle (GFLOPS @ 1GHz))",
      },
      brief = {
      },
      gain = {
        {
          workaround = " - Try another compiler or update/tune your current one\n - Remove inter-iterations dependences from your loop and make it unit-stride:\n  * If your arrays have 2 or more dimensions, check whether elements are accessed contiguously and, otherwise, try to permute loops accordingly:\nC storage order is row-major: for(i) for(j) a[j][i] = b[j][i]; (slow, non stride 1) => for(i) for(j) a[i][j] = b[i][j]; (fast, stride 1)\n  * If your loop streams arrays of structures (AoS), try to use structures of arrays instead (SoA):\nfor(i) a[i].x = b[i].x; (slow, non stride 1) => for(i) a.x[i] = b.x[i]; (fast, stride 1)\n",
          details = "59% of SSE/AVX instructions are used in vector version (process two or more data elements in vector registers):\n - 66% of SSE/AVX loads are used in vector version.\n - 0% of SSE/AVX stores are used in vector version.\n - 81% of SSE/AVX addition or subtraction instructions are used in vector version.\n - 50% of SSE/AVX multiply instructions are used in vector version.\n - 0% of SSE/AVX fused multiply-add instructions are used in vector version.\n - 0% of SSE/AVX nil are used in vector version.\n - 66% of SSE/AVX instructions that are not load, store, addition, subtraction nor multiply instructions are used in vector version.\nSince your execution units are vector units, only a fully vectorized loop can use their full power.\n",
          title = "Vectorization",
          txt = "Your loop is partially vectorized.\nOnly 33% of vector register length is used (average across all SSE/AVX instructions).\nBy fully vectorizing your loop, you can lower the cost of an iteration from 97.00 to 12.12 cycles (8.00x speedup).",
        },
        {
          workaround = " - Reduce the number of division or square root instructions:\n  * If denominator is constant over iterations, use reciprocal (replace x/y with x*(1/y)). Check precision impact. This will be done by your compiler with ffast-math or Ofast\n - Check whether you really need double precision. If not, switch to single precision to speedup execution\n",
          title = "Execution units bottlenecks",
          txt = "Performance is limited by execution of divide and square root operations (the divide/square root unit is a bottleneck).\n\nBy removing all these bottlenecks, you can lower the cost of an iteration from 97.00 to 23.00 cycles (4.22x speedup).\n",
        },
      },
      potential = {
        {
          title = "Expensive FP math instructions/calls",
          txt = "Detected performance impact from expensive FP math instructions/calls.\nBy removing/reexpressing them, you can lower the cost of an iteration from 97.00 to 23.00 cycles (4.22x speedup).",
        },
        {
          workaround = "Try to change order in which elements are evaluated (using parentheses) in arithmetic expressions containing both ADD/SUB and MUL operations to enable your compiler to generate FMA instructions wherever possible.\nFor instance a + b*c is a valid FMA (MUL then ADD).\nHowever (a+b)* c cannot be translated into an FMA (ADD then MUL).",
          title = "FMA",
          txt = "Detected 1 FMA (fused multiply-add) operations.\nPresence of both ADD/SUB and MUL operations.",
        },
      },
    },
  common = {
    header = {
      "The loop is defined in:\n - /users/user2207/lbm_opt/include/lbm_struct.h:130\n - /usr/lib/gcc/x86_64-linux-gnu/9/include/avx512fintrin.h:5852,6198,12478,15884\n - /usr/lib/gcc/x86_64-linux-gnu/9/include/avxintrin.h:513\n - /users/user2207/lbm_opt/src/main.c:84-98\n - /users/user2207/lbm_opt/src/lbm_phys.c:39,47,58-59\n\n",
      "The related source loop is not unrolled or unrolled with no peel/tail loop.",
    },
    nb_paths = 1,
  },
}
