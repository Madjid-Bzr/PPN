_cqa_text_report = {
  paths = {
    {
      hint = {
        {
          workaround = "Use vector aligned instructions:\n 1) align your arrays on 64 bytes boundaries: replace { void *p = malloc (size); } with { void *p; posix_memalign (&p, 64, size); }.\n 2) inform your compiler that your arrays are vector aligned: if array 'foo' is 64 bytes-aligned, define a pointer 'p_foo' as __builtin_assume_aligned (foo, 64) and use it instead of 'foo' in the loop.\n",
          details = " - VMOVUPS: 12 occurrences\n",
          title = "Vector unaligned load/store instructions",
          txt = "Detected 12 optimal vector unaligned load/store instructions.\n",
        },
        {
          title = "Type of elements and instruction set",
          txt = "56 AVX-512 instructions are processing arithmetic or math operations on single precision FP elements in vector mode (sixteen at a time).\n",
        },
        {
          title = "Matching between your loop (in the source code) and the binary loop",
          txt = "The binary loop is composed of 1216 FP arithmetical operations:\n - 576: addition or subtraction (320 inside FMA instructions)\n - 448: multiply (320 inside FMA instructions)\n - 128: fast reciprocal\n - 64: fast square root reciprocal\nThe binary loop is loading 776 bytes (194 single precision FP elements).",
        },
        {
          title = "Arithmetic intensity",
          txt = "Arithmetic intensity is 1.57 FP operations per loaded or stored byte.",
        },
      },
      expert = {
        {
          title = "General properties",
          txt = "nb instructions    : 75\nloop length        : 470\nused x86 registers : 5\nused mmx registers : 0\nused xmm registers : 0\nused ymm registers : 0\nused zmm registers : 17\nnb stack references: 1\nADD-SUB / MUL ratio: 2.00\n",
        },
        {
          title = "Front-end",
          txt = "MACRO FUSION NOT POSSIBLE\ninstruction fetch    : 30.00 cycles\ninstruction queue    : 37.50 cycles\ndecoding             : 37.50 cycles\nmicro-operation queue: 38.00 cycles\nfront end            : 38.00 cycles\n",
        },
        {
          title = "Back-end",
          txt = "       | P0    | P1    | P2   | P3   | P4   | P5   | P6\n---------------------------------------------------------\nuops   | 30.00 | 30.00 | 6.50 | 6.50 | 1.50 | 1.50 | 0.00\ncycles | 30.00 | 30.00 | 6.50 | 6.50 | 1.50 | 1.50 | 0.00\n\nCycles executing div or sqrt instructions: NA\nLongest recurrence chain latency (RecMII): 24.00\n",
        },
        {
          title = "Cycles summary",
          txt = "Front-end : 38.00\nDispatch  : 30.00\nData deps.: 24.00\nOverall L1: 38.00\n",
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
          txt = "Assuming all data fit into the L1 cache, each iteration of the binary loop takes 38.00 cycles. At this rate:\n - 15% of peak load performance is reached (20.42 out of 128.00 bytes loaded per cycle (GB/s @ 1GHz))\n",
        },
        {
          title = "Front-end bottlenecks",
          txt = "Performance is limited by instruction throughput (loading/decoding program instructions to execution core) (front-end is a bottleneck).\n",
        },
        {
          title = "ASM code",
          txt = "In the binary file, the address of the loop is: 2696\n\nInstruction                      | Nb FU | P0   | P1   | P2   | P3   | P4   | P5   | P6 | Latency | Recip. throughput\n---------------------------------------------------------------------------------------------------------------------\nVMOVUPS (%RSI,%RAX,1),%ZMM12     | 1     | 0    | 0    | 0.50 | 0.50 | 0    | 0    | 0  | 5       | 0.50\nVMOVUPS (%RCX,%RAX,1),%ZMM4      | 1     | 0    | 0    | 0.50 | 0.50 | 0    | 0    | 0  | 5       | 0.50\nVMOVUPS (%RDX,%RAX,1),%ZMM2      | 1     | 0    | 0    | 0.50 | 0.50 | 0    | 0    | 0  | 5       | 0.50\nVSUBPS %ZMM17,%ZMM12,%ZMM20      | 1     | 0.50 | 0.50 | 0    | 0    | 0    | 0    | 0  | 6       | 0.50\nVSUBPS %ZMM16,%ZMM4,%ZMM21       | 1     | 0.50 | 0.50 | 0    | 0    | 0    | 0    | 0  | 6       | 0.50\nVSUBPS %ZMM15,%ZMM2,%ZMM1        | 1     | 0.50 | 0.50 | 0    | 0    | 0    | 0    | 0  | 6       | 0.50\nVMULPS %ZMM20,%ZMM20,%ZMM12      | 1     | 0.50 | 0.50 | 0    | 0    | 0    | 0    | 0  | 6       | 0.50\nVMOVAPS %ZMM21,%ZMM4             | 1     | 0.50 | 0.50 | 0    | 0    | 0    | 0    | 0  | 2       | 0.50\nVFMADD132PS %ZMM21,%ZMM11,%ZMM4  | 1     | 0.50 | 0.50 | 0    | 0    | 0    | 0    | 0  | 6       | 0.50\nVFMADD231PS %ZMM1,%ZMM1,%ZMM12   | 1     | 0.50 | 0.50 | 0    | 0    | 0    | 0    | 0  | 6       | 0.50\nVADDPS %ZMM4,%ZMM12,%ZMM2        | 1     | 0.50 | 0.50 | 0    | 0    | 0    | 0    | 0  | 6       | 0.50\nVRSQRT28PS %ZMM2,%ZMM12          | 1     | 1    | 0    | 0    | 0    | 0    | 0    | 0  | 7       | 3\nVRCP28PS %ZMM12,%ZMM4            | 1     | 1    | 0    | 0    | 0    | 0    | 0    | 0  | 8       | 3\nVMULPS %ZMM2,%ZMM4,%ZMM2         | 1     | 0.50 | 0.50 | 0    | 0    | 0    | 0    | 0  | 6       | 0.50\nVMOVUPS 0x40(%RCX,%RAX,1),%ZMM4  | 1     | 0    | 0    | 0.50 | 0.50 | 0    | 0    | 0  | 5       | 0.50\nVSUBPS %ZMM16,%ZMM4,%ZMM4        | 1     | 0.50 | 0.50 | 0    | 0    | 0    | 0    | 0  | 6       | 0.50\nVRCP28PS %ZMM2,%ZMM12            | 1     | 1    | 0    | 0    | 0    | 0    | 0    | 0  | 8       | 3\nVFMADD231PS %ZMM1,%ZMM12,%ZMM0   | 1     | 0.50 | 0.50 | 0    | 0    | 0    | 0    | 0  | 6       | 0.50\nVMOVUPS 0x40(%RSI,%RAX,1),%ZMM1  | 1     | 0    | 0    | 0.50 | 0.50 | 0    | 0    | 0  | 5       | 0.50\nVFMADD231PS %ZMM20,%ZMM12,%ZMM13 | 1     | 0.50 | 0.50 | 0    | 0    | 0    | 0    | 0  | 6       | 0.50\nVFMADD231PS %ZMM21,%ZMM12,%ZMM14 | 1     | 0.50 | 0.50 | 0    | 0    | 0    | 0    | 0  | 6       | 0.50\nVMOVUPS 0x40(%RDX,%RAX,1),%ZMM2  | 1     | 0    | 0    | 0.50 | 0.50 | 0    | 0    | 0  | 5       | 0.50\nVMOVAPS %ZMM4,%ZMM22             | 1     | 0.50 | 0.50 | 0    | 0    | 0    | 0    | 0  | 2       | 0.50\nVSUBPS %ZMM17,%ZMM1,%ZMM12       | 1     | 0.50 | 0.50 | 0    | 0    | 0    | 0    | 0  | 6       | 0.50\nVFMADD132PS %ZMM4,%ZMM11,%ZMM22  | 1     | 0.50 | 0.50 | 0    | 0    | 0    | 0    | 0  | 6       | 0.50\nVSUBPS %ZMM15,%ZMM2,%ZMM2        | 1     | 0.50 | 0.50 | 0    | 0    | 0    | 0    | 0  | 6       | 0.50\nVMULPS %ZMM12,%ZMM12,%ZMM1       | 1     | 0.50 | 0.50 | 0    | 0    | 0    | 0    | 0  | 6       | 0.50\nVFMADD231PS %ZMM2,%ZMM2,%ZMM1    | 1     | 0.50 | 0.50 | 0    | 0    | 0    | 0    | 0  | 6       | 0.50\nVADDPS %ZMM22,%ZMM1,%ZMM23       | 1     | 0.50 | 0.50 | 0    | 0    | 0    | 0    | 0  | 6       | 0.50\nVRSQRT28PS %ZMM23,%ZMM1          | 1     | 1    | 0    | 0    | 0    | 0    | 0    | 0  | 7       | 3\nVRCP28PS %ZMM1,%ZMM1             | 1     | 1    | 0    | 0    | 0    | 0    | 0    | 0  | 8       | 3\nVMULPS %ZMM23,%ZMM1,%ZMM1        | 1     | 0.50 | 0.50 | 0    | 0    | 0    | 0    | 0  | 6       | 0.50\nVRCP28PS %ZMM1,%ZMM1             | 1     | 1    | 0    | 0    | 0    | 0    | 0    | 0  | 8       | 3\nVFMADD132PS %ZMM1,%ZMM0,%ZMM2    | 1     | 0.50 | 0.50 | 0    | 0    | 0    | 0    | 0  | 6       | 0.50\nVMOVUPS 0x80(%RSI,%RAX,1),%ZMM0  | 1     | 0    | 0    | 0.50 | 0.50 | 0    | 0    | 0  | 5       | 0.50\nVFMADD132PS %ZMM1,%ZMM13,%ZMM12  | 1     | 0.50 | 0.50 | 0    | 0    | 0    | 0    | 0  | 6       | 0.50\nVFMADD132PS %ZMM1,%ZMM14,%ZMM4   | 1     | 0.50 | 0.50 | 0    | 0    | 0    | 0    | 0  | 6       | 0.50\nVMOVUPS 0x80(%RDX,%RAX,1),%ZMM1  | 1     | 0    | 0    | 0.50 | 0.50 | 0    | 0    | 0  | 5       | 0.50\nVMOVUPS 0x80(%RCX,%RAX,1),%ZMM14 | 1     | 0    | 0    | 0.50 | 0.50 | 0    | 0    | 0  | 5       | 0.50\nVSUBPS %ZMM17,%ZMM0,%ZMM13       | 1     | 0.50 | 0.50 | 0    | 0    | 0    | 0    | 0  | 6       | 0.50\nVSUBPS %ZMM15,%ZMM1,%ZMM24       | 1     | 0.50 | 0.50 | 0    | 0    | 0    | 0    | 0  | 6       | 0.50\nVSUBPS %ZMM16,%ZMM14,%ZMM14      | 1     | 0.50 | 0.50 | 0    | 0    | 0    | 0    | 0  | 6       | 0.50\nVMULPS %ZMM13,%ZMM13,%ZMM1       | 1     | 0.50 | 0.50 | 0    | 0    | 0    | 0    | 0  | 6       | 0.50\nVMOVAPS %ZMM14,%ZMM0             | 1     | 0.50 | 0.50 | 0    | 0    | 0    | 0    | 0  | 2       | 0.50\nVFMADD132PS %ZMM14,%ZMM11,%ZMM0  | 1     | 0.50 | 0.50 | 0    | 0    | 0    | 0    | 0  | 6       | 0.50\nVFMADD231PS %ZMM24,%ZMM24,%ZMM1  | 1     | 0.50 | 0.50 | 0    | 0    | 0    | 0    | 0  | 6       | 0.50\nVADDPS %ZMM0,%ZMM1,%ZMM0         | 1     | 0.50 | 0.50 | 0    | 0    | 0    | 0    | 0  | 6       | 0.50\nVRSQRT28PS %ZMM0,%ZMM1           | 1     | 1    | 0    | 0    | 0    | 0    | 0    | 0  | 7       | 3\nVRCP28PS %ZMM1,%ZMM1             | 1     | 1    | 0    | 0    | 0    | 0    | 0    | 0  | 8       | 3\nVMULPS %ZMM0,%ZMM1,%ZMM0         | 1     | 0.50 | 0.50 | 0    | 0    | 0    | 0    | 0  | 6       | 0.50\nVRCP28PS %ZMM0,%ZMM0             | 1     | 1    | 0    | 0    | 0    | 0    | 0    | 0  | 8       | 3\nVFMADD132PS %ZMM0,%ZMM12,%ZMM13  | 1     | 0.50 | 0.50 | 0    | 0    | 0    | 0    | 0  | 6       | 0.50\nVMOVUPS 0xc0(%RSI,%RAX,1),%ZMM12 | 1     | 0    | 0    | 0.50 | 0.50 | 0    | 0    | 0  | 5       | 0.50\nVFMADD132PS %ZMM0,%ZMM4,%ZMM14   | 1     | 0.50 | 0.50 | 0    | 0    | 0    | 0    | 0  | 6       | 0.50\nVMOVUPS 0xc0(%RCX,%RAX,1),%ZMM4  | 1     | 0    | 0    | 0.50 | 0.50 | 0    | 0    | 0  | 5       | 0.50\nVFMADD132PS %ZMM24,%ZMM2,%ZMM0   | 1     | 0.50 | 0.50 | 0    | 0    | 0    | 0    | 0  | 6       | 0.50\nVMOVUPS 0xc0(%RDX,%RAX,1),%ZMM2  | 1     | 0    | 0    | 0.50 | 0.50 | 0    | 0    | 0  | 5       | 0.50\nADD $0x100,%RAX                  | 1     | 0    | 0    | 0    | 0    | 0.50 | 0.50 | 0  | 1       | 0.50\nVSUBPS %ZMM17,%ZMM12,%ZMM25      | 1     | 0.50 | 0.50 | 0    | 0    | 0    | 0    | 0  | 6       | 0.50\nVSUBPS %ZMM16,%ZMM4,%ZMM12       | 1     | 0.50 | 0.50 | 0    | 0    | 0    | 0    | 0  | 6       | 0.50\nVSUBPS %ZMM15,%ZMM2,%ZMM2        | 1     | 0.50 | 0.50 | 0    | 0    | 0    | 0    | 0  | 6       | 0.50\nVMULPS %ZMM25,%ZMM25,%ZMM4       | 1     | 0.50 | 0.50 | 0    | 0    | 0    | 0    | 0  | 6       | 0.50\nVMOVAPS %ZMM12,%ZMM1             | 1     | 0.50 | 0.50 | 0    | 0    | 0    | 0    | 0  | 2       | 0.50\nVFMADD132PS %ZMM12,%ZMM11,%ZMM1  | 1     | 0.50 | 0.50 | 0    | 0    | 0    | 0    | 0  | 6       | 0.50\nVFMADD231PS %ZMM2,%ZMM2,%ZMM4    | 1     | 0.50 | 0.50 | 0    | 0    | 0    | 0    | 0  | 6       | 0.50\nVADDPS %ZMM1,%ZMM4,%ZMM1         | 1     | 0.50 | 0.50 | 0    | 0    | 0    | 0    | 0  | 6       | 0.50\nVRSQRT28PS %ZMM1,%ZMM4           | 1     | 1    | 0    | 0    | 0    | 0    | 0    | 0  | 7       | 3\nVRCP28PS %ZMM4,%ZMM4             | 1     | 1    | 0    | 0    | 0    | 0    | 0    | 0  | 8       | 3\nVMULPS %ZMM1,%ZMM4,%ZMM1         | 1     | 0.50 | 0.50 | 0    | 0    | 0    | 0    | 0  | 6       | 0.50\nVRCP28PS %ZMM1,%ZMM4             | 1     | 1    | 0    | 0    | 0    | 0    | 0    | 0  | 8       | 3\nVFMADD231PS %ZMM25,%ZMM4,%ZMM13  | 1     | 0.50 | 0.50 | 0    | 0    | 0    | 0    | 0  | 6       | 0.50\nVFMADD231PS %ZMM12,%ZMM4,%ZMM14  | 1     | 0.50 | 0.50 | 0    | 0    | 0    | 0    | 0  | 6       | 0.50\nVFMADD231PS %ZMM2,%ZMM4,%ZMM0    | 1     | 0.50 | 0.50 | 0    | 0    | 0    | 0    | 0  | 6       | 0.50\nCMP %RAX,0x38(%RSP)              | 1     | 0    | 0    | 1    | 0    | 0.50 | 0.50 | 0  | 1       | 1\nJNE 2696 <move_particles+0x296>  | 1     | 0    | 0    | 0    | 0    | 0    | 1    | 0  | 0       | 1-2\n",
        },
      },
      header = {
        "50% of peak computational performance is used (32.00 out of 64.00 FLOP per cycle (GFLOPS @ 1GHz))",
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
          title = "Execution units bottlenecks",
          txt = "Found no such bottlenecks but see expert reports for more complex bottlenecks.",
        },
      },
      potential = {
        {
          workaround = "Try to change order in which elements are evaluated (using parentheses) in arithmetic expressions containing both ADD/SUB and MUL operations to enable your compiler to generate FMA instructions wherever possible.\nFor instance a + b*c is a valid FMA (MUL then ADD).\nHowever (a+b)* c cannot be translated into an FMA (ADD then MUL).",
          title = "FMA",
          txt = "Detected 320 FMA (fused multiply-add) operations.\nPresence of both ADD/SUB and MUL operations.",
        },
      },
    },
  },
  AVG = {
      hint = {
        {
          workaround = "Use vector aligned instructions:\n 1) align your arrays on 64 bytes boundaries: replace { void *p = malloc (size); } with { void *p; posix_memalign (&p, 64, size); }.\n 2) inform your compiler that your arrays are vector aligned: if array 'foo' is 64 bytes-aligned, define a pointer 'p_foo' as __builtin_assume_aligned (foo, 64) and use it instead of 'foo' in the loop.\n",
          details = " - VMOVUPS: 12 occurrences\n",
          title = "Vector unaligned load/store instructions",
          txt = "Detected 12 optimal vector unaligned load/store instructions.\n",
        },
        {
          title = "Type of elements and instruction set",
          txt = "56 AVX-512 instructions are processing arithmetic or math operations on single precision FP elements in vector mode (sixteen at a time).\n",
        },
        {
          title = "Matching between your loop (in the source code) and the binary loop",
          txt = "The binary loop is composed of 1216 FP arithmetical operations:\n - 576: addition or subtraction (320 inside FMA instructions)\n - 448: multiply (320 inside FMA instructions)\n - 128: fast reciprocal\n - 64: fast square root reciprocal\nThe binary loop is loading 776 bytes (194 single precision FP elements).",
        },
        {
          title = "Arithmetic intensity",
          txt = "Arithmetic intensity is 1.57 FP operations per loaded or stored byte.",
        },
      },
      expert = {
        {
          title = "General properties",
          txt = "nb instructions    : 75\nloop length        : 470\nused x86 registers : 5\nused mmx registers : 0\nused xmm registers : 0\nused ymm registers : 0\nused zmm registers : 17\nnb stack references: 1\nADD-SUB / MUL ratio: 2.00\n",
        },
        {
          title = "Front-end",
          txt = "MACRO FUSION NOT POSSIBLE\ninstruction fetch    : 30.00 cycles\ninstruction queue    : 37.50 cycles\ndecoding             : 37.50 cycles\nmicro-operation queue: 38.00 cycles\nfront end            : 38.00 cycles\n",
        },
        {
          title = "Back-end",
          txt = "       | P0    | P1    | P2   | P3   | P4   | P5   | P6\n---------------------------------------------------------\nuops   | 30.00 | 30.00 | 6.50 | 6.50 | 1.50 | 1.50 | 0.00\ncycles | 30.00 | 30.00 | 6.50 | 6.50 | 1.50 | 1.50 | 0.00\n\nCycles executing div or sqrt instructions: NA\nLongest recurrence chain latency (RecMII): 24.00\n",
        },
        {
          title = "Cycles summary",
          txt = "Front-end : 38.00\nDispatch  : 30.00\nData deps.: 24.00\nOverall L1: 38.00\n",
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
          txt = "Assuming all data fit into the L1 cache, each iteration of the binary loop takes 38.00 cycles. At this rate:\n - 15% of peak load performance is reached (20.42 out of 128.00 bytes loaded per cycle (GB/s @ 1GHz))\n",
        },
        {
          title = "Front-end bottlenecks",
          txt = "Performance is limited by instruction throughput (loading/decoding program instructions to execution core) (front-end is a bottleneck).\n",
        },
        {
          title = "ASM code",
          txt = "In the binary file, the address of the loop is: 2696\n\nInstruction                      | Nb FU | P0   | P1   | P2   | P3   | P4   | P5   | P6 | Latency | Recip. throughput\n---------------------------------------------------------------------------------------------------------------------\nVMOVUPS (%RSI,%RAX,1),%ZMM12     | 1     | 0    | 0    | 0.50 | 0.50 | 0    | 0    | 0  | 5       | 0.50\nVMOVUPS (%RCX,%RAX,1),%ZMM4      | 1     | 0    | 0    | 0.50 | 0.50 | 0    | 0    | 0  | 5       | 0.50\nVMOVUPS (%RDX,%RAX,1),%ZMM2      | 1     | 0    | 0    | 0.50 | 0.50 | 0    | 0    | 0  | 5       | 0.50\nVSUBPS %ZMM17,%ZMM12,%ZMM20      | 1     | 0.50 | 0.50 | 0    | 0    | 0    | 0    | 0  | 6       | 0.50\nVSUBPS %ZMM16,%ZMM4,%ZMM21       | 1     | 0.50 | 0.50 | 0    | 0    | 0    | 0    | 0  | 6       | 0.50\nVSUBPS %ZMM15,%ZMM2,%ZMM1        | 1     | 0.50 | 0.50 | 0    | 0    | 0    | 0    | 0  | 6       | 0.50\nVMULPS %ZMM20,%ZMM20,%ZMM12      | 1     | 0.50 | 0.50 | 0    | 0    | 0    | 0    | 0  | 6       | 0.50\nVMOVAPS %ZMM21,%ZMM4             | 1     | 0.50 | 0.50 | 0    | 0    | 0    | 0    | 0  | 2       | 0.50\nVFMADD132PS %ZMM21,%ZMM11,%ZMM4  | 1     | 0.50 | 0.50 | 0    | 0    | 0    | 0    | 0  | 6       | 0.50\nVFMADD231PS %ZMM1,%ZMM1,%ZMM12   | 1     | 0.50 | 0.50 | 0    | 0    | 0    | 0    | 0  | 6       | 0.50\nVADDPS %ZMM4,%ZMM12,%ZMM2        | 1     | 0.50 | 0.50 | 0    | 0    | 0    | 0    | 0  | 6       | 0.50\nVRSQRT28PS %ZMM2,%ZMM12          | 1     | 1    | 0    | 0    | 0    | 0    | 0    | 0  | 7       | 3\nVRCP28PS %ZMM12,%ZMM4            | 1     | 1    | 0    | 0    | 0    | 0    | 0    | 0  | 8       | 3\nVMULPS %ZMM2,%ZMM4,%ZMM2         | 1     | 0.50 | 0.50 | 0    | 0    | 0    | 0    | 0  | 6       | 0.50\nVMOVUPS 0x40(%RCX,%RAX,1),%ZMM4  | 1     | 0    | 0    | 0.50 | 0.50 | 0    | 0    | 0  | 5       | 0.50\nVSUBPS %ZMM16,%ZMM4,%ZMM4        | 1     | 0.50 | 0.50 | 0    | 0    | 0    | 0    | 0  | 6       | 0.50\nVRCP28PS %ZMM2,%ZMM12            | 1     | 1    | 0    | 0    | 0    | 0    | 0    | 0  | 8       | 3\nVFMADD231PS %ZMM1,%ZMM12,%ZMM0   | 1     | 0.50 | 0.50 | 0    | 0    | 0    | 0    | 0  | 6       | 0.50\nVMOVUPS 0x40(%RSI,%RAX,1),%ZMM1  | 1     | 0    | 0    | 0.50 | 0.50 | 0    | 0    | 0  | 5       | 0.50\nVFMADD231PS %ZMM20,%ZMM12,%ZMM13 | 1     | 0.50 | 0.50 | 0    | 0    | 0    | 0    | 0  | 6       | 0.50\nVFMADD231PS %ZMM21,%ZMM12,%ZMM14 | 1     | 0.50 | 0.50 | 0    | 0    | 0    | 0    | 0  | 6       | 0.50\nVMOVUPS 0x40(%RDX,%RAX,1),%ZMM2  | 1     | 0    | 0    | 0.50 | 0.50 | 0    | 0    | 0  | 5       | 0.50\nVMOVAPS %ZMM4,%ZMM22             | 1     | 0.50 | 0.50 | 0    | 0    | 0    | 0    | 0  | 2       | 0.50\nVSUBPS %ZMM17,%ZMM1,%ZMM12       | 1     | 0.50 | 0.50 | 0    | 0    | 0    | 0    | 0  | 6       | 0.50\nVFMADD132PS %ZMM4,%ZMM11,%ZMM22  | 1     | 0.50 | 0.50 | 0    | 0    | 0    | 0    | 0  | 6       | 0.50\nVSUBPS %ZMM15,%ZMM2,%ZMM2        | 1     | 0.50 | 0.50 | 0    | 0    | 0    | 0    | 0  | 6       | 0.50\nVMULPS %ZMM12,%ZMM12,%ZMM1       | 1     | 0.50 | 0.50 | 0    | 0    | 0    | 0    | 0  | 6       | 0.50\nVFMADD231PS %ZMM2,%ZMM2,%ZMM1    | 1     | 0.50 | 0.50 | 0    | 0    | 0    | 0    | 0  | 6       | 0.50\nVADDPS %ZMM22,%ZMM1,%ZMM23       | 1     | 0.50 | 0.50 | 0    | 0    | 0    | 0    | 0  | 6       | 0.50\nVRSQRT28PS %ZMM23,%ZMM1          | 1     | 1    | 0    | 0    | 0    | 0    | 0    | 0  | 7       | 3\nVRCP28PS %ZMM1,%ZMM1             | 1     | 1    | 0    | 0    | 0    | 0    | 0    | 0  | 8       | 3\nVMULPS %ZMM23,%ZMM1,%ZMM1        | 1     | 0.50 | 0.50 | 0    | 0    | 0    | 0    | 0  | 6       | 0.50\nVRCP28PS %ZMM1,%ZMM1             | 1     | 1    | 0    | 0    | 0    | 0    | 0    | 0  | 8       | 3\nVFMADD132PS %ZMM1,%ZMM0,%ZMM2    | 1     | 0.50 | 0.50 | 0    | 0    | 0    | 0    | 0  | 6       | 0.50\nVMOVUPS 0x80(%RSI,%RAX,1),%ZMM0  | 1     | 0    | 0    | 0.50 | 0.50 | 0    | 0    | 0  | 5       | 0.50\nVFMADD132PS %ZMM1,%ZMM13,%ZMM12  | 1     | 0.50 | 0.50 | 0    | 0    | 0    | 0    | 0  | 6       | 0.50\nVFMADD132PS %ZMM1,%ZMM14,%ZMM4   | 1     | 0.50 | 0.50 | 0    | 0    | 0    | 0    | 0  | 6       | 0.50\nVMOVUPS 0x80(%RDX,%RAX,1),%ZMM1  | 1     | 0    | 0    | 0.50 | 0.50 | 0    | 0    | 0  | 5       | 0.50\nVMOVUPS 0x80(%RCX,%RAX,1),%ZMM14 | 1     | 0    | 0    | 0.50 | 0.50 | 0    | 0    | 0  | 5       | 0.50\nVSUBPS %ZMM17,%ZMM0,%ZMM13       | 1     | 0.50 | 0.50 | 0    | 0    | 0    | 0    | 0  | 6       | 0.50\nVSUBPS %ZMM15,%ZMM1,%ZMM24       | 1     | 0.50 | 0.50 | 0    | 0    | 0    | 0    | 0  | 6       | 0.50\nVSUBPS %ZMM16,%ZMM14,%ZMM14      | 1     | 0.50 | 0.50 | 0    | 0    | 0    | 0    | 0  | 6       | 0.50\nVMULPS %ZMM13,%ZMM13,%ZMM1       | 1     | 0.50 | 0.50 | 0    | 0    | 0    | 0    | 0  | 6       | 0.50\nVMOVAPS %ZMM14,%ZMM0             | 1     | 0.50 | 0.50 | 0    | 0    | 0    | 0    | 0  | 2       | 0.50\nVFMADD132PS %ZMM14,%ZMM11,%ZMM0  | 1     | 0.50 | 0.50 | 0    | 0    | 0    | 0    | 0  | 6       | 0.50\nVFMADD231PS %ZMM24,%ZMM24,%ZMM1  | 1     | 0.50 | 0.50 | 0    | 0    | 0    | 0    | 0  | 6       | 0.50\nVADDPS %ZMM0,%ZMM1,%ZMM0         | 1     | 0.50 | 0.50 | 0    | 0    | 0    | 0    | 0  | 6       | 0.50\nVRSQRT28PS %ZMM0,%ZMM1           | 1     | 1    | 0    | 0    | 0    | 0    | 0    | 0  | 7       | 3\nVRCP28PS %ZMM1,%ZMM1             | 1     | 1    | 0    | 0    | 0    | 0    | 0    | 0  | 8       | 3\nVMULPS %ZMM0,%ZMM1,%ZMM0         | 1     | 0.50 | 0.50 | 0    | 0    | 0    | 0    | 0  | 6       | 0.50\nVRCP28PS %ZMM0,%ZMM0             | 1     | 1    | 0    | 0    | 0    | 0    | 0    | 0  | 8       | 3\nVFMADD132PS %ZMM0,%ZMM12,%ZMM13  | 1     | 0.50 | 0.50 | 0    | 0    | 0    | 0    | 0  | 6       | 0.50\nVMOVUPS 0xc0(%RSI,%RAX,1),%ZMM12 | 1     | 0    | 0    | 0.50 | 0.50 | 0    | 0    | 0  | 5       | 0.50\nVFMADD132PS %ZMM0,%ZMM4,%ZMM14   | 1     | 0.50 | 0.50 | 0    | 0    | 0    | 0    | 0  | 6       | 0.50\nVMOVUPS 0xc0(%RCX,%RAX,1),%ZMM4  | 1     | 0    | 0    | 0.50 | 0.50 | 0    | 0    | 0  | 5       | 0.50\nVFMADD132PS %ZMM24,%ZMM2,%ZMM0   | 1     | 0.50 | 0.50 | 0    | 0    | 0    | 0    | 0  | 6       | 0.50\nVMOVUPS 0xc0(%RDX,%RAX,1),%ZMM2  | 1     | 0    | 0    | 0.50 | 0.50 | 0    | 0    | 0  | 5       | 0.50\nADD $0x100,%RAX                  | 1     | 0    | 0    | 0    | 0    | 0.50 | 0.50 | 0  | 1       | 0.50\nVSUBPS %ZMM17,%ZMM12,%ZMM25      | 1     | 0.50 | 0.50 | 0    | 0    | 0    | 0    | 0  | 6       | 0.50\nVSUBPS %ZMM16,%ZMM4,%ZMM12       | 1     | 0.50 | 0.50 | 0    | 0    | 0    | 0    | 0  | 6       | 0.50\nVSUBPS %ZMM15,%ZMM2,%ZMM2        | 1     | 0.50 | 0.50 | 0    | 0    | 0    | 0    | 0  | 6       | 0.50\nVMULPS %ZMM25,%ZMM25,%ZMM4       | 1     | 0.50 | 0.50 | 0    | 0    | 0    | 0    | 0  | 6       | 0.50\nVMOVAPS %ZMM12,%ZMM1             | 1     | 0.50 | 0.50 | 0    | 0    | 0    | 0    | 0  | 2       | 0.50\nVFMADD132PS %ZMM12,%ZMM11,%ZMM1  | 1     | 0.50 | 0.50 | 0    | 0    | 0    | 0    | 0  | 6       | 0.50\nVFMADD231PS %ZMM2,%ZMM2,%ZMM4    | 1     | 0.50 | 0.50 | 0    | 0    | 0    | 0    | 0  | 6       | 0.50\nVADDPS %ZMM1,%ZMM4,%ZMM1         | 1     | 0.50 | 0.50 | 0    | 0    | 0    | 0    | 0  | 6       | 0.50\nVRSQRT28PS %ZMM1,%ZMM4           | 1     | 1    | 0    | 0    | 0    | 0    | 0    | 0  | 7       | 3\nVRCP28PS %ZMM4,%ZMM4             | 1     | 1    | 0    | 0    | 0    | 0    | 0    | 0  | 8       | 3\nVMULPS %ZMM1,%ZMM4,%ZMM1         | 1     | 0.50 | 0.50 | 0    | 0    | 0    | 0    | 0  | 6       | 0.50\nVRCP28PS %ZMM1,%ZMM4             | 1     | 1    | 0    | 0    | 0    | 0    | 0    | 0  | 8       | 3\nVFMADD231PS %ZMM25,%ZMM4,%ZMM13  | 1     | 0.50 | 0.50 | 0    | 0    | 0    | 0    | 0  | 6       | 0.50\nVFMADD231PS %ZMM12,%ZMM4,%ZMM14  | 1     | 0.50 | 0.50 | 0    | 0    | 0    | 0    | 0  | 6       | 0.50\nVFMADD231PS %ZMM2,%ZMM4,%ZMM0    | 1     | 0.50 | 0.50 | 0    | 0    | 0    | 0    | 0  | 6       | 0.50\nCMP %RAX,0x38(%RSP)              | 1     | 0    | 0    | 1    | 0    | 0.50 | 0.50 | 0  | 1       | 1\nJNE 2696 <move_particles+0x296>  | 1     | 0    | 0    | 0    | 0    | 0    | 1    | 0  | 0       | 1-2\n",
        },
      },
      header = {
        "50% of peak computational performance is used (32.00 out of 64.00 FLOP per cycle (GFLOPS @ 1GHz))",
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
          title = "Execution units bottlenecks",
          txt = "Found no such bottlenecks but see expert reports for more complex bottlenecks.",
        },
      },
      potential = {
        {
          workaround = "Try to change order in which elements are evaluated (using parentheses) in arithmetic expressions containing both ADD/SUB and MUL operations to enable your compiler to generate FMA instructions wherever possible.\nFor instance a + b*c is a valid FMA (MUL then ADD).\nHowever (a+b)* c cannot be translated into an FMA (ADD then MUL).",
          title = "FMA",
          txt = "Detected 320 FMA (fused multiply-add) operations.\nPresence of both ADD/SUB and MUL operations.",
        },
      },
    },
  common = {
    header = {
      "The loop is defined in /users/user2234/VersionFinaleNbody3DOptimisé/nbody4.c:101-116.\n",
      "It is main loop of related source loop which is unrolled by 64 (including vectorization).",
    },
    nb_paths = 1,
  },
}
