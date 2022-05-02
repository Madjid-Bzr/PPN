_cqa_text_report = {
  paths = {
    {
      hint = {
        {
          details = "These instructions generate more than one micro-operation and only one of them can be decoded during a cycle and the extra micro-operations increase pressure on execution units.\n - VRCP14PS: 2 occurrences\n - VRSQRT14PS: 2 occurrences\n",
          title = "Complex instructions",
          txt = "Detected COMPLEX INSTRUCTIONS.\n",
        },
        {
          workaround = "Use vector aligned instructions:\n 1) align your arrays on 64 bytes boundaries: replace { void *p = malloc (size); } with { void *p; posix_memalign (&p, 64, size); }.\n 2) inform your compiler that your arrays are vector aligned: if array 'foo' is 64 bytes-aligned, define a pointer 'p_foo' as __builtin_assume_aligned (foo, 64) and use it instead of 'foo' in the loop.\n",
          details = " - VMOVUPS: 6 occurrences\n",
          title = "Vector unaligned load/store instructions",
          txt = "Detected 6 optimal vector unaligned load/store instructions.\n",
        },
        {
          title = "Type of elements and instruction set",
          txt = "46 AVX-512 instructions are processing arithmetic or math operations on single precision FP elements in vector mode (sixteen at a time).\n",
        },
        {
          title = "Matching between your loop (in the source code) and the binary loop",
          txt = "The binary loop is composed of 864 FP arithmetical operations:\n - 384: addition or subtraction (160 inside FMA instructions)\n - 416: multiply (160 inside FMA instructions)\n - 32: fast reciprocal\n - 32: fast square root reciprocal\nThe binary loop is loading 384 bytes (96 single precision FP elements).",
        },
        {
          title = "Arithmetic intensity",
          txt = "Arithmetic intensity is 2.25 FP operations per loaded or stored byte.",
        },
      },
      expert = {
        {
          title = "General properties",
          txt = "nb instructions    : 57\nnb uops            : 64\nloop length        : 348\nused x86 registers : 5\nused mmx registers : 0\nused xmm registers : 0\nused ymm registers : 0\nused zmm registers : 20\nnb stack references: 0\nADD-SUB / MUL ratio: 0.88\n",
        },
        {
          title = "Front-end",
          txt = "ASSUMED MACRO FUSION\nFIT IN UOP CACHE\nmicro-operation queue: 12.80 cycles\nfront end            : 12.80 cycles\n",
        },
        {
          title = "Back-end",
          txt = "       | P0    | P1   | P2   | P3   | P4   | P5   | P6   | P7   | P8   | P9\n-----------------------------------------------------------------------------\nuops   | 48.00 | 1.00 | 3.00 | 3.00 | 0.00 | 6.00 | 1.00 | 0.00 | 0.00 | 0.00\ncycles | 48.00 | 1.00 | 3.00 | 3.00 | 0.00 | 6.00 | 1.00 | 0.00 | 0.00 | 0.00\n\nCycles executing div or sqrt instructions: NA\nLongest recurrence chain latency (RecMII): 8.00\n",
        },
        {
          title = "Cycles summary",
          txt = "Front-end : 12.80\nDispatch  : 48.00\nData deps.: 8.00\nOverall L1: 48.00\n",
        },
        {
          title = "Vectorization ratios",
          txt = "all     : 100%\nload    : 100%\nstore   : NA (no store vectorizable/vectorized instructions)\nmul     : 100%\nadd-sub : 100%\nfma     : 100%\ndiv/sqrt: 100%\nother   : 100%\n",
        },
        {
          title = "Vector efficiency ratios",
          txt = "all     : 100%\nload    : 100%\nstore   : NA (no store vectorizable/vectorized instructions)\nmul     : 100%\nadd-sub : 100%\nfma     : 100%\ndiv/sqrt: 100%\nother   : 100%\n",
        },
        {
          title = "Cycles and memory resources usage",
          txt = "Detected masked instructions: assuming all mask elements are active.\nAssuming all data fit into the L1 cache, each iteration of the binary loop takes 48.00 cycles. At this rate:\n - 6% of peak load performance is reached (8.00 out of 128.00 bytes loaded per cycle (GB/s @ 1GHz))\n",
        },
        {
          title = "Front-end bottlenecks",
          txt = "Found no such bottlenecks.",
        },
        {
          title = "ASM code",
          txt = "In the binary file, the address of the loop is: 2707\n\nInstruction                     | Nb FU | P0   | P1   | P2   | P3   | P4 | P5   | P6   | P7 | P8 | P9 | Latency | Recip. throughput\n-----------------------------------------------------------------------------------------------------------------------------------\nVMOVUPS (%RDI,%RCX,1),%ZMM9     | 1     | 0    | 0    | 0.50 | 0.50 | 0  | 0    | 0    | 0  | 0  | 0  | 3       | 0.50\nVMOVUPS (%RSI,%RCX,1),%ZMM6     | 1     | 0    | 0    | 0.50 | 0.50 | 0  | 0    | 0    | 0  | 0  | 0  | 3       | 0.50\nVMOVUPS (%RDX,%RCX,1),%ZMM1     | 1     | 0    | 0    | 0.50 | 0.50 | 0  | 0    | 0    | 0  | 0  | 0  | 3       | 0.50\nVSUBPS %ZMM30,%ZMM9,%ZMM7       | 1     | 1    | 0    | 0    | 0    | 0  | 0    | 0    | 0  | 0  | 0  | 4       | 1\nVSUBPS %ZMM20,%ZMM6,%ZMM6       | 1     | 1    | 0    | 0    | 0    | 0  | 0    | 0    | 0  | 0  | 0  | 4       | 1\nVSUBPS %ZMM19,%ZMM1,%ZMM4       | 1     | 1    | 0    | 0    | 0    | 0  | 0    | 0    | 0  | 0  | 0  | 4       | 1\nVMULPS %ZMM7,%ZMM7,%ZMM9        | 1     | 1    | 0    | 0    | 0    | 0  | 0    | 0    | 0  | 0  | 0  | 4       | 1\nVMOVAPS %ZMM6,%ZMM2             | 1     | 0    | 0    | 0    | 0    | 0  | 0    | 0    | 0  | 0  | 0  | 0       | 0.25\nVFMADD132PS %ZMM6,%ZMM24,%ZMM2  | 1     | 1    | 0    | 0    | 0    | 0  | 0    | 0    | 0  | 0  | 0  | 4       | 1\nVFMADD231PS %ZMM4,%ZMM4,%ZMM9   | 1     | 1    | 0    | 0    | 0    | 0  | 0    | 0    | 0  | 0  | 0  | 4       | 1\nVADDPS %ZMM2,%ZMM9,%ZMM9        | 1     | 1    | 0    | 0    | 0    | 0  | 0    | 0    | 0  | 0  | 0  | 4       | 1\nVCMPPS $0x4,%ZMM9,%ZMM21,%K2    | 1     | 0    | 0    | 0    | 0    | 0  | 1    | 0    | 0  | 0  | 0  | 4       | 1\nVRSQRT14PS %ZMM9,%ZMM1{%K2}{z}  | 3     | 2.50 | 0    | 0    | 0    | 0  | 0.50 | 0    | 0  | 0  | 0  | 6       | 2\nVMULPS %ZMM9,%ZMM1,%ZMM31       | 1     | 1    | 0    | 0    | 0    | 0  | 0    | 0    | 0  | 0  | 0  | 4       | 1\nVMULPS %ZMM1,%ZMM31,%ZMM2       | 1     | 1    | 0    | 0    | 0    | 0  | 0    | 0    | 0  | 0  | 0  | 4       | 1\nVMULPS %ZMM22,%ZMM31,%ZMM16     | 1     | 1    | 0    | 0    | 0    | 0  | 0    | 0    | 0  | 0  | 0  | 4       | 1\nVADDPS %ZMM23,%ZMM2,%ZMM1       | 1     | 1    | 0    | 0    | 0    | 0  | 0    | 0    | 0  | 0  | 0  | 4       | 1\nVMULPS %ZMM16,%ZMM1,%ZMM2       | 1     | 1    | 0    | 0    | 0    | 0  | 0    | 0    | 0  | 0  | 0  | 4       | 1\nVMULPS %ZMM9,%ZMM2,%ZMM9        | 1     | 1    | 0    | 0    | 0    | 0  | 0    | 0    | 0  | 0  | 0  | 4       | 1\nVRCP14PS %ZMM9,%ZMM2            | 3     | 2.50 | 0    | 0    | 0    | 0  | 0.50 | 0    | 0  | 0  | 0  | 4       | 2\nVMULPS %ZMM9,%ZMM2,%ZMM1        | 1     | 1    | 0    | 0    | 0    | 0  | 0    | 0    | 0  | 0  | 0  | 4       | 1\nVMULPS %ZMM1,%ZMM2,%ZMM9        | 1     | 1    | 0    | 0    | 0    | 0  | 0    | 0    | 0  | 0  | 0  | 4       | 1\nVADDPS %ZMM2,%ZMM2,%ZMM2        | 1     | 1    | 0    | 0    | 0    | 0  | 0    | 0    | 0  | 0  | 0  | 4       | 1\nVSUBPS %ZMM9,%ZMM2,%ZMM2        | 1     | 1    | 0    | 0    | 0    | 0  | 0    | 0    | 0  | 0  | 0  | 4       | 1\nVFMADD132PS %ZMM2,%ZMM10,%ZMM7  | 1     | 1    | 0    | 0    | 0    | 0  | 0    | 0    | 0  | 0  | 0  | 4       | 1\nVFMADD132PS %ZMM2,%ZMM5,%ZMM6   | 1     | 1    | 0    | 0    | 0    | 0  | 0    | 0    | 0  | 0  | 0  | 4       | 1\nVMOVUPS 0x40(%RSI,%RCX,1),%ZMM5 | 1     | 0    | 0    | 0.50 | 0.50 | 0  | 0    | 0    | 0  | 0  | 0  | 3       | 0.50\nVFMADD132PS %ZMM4,%ZMM0,%ZMM2   | 1     | 1    | 0    | 0    | 0    | 0  | 0    | 0    | 0  | 0  | 0  | 4       | 1\nVMOVUPS 0x40(%RDI,%RCX,1),%ZMM0 | 1     | 0    | 0    | 0.50 | 0.50 | 0  | 0    | 0    | 0  | 0  | 0  | 3       | 0.50\nVMOVUPS 0x40(%RDX,%RCX,1),%ZMM4 | 1     | 0    | 0    | 0.50 | 0.50 | 0  | 0    | 0    | 0  | 0  | 0  | 3       | 0.50\nSUB $-0x80,%RCX                 | 1     | 0.25 | 0.25 | 0    | 0    | 0  | 0.25 | 0.25 | 0  | 0  | 0  | 1       | 0.25\nVSUBPS %ZMM20,%ZMM5,%ZMM5       | 1     | 1    | 0    | 0    | 0    | 0  | 0    | 0    | 0  | 0  | 0  | 4       | 1\nVSUBPS %ZMM30,%ZMM0,%ZMM10      | 1     | 1    | 0    | 0    | 0    | 0  | 0    | 0    | 0  | 0  | 0  | 4       | 1\nVSUBPS %ZMM19,%ZMM4,%ZMM9       | 1     | 1    | 0    | 0    | 0    | 0  | 0    | 0    | 0  | 0  | 0  | 4       | 1\nVMOVAPS %ZMM5,%ZMM0             | 1     | 0    | 0    | 0    | 0    | 0  | 0    | 0    | 0  | 0  | 0  | 0       | 0.25\nVMULPS %ZMM10,%ZMM10,%ZMM1      | 1     | 1    | 0    | 0    | 0    | 0  | 0    | 0    | 0  | 0  | 0  | 4       | 1\nVFMADD132PS %ZMM5,%ZMM24,%ZMM0  | 1     | 1    | 0    | 0    | 0    | 0  | 0    | 0    | 0  | 0  | 0  | 4       | 1\nVFMADD231PS %ZMM9,%ZMM9,%ZMM1   | 1     | 1    | 0    | 0    | 0    | 0  | 0    | 0    | 0  | 0  | 0  | 4       | 1\nVADDPS %ZMM0,%ZMM1,%ZMM4        | 1     | 1    | 0    | 0    | 0    | 0  | 0    | 0    | 0  | 0  | 0  | 4       | 1\nVCMPPS $0x4,%ZMM4,%ZMM21,%K3    | 1     | 0    | 0    | 0    | 0    | 0  | 1    | 0    | 0  | 0  | 0  | 4       | 1\nVRSQRT14PS %ZMM4,%ZMM1{%K3}{z}  | 3     | 2.50 | 0    | 0    | 0    | 0  | 0.50 | 0    | 0  | 0  | 0  | 6       | 2\nVMULPS %ZMM4,%ZMM1,%ZMM17       | 1     | 1    | 0    | 0    | 0    | 0  | 0    | 0    | 0  | 0  | 0  | 4       | 1\nVMULPS %ZMM1,%ZMM17,%ZMM0       | 1     | 1    | 0    | 0    | 0    | 0  | 0    | 0    | 0  | 0  | 0  | 4       | 1\nVMULPS %ZMM22,%ZMM17,%ZMM18     | 1     | 1    | 0    | 0    | 0    | 0  | 0    | 0    | 0  | 0  | 0  | 4       | 1\nVADDPS %ZMM23,%ZMM0,%ZMM1       | 1     | 1    | 0    | 0    | 0    | 0  | 0    | 0    | 0  | 0  | 0  | 4       | 1\nVMULPS %ZMM18,%ZMM1,%ZMM0       | 1     | 1    | 0    | 0    | 0    | 0  | 0    | 0    | 0  | 0  | 0  | 4       | 1\nVMULPS %ZMM4,%ZMM0,%ZMM4        | 1     | 1    | 0    | 0    | 0    | 0  | 0    | 0    | 0  | 0  | 0  | 4       | 1\nVRCP14PS %ZMM4,%ZMM0            | 3     | 2.50 | 0    | 0    | 0    | 0  | 0.50 | 0    | 0  | 0  | 0  | 4       | 2\nVMULPS %ZMM4,%ZMM0,%ZMM1        | 1     | 1    | 0    | 0    | 0    | 0  | 0    | 0    | 0  | 0  | 0  | 4       | 1\nVMULPS %ZMM1,%ZMM0,%ZMM4        | 1     | 1    | 0    | 0    | 0    | 0  | 0    | 0    | 0  | 0  | 0  | 4       | 1\nVADDPS %ZMM0,%ZMM0,%ZMM0        | 1     | 1    | 0    | 0    | 0    | 0  | 0    | 0    | 0  | 0  | 0  | 4       | 1\nVSUBPS %ZMM4,%ZMM0,%ZMM0        | 1     | 1    | 0    | 0    | 0    | 0  | 0    | 0    | 0  | 0  | 0  | 4       | 1\nVFMADD132PS %ZMM0,%ZMM7,%ZMM10  | 1     | 1    | 0    | 0    | 0    | 0  | 0    | 0    | 0  | 0  | 0  | 4       | 1\nVFMADD132PS %ZMM0,%ZMM6,%ZMM5   | 1     | 1    | 0    | 0    | 0    | 0  | 0    | 0    | 0  | 0  | 0  | 4       | 1\nVFMADD132PS %ZMM9,%ZMM2,%ZMM0   | 1     | 1    | 0    | 0    | 0    | 0  | 0    | 0    | 0  | 0  | 0  | 4       | 1\nCMP %R13,%RCX                   | 1     | 0.25 | 0.25 | 0    | 0    | 0  | 0.25 | 0.25 | 0  | 0  | 0  | 1       | 0.25\nJNE 2707 <move_particles+0x217> | 1     | 0.50 | 0    | 0    | 0    | 0  | 0    | 0.50 | 0  | 0  | 0  | 0       | 0.50-1\n",
        },
      },
      header = {
        "28% of peak computational performance is used (18.00 out of 64.00 FLOP per cycle (GFLOPS @ 1GHz))",
      },
      brief = {
      },
      gain = {
        {
          details = "All SSE/AVX instructions are used in vector version (process two or more data elements in vector registers).\n",
          title = "Vectorization",
          txt = "Your loop is fully vectorized, using full register length.\n",
        },
        {
          workaround = " - Reduce the number of FP add instructions\n - Reduce the number of FP multiply/FMA instructions\n",
          title = "Execution units bottlenecks",
          txt = "Performance is limited by:\n - execution of FP add operations (the FP add unit is a bottleneck)\n - execution of FP multiply or FMA (fused multiply-add) operations (the FP multiply/FMA unit is a bottleneck)\n\nBy removing all these bottlenecks, you can lower the cost of an iteration from 48.00 to 12.80 cycles (3.75x speedup).\n",
        },
      },
      potential = {
        {
          workaround = "If your loop is irregular, try to remove or hoist conditional structures out of your loop. If it mixes elements of different sizes, try to uniformize them.",
          details = "Vector registers are partially exploited, which is expected if your loop is irregular or mixes elements of different sizes.",
          title = "Masked instructions",
          txt = "Detected masked instructions.",
        },
        {
          workaround = "Try to change order in which elements are evaluated (using parentheses) in arithmetic expressions containing both ADD/SUB and MUL operations to enable your compiler to generate FMA instructions wherever possible.\nFor instance a + b*c is a valid FMA (MUL then ADD).\nHowever (a+b)* c cannot be translated into an FMA (ADD then MUL).",
          title = "FMA",
          txt = "Detected 160 FMA (fused multiply-add) operations.\nPresence of both ADD/SUB and MUL operations.",
        },
      },
    },
  },
  AVG = {
      hint = {
        {
          details = "These instructions generate more than one micro-operation and only one of them can be decoded during a cycle and the extra micro-operations increase pressure on execution units.\n - VRCP14PS: 2 occurrences\n - VRSQRT14PS: 2 occurrences\n",
          title = "Complex instructions",
          txt = "Detected COMPLEX INSTRUCTIONS.\n",
        },
        {
          workaround = "Use vector aligned instructions:\n 1) align your arrays on 64 bytes boundaries: replace { void *p = malloc (size); } with { void *p; posix_memalign (&p, 64, size); }.\n 2) inform your compiler that your arrays are vector aligned: if array 'foo' is 64 bytes-aligned, define a pointer 'p_foo' as __builtin_assume_aligned (foo, 64) and use it instead of 'foo' in the loop.\n",
          details = " - VMOVUPS: 6 occurrences\n",
          title = "Vector unaligned load/store instructions",
          txt = "Detected 6 optimal vector unaligned load/store instructions.\n",
        },
        {
          title = "Type of elements and instruction set",
          txt = "46 AVX-512 instructions are processing arithmetic or math operations on single precision FP elements in vector mode (sixteen at a time).\n",
        },
        {
          title = "Matching between your loop (in the source code) and the binary loop",
          txt = "The binary loop is composed of 864 FP arithmetical operations:\n - 384: addition or subtraction (160 inside FMA instructions)\n - 416: multiply (160 inside FMA instructions)\n - 32: fast reciprocal\n - 32: fast square root reciprocal\nThe binary loop is loading 384 bytes (96 single precision FP elements).",
        },
        {
          title = "Arithmetic intensity",
          txt = "Arithmetic intensity is 2.25 FP operations per loaded or stored byte.",
        },
      },
      expert = {
        {
          title = "General properties",
          txt = "nb instructions    : 57\nnb uops            : 64\nloop length        : 348\nused x86 registers : 5\nused mmx registers : 0\nused xmm registers : 0\nused ymm registers : 0\nused zmm registers : 20\nnb stack references: 0\nADD-SUB / MUL ratio: 0.88\n",
        },
        {
          title = "Front-end",
          txt = "ASSUMED MACRO FUSION\nFIT IN UOP CACHE\nmicro-operation queue: 12.80 cycles\nfront end            : 12.80 cycles\n",
        },
        {
          title = "Back-end",
          txt = "       | P0    | P1   | P2   | P3   | P4   | P5   | P6   | P7   | P8   | P9\n-----------------------------------------------------------------------------\nuops   | 48.00 | 1.00 | 3.00 | 3.00 | 0.00 | 6.00 | 1.00 | 0.00 | 0.00 | 0.00\ncycles | 48.00 | 1.00 | 3.00 | 3.00 | 0.00 | 6.00 | 1.00 | 0.00 | 0.00 | 0.00\n\nCycles executing div or sqrt instructions: NA\nLongest recurrence chain latency (RecMII): 8.00\n",
        },
        {
          title = "Cycles summary",
          txt = "Front-end : 12.80\nDispatch  : 48.00\nData deps.: 8.00\nOverall L1: 48.00\n",
        },
        {
          title = "Vectorization ratios",
          txt = "all     : 100%\nload    : 100%\nstore   : NA (no store vectorizable/vectorized instructions)\nmul     : 100%\nadd-sub : 100%\nfma     : 100%\ndiv/sqrt: 100%\nother   : 100%\n",
        },
        {
          title = "Vector efficiency ratios",
          txt = "all     : 100%\nload    : 100%\nstore   : NA (no store vectorizable/vectorized instructions)\nmul     : 100%\nadd-sub : 100%\nfma     : 100%\ndiv/sqrt: 100%\nother   : 100%\n",
        },
        {
          title = "Cycles and memory resources usage",
          txt = "Detected masked instructions: assuming all mask elements are active.\nAssuming all data fit into the L1 cache, each iteration of the binary loop takes 48.00 cycles. At this rate:\n - 6% of peak load performance is reached (8.00 out of 128.00 bytes loaded per cycle (GB/s @ 1GHz))\n",
        },
        {
          title = "Front-end bottlenecks",
          txt = "Found no such bottlenecks.",
        },
        {
          title = "ASM code",
          txt = "In the binary file, the address of the loop is: 2707\n\nInstruction                     | Nb FU | P0   | P1   | P2   | P3   | P4 | P5   | P6   | P7 | P8 | P9 | Latency | Recip. throughput\n-----------------------------------------------------------------------------------------------------------------------------------\nVMOVUPS (%RDI,%RCX,1),%ZMM9     | 1     | 0    | 0    | 0.50 | 0.50 | 0  | 0    | 0    | 0  | 0  | 0  | 3       | 0.50\nVMOVUPS (%RSI,%RCX,1),%ZMM6     | 1     | 0    | 0    | 0.50 | 0.50 | 0  | 0    | 0    | 0  | 0  | 0  | 3       | 0.50\nVMOVUPS (%RDX,%RCX,1),%ZMM1     | 1     | 0    | 0    | 0.50 | 0.50 | 0  | 0    | 0    | 0  | 0  | 0  | 3       | 0.50\nVSUBPS %ZMM30,%ZMM9,%ZMM7       | 1     | 1    | 0    | 0    | 0    | 0  | 0    | 0    | 0  | 0  | 0  | 4       | 1\nVSUBPS %ZMM20,%ZMM6,%ZMM6       | 1     | 1    | 0    | 0    | 0    | 0  | 0    | 0    | 0  | 0  | 0  | 4       | 1\nVSUBPS %ZMM19,%ZMM1,%ZMM4       | 1     | 1    | 0    | 0    | 0    | 0  | 0    | 0    | 0  | 0  | 0  | 4       | 1\nVMULPS %ZMM7,%ZMM7,%ZMM9        | 1     | 1    | 0    | 0    | 0    | 0  | 0    | 0    | 0  | 0  | 0  | 4       | 1\nVMOVAPS %ZMM6,%ZMM2             | 1     | 0    | 0    | 0    | 0    | 0  | 0    | 0    | 0  | 0  | 0  | 0       | 0.25\nVFMADD132PS %ZMM6,%ZMM24,%ZMM2  | 1     | 1    | 0    | 0    | 0    | 0  | 0    | 0    | 0  | 0  | 0  | 4       | 1\nVFMADD231PS %ZMM4,%ZMM4,%ZMM9   | 1     | 1    | 0    | 0    | 0    | 0  | 0    | 0    | 0  | 0  | 0  | 4       | 1\nVADDPS %ZMM2,%ZMM9,%ZMM9        | 1     | 1    | 0    | 0    | 0    | 0  | 0    | 0    | 0  | 0  | 0  | 4       | 1\nVCMPPS $0x4,%ZMM9,%ZMM21,%K2    | 1     | 0    | 0    | 0    | 0    | 0  | 1    | 0    | 0  | 0  | 0  | 4       | 1\nVRSQRT14PS %ZMM9,%ZMM1{%K2}{z}  | 3     | 2.50 | 0    | 0    | 0    | 0  | 0.50 | 0    | 0  | 0  | 0  | 6       | 2\nVMULPS %ZMM9,%ZMM1,%ZMM31       | 1     | 1    | 0    | 0    | 0    | 0  | 0    | 0    | 0  | 0  | 0  | 4       | 1\nVMULPS %ZMM1,%ZMM31,%ZMM2       | 1     | 1    | 0    | 0    | 0    | 0  | 0    | 0    | 0  | 0  | 0  | 4       | 1\nVMULPS %ZMM22,%ZMM31,%ZMM16     | 1     | 1    | 0    | 0    | 0    | 0  | 0    | 0    | 0  | 0  | 0  | 4       | 1\nVADDPS %ZMM23,%ZMM2,%ZMM1       | 1     | 1    | 0    | 0    | 0    | 0  | 0    | 0    | 0  | 0  | 0  | 4       | 1\nVMULPS %ZMM16,%ZMM1,%ZMM2       | 1     | 1    | 0    | 0    | 0    | 0  | 0    | 0    | 0  | 0  | 0  | 4       | 1\nVMULPS %ZMM9,%ZMM2,%ZMM9        | 1     | 1    | 0    | 0    | 0    | 0  | 0    | 0    | 0  | 0  | 0  | 4       | 1\nVRCP14PS %ZMM9,%ZMM2            | 3     | 2.50 | 0    | 0    | 0    | 0  | 0.50 | 0    | 0  | 0  | 0  | 4       | 2\nVMULPS %ZMM9,%ZMM2,%ZMM1        | 1     | 1    | 0    | 0    | 0    | 0  | 0    | 0    | 0  | 0  | 0  | 4       | 1\nVMULPS %ZMM1,%ZMM2,%ZMM9        | 1     | 1    | 0    | 0    | 0    | 0  | 0    | 0    | 0  | 0  | 0  | 4       | 1\nVADDPS %ZMM2,%ZMM2,%ZMM2        | 1     | 1    | 0    | 0    | 0    | 0  | 0    | 0    | 0  | 0  | 0  | 4       | 1\nVSUBPS %ZMM9,%ZMM2,%ZMM2        | 1     | 1    | 0    | 0    | 0    | 0  | 0    | 0    | 0  | 0  | 0  | 4       | 1\nVFMADD132PS %ZMM2,%ZMM10,%ZMM7  | 1     | 1    | 0    | 0    | 0    | 0  | 0    | 0    | 0  | 0  | 0  | 4       | 1\nVFMADD132PS %ZMM2,%ZMM5,%ZMM6   | 1     | 1    | 0    | 0    | 0    | 0  | 0    | 0    | 0  | 0  | 0  | 4       | 1\nVMOVUPS 0x40(%RSI,%RCX,1),%ZMM5 | 1     | 0    | 0    | 0.50 | 0.50 | 0  | 0    | 0    | 0  | 0  | 0  | 3       | 0.50\nVFMADD132PS %ZMM4,%ZMM0,%ZMM2   | 1     | 1    | 0    | 0    | 0    | 0  | 0    | 0    | 0  | 0  | 0  | 4       | 1\nVMOVUPS 0x40(%RDI,%RCX,1),%ZMM0 | 1     | 0    | 0    | 0.50 | 0.50 | 0  | 0    | 0    | 0  | 0  | 0  | 3       | 0.50\nVMOVUPS 0x40(%RDX,%RCX,1),%ZMM4 | 1     | 0    | 0    | 0.50 | 0.50 | 0  | 0    | 0    | 0  | 0  | 0  | 3       | 0.50\nSUB $-0x80,%RCX                 | 1     | 0.25 | 0.25 | 0    | 0    | 0  | 0.25 | 0.25 | 0  | 0  | 0  | 1       | 0.25\nVSUBPS %ZMM20,%ZMM5,%ZMM5       | 1     | 1    | 0    | 0    | 0    | 0  | 0    | 0    | 0  | 0  | 0  | 4       | 1\nVSUBPS %ZMM30,%ZMM0,%ZMM10      | 1     | 1    | 0    | 0    | 0    | 0  | 0    | 0    | 0  | 0  | 0  | 4       | 1\nVSUBPS %ZMM19,%ZMM4,%ZMM9       | 1     | 1    | 0    | 0    | 0    | 0  | 0    | 0    | 0  | 0  | 0  | 4       | 1\nVMOVAPS %ZMM5,%ZMM0             | 1     | 0    | 0    | 0    | 0    | 0  | 0    | 0    | 0  | 0  | 0  | 0       | 0.25\nVMULPS %ZMM10,%ZMM10,%ZMM1      | 1     | 1    | 0    | 0    | 0    | 0  | 0    | 0    | 0  | 0  | 0  | 4       | 1\nVFMADD132PS %ZMM5,%ZMM24,%ZMM0  | 1     | 1    | 0    | 0    | 0    | 0  | 0    | 0    | 0  | 0  | 0  | 4       | 1\nVFMADD231PS %ZMM9,%ZMM9,%ZMM1   | 1     | 1    | 0    | 0    | 0    | 0  | 0    | 0    | 0  | 0  | 0  | 4       | 1\nVADDPS %ZMM0,%ZMM1,%ZMM4        | 1     | 1    | 0    | 0    | 0    | 0  | 0    | 0    | 0  | 0  | 0  | 4       | 1\nVCMPPS $0x4,%ZMM4,%ZMM21,%K3    | 1     | 0    | 0    | 0    | 0    | 0  | 1    | 0    | 0  | 0  | 0  | 4       | 1\nVRSQRT14PS %ZMM4,%ZMM1{%K3}{z}  | 3     | 2.50 | 0    | 0    | 0    | 0  | 0.50 | 0    | 0  | 0  | 0  | 6       | 2\nVMULPS %ZMM4,%ZMM1,%ZMM17       | 1     | 1    | 0    | 0    | 0    | 0  | 0    | 0    | 0  | 0  | 0  | 4       | 1\nVMULPS %ZMM1,%ZMM17,%ZMM0       | 1     | 1    | 0    | 0    | 0    | 0  | 0    | 0    | 0  | 0  | 0  | 4       | 1\nVMULPS %ZMM22,%ZMM17,%ZMM18     | 1     | 1    | 0    | 0    | 0    | 0  | 0    | 0    | 0  | 0  | 0  | 4       | 1\nVADDPS %ZMM23,%ZMM0,%ZMM1       | 1     | 1    | 0    | 0    | 0    | 0  | 0    | 0    | 0  | 0  | 0  | 4       | 1\nVMULPS %ZMM18,%ZMM1,%ZMM0       | 1     | 1    | 0    | 0    | 0    | 0  | 0    | 0    | 0  | 0  | 0  | 4       | 1\nVMULPS %ZMM4,%ZMM0,%ZMM4        | 1     | 1    | 0    | 0    | 0    | 0  | 0    | 0    | 0  | 0  | 0  | 4       | 1\nVRCP14PS %ZMM4,%ZMM0            | 3     | 2.50 | 0    | 0    | 0    | 0  | 0.50 | 0    | 0  | 0  | 0  | 4       | 2\nVMULPS %ZMM4,%ZMM0,%ZMM1        | 1     | 1    | 0    | 0    | 0    | 0  | 0    | 0    | 0  | 0  | 0  | 4       | 1\nVMULPS %ZMM1,%ZMM0,%ZMM4        | 1     | 1    | 0    | 0    | 0    | 0  | 0    | 0    | 0  | 0  | 0  | 4       | 1\nVADDPS %ZMM0,%ZMM0,%ZMM0        | 1     | 1    | 0    | 0    | 0    | 0  | 0    | 0    | 0  | 0  | 0  | 4       | 1\nVSUBPS %ZMM4,%ZMM0,%ZMM0        | 1     | 1    | 0    | 0    | 0    | 0  | 0    | 0    | 0  | 0  | 0  | 4       | 1\nVFMADD132PS %ZMM0,%ZMM7,%ZMM10  | 1     | 1    | 0    | 0    | 0    | 0  | 0    | 0    | 0  | 0  | 0  | 4       | 1\nVFMADD132PS %ZMM0,%ZMM6,%ZMM5   | 1     | 1    | 0    | 0    | 0    | 0  | 0    | 0    | 0  | 0  | 0  | 4       | 1\nVFMADD132PS %ZMM9,%ZMM2,%ZMM0   | 1     | 1    | 0    | 0    | 0    | 0  | 0    | 0    | 0  | 0  | 0  | 4       | 1\nCMP %R13,%RCX                   | 1     | 0.25 | 0.25 | 0    | 0    | 0  | 0.25 | 0.25 | 0  | 0  | 0  | 1       | 0.25\nJNE 2707 <move_particles+0x217> | 1     | 0.50 | 0    | 0    | 0    | 0  | 0    | 0.50 | 0  | 0  | 0  | 0       | 0.50-1\n",
        },
      },
      header = {
        "28% of peak computational performance is used (18.00 out of 64.00 FLOP per cycle (GFLOPS @ 1GHz))",
      },
      brief = {
      },
      gain = {
        {
          details = "All SSE/AVX instructions are used in vector version (process two or more data elements in vector registers).\n",
          title = "Vectorization",
          txt = "Your loop is fully vectorized, using full register length.\n",
        },
        {
          workaround = " - Reduce the number of FP add instructions\n - Reduce the number of FP multiply/FMA instructions\n",
          title = "Execution units bottlenecks",
          txt = "Performance is limited by:\n - execution of FP add operations (the FP add unit is a bottleneck)\n - execution of FP multiply or FMA (fused multiply-add) operations (the FP multiply/FMA unit is a bottleneck)\n\nBy removing all these bottlenecks, you can lower the cost of an iteration from 48.00 to 12.80 cycles (3.75x speedup).\n",
        },
      },
      potential = {
        {
          workaround = "If your loop is irregular, try to remove or hoist conditional structures out of your loop. If it mixes elements of different sizes, try to uniformize them.",
          details = "Vector registers are partially exploited, which is expected if your loop is irregular or mixes elements of different sizes.",
          title = "Masked instructions",
          txt = "Detected masked instructions.",
        },
        {
          workaround = "Try to change order in which elements are evaluated (using parentheses) in arithmetic expressions containing both ADD/SUB and MUL operations to enable your compiler to generate FMA instructions wherever possible.\nFor instance a + b*c is a valid FMA (MUL then ADD).\nHowever (a+b)* c cannot be translated into an FMA (ADD then MUL).",
          title = "FMA",
          txt = "Detected 160 FMA (fused multiply-add) operations.\nPresence of both ADD/SUB and MUL operations.",
        },
      },
    },
  common = {
    header = {
      "The loop is defined in /home/anism/VersionFinaleNbody3D/nbody4.c:101-116.\n",
      "The related source loop is not unrolled or unrolled with no peel/tail loop.",
    },
    nb_paths = 1,
  },
}
