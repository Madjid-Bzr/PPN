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
          workaround = "Use vector aligned instructions:\n 1) The GNU Fortran compiler does not support allocation alignment and does not feature directives to benefit from aligned data.\n 2) Use another compiler or locally use C code (for instance via libraries)\n",
          details = " - VMOVUPD: 20 occurrences\n",
          title = "Vector unaligned load/store instructions",
          txt = "Detected 20 optimal vector unaligned load/store instructions.\n",
        },
        {
          title = "Type of elements and instruction set",
          txt = "No instructions are processing arithmetic or math operations on FP elements. This loop is probably writing/copying data or processing integer elements.",
        },
        {
          title = "Matching between your loop (in the source code) and the binary loop",
          txt = "The binary loop does not contain any FP arithmetical operations.\nThe binary loop is loading 1288 bytes.\nThe binary loop is storing 1280 bytes.",
        },
      },
      expert = {
        {
          title = "General properties",
          txt = "nb instructions    : 44\nloop length        : 307\nused x86 registers : 3\nused mmx registers : 0\nused xmm registers : 0\nused ymm registers : 0\nused zmm registers : 13\nnb stack references: 1\n",
        },
        {
          title = "Front-end",
          txt = "MACRO FUSION NOT POSSIBLE\ninstruction fetch    : 20.00 cycles\ninstruction queue    : 22.00 cycles\ndecoding             : 22.00 cycles\nmicro-operation queue: 22.00 cycles\nfront end            : 22.00 cycles\n",
        },
        {
          title = "Back-end",
          txt = "       | P0    | P1    | P2    | P3    | P4   | P5   | P6\n------------------------------------------------------------\nuops   | 10.00 | 10.00 | 20.50 | 20.50 | 2.00 | 2.00 | 20.00\ncycles | 10.00 | 10.00 | 20.50 | 20.50 | 2.00 | 2.00 | 20.00\n\nCycles executing div or sqrt instructions: NA\nLongest recurrence chain latency (RecMII): 1.00\n",
        },
        {
          title = "Cycles summary",
          txt = "Front-end : 22.00\nDispatch  : 20.50\nData deps.: 1.00\nOverall L1: 22.00\n",
        },
        {
          title = "Vectorization ratios",
          txt = "INT\nall    : 100%\nload   : 100%\nstore  : NA (no store vectorizable/vectorized instructions)\nmul    : NA (no mul vectorizable/vectorized instructions)\nadd-sub: NA (no add-sub vectorizable/vectorized instructions)\nfma    : NA (no fma vectorizable/vectorized instructions)\nother  : 100%\nFP\nall     : 100%\nload    : NA (no load vectorizable/vectorized instructions)\nstore   : 100%\nmul     : NA (no mul vectorizable/vectorized instructions)\nadd-sub : NA (no add-sub vectorizable/vectorized instructions)\nfma     : NA (no fma vectorizable/vectorized instructions)\ndiv/sqrt: NA (no div/sqrt vectorizable/vectorized instructions)\nother   : NA (no other vectorizable/vectorized instructions)\nINT+FP\nall     : 100%\nload    : 100%\nstore   : 100%\nmul     : NA (no mul vectorizable/vectorized instructions)\nadd-sub : NA (no add-sub vectorizable/vectorized instructions)\nfma     : NA (no fma vectorizable/vectorized instructions)\ndiv/sqrt: NA (no div/sqrt vectorizable/vectorized instructions)\nother   : 100%\n",
        },
        {
          title = "Vector efficiency ratios",
          txt = "INT\nall    : 100%\nload   : 100%\nstore  : NA (no store vectorizable/vectorized instructions)\nmul    : NA (no mul vectorizable/vectorized instructions)\nadd-sub: NA (no add-sub vectorizable/vectorized instructions)\nfma    : NA (no fma vectorizable/vectorized instructions)\nother  : 100%\nFP\nall     : 100%\nload    : NA (no load vectorizable/vectorized instructions)\nstore   : 100%\nmul     : NA (no mul vectorizable/vectorized instructions)\nadd-sub : NA (no add-sub vectorizable/vectorized instructions)\nfma     : NA (no fma vectorizable/vectorized instructions)\ndiv/sqrt: NA (no div/sqrt vectorizable/vectorized instructions)\nother   : NA (no other vectorizable/vectorized instructions)\nINT+FP\nall     : 100%\nload    : 100%\nstore   : 100%\nmul     : NA (no mul vectorizable/vectorized instructions)\nadd-sub : NA (no add-sub vectorizable/vectorized instructions)\nfma     : NA (no fma vectorizable/vectorized instructions)\ndiv/sqrt: NA (no div/sqrt vectorizable/vectorized instructions)\nother   : 100%\n",
        },
        {
          title = "Cycles and memory resources usage",
          txt = "Assuming all data fit into the L1 cache, each iteration of the binary loop takes 22.00 cycles. At this rate:\n - 45% of peak load performance is reached (58.55 out of 128.00 bytes loaded per cycle (GB/s @ 1GHz))\n - 90% of peak store performance is reached (58.18 out of 64.00 bytes stored per cycle (GB/s @ 1GHz))\n",
        },
        {
          title = "Front-end bottlenecks",
          txt = "Performance is limited by instruction throughput (loading/decoding program instructions to execution core) (front-end is a bottleneck).\n\nBy removing all these bottlenecks, you can lower the cost of an iteration from 22.00 to 20.50 cycles (1.07x speedup).\n",
        },
        {
          title = "ASM code",
          txt = "In the binary file, the address of the loop is: 1d759\n\nInstruction                      | Nb FU | P0   | P1   | P2   | P3   | P4   | P5   | P6 | Latency | Recip. throughput\n---------------------------------------------------------------------------------------------------------------------\nVPXORQ 0x40(%RDX),%ZMM3,%ZMM9    | 1     | 0.50 | 0.50 | 0.50 | 0.50 | 0    | 0    | 0  | 2       | 0.50\nVPXORQ 0x80(%RDX),%ZMM3,%ZMM10   | 1     | 0.50 | 0.50 | 0.50 | 0.50 | 0    | 0    | 0  | 2       | 0.50\nVPXORQ 0xc0(%RDX),%ZMM3,%ZMM11   | 1     | 0.50 | 0.50 | 0.50 | 0.50 | 0    | 0    | 0  | 2       | 0.50\nVPXORQ 0x100(%RDX),%ZMM3,%ZMM0   | 1     | 0.50 | 0.50 | 0.50 | 0.50 | 0    | 0    | 0  | 2       | 0.50\nVPXORQ (%RDX),%ZMM3,%ZMM8        | 1     | 0.50 | 0.50 | 0.50 | 0.50 | 0    | 0    | 0  | 2       | 0.50\nLEA 0x500(%RAX),%RAX             | 1     | 0    | 0    | 0    | 0    | 0.50 | 0.50 | 0  | 1       | 0.50\nVMOVUPD %ZMM8,-0x500(%RAX)       | 1     | 0    | 0    | 0.50 | 0.50 | 0    | 0    | 1  | 2       | 1\nLEA 0x500(%RDX),%RDX             | 1     | 0    | 0    | 0    | 0    | 0.50 | 0.50 | 0  | 1       | 0.50\nVMOVUPD %ZMM0,-0x400(%RAX)       | 1     | 0    | 0    | 0.50 | 0.50 | 0    | 0    | 1  | 2       | 1\nVMOVUPD %ZMM9,-0x4c0(%RAX)       | 1     | 0    | 0    | 0.50 | 0.50 | 0    | 0    | 1  | 2       | 1\nVMOVUPD %ZMM10,-0x480(%RAX)      | 1     | 0    | 0    | 0.50 | 0.50 | 0    | 0    | 1  | 2       | 1\nVMOVUPD %ZMM11,-0x440(%RAX)      | 1     | 0    | 0    | 0.50 | 0.50 | 0    | 0    | 1  | 2       | 1\nVPXORQ -0x380(%RDX),%ZMM3,%ZMM12 | 1     | 0.50 | 0.50 | 0.50 | 0.50 | 0    | 0    | 0  | 2       | 0.50\nVPXORQ -0x340(%RDX),%ZMM3,%ZMM13 | 1     | 0.50 | 0.50 | 0.50 | 0.50 | 0    | 0    | 0  | 2       | 0.50\nVPXORQ -0x300(%RDX),%ZMM3,%ZMM14 | 1     | 0.50 | 0.50 | 0.50 | 0.50 | 0    | 0    | 0  | 2       | 0.50\nVPXORQ -0x2c0(%RDX),%ZMM3,%ZMM15 | 1     | 0.50 | 0.50 | 0.50 | 0.50 | 0    | 0    | 0  | 2       | 0.50\nVPXORQ -0x3c0(%RDX),%ZMM3,%ZMM7  | 1     | 0.50 | 0.50 | 0.50 | 0.50 | 0    | 0    | 0  | 2       | 0.50\nVMOVUPD %ZMM7,-0x3c0(%RAX)       | 1     | 0    | 0    | 0.50 | 0.50 | 0    | 0    | 1  | 2       | 1\nVMOVUPD %ZMM12,-0x380(%RAX)      | 1     | 0    | 0    | 0.50 | 0.50 | 0    | 0    | 1  | 2       | 1\nVMOVUPD %ZMM13,-0x340(%RAX)      | 1     | 0    | 0    | 0.50 | 0.50 | 0    | 0    | 1  | 2       | 1\nVMOVUPD %ZMM14,-0x300(%RAX)      | 1     | 0    | 0    | 0.50 | 0.50 | 0    | 0    | 1  | 2       | 1\nVMOVUPD %ZMM15,-0x2c0(%RAX)      | 1     | 0    | 0    | 0.50 | 0.50 | 0    | 0    | 1  | 2       | 1\nVPXORQ -0x240(%RDX),%ZMM3,%ZMM9  | 1     | 0.50 | 0.50 | 0.50 | 0.50 | 0    | 0    | 0  | 2       | 0.50\nVPXORQ -0x200(%RDX),%ZMM3,%ZMM5  | 1     | 0.50 | 0.50 | 0.50 | 0.50 | 0    | 0    | 0  | 2       | 0.50\nVPXORQ -0x1c0(%RDX),%ZMM3,%ZMM4  | 1     | 0.50 | 0.50 | 0.50 | 0.50 | 0    | 0    | 0  | 2       | 0.50\nVPXORQ -0x180(%RDX),%ZMM3,%ZMM10 | 1     | 0.50 | 0.50 | 0.50 | 0.50 | 0    | 0    | 0  | 2       | 0.50\nVPXORQ -0x280(%RDX),%ZMM3,%ZMM11 | 1     | 0.50 | 0.50 | 0.50 | 0.50 | 0    | 0    | 0  | 2       | 0.50\nVMOVUPD %ZMM11,-0x280(%RAX)      | 1     | 0    | 0    | 0.50 | 0.50 | 0    | 0    | 1  | 2       | 1\nVMOVUPD %ZMM9,-0x240(%RAX)       | 1     | 0    | 0    | 0.50 | 0.50 | 0    | 0    | 1  | 2       | 1\nVMOVUPD %ZMM5,-0x200(%RAX)       | 1     | 0    | 0    | 0.50 | 0.50 | 0    | 0    | 1  | 2       | 1\nVMOVUPD %ZMM4,-0x1c0(%RAX)       | 1     | 0    | 0    | 0.50 | 0.50 | 0    | 0    | 1  | 2       | 1\nVMOVUPD %ZMM10,-0x180(%RAX)      | 1     | 0    | 0    | 0.50 | 0.50 | 0    | 0    | 1  | 2       | 1\nVPXORQ -0x100(%RDX),%ZMM3,%ZMM12 | 1     | 0.50 | 0.50 | 0.50 | 0.50 | 0    | 0    | 0  | 2       | 0.50\nVPXORQ -0xc0(%RDX),%ZMM3,%ZMM13  | 1     | 0.50 | 0.50 | 0.50 | 0.50 | 0    | 0    | 0  | 2       | 0.50\nVPXORQ -0x80(%RDX),%ZMM3,%ZMM14  | 1     | 0.50 | 0.50 | 0.50 | 0.50 | 0    | 0    | 0  | 2       | 0.50\nVPXORQ -0x40(%RDX),%ZMM3,%ZMM0   | 1     | 0.50 | 0.50 | 0.50 | 0.50 | 0    | 0    | 0  | 2       | 0.50\nVPXORQ -0x140(%RDX),%ZMM3,%ZMM8  | 1     | 0.50 | 0.50 | 0.50 | 0.50 | 0    | 0    | 0  | 2       | 0.50\nVMOVUPD %ZMM8,-0x140(%RAX)       | 1     | 0    | 0    | 0.50 | 0.50 | 0    | 0    | 1  | 2       | 1\nVMOVUPD %ZMM12,-0x100(%RAX)      | 1     | 0    | 0    | 0.50 | 0.50 | 0    | 0    | 1  | 2       | 1\nVMOVUPD %ZMM13,-0xc0(%RAX)       | 1     | 0    | 0    | 0.50 | 0.50 | 0    | 0    | 1  | 2       | 1\nVMOVUPD %ZMM14,-0x80(%RAX)       | 1     | 0    | 0    | 0.50 | 0.50 | 0    | 0    | 1  | 2       | 1\nVMOVUPD %ZMM0,-0x40(%RAX)        | 1     | 0    | 0    | 0.50 | 0.50 | 0    | 0    | 1  | 2       | 1\nCMP 0x330(%RSP),%RAX             | 1     | 0    | 0    | 1    | 0    | 0.50 | 0.50 | 0  | 1       | 1\nJNE 1d759 <rhs_._omp_fn.0+0x759> | 1     | 0    | 0    | 0    | 0    | 0    | 1    | 0  | 0       | 1-2\n",
        },
      },
      header = {
        "0% of peak computational performance is used (0.00 out of 4.00 FLOP per cycle (GFLOPS @ 1GHz))",
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
          workaround = "Use vector aligned instructions:\n 1) The GNU Fortran compiler does not support allocation alignment and does not feature directives to benefit from aligned data.\n 2) Use another compiler or locally use C code (for instance via libraries)\n",
          details = " - VMOVUPD: 20 occurrences\n",
          title = "Vector unaligned load/store instructions",
          txt = "Detected 20 optimal vector unaligned load/store instructions.\n",
        },
        {
          title = "Type of elements and instruction set",
          txt = "No instructions are processing arithmetic or math operations on FP elements. This loop is probably writing/copying data or processing integer elements.",
        },
        {
          title = "Matching between your loop (in the source code) and the binary loop",
          txt = "The binary loop does not contain any FP arithmetical operations.\nThe binary loop is loading 1288 bytes.\nThe binary loop is storing 1280 bytes.",
        },
      },
      expert = {
        {
          title = "General properties",
          txt = "nb instructions    : 44\nloop length        : 307\nused x86 registers : 3\nused mmx registers : 0\nused xmm registers : 0\nused ymm registers : 0\nused zmm registers : 13\nnb stack references: 1\n",
        },
        {
          title = "Front-end",
          txt = "MACRO FUSION NOT POSSIBLE\ninstruction fetch    : 20.00 cycles\ninstruction queue    : 22.00 cycles\ndecoding             : 22.00 cycles\nmicro-operation queue: 22.00 cycles\nfront end            : 22.00 cycles\n",
        },
        {
          title = "Back-end",
          txt = "       | P0    | P1    | P2    | P3    | P4   | P5   | P6\n------------------------------------------------------------\nuops   | 10.00 | 10.00 | 20.50 | 20.50 | 2.00 | 2.00 | 20.00\ncycles | 10.00 | 10.00 | 20.50 | 20.50 | 2.00 | 2.00 | 20.00\n\nCycles executing div or sqrt instructions: NA\nLongest recurrence chain latency (RecMII): 1.00\n",
        },
        {
          title = "Cycles summary",
          txt = "Front-end : 22.00\nDispatch  : 20.50\nData deps.: 1.00\nOverall L1: 22.00\n",
        },
        {
          title = "Vectorization ratios",
          txt = "INT\nall    : 100%\nload   : 100%\nstore  : NA (no store vectorizable/vectorized instructions)\nmul    : NA (no mul vectorizable/vectorized instructions)\nadd-sub: NA (no add-sub vectorizable/vectorized instructions)\nfma    : NA (no fma vectorizable/vectorized instructions)\nother  : 100%\nFP\nall     : 100%\nload    : NA (no load vectorizable/vectorized instructions)\nstore   : 100%\nmul     : NA (no mul vectorizable/vectorized instructions)\nadd-sub : NA (no add-sub vectorizable/vectorized instructions)\nfma     : NA (no fma vectorizable/vectorized instructions)\ndiv/sqrt: NA (no div/sqrt vectorizable/vectorized instructions)\nother   : NA (no other vectorizable/vectorized instructions)\nINT+FP\nall     : 100%\nload    : 100%\nstore   : 100%\nmul     : NA (no mul vectorizable/vectorized instructions)\nadd-sub : NA (no add-sub vectorizable/vectorized instructions)\nfma     : NA (no fma vectorizable/vectorized instructions)\ndiv/sqrt: NA (no div/sqrt vectorizable/vectorized instructions)\nother   : 100%\n",
        },
        {
          title = "Vector efficiency ratios",
          txt = "INT\nall    : 100%\nload   : 100%\nstore  : NA (no store vectorizable/vectorized instructions)\nmul    : NA (no mul vectorizable/vectorized instructions)\nadd-sub: NA (no add-sub vectorizable/vectorized instructions)\nfma    : NA (no fma vectorizable/vectorized instructions)\nother  : 100%\nFP\nall     : 100%\nload    : NA (no load vectorizable/vectorized instructions)\nstore   : 100%\nmul     : NA (no mul vectorizable/vectorized instructions)\nadd-sub : NA (no add-sub vectorizable/vectorized instructions)\nfma     : NA (no fma vectorizable/vectorized instructions)\ndiv/sqrt: NA (no div/sqrt vectorizable/vectorized instructions)\nother   : NA (no other vectorizable/vectorized instructions)\nINT+FP\nall     : 100%\nload    : 100%\nstore   : 100%\nmul     : NA (no mul vectorizable/vectorized instructions)\nadd-sub : NA (no add-sub vectorizable/vectorized instructions)\nfma     : NA (no fma vectorizable/vectorized instructions)\ndiv/sqrt: NA (no div/sqrt vectorizable/vectorized instructions)\nother   : 100%\n",
        },
        {
          title = "Cycles and memory resources usage",
          txt = "Assuming all data fit into the L1 cache, each iteration of the binary loop takes 22.00 cycles. At this rate:\n - 45% of peak load performance is reached (58.55 out of 128.00 bytes loaded per cycle (GB/s @ 1GHz))\n - 90% of peak store performance is reached (58.18 out of 64.00 bytes stored per cycle (GB/s @ 1GHz))\n",
        },
        {
          title = "Front-end bottlenecks",
          txt = "Performance is limited by instruction throughput (loading/decoding program instructions to execution core) (front-end is a bottleneck).\n\nBy removing all these bottlenecks, you can lower the cost of an iteration from 22.00 to 20.50 cycles (1.07x speedup).\n",
        },
        {
          title = "ASM code",
          txt = "In the binary file, the address of the loop is: 1d759\n\nInstruction                      | Nb FU | P0   | P1   | P2   | P3   | P4   | P5   | P6 | Latency | Recip. throughput\n---------------------------------------------------------------------------------------------------------------------\nVPXORQ 0x40(%RDX),%ZMM3,%ZMM9    | 1     | 0.50 | 0.50 | 0.50 | 0.50 | 0    | 0    | 0  | 2       | 0.50\nVPXORQ 0x80(%RDX),%ZMM3,%ZMM10   | 1     | 0.50 | 0.50 | 0.50 | 0.50 | 0    | 0    | 0  | 2       | 0.50\nVPXORQ 0xc0(%RDX),%ZMM3,%ZMM11   | 1     | 0.50 | 0.50 | 0.50 | 0.50 | 0    | 0    | 0  | 2       | 0.50\nVPXORQ 0x100(%RDX),%ZMM3,%ZMM0   | 1     | 0.50 | 0.50 | 0.50 | 0.50 | 0    | 0    | 0  | 2       | 0.50\nVPXORQ (%RDX),%ZMM3,%ZMM8        | 1     | 0.50 | 0.50 | 0.50 | 0.50 | 0    | 0    | 0  | 2       | 0.50\nLEA 0x500(%RAX),%RAX             | 1     | 0    | 0    | 0    | 0    | 0.50 | 0.50 | 0  | 1       | 0.50\nVMOVUPD %ZMM8,-0x500(%RAX)       | 1     | 0    | 0    | 0.50 | 0.50 | 0    | 0    | 1  | 2       | 1\nLEA 0x500(%RDX),%RDX             | 1     | 0    | 0    | 0    | 0    | 0.50 | 0.50 | 0  | 1       | 0.50\nVMOVUPD %ZMM0,-0x400(%RAX)       | 1     | 0    | 0    | 0.50 | 0.50 | 0    | 0    | 1  | 2       | 1\nVMOVUPD %ZMM9,-0x4c0(%RAX)       | 1     | 0    | 0    | 0.50 | 0.50 | 0    | 0    | 1  | 2       | 1\nVMOVUPD %ZMM10,-0x480(%RAX)      | 1     | 0    | 0    | 0.50 | 0.50 | 0    | 0    | 1  | 2       | 1\nVMOVUPD %ZMM11,-0x440(%RAX)      | 1     | 0    | 0    | 0.50 | 0.50 | 0    | 0    | 1  | 2       | 1\nVPXORQ -0x380(%RDX),%ZMM3,%ZMM12 | 1     | 0.50 | 0.50 | 0.50 | 0.50 | 0    | 0    | 0  | 2       | 0.50\nVPXORQ -0x340(%RDX),%ZMM3,%ZMM13 | 1     | 0.50 | 0.50 | 0.50 | 0.50 | 0    | 0    | 0  | 2       | 0.50\nVPXORQ -0x300(%RDX),%ZMM3,%ZMM14 | 1     | 0.50 | 0.50 | 0.50 | 0.50 | 0    | 0    | 0  | 2       | 0.50\nVPXORQ -0x2c0(%RDX),%ZMM3,%ZMM15 | 1     | 0.50 | 0.50 | 0.50 | 0.50 | 0    | 0    | 0  | 2       | 0.50\nVPXORQ -0x3c0(%RDX),%ZMM3,%ZMM7  | 1     | 0.50 | 0.50 | 0.50 | 0.50 | 0    | 0    | 0  | 2       | 0.50\nVMOVUPD %ZMM7,-0x3c0(%RAX)       | 1     | 0    | 0    | 0.50 | 0.50 | 0    | 0    | 1  | 2       | 1\nVMOVUPD %ZMM12,-0x380(%RAX)      | 1     | 0    | 0    | 0.50 | 0.50 | 0    | 0    | 1  | 2       | 1\nVMOVUPD %ZMM13,-0x340(%RAX)      | 1     | 0    | 0    | 0.50 | 0.50 | 0    | 0    | 1  | 2       | 1\nVMOVUPD %ZMM14,-0x300(%RAX)      | 1     | 0    | 0    | 0.50 | 0.50 | 0    | 0    | 1  | 2       | 1\nVMOVUPD %ZMM15,-0x2c0(%RAX)      | 1     | 0    | 0    | 0.50 | 0.50 | 0    | 0    | 1  | 2       | 1\nVPXORQ -0x240(%RDX),%ZMM3,%ZMM9  | 1     | 0.50 | 0.50 | 0.50 | 0.50 | 0    | 0    | 0  | 2       | 0.50\nVPXORQ -0x200(%RDX),%ZMM3,%ZMM5  | 1     | 0.50 | 0.50 | 0.50 | 0.50 | 0    | 0    | 0  | 2       | 0.50\nVPXORQ -0x1c0(%RDX),%ZMM3,%ZMM4  | 1     | 0.50 | 0.50 | 0.50 | 0.50 | 0    | 0    | 0  | 2       | 0.50\nVPXORQ -0x180(%RDX),%ZMM3,%ZMM10 | 1     | 0.50 | 0.50 | 0.50 | 0.50 | 0    | 0    | 0  | 2       | 0.50\nVPXORQ -0x280(%RDX),%ZMM3,%ZMM11 | 1     | 0.50 | 0.50 | 0.50 | 0.50 | 0    | 0    | 0  | 2       | 0.50\nVMOVUPD %ZMM11,-0x280(%RAX)      | 1     | 0    | 0    | 0.50 | 0.50 | 0    | 0    | 1  | 2       | 1\nVMOVUPD %ZMM9,-0x240(%RAX)       | 1     | 0    | 0    | 0.50 | 0.50 | 0    | 0    | 1  | 2       | 1\nVMOVUPD %ZMM5,-0x200(%RAX)       | 1     | 0    | 0    | 0.50 | 0.50 | 0    | 0    | 1  | 2       | 1\nVMOVUPD %ZMM4,-0x1c0(%RAX)       | 1     | 0    | 0    | 0.50 | 0.50 | 0    | 0    | 1  | 2       | 1\nVMOVUPD %ZMM10,-0x180(%RAX)      | 1     | 0    | 0    | 0.50 | 0.50 | 0    | 0    | 1  | 2       | 1\nVPXORQ -0x100(%RDX),%ZMM3,%ZMM12 | 1     | 0.50 | 0.50 | 0.50 | 0.50 | 0    | 0    | 0  | 2       | 0.50\nVPXORQ -0xc0(%RDX),%ZMM3,%ZMM13  | 1     | 0.50 | 0.50 | 0.50 | 0.50 | 0    | 0    | 0  | 2       | 0.50\nVPXORQ -0x80(%RDX),%ZMM3,%ZMM14  | 1     | 0.50 | 0.50 | 0.50 | 0.50 | 0    | 0    | 0  | 2       | 0.50\nVPXORQ -0x40(%RDX),%ZMM3,%ZMM0   | 1     | 0.50 | 0.50 | 0.50 | 0.50 | 0    | 0    | 0  | 2       | 0.50\nVPXORQ -0x140(%RDX),%ZMM3,%ZMM8  | 1     | 0.50 | 0.50 | 0.50 | 0.50 | 0    | 0    | 0  | 2       | 0.50\nVMOVUPD %ZMM8,-0x140(%RAX)       | 1     | 0    | 0    | 0.50 | 0.50 | 0    | 0    | 1  | 2       | 1\nVMOVUPD %ZMM12,-0x100(%RAX)      | 1     | 0    | 0    | 0.50 | 0.50 | 0    | 0    | 1  | 2       | 1\nVMOVUPD %ZMM13,-0xc0(%RAX)       | 1     | 0    | 0    | 0.50 | 0.50 | 0    | 0    | 1  | 2       | 1\nVMOVUPD %ZMM14,-0x80(%RAX)       | 1     | 0    | 0    | 0.50 | 0.50 | 0    | 0    | 1  | 2       | 1\nVMOVUPD %ZMM0,-0x40(%RAX)        | 1     | 0    | 0    | 0.50 | 0.50 | 0    | 0    | 1  | 2       | 1\nCMP 0x330(%RSP),%RAX             | 1     | 0    | 0    | 1    | 0    | 0.50 | 0.50 | 0  | 1       | 1\nJNE 1d759 <rhs_._omp_fn.0+0x759> | 1     | 0    | 0    | 0    | 0    | 0    | 1    | 0  | 0       | 1-2\n",
        },
      },
      header = {
        "0% of peak computational performance is used (0.00 out of 4.00 FLOP per cycle (GFLOPS @ 1GHz))",
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
      },
    },
  common = {
    header = {
      "The loop is defined in /users/user2210/NPB3.4-MZ-MPI/LU-MZ/rhs.f90:65.\n",
      "It is main loop of related source loop which is unrolled by 8 (including vectorization).",
    },
    nb_paths = 1,
  },
}
