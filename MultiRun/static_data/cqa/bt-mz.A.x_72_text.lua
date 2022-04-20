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
      },
      expert = {
        {
          title = "General properties",
          txt = "nb instructions    : 44\nnb uops            : 63\nloop length        : 327\nused x86 registers : 3\nused mmx registers : 0\nused xmm registers : 16\nused ymm registers : 16\nused zmm registers : 0\nnb stack references: 0\n",
        },
        {
          title = "Front-end",
          txt = "ASSUMED MACRO FUSION\nFIT IN UOP CACHE\nmicro-operation queue: 15.75 cycles\nfront end            : 15.75 cycles\n",
        },
        {
          title = "Back-end",
          txt = "       | P0   | P1   | P2    | P3    | P4    | P5\n----------------------------------------------------\nuops   | 1.00 | 1.00 | 20.00 | 20.00 | 20.00 | 11.00\ncycles | 1.00 | 1.00 | 20.00 | 20.00 | 20.00 | 11.00\n\nCycles executing div or sqrt instructions: NA\nLongest recurrence chain latency (RecMII): 1.00\n",
        },
        {
          title = "Cycles summary",
          txt = "Front-end : 15.75\nDispatch  : 20.00\nData deps.: 1.00\nOverall L1: 20.00\n",
        },
        {
          title = "Vectorization ratios",
          txt = "all     : 100%\nload    : 100%\nstore   : 100%\nmul     : NA (no mul vectorizable/vectorized instructions)\nadd-sub : NA (no add-sub vectorizable/vectorized instructions)\nfma     : NA (no fma vectorizable/vectorized instructions)\ndiv/sqrt: NA (no div/sqrt vectorizable/vectorized instructions)\nother   : 100%\n",
        },
        {
          title = "Vector efficiency ratios",
          txt = "all     : 50%\nload    : 50%\nstore   : 50%\nmul     : NA (no mul vectorizable/vectorized instructions)\nadd-sub : NA (no add-sub vectorizable/vectorized instructions)\nfma     : NA (no fma vectorizable/vectorized instructions)\ndiv/sqrt: NA (no div/sqrt vectorizable/vectorized instructions)\nother   : 50%\n",
        },
        {
          title = "Cycles and memory resources usage",
          txt = "Assuming all data fit into the L1 cache, each iteration of the binary loop takes 20.00 cycles. At this rate:\n - 50% of peak load performance is reached (16.00 out of 32.00 bytes loaded per cycle (GB/s @ 1GHz))\n - 100% of peak store performance is reached (16.00 out of 16.00 bytes stored per cycle (GB/s @ 1GHz))\n",
        },
        {
          title = "Front-end bottlenecks",
          txt = "Found no such bottlenecks.",
        },
        {
          title = "ASM code",
          txt = "In the binary file, the address of the loop is: 10350\n\nInstruction                                | Nb FU | P0   | P1   | P2   | P3   | P4 | P5   | Latency | Recip. throughput\n------------------------------------------------------------------------------------------------------------------------\nVMOVUPD (%RDX),%XMM15                      | 1     | 0    | 0    | 0.50 | 0.50 | 0  | 0    | 3       | 0.50\nADD $0x140,%RAX                            | 1     | 0.33 | 0.33 | 0    | 0    | 0  | 0.33 | 1       | 0.33\nVINSERTF128 $0x1,0x10(%RDX),%YMM15,%YMM4   | 2     | 0    | 0    | 0.50 | 0.50 | 0  | 1    | 2       | 1\nADD $0x140,%RDX                            | 1     | 0.33 | 0.33 | 0    | 0    | 0  | 0.33 | 1       | 0.33\nVMOVUPD -0x120(%RDX),%XMM1                 | 1     | 0    | 0    | 0.50 | 0.50 | 0  | 0    | 3       | 0.50\nVINSERTF128 $0x1,-0x110(%RDX),%YMM1,%YMM3  | 2     | 0    | 0    | 0.50 | 0.50 | 0  | 1    | 2       | 1\nVMOVUPD -0x100(%RDX),%XMM2                 | 1     | 0    | 0    | 0.50 | 0.50 | 0  | 0    | 3       | 0.50\nVINSERTF128 $0x1,-0xf0(%RDX),%YMM2,%YMM5   | 2     | 0    | 0    | 0.50 | 0.50 | 0  | 1    | 2       | 1\nVMOVUPD -0xe0(%RDX),%XMM6                  | 1     | 0    | 0    | 0.50 | 0.50 | 0  | 0    | 3       | 0.50\nVINSERTF128 $0x1,-0xd0(%RDX),%YMM6,%YMM7   | 2     | 0    | 0    | 0.50 | 0.50 | 0  | 1    | 2       | 1\nVMOVUPD -0xc0(%RDX),%XMM0                  | 1     | 0    | 0    | 0.50 | 0.50 | 0  | 0    | 3       | 0.50\nVINSERTF128 $0x1,-0xb0(%RDX),%YMM0,%YMM8   | 2     | 0    | 0    | 0.50 | 0.50 | 0  | 1    | 2       | 1\nVMOVUPS %XMM4,-0x140(%RAX)                 | 1     | 0    | 0    | 0.50 | 0.50 | 1  | 0    | 3       | 1\nVEXTRACTF128 $0x1,%YMM4,-0x130(%RAX)       | 2     | 0    | 0    | 0.50 | 0.50 | 1  | 0    | 2       | 1\nVMOVUPS %XMM3,-0x120(%RAX)                 | 1     | 0    | 0    | 0.50 | 0.50 | 1  | 0    | 3       | 1\nVEXTRACTF128 $0x1,%YMM3,-0x110(%RAX)       | 2     | 0    | 0    | 0.50 | 0.50 | 1  | 0    | 2       | 1\nVEXTRACTF128 $0x1,%YMM5,-0xf0(%RAX)        | 2     | 0    | 0    | 0.50 | 0.50 | 1  | 0    | 2       | 1\nVEXTRACTF128 $0x1,%YMM7,-0xd0(%RAX)        | 2     | 0    | 0    | 0.50 | 0.50 | 1  | 0    | 2       | 1\nVMOVUPS %XMM5,-0x100(%RAX)                 | 1     | 0    | 0    | 0.50 | 0.50 | 1  | 0    | 3       | 1\nVEXTRACTF128 $0x1,%YMM8,-0xb0(%RAX)        | 2     | 0    | 0    | 0.50 | 0.50 | 1  | 0    | 2       | 1\nVMOVUPS %XMM7,-0xe0(%RAX)                  | 1     | 0    | 0    | 0.50 | 0.50 | 1  | 0    | 3       | 1\nVMOVUPS %XMM8,-0xc0(%RAX)                  | 1     | 0    | 0    | 0.50 | 0.50 | 1  | 0    | 3       | 1\nVMOVUPD -0xa0(%RDX),%XMM9                  | 1     | 0    | 0    | 0.50 | 0.50 | 0  | 0    | 3       | 0.50\nVINSERTF128 $0x1,-0x90(%RDX),%YMM9,%YMM10  | 2     | 0    | 0    | 0.50 | 0.50 | 0  | 1    | 2       | 1\nVMOVUPD -0x80(%RDX),%XMM11                 | 1     | 0    | 0    | 0.50 | 0.50 | 0  | 0    | 3       | 0.50\nVINSERTF128 $0x1,-0x70(%RDX),%YMM11,%YMM12 | 2     | 0    | 0    | 0.50 | 0.50 | 0  | 1    | 2       | 1\nVMOVUPD -0x60(%RDX),%XMM13                 | 1     | 0    | 0    | 0.50 | 0.50 | 0  | 0    | 3       | 0.50\nVINSERTF128 $0x1,-0x50(%RDX),%YMM13,%YMM14 | 2     | 0    | 0    | 0.50 | 0.50 | 0  | 1    | 2       | 1\nVMOVUPD -0x40(%RDX),%XMM15                 | 1     | 0    | 0    | 0.50 | 0.50 | 0  | 0    | 3       | 0.50\nVINSERTF128 $0x1,-0x30(%RDX),%YMM15,%YMM4  | 2     | 0    | 0    | 0.50 | 0.50 | 0  | 1    | 2       | 1\nVMOVUPD -0x20(%RDX),%XMM1                  | 1     | 0    | 0    | 0.50 | 0.50 | 0  | 0    | 3       | 0.50\nVINSERTF128 $0x1,-0x10(%RDX),%YMM1,%YMM3   | 2     | 0    | 0    | 0.50 | 0.50 | 0  | 1    | 2       | 1\nVMOVUPS %XMM10,-0xa0(%RAX)                 | 1     | 0    | 0    | 0.50 | 0.50 | 1  | 0    | 3       | 1\nVEXTRACTF128 $0x1,%YMM10,-0x90(%RAX)       | 2     | 0    | 0    | 0.50 | 0.50 | 1  | 0    | 2       | 1\nVMOVUPS %XMM12,-0x80(%RAX)                 | 1     | 0    | 0    | 0.50 | 0.50 | 1  | 0    | 3       | 1\nVEXTRACTF128 $0x1,%YMM12,-0x70(%RAX)       | 2     | 0    | 0    | 0.50 | 0.50 | 1  | 0    | 2       | 1\nVEXTRACTF128 $0x1,%YMM14,-0x50(%RAX)       | 2     | 0    | 0    | 0.50 | 0.50 | 1  | 0    | 2       | 1\nVEXTRACTF128 $0x1,%YMM4,-0x30(%RAX)        | 2     | 0    | 0    | 0.50 | 0.50 | 1  | 0    | 2       | 1\nVMOVUPS %XMM14,-0x60(%RAX)                 | 1     | 0    | 0    | 0.50 | 0.50 | 1  | 0    | 3       | 1\nVEXTRACTF128 $0x1,%YMM3,-0x10(%RAX)        | 2     | 0    | 0    | 0.50 | 0.50 | 1  | 0    | 2       | 1\nVMOVUPS %XMM4,-0x40(%RAX)                  | 1     | 0    | 0    | 0.50 | 0.50 | 1  | 0    | 3       | 1\nVMOVUPS %XMM3,-0x20(%RAX)                  | 1     | 0    | 0    | 0.50 | 0.50 | 1  | 0    | 3       | 1\nCMP %RAX,%R9                               | 1     | 0.33 | 0.33 | 0    | 0    | 0  | 0.33 | 1       | 0.33\nJNE 10350 <compute_rhs_._omp_fn.0+0x4000>  | 1     | 0    | 0    | 0    | 0    | 0  | 1    | 0       | 1-2\n",
        },
      },
      header = {
        "0% of peak computational performance is used (0.00 out of 2.00 FLOP per cycle (GFLOPS @ 1GHz))",
      },
      brief = {
      },
      gain = {
        {
          details = "All SSE/AVX instructions are used in vector version (process two or more data elements in vector registers).\n",
          title = "Vectorization",
          txt = "Your loop is vectorized, but using only 128 out of 256 bits (SSE/AVX-128 instructions on AVX/AVX2 processors).\n",
        },
        {
          workaround = " - Read less array elements\nAll SSE and/or AVX registers are used:\nin that case, try to relax register pressure by reducing the unroll factor or splitting your loop\n - Write less array elements\n - Provide more information to your compiler:\n  * hardcode the bounds of the corresponding 'for' loop\n",
          title = "Execution units bottlenecks",
          txt = "Performance is limited by:\n - reading data from caches/RAM (load units are a bottleneck)\n - writing data to caches/RAM (the store unit is a bottleneck)\n",
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
      },
      expert = {
        {
          title = "General properties",
          txt = "nb instructions    : 44\nnb uops            : 63\nloop length        : 327\nused x86 registers : 3\nused mmx registers : 0\nused xmm registers : 16\nused ymm registers : 16\nused zmm registers : 0\nnb stack references: 0\n",
        },
        {
          title = "Front-end",
          txt = "ASSUMED MACRO FUSION\nFIT IN UOP CACHE\nmicro-operation queue: 15.75 cycles\nfront end            : 15.75 cycles\n",
        },
        {
          title = "Back-end",
          txt = "       | P0   | P1   | P2    | P3    | P4    | P5\n----------------------------------------------------\nuops   | 1.00 | 1.00 | 20.00 | 20.00 | 20.00 | 11.00\ncycles | 1.00 | 1.00 | 20.00 | 20.00 | 20.00 | 11.00\n\nCycles executing div or sqrt instructions: NA\nLongest recurrence chain latency (RecMII): 1.00\n",
        },
        {
          title = "Cycles summary",
          txt = "Front-end : 15.75\nDispatch  : 20.00\nData deps.: 1.00\nOverall L1: 20.00\n",
        },
        {
          title = "Vectorization ratios",
          txt = "all     : 100%\nload    : 100%\nstore   : 100%\nmul     : NA (no mul vectorizable/vectorized instructions)\nadd-sub : NA (no add-sub vectorizable/vectorized instructions)\nfma     : NA (no fma vectorizable/vectorized instructions)\ndiv/sqrt: NA (no div/sqrt vectorizable/vectorized instructions)\nother   : 100%\n",
        },
        {
          title = "Vector efficiency ratios",
          txt = "all     : 50%\nload    : 50%\nstore   : 50%\nmul     : NA (no mul vectorizable/vectorized instructions)\nadd-sub : NA (no add-sub vectorizable/vectorized instructions)\nfma     : NA (no fma vectorizable/vectorized instructions)\ndiv/sqrt: NA (no div/sqrt vectorizable/vectorized instructions)\nother   : 50%\n",
        },
        {
          title = "Cycles and memory resources usage",
          txt = "Assuming all data fit into the L1 cache, each iteration of the binary loop takes 20.00 cycles. At this rate:\n - 50% of peak load performance is reached (16.00 out of 32.00 bytes loaded per cycle (GB/s @ 1GHz))\n - 100% of peak store performance is reached (16.00 out of 16.00 bytes stored per cycle (GB/s @ 1GHz))\n",
        },
        {
          title = "Front-end bottlenecks",
          txt = "Found no such bottlenecks.",
        },
        {
          title = "ASM code",
          txt = "In the binary file, the address of the loop is: 10350\n\nInstruction                                | Nb FU | P0   | P1   | P2   | P3   | P4 | P5   | Latency | Recip. throughput\n------------------------------------------------------------------------------------------------------------------------\nVMOVUPD (%RDX),%XMM15                      | 1     | 0    | 0    | 0.50 | 0.50 | 0  | 0    | 3       | 0.50\nADD $0x140,%RAX                            | 1     | 0.33 | 0.33 | 0    | 0    | 0  | 0.33 | 1       | 0.33\nVINSERTF128 $0x1,0x10(%RDX),%YMM15,%YMM4   | 2     | 0    | 0    | 0.50 | 0.50 | 0  | 1    | 2       | 1\nADD $0x140,%RDX                            | 1     | 0.33 | 0.33 | 0    | 0    | 0  | 0.33 | 1       | 0.33\nVMOVUPD -0x120(%RDX),%XMM1                 | 1     | 0    | 0    | 0.50 | 0.50 | 0  | 0    | 3       | 0.50\nVINSERTF128 $0x1,-0x110(%RDX),%YMM1,%YMM3  | 2     | 0    | 0    | 0.50 | 0.50 | 0  | 1    | 2       | 1\nVMOVUPD -0x100(%RDX),%XMM2                 | 1     | 0    | 0    | 0.50 | 0.50 | 0  | 0    | 3       | 0.50\nVINSERTF128 $0x1,-0xf0(%RDX),%YMM2,%YMM5   | 2     | 0    | 0    | 0.50 | 0.50 | 0  | 1    | 2       | 1\nVMOVUPD -0xe0(%RDX),%XMM6                  | 1     | 0    | 0    | 0.50 | 0.50 | 0  | 0    | 3       | 0.50\nVINSERTF128 $0x1,-0xd0(%RDX),%YMM6,%YMM7   | 2     | 0    | 0    | 0.50 | 0.50 | 0  | 1    | 2       | 1\nVMOVUPD -0xc0(%RDX),%XMM0                  | 1     | 0    | 0    | 0.50 | 0.50 | 0  | 0    | 3       | 0.50\nVINSERTF128 $0x1,-0xb0(%RDX),%YMM0,%YMM8   | 2     | 0    | 0    | 0.50 | 0.50 | 0  | 1    | 2       | 1\nVMOVUPS %XMM4,-0x140(%RAX)                 | 1     | 0    | 0    | 0.50 | 0.50 | 1  | 0    | 3       | 1\nVEXTRACTF128 $0x1,%YMM4,-0x130(%RAX)       | 2     | 0    | 0    | 0.50 | 0.50 | 1  | 0    | 2       | 1\nVMOVUPS %XMM3,-0x120(%RAX)                 | 1     | 0    | 0    | 0.50 | 0.50 | 1  | 0    | 3       | 1\nVEXTRACTF128 $0x1,%YMM3,-0x110(%RAX)       | 2     | 0    | 0    | 0.50 | 0.50 | 1  | 0    | 2       | 1\nVEXTRACTF128 $0x1,%YMM5,-0xf0(%RAX)        | 2     | 0    | 0    | 0.50 | 0.50 | 1  | 0    | 2       | 1\nVEXTRACTF128 $0x1,%YMM7,-0xd0(%RAX)        | 2     | 0    | 0    | 0.50 | 0.50 | 1  | 0    | 2       | 1\nVMOVUPS %XMM5,-0x100(%RAX)                 | 1     | 0    | 0    | 0.50 | 0.50 | 1  | 0    | 3       | 1\nVEXTRACTF128 $0x1,%YMM8,-0xb0(%RAX)        | 2     | 0    | 0    | 0.50 | 0.50 | 1  | 0    | 2       | 1\nVMOVUPS %XMM7,-0xe0(%RAX)                  | 1     | 0    | 0    | 0.50 | 0.50 | 1  | 0    | 3       | 1\nVMOVUPS %XMM8,-0xc0(%RAX)                  | 1     | 0    | 0    | 0.50 | 0.50 | 1  | 0    | 3       | 1\nVMOVUPD -0xa0(%RDX),%XMM9                  | 1     | 0    | 0    | 0.50 | 0.50 | 0  | 0    | 3       | 0.50\nVINSERTF128 $0x1,-0x90(%RDX),%YMM9,%YMM10  | 2     | 0    | 0    | 0.50 | 0.50 | 0  | 1    | 2       | 1\nVMOVUPD -0x80(%RDX),%XMM11                 | 1     | 0    | 0    | 0.50 | 0.50 | 0  | 0    | 3       | 0.50\nVINSERTF128 $0x1,-0x70(%RDX),%YMM11,%YMM12 | 2     | 0    | 0    | 0.50 | 0.50 | 0  | 1    | 2       | 1\nVMOVUPD -0x60(%RDX),%XMM13                 | 1     | 0    | 0    | 0.50 | 0.50 | 0  | 0    | 3       | 0.50\nVINSERTF128 $0x1,-0x50(%RDX),%YMM13,%YMM14 | 2     | 0    | 0    | 0.50 | 0.50 | 0  | 1    | 2       | 1\nVMOVUPD -0x40(%RDX),%XMM15                 | 1     | 0    | 0    | 0.50 | 0.50 | 0  | 0    | 3       | 0.50\nVINSERTF128 $0x1,-0x30(%RDX),%YMM15,%YMM4  | 2     | 0    | 0    | 0.50 | 0.50 | 0  | 1    | 2       | 1\nVMOVUPD -0x20(%RDX),%XMM1                  | 1     | 0    | 0    | 0.50 | 0.50 | 0  | 0    | 3       | 0.50\nVINSERTF128 $0x1,-0x10(%RDX),%YMM1,%YMM3   | 2     | 0    | 0    | 0.50 | 0.50 | 0  | 1    | 2       | 1\nVMOVUPS %XMM10,-0xa0(%RAX)                 | 1     | 0    | 0    | 0.50 | 0.50 | 1  | 0    | 3       | 1\nVEXTRACTF128 $0x1,%YMM10,-0x90(%RAX)       | 2     | 0    | 0    | 0.50 | 0.50 | 1  | 0    | 2       | 1\nVMOVUPS %XMM12,-0x80(%RAX)                 | 1     | 0    | 0    | 0.50 | 0.50 | 1  | 0    | 3       | 1\nVEXTRACTF128 $0x1,%YMM12,-0x70(%RAX)       | 2     | 0    | 0    | 0.50 | 0.50 | 1  | 0    | 2       | 1\nVEXTRACTF128 $0x1,%YMM14,-0x50(%RAX)       | 2     | 0    | 0    | 0.50 | 0.50 | 1  | 0    | 2       | 1\nVEXTRACTF128 $0x1,%YMM4,-0x30(%RAX)        | 2     | 0    | 0    | 0.50 | 0.50 | 1  | 0    | 2       | 1\nVMOVUPS %XMM14,-0x60(%RAX)                 | 1     | 0    | 0    | 0.50 | 0.50 | 1  | 0    | 3       | 1\nVEXTRACTF128 $0x1,%YMM3,-0x10(%RAX)        | 2     | 0    | 0    | 0.50 | 0.50 | 1  | 0    | 2       | 1\nVMOVUPS %XMM4,-0x40(%RAX)                  | 1     | 0    | 0    | 0.50 | 0.50 | 1  | 0    | 3       | 1\nVMOVUPS %XMM3,-0x20(%RAX)                  | 1     | 0    | 0    | 0.50 | 0.50 | 1  | 0    | 3       | 1\nCMP %RAX,%R9                               | 1     | 0.33 | 0.33 | 0    | 0    | 0  | 0.33 | 1       | 0.33\nJNE 10350 <compute_rhs_._omp_fn.0+0x4000>  | 1     | 0    | 0    | 0    | 0    | 0  | 1    | 0       | 1-2\n",
        },
      },
      header = {
        "0% of peak computational performance is used (0.00 out of 2.00 FLOP per cycle (GFLOPS @ 1GHz))",
      },
      brief = {
      },
      gain = {
        {
          details = "All SSE/AVX instructions are used in vector version (process two or more data elements in vector registers).\n",
          title = "Vectorization",
          txt = "Your loop is vectorized, but using only 128 out of 256 bits (SSE/AVX-128 instructions on AVX/AVX2 processors).\n",
        },
        {
          workaround = " - Read less array elements\nAll SSE and/or AVX registers are used:\nin that case, try to relax register pressure by reducing the unroll factor or splitting your loop\n - Write less array elements\n - Provide more information to your compiler:\n  * hardcode the bounds of the corresponding 'for' loop\n",
          title = "Execution units bottlenecks",
          txt = "Performance is limited by:\n - reading data from caches/RAM (load units are a bottleneck)\n - writing data to caches/RAM (the store unit is a bottleneck)\n",
        },
      },
      potential = {
      },
    },
  common = {
    header = {
      "The loop is defined in /users/user2210/NPB3.4-MZ-MPI/BT-MZ/rhs.f90:64.\n",
      "It is main loop of related source loop which is unrolled by 2 (including vectorization).",
    },
    nb_paths = 1,
  },
}
