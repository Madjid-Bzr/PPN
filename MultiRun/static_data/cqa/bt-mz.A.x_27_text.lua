_cqa_text_report = {
  paths = {
    {
      hint = {
        {
          details = "These instructions generate more than one micro-operation and only one of them can be decoded during a cycle and the extra micro-operations increase pressure on execution units.\n - VEXTRACTF128: 10 occurrences\n - VINSERTF128: 10 occurrences\n",
          title = "Complex instructions",
          txt = "Detected COMPLEX INSTRUCTIONS.\n",
        },
        {
          workaround = " - Try to reorganize arrays of structures to structures of arrays\n - Consider to permute loops (see vectorization gain report)\n",
          details = " - Constant non-unit stride: 2 occurrence(s)\nNon-unit stride (uncontiguous) accesses are not efficiently using data caches\n",
          title = "Slow data structures access",
          txt = "Detected data structures (typically arrays) that cannot be efficiently read/written",
        },
        {
          workaround = "Use vector aligned instructions:\n 1) The GNU Fortran compiler does not support allocation alignment and does not feature directives to benefit from aligned data.\n 2) Use another compiler or locally use C code (for instance via libraries)\n",
          details = " - VEXTRACTF128: 10 occurrences\n - VINSERTF128: 10 occurrences\n - VMOVUPS: 10 occurrences\n",
          title = "Vector unaligned load/store instructions",
          txt = "Detected 30 optimal vector unaligned load/store instructions.\n",
        },
        {
          title = "Type of elements and instruction set",
          txt = "No instructions are processing arithmetic or math operations on FP elements. This loop is probably writing/copying data or processing integer elements.",
        },
        {
          title = "Matching between your loop (in the source code) and the binary loop",
          txt = "The binary loop does not contain any FP arithmetical operations.\nThe binary loop is loading 320 bytes.\nThe binary loop is storing 320 bytes.",
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
          txt = "nb instructions    : 54\nnb uops            : 73\nloop length        : 377\nused x86 registers : 3\nused mmx registers : 0\nused xmm registers : 13\nused ymm registers : 15\nused zmm registers : 0\nnb stack references: 0\n",
        },
        {
          title = "Front-end",
          txt = "ASSUMED MACRO FUSION\nFIT IN UOP CACHE\nmicro-operation queue: 18.25 cycles\nfront end            : 18.25 cycles\n",
        },
        {
          title = "Back-end",
          txt = "       | P0   | P1   | P2    | P3    | P4    | P5\n----------------------------------------------------\nuops   | 1.17 | 0.83 | 20.00 | 20.00 | 20.00 | 21.00\ncycles | 1.17 | 0.83 | 20.00 | 20.00 | 20.00 | 21.00\n\nCycles executing div or sqrt instructions: NA\nLongest recurrence chain latency (RecMII): 1.00\n",
        },
        {
          title = "Cycles summary",
          txt = "Front-end : 18.25\nDispatch  : 21.00\nData deps.: 1.00\nOverall L1: 21.00\n",
        },
        {
          title = "Vectorization ratios",
          txt = "all     : 100%\nload    : 100%\nstore   : 100%\nmul     : NA (no mul vectorizable/vectorized instructions)\nadd-sub : NA (no add-sub vectorizable/vectorized instructions)\nfma     : NA (no fma vectorizable/vectorized instructions)\ndiv/sqrt: NA (no div/sqrt vectorizable/vectorized instructions)\nother   : 100%\n",
        },
        {
          title = "Vector efficiency ratios",
          txt = "all     : 60%\nload    : 50%\nstore   : 50%\nmul     : NA (no mul vectorizable/vectorized instructions)\nadd-sub : NA (no add-sub vectorizable/vectorized instructions)\nfma     : NA (no fma vectorizable/vectorized instructions)\ndiv/sqrt: NA (no div/sqrt vectorizable/vectorized instructions)\nother   : 75%\n",
        },
        {
          title = "Cycles and memory resources usage",
          txt = "Assuming all data fit into the L1 cache, each iteration of the binary loop takes 21.00 cycles. At this rate:\n - 47% of peak load performance is reached (15.24 out of 32.00 bytes loaded per cycle (GB/s @ 1GHz))\n - 95% of peak store performance is reached (15.24 out of 16.00 bytes stored per cycle (GB/s @ 1GHz))\n",
        },
        {
          title = "Front-end bottlenecks",
          txt = "Found no such bottlenecks.",
        },
        {
          title = "ASM code",
          txt = "In the binary file, the address of the loop is: afe0\n\nInstruction                                | Nb FU | P0   | P1   | P2   | P3   | P4 | P5   | Latency | Recip. throughput\n------------------------------------------------------------------------------------------------------------------------\nLEA 0xa0(%RAX),%RDX                        | 1     | 0.50 | 0.50 | 0    | 0    | 0  | 0    | 1       | 0.50\nVMOVUPD 0x20(%RAX),%XMM3                   | 1     | 0    | 0    | 0.50 | 0.50 | 0  | 0    | 3       | 0.50\nADD $0x140,%RAX                            | 1     | 0.33 | 0.33 | 0    | 0    | 0  | 0.33 | 1       | 0.33\nVINSERTF128 $0x1,-0x110(%RAX),%YMM3,%YMM11 | 2     | 0    | 0    | 0.50 | 0.50 | 0  | 1    | 2       | 1\nVMOVUPD -0x100(%RAX),%XMM5                 | 1     | 0    | 0    | 0.50 | 0.50 | 0  | 0    | 3       | 0.50\nVXORPD %YMM0,%YMM11,%YMM14                 | 1     | 0    | 0    | 0    | 0    | 0  | 1    | 1       | 1\nVINSERTF128 $0x1,-0xf0(%RAX),%YMM5,%YMM7   | 2     | 0    | 0    | 0.50 | 0.50 | 0  | 1    | 2       | 1\nVXORPD %YMM0,%YMM7,%YMM12                  | 1     | 0    | 0    | 0    | 0    | 0  | 1    | 1       | 1\nVMOVUPS %XMM14,-0x120(%RAX)                | 1     | 0    | 0    | 0.50 | 0.50 | 1  | 0    | 3       | 1\nVMOVUPD -0xe0(%RAX),%XMM1                  | 1     | 0    | 0    | 0.50 | 0.50 | 0  | 0    | 3       | 0.50\nVEXTRACTF128 $0x1,%YMM12,-0xf0(%RAX)       | 2     | 0    | 0    | 0.50 | 0.50 | 1  | 0    | 2       | 1\nVEXTRACTF128 $0x1,%YMM14,-0x110(%RAX)      | 2     | 0    | 0    | 0.50 | 0.50 | 1  | 0    | 2       | 1\nVMOVUPS %XMM12,-0x100(%RAX)                | 1     | 0    | 0    | 0.50 | 0.50 | 1  | 0    | 3       | 1\nVMOVUPD -0xc0(%RAX),%XMM15                 | 1     | 0    | 0    | 0.50 | 0.50 | 0  | 0    | 3       | 0.50\nVINSERTF128 $0x1,-0xd0(%RAX),%YMM1,%YMM9   | 2     | 0    | 0    | 0.50 | 0.50 | 0  | 1    | 2       | 1\nVINSERTF128 $0x1,-0xb0(%RAX),%YMM15,%YMM2  | 2     | 0    | 0    | 0.50 | 0.50 | 0  | 1    | 2       | 1\nVMOVUPD -0x140(%RAX),%XMM4                 | 1     | 0    | 0    | 0.50 | 0.50 | 0  | 0    | 3       | 0.50\nVXORPD %YMM0,%YMM9,%YMM8                   | 1     | 0    | 0    | 0    | 0    | 0  | 1    | 1       | 1\nVXORPD %YMM0,%YMM2,%YMM10                  | 1     | 0    | 0    | 0    | 0    | 0  | 1    | 1       | 1\nVMOVUPS %XMM8,-0xe0(%RAX)                  | 1     | 0    | 0    | 0.50 | 0.50 | 1  | 0    | 3       | 1\nVEXTRACTF128 $0x1,%YMM8,-0xd0(%RAX)        | 2     | 0    | 0    | 0.50 | 0.50 | 1  | 0    | 2       | 1\nVMOVUPS %XMM10,-0xc0(%RAX)                 | 1     | 0    | 0    | 0.50 | 0.50 | 1  | 0    | 3       | 1\nVEXTRACTF128 $0x1,%YMM10,-0xb0(%RAX)       | 2     | 0    | 0    | 0.50 | 0.50 | 1  | 0    | 2       | 1\nVINSERTF128 $0x1,-0x130(%RAX),%YMM4,%YMM13 | 2     | 0    | 0    | 0.50 | 0.50 | 0  | 1    | 2       | 1\nVXORPD %YMM0,%YMM13,%YMM3                  | 1     | 0    | 0    | 0    | 0    | 0  | 1    | 1       | 1\nVMOVUPD -0xa0(%RAX),%XMM13                 | 1     | 0    | 0    | 0.50 | 0.50 | 0  | 0    | 3       | 0.50\nVMOVUPS %XMM3,-0x140(%RAX)                 | 1     | 0    | 0    | 0.50 | 0.50 | 1  | 0    | 3       | 1\nVEXTRACTF128 $0x1,%YMM3,-0x130(%RAX)       | 2     | 0    | 0    | 0.50 | 0.50 | 1  | 0    | 2       | 1\nVMOVUPD 0x20(%RDX),%XMM11                  | 1     | 0    | 0    | 0.50 | 0.50 | 0  | 0    | 3       | 0.50\nVINSERTF128 $0x1,0x10(%RDX),%YMM13,%YMM3   | 2     | 0    | 0    | 0.50 | 0.50 | 0  | 1    | 2       | 1\nVINSERTF128 $0x1,0x30(%RDX),%YMM11,%YMM14  | 2     | 0    | 0    | 0.50 | 0.50 | 0  | 1    | 2       | 1\nVXORPD %YMM0,%YMM3,%YMM11                  | 1     | 0    | 0    | 0    | 0    | 0  | 1    | 1       | 1\nVMOVUPD 0x40(%RDX),%XMM5                   | 1     | 0    | 0    | 0.50 | 0.50 | 0  | 0    | 3       | 0.50\nVINSERTF128 $0x1,0x50(%RDX),%YMM5,%YMM7    | 2     | 0    | 0    | 0.50 | 0.50 | 0  | 1    | 2       | 1\nVXORPD %YMM0,%YMM14,%YMM12                 | 1     | 0    | 0    | 0    | 0    | 0  | 1    | 1       | 1\nVXORPD %YMM0,%YMM7,%YMM9                   | 1     | 0    | 0    | 0    | 0    | 0  | 1    | 1       | 1\nVMOVUPD 0x60(%RDX),%XMM1                   | 1     | 0    | 0    | 0.50 | 0.50 | 0  | 0    | 3       | 0.50\nVINSERTF128 $0x1,0x70(%RDX),%YMM1,%YMM8    | 2     | 0    | 0    | 0.50 | 0.50 | 0  | 1    | 2       | 1\nVXORPD %YMM0,%YMM8,%YMM15                  | 1     | 0    | 0    | 0    | 0    | 0  | 1    | 1       | 1\nVMOVUPD 0x80(%RDX),%XMM2                   | 1     | 0    | 0    | 0.50 | 0.50 | 0  | 0    | 3       | 0.50\nVINSERTF128 $0x1,0x90(%RDX),%YMM2,%YMM10   | 2     | 0    | 0    | 0.50 | 0.50 | 0  | 1    | 2       | 1\nVMOVUPS %XMM11,-0xa0(%RAX)                 | 1     | 0    | 0    | 0.50 | 0.50 | 1  | 0    | 3       | 1\nVXORPD %YMM0,%YMM10,%YMM4                  | 1     | 0    | 0    | 0    | 0    | 0  | 1    | 1       | 1\nVEXTRACTF128 $0x1,%YMM11,0x10(%RDX)        | 2     | 0    | 0    | 0.50 | 0.50 | 1  | 0    | 2       | 1\nVMOVUPS %XMM12,0x20(%RDX)                  | 1     | 0    | 0    | 0.50 | 0.50 | 1  | 0    | 3       | 1\nVEXTRACTF128 $0x1,%YMM12,0x30(%RDX)        | 2     | 0    | 0    | 0.50 | 0.50 | 1  | 0    | 2       | 1\nVEXTRACTF128 $0x1,%YMM9,0x50(%RDX)         | 2     | 0    | 0    | 0.50 | 0.50 | 1  | 0    | 2       | 1\nVMOVUPS %XMM9,0x40(%RDX)                   | 1     | 0    | 0    | 0.50 | 0.50 | 1  | 0    | 3       | 1\nVEXTRACTF128 $0x1,%YMM15,0x70(%RDX)        | 2     | 0    | 0    | 0.50 | 0.50 | 1  | 0    | 2       | 1\nVEXTRACTF128 $0x1,%YMM4,0x90(%RDX)         | 2     | 0    | 0    | 0.50 | 0.50 | 1  | 0    | 2       | 1\nVMOVUPS %XMM15,0x60(%RDX)                  | 1     | 0    | 0    | 0.50 | 0.50 | 1  | 0    | 3       | 1\nVMOVUPS %XMM4,0x80(%RDX)                   | 1     | 0    | 0    | 0.50 | 0.50 | 1  | 0    | 3       | 1\nCMP %R12,%RAX                              | 1     | 0.33 | 0.33 | 0    | 0    | 0  | 0.33 | 1       | 0.33\nJNE afe0 <exact_rhs_._omp_fn.0+0x3c90>     | 1     | 0    | 0    | 0    | 0    | 0  | 1    | 0       | 1-2\n",
        },
      },
      header = {
        "0% of peak computational performance is used (0.00 out of 2.00 FLOP per cycle (GFLOPS @ 1GHz))",
      },
      brief = {
      },
      gain = {
        {
          workaround = "Use vector aligned instructions:\n 1) The GNU Fortran compiler does not support allocation alignment and does not feature directives to benefit from aligned data.\n 2) Use another compiler or locally use C code (for instance via libraries)\n",
          details = "All SSE/AVX instructions are used in vector version (process two or more data elements in vector registers).\nSince your execution units are vector units, only a fully vectorized loop can use their full power.\n",
          title = "Vectorization",
          txt = "Your loop is vectorized, but using 60% register length (average across all SSE/AVX instructions).\nBy fully vectorizing your loop, you can lower the cost of an iteration from 21.00 to 20.00 cycles (1.05x speedup).",
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
          details = "These instructions generate more than one micro-operation and only one of them can be decoded during a cycle and the extra micro-operations increase pressure on execution units.\n - VEXTRACTF128: 10 occurrences\n - VINSERTF128: 10 occurrences\n",
          title = "Complex instructions",
          txt = "Detected COMPLEX INSTRUCTIONS.\n",
        },
        {
          workaround = " - Try to reorganize arrays of structures to structures of arrays\n - Consider to permute loops (see vectorization gain report)\n",
          details = " - Constant non-unit stride: 2 occurrence(s)\nNon-unit stride (uncontiguous) accesses are not efficiently using data caches\n",
          title = "Slow data structures access",
          txt = "Detected data structures (typically arrays) that cannot be efficiently read/written",
        },
        {
          workaround = "Use vector aligned instructions:\n 1) The GNU Fortran compiler does not support allocation alignment and does not feature directives to benefit from aligned data.\n 2) Use another compiler or locally use C code (for instance via libraries)\n",
          details = " - VEXTRACTF128: 10 occurrences\n - VINSERTF128: 10 occurrences\n - VMOVUPS: 10 occurrences\n",
          title = "Vector unaligned load/store instructions",
          txt = "Detected 30 optimal vector unaligned load/store instructions.\n",
        },
        {
          title = "Type of elements and instruction set",
          txt = "No instructions are processing arithmetic or math operations on FP elements. This loop is probably writing/copying data or processing integer elements.",
        },
        {
          title = "Matching between your loop (in the source code) and the binary loop",
          txt = "The binary loop does not contain any FP arithmetical operations.\nThe binary loop is loading 320 bytes.\nThe binary loop is storing 320 bytes.",
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
          txt = "nb instructions    : 54\nnb uops            : 73\nloop length        : 377\nused x86 registers : 3\nused mmx registers : 0\nused xmm registers : 13\nused ymm registers : 15\nused zmm registers : 0\nnb stack references: 0\n",
        },
        {
          title = "Front-end",
          txt = "ASSUMED MACRO FUSION\nFIT IN UOP CACHE\nmicro-operation queue: 18.25 cycles\nfront end            : 18.25 cycles\n",
        },
        {
          title = "Back-end",
          txt = "       | P0   | P1   | P2    | P3    | P4    | P5\n----------------------------------------------------\nuops   | 1.17 | 0.83 | 20.00 | 20.00 | 20.00 | 21.00\ncycles | 1.17 | 0.83 | 20.00 | 20.00 | 20.00 | 21.00\n\nCycles executing div or sqrt instructions: NA\nLongest recurrence chain latency (RecMII): 1.00\n",
        },
        {
          title = "Cycles summary",
          txt = "Front-end : 18.25\nDispatch  : 21.00\nData deps.: 1.00\nOverall L1: 21.00\n",
        },
        {
          title = "Vectorization ratios",
          txt = "all     : 100%\nload    : 100%\nstore   : 100%\nmul     : NA (no mul vectorizable/vectorized instructions)\nadd-sub : NA (no add-sub vectorizable/vectorized instructions)\nfma     : NA (no fma vectorizable/vectorized instructions)\ndiv/sqrt: NA (no div/sqrt vectorizable/vectorized instructions)\nother   : 100%\n",
        },
        {
          title = "Vector efficiency ratios",
          txt = "all     : 60%\nload    : 50%\nstore   : 50%\nmul     : NA (no mul vectorizable/vectorized instructions)\nadd-sub : NA (no add-sub vectorizable/vectorized instructions)\nfma     : NA (no fma vectorizable/vectorized instructions)\ndiv/sqrt: NA (no div/sqrt vectorizable/vectorized instructions)\nother   : 75%\n",
        },
        {
          title = "Cycles and memory resources usage",
          txt = "Assuming all data fit into the L1 cache, each iteration of the binary loop takes 21.00 cycles. At this rate:\n - 47% of peak load performance is reached (15.24 out of 32.00 bytes loaded per cycle (GB/s @ 1GHz))\n - 95% of peak store performance is reached (15.24 out of 16.00 bytes stored per cycle (GB/s @ 1GHz))\n",
        },
        {
          title = "Front-end bottlenecks",
          txt = "Found no such bottlenecks.",
        },
        {
          title = "ASM code",
          txt = "In the binary file, the address of the loop is: afe0\n\nInstruction                                | Nb FU | P0   | P1   | P2   | P3   | P4 | P5   | Latency | Recip. throughput\n------------------------------------------------------------------------------------------------------------------------\nLEA 0xa0(%RAX),%RDX                        | 1     | 0.50 | 0.50 | 0    | 0    | 0  | 0    | 1       | 0.50\nVMOVUPD 0x20(%RAX),%XMM3                   | 1     | 0    | 0    | 0.50 | 0.50 | 0  | 0    | 3       | 0.50\nADD $0x140,%RAX                            | 1     | 0.33 | 0.33 | 0    | 0    | 0  | 0.33 | 1       | 0.33\nVINSERTF128 $0x1,-0x110(%RAX),%YMM3,%YMM11 | 2     | 0    | 0    | 0.50 | 0.50 | 0  | 1    | 2       | 1\nVMOVUPD -0x100(%RAX),%XMM5                 | 1     | 0    | 0    | 0.50 | 0.50 | 0  | 0    | 3       | 0.50\nVXORPD %YMM0,%YMM11,%YMM14                 | 1     | 0    | 0    | 0    | 0    | 0  | 1    | 1       | 1\nVINSERTF128 $0x1,-0xf0(%RAX),%YMM5,%YMM7   | 2     | 0    | 0    | 0.50 | 0.50 | 0  | 1    | 2       | 1\nVXORPD %YMM0,%YMM7,%YMM12                  | 1     | 0    | 0    | 0    | 0    | 0  | 1    | 1       | 1\nVMOVUPS %XMM14,-0x120(%RAX)                | 1     | 0    | 0    | 0.50 | 0.50 | 1  | 0    | 3       | 1\nVMOVUPD -0xe0(%RAX),%XMM1                  | 1     | 0    | 0    | 0.50 | 0.50 | 0  | 0    | 3       | 0.50\nVEXTRACTF128 $0x1,%YMM12,-0xf0(%RAX)       | 2     | 0    | 0    | 0.50 | 0.50 | 1  | 0    | 2       | 1\nVEXTRACTF128 $0x1,%YMM14,-0x110(%RAX)      | 2     | 0    | 0    | 0.50 | 0.50 | 1  | 0    | 2       | 1\nVMOVUPS %XMM12,-0x100(%RAX)                | 1     | 0    | 0    | 0.50 | 0.50 | 1  | 0    | 3       | 1\nVMOVUPD -0xc0(%RAX),%XMM15                 | 1     | 0    | 0    | 0.50 | 0.50 | 0  | 0    | 3       | 0.50\nVINSERTF128 $0x1,-0xd0(%RAX),%YMM1,%YMM9   | 2     | 0    | 0    | 0.50 | 0.50 | 0  | 1    | 2       | 1\nVINSERTF128 $0x1,-0xb0(%RAX),%YMM15,%YMM2  | 2     | 0    | 0    | 0.50 | 0.50 | 0  | 1    | 2       | 1\nVMOVUPD -0x140(%RAX),%XMM4                 | 1     | 0    | 0    | 0.50 | 0.50 | 0  | 0    | 3       | 0.50\nVXORPD %YMM0,%YMM9,%YMM8                   | 1     | 0    | 0    | 0    | 0    | 0  | 1    | 1       | 1\nVXORPD %YMM0,%YMM2,%YMM10                  | 1     | 0    | 0    | 0    | 0    | 0  | 1    | 1       | 1\nVMOVUPS %XMM8,-0xe0(%RAX)                  | 1     | 0    | 0    | 0.50 | 0.50 | 1  | 0    | 3       | 1\nVEXTRACTF128 $0x1,%YMM8,-0xd0(%RAX)        | 2     | 0    | 0    | 0.50 | 0.50 | 1  | 0    | 2       | 1\nVMOVUPS %XMM10,-0xc0(%RAX)                 | 1     | 0    | 0    | 0.50 | 0.50 | 1  | 0    | 3       | 1\nVEXTRACTF128 $0x1,%YMM10,-0xb0(%RAX)       | 2     | 0    | 0    | 0.50 | 0.50 | 1  | 0    | 2       | 1\nVINSERTF128 $0x1,-0x130(%RAX),%YMM4,%YMM13 | 2     | 0    | 0    | 0.50 | 0.50 | 0  | 1    | 2       | 1\nVXORPD %YMM0,%YMM13,%YMM3                  | 1     | 0    | 0    | 0    | 0    | 0  | 1    | 1       | 1\nVMOVUPD -0xa0(%RAX),%XMM13                 | 1     | 0    | 0    | 0.50 | 0.50 | 0  | 0    | 3       | 0.50\nVMOVUPS %XMM3,-0x140(%RAX)                 | 1     | 0    | 0    | 0.50 | 0.50 | 1  | 0    | 3       | 1\nVEXTRACTF128 $0x1,%YMM3,-0x130(%RAX)       | 2     | 0    | 0    | 0.50 | 0.50 | 1  | 0    | 2       | 1\nVMOVUPD 0x20(%RDX),%XMM11                  | 1     | 0    | 0    | 0.50 | 0.50 | 0  | 0    | 3       | 0.50\nVINSERTF128 $0x1,0x10(%RDX),%YMM13,%YMM3   | 2     | 0    | 0    | 0.50 | 0.50 | 0  | 1    | 2       | 1\nVINSERTF128 $0x1,0x30(%RDX),%YMM11,%YMM14  | 2     | 0    | 0    | 0.50 | 0.50 | 0  | 1    | 2       | 1\nVXORPD %YMM0,%YMM3,%YMM11                  | 1     | 0    | 0    | 0    | 0    | 0  | 1    | 1       | 1\nVMOVUPD 0x40(%RDX),%XMM5                   | 1     | 0    | 0    | 0.50 | 0.50 | 0  | 0    | 3       | 0.50\nVINSERTF128 $0x1,0x50(%RDX),%YMM5,%YMM7    | 2     | 0    | 0    | 0.50 | 0.50 | 0  | 1    | 2       | 1\nVXORPD %YMM0,%YMM14,%YMM12                 | 1     | 0    | 0    | 0    | 0    | 0  | 1    | 1       | 1\nVXORPD %YMM0,%YMM7,%YMM9                   | 1     | 0    | 0    | 0    | 0    | 0  | 1    | 1       | 1\nVMOVUPD 0x60(%RDX),%XMM1                   | 1     | 0    | 0    | 0.50 | 0.50 | 0  | 0    | 3       | 0.50\nVINSERTF128 $0x1,0x70(%RDX),%YMM1,%YMM8    | 2     | 0    | 0    | 0.50 | 0.50 | 0  | 1    | 2       | 1\nVXORPD %YMM0,%YMM8,%YMM15                  | 1     | 0    | 0    | 0    | 0    | 0  | 1    | 1       | 1\nVMOVUPD 0x80(%RDX),%XMM2                   | 1     | 0    | 0    | 0.50 | 0.50 | 0  | 0    | 3       | 0.50\nVINSERTF128 $0x1,0x90(%RDX),%YMM2,%YMM10   | 2     | 0    | 0    | 0.50 | 0.50 | 0  | 1    | 2       | 1\nVMOVUPS %XMM11,-0xa0(%RAX)                 | 1     | 0    | 0    | 0.50 | 0.50 | 1  | 0    | 3       | 1\nVXORPD %YMM0,%YMM10,%YMM4                  | 1     | 0    | 0    | 0    | 0    | 0  | 1    | 1       | 1\nVEXTRACTF128 $0x1,%YMM11,0x10(%RDX)        | 2     | 0    | 0    | 0.50 | 0.50 | 1  | 0    | 2       | 1\nVMOVUPS %XMM12,0x20(%RDX)                  | 1     | 0    | 0    | 0.50 | 0.50 | 1  | 0    | 3       | 1\nVEXTRACTF128 $0x1,%YMM12,0x30(%RDX)        | 2     | 0    | 0    | 0.50 | 0.50 | 1  | 0    | 2       | 1\nVEXTRACTF128 $0x1,%YMM9,0x50(%RDX)         | 2     | 0    | 0    | 0.50 | 0.50 | 1  | 0    | 2       | 1\nVMOVUPS %XMM9,0x40(%RDX)                   | 1     | 0    | 0    | 0.50 | 0.50 | 1  | 0    | 3       | 1\nVEXTRACTF128 $0x1,%YMM15,0x70(%RDX)        | 2     | 0    | 0    | 0.50 | 0.50 | 1  | 0    | 2       | 1\nVEXTRACTF128 $0x1,%YMM4,0x90(%RDX)         | 2     | 0    | 0    | 0.50 | 0.50 | 1  | 0    | 2       | 1\nVMOVUPS %XMM15,0x60(%RDX)                  | 1     | 0    | 0    | 0.50 | 0.50 | 1  | 0    | 3       | 1\nVMOVUPS %XMM4,0x80(%RDX)                   | 1     | 0    | 0    | 0.50 | 0.50 | 1  | 0    | 3       | 1\nCMP %R12,%RAX                              | 1     | 0.33 | 0.33 | 0    | 0    | 0  | 0.33 | 1       | 0.33\nJNE afe0 <exact_rhs_._omp_fn.0+0x3c90>     | 1     | 0    | 0    | 0    | 0    | 0  | 1    | 0       | 1-2\n",
        },
      },
      header = {
        "0% of peak computational performance is used (0.00 out of 2.00 FLOP per cycle (GFLOPS @ 1GHz))",
      },
      brief = {
      },
      gain = {
        {
          workaround = "Use vector aligned instructions:\n 1) The GNU Fortran compiler does not support allocation alignment and does not feature directives to benefit from aligned data.\n 2) Use another compiler or locally use C code (for instance via libraries)\n",
          details = "All SSE/AVX instructions are used in vector version (process two or more data elements in vector registers).\nSince your execution units are vector units, only a fully vectorized loop can use their full power.\n",
          title = "Vectorization",
          txt = "Your loop is vectorized, but using 60% register length (average across all SSE/AVX instructions).\nBy fully vectorizing your loop, you can lower the cost of an iteration from 21.00 to 20.00 cycles (1.05x speedup).",
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
      "The loop is defined in /users/user2210/NPB3.4-MZ-MPI/BT-MZ/exact_rhs.f90:347.\n",
      "The related source loop is not unrolled or unrolled with no peel/tail loop.",
    },
    nb_paths = 1,
  },
}
