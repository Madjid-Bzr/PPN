_cqa_text_report = {
  paths = {
    {
      hint = {
        {
          details = "These instructions generate more than one micro-operation and only one of them can be decoded during a cycle and the extra micro-operations increase pressure on execution units.\n - VEXTRACTF128: 10 occurrences\n - VINSERTF128: 20 occurrences\n",
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
          details = " - VEXTRACTF128: 10 occurrences\n - VINSERTF128: 20 occurrences\n - VMOVUPS: 10 occurrences\n",
          title = "Vector unaligned load/store instructions",
          txt = "Detected 40 optimal vector unaligned load/store instructions.\n",
        },
        {
          title = "Type of elements and instruction set",
          txt = "10 AVX instructions are processing arithmetic or math operations on double precision FP elements in vector mode (four at a time).\n",
        },
        {
          title = "Matching between your loop (in the source code) and the binary loop",
          txt = "The binary loop is composed of 40 FP arithmetical operations:\n - 40: addition or subtraction\nThe binary loop is loading 640 bytes (80 double precision FP elements).\nThe binary loop is storing 320 bytes (40 double precision FP elements).",
        },
        {
          title = "Arithmetic intensity",
          txt = "Arithmetic intensity is 0.04 FP operations per loaded or stored byte.",
        },
      },
      expert = {
        {
          title = "General properties",
          txt = "nb instructions    : 75\nnb uops            : 104\nloop length        : 534\nused x86 registers : 4\nused mmx registers : 0\nused xmm registers : 16\nused ymm registers : 16\nused zmm registers : 0\nnb stack references: 0\n",
        },
        {
          title = "Front-end",
          txt = "ASSUMED MACRO FUSION\nFIT IN UOP CACHE\nmicro-operation queue: 26.00 cycles\nfront end            : 26.00 cycles\n",
        },
        {
          title = "Back-end",
          txt = "       | P0   | P1    | P2    | P3    | P4    | P5\n-----------------------------------------------------\nuops   | 3.00 | 10.00 | 30.00 | 30.00 | 20.00 | 21.00\ncycles | 3.00 | 10.00 | 30.00 | 30.00 | 20.00 | 21.00\n\nCycles executing div or sqrt instructions: NA\nLongest recurrence chain latency (RecMII): 1.00\n",
        },
        {
          title = "Cycles summary",
          txt = "Front-end : 26.00\nDispatch  : 30.00\nData deps.: 1.00\nOverall L1: 30.00\n",
        },
        {
          title = "Vectorization ratios",
          txt = "all     : 100%\nload    : 100%\nstore   : 100%\nmul     : NA (no mul vectorizable/vectorized instructions)\nadd-sub : 100%\nfma     : NA (no fma vectorizable/vectorized instructions)\ndiv/sqrt: NA (no div/sqrt vectorizable/vectorized instructions)\nother   : 100%\n",
        },
        {
          title = "Vector efficiency ratios",
          txt = "all     : 57%\nload    : 50%\nstore   : 50%\nmul     : NA (no mul vectorizable/vectorized instructions)\nadd-sub : 100%\nfma     : NA (no fma vectorizable/vectorized instructions)\ndiv/sqrt: NA (no div/sqrt vectorizable/vectorized instructions)\nother   : 50%\n",
        },
        {
          title = "Cycles and memory resources usage",
          txt = "Assuming all data fit into the L1 cache, each iteration of the binary loop takes 30.00 cycles. At this rate:\n - 66% of peak load performance is reached (21.33 out of 32.00 bytes loaded per cycle (GB/s @ 1GHz))\n - 66% of peak store performance is reached (10.67 out of 16.00 bytes stored per cycle (GB/s @ 1GHz))\n",
        },
        {
          title = "Front-end bottlenecks",
          txt = "Found no such bottlenecks.",
        },
        {
          title = "ASM code",
          txt = "In the binary file, the address of the loop is: 1e1a8\n\nInstruction                                 | Nb FU | P0   | P1   | P2   | P3   | P4 | P5   | Latency | Recip. throughput\n-------------------------------------------------------------------------------------------------------------------------\nVMOVUPD 0x20(%RCX),%XMM11                   | 1     | 0    | 0    | 0.50 | 0.50 | 0  | 0    | 3       | 0.50\nVINSERTF128 $0x1,0x30(%RCX),%YMM11,%YMM12   | 2     | 0    | 0    | 0.50 | 0.50 | 0  | 1    | 2       | 1\nLEA 0xa0(%RAX),%RSI                         | 1     | 0.50 | 0.50 | 0    | 0    | 0  | 0    | 1       | 0.50\nADD $0x140,%RAX                             | 1     | 0.33 | 0.33 | 0    | 0    | 0  | 0.33 | 1       | 0.33\nVMOVUPD 0x40(%RCX),%XMM1                    | 1     | 0    | 0    | 0.50 | 0.50 | 0  | 0    | 3       | 0.50\nVINSERTF128 $0x1,0x50(%RCX),%YMM1,%YMM3     | 2     | 0    | 0    | 0.50 | 0.50 | 0  | 1    | 2       | 1\nADD $0x140,%RCX                             | 1     | 0.33 | 0.33 | 0    | 0    | 0  | 0.33 | 1       | 0.33\nVMOVUPD -0xe0(%RCX),%XMM8                   | 1     | 0    | 0    | 0.50 | 0.50 | 0  | 0    | 3       | 0.50\nVINSERTF128 $0x1,-0xd0(%RCX),%YMM8,%YMM5    | 2     | 0    | 0    | 0.50 | 0.50 | 0  | 1    | 2       | 1\nVMOVUPD -0x140(%RCX),%XMM1                  | 1     | 0    | 0    | 0.50 | 0.50 | 0  | 0    | 3       | 0.50\nVMOVUPD -0x120(%RAX),%XMM6                  | 1     | 0    | 0    | 0.50 | 0.50 | 0  | 0    | 3       | 0.50\nVINSERTF128 $0x1,-0x110(%RAX),%YMM6,%YMM9   | 2     | 0    | 0    | 0.50 | 0.50 | 0  | 1    | 2       | 1\nVADDPD %YMM12,%YMM9,%YMM13                  | 1     | 0    | 1    | 0    | 0    | 0  | 0    | 3       | 1\nVMOVUPD -0xc0(%RCX),%XMM6                   | 1     | 0    | 0    | 0.50 | 0.50 | 0  | 0    | 3       | 0.50\nVINSERTF128 $0x1,-0xb0(%RCX),%YMM6,%YMM11   | 2     | 0    | 0    | 0.50 | 0.50 | 0  | 1    | 2       | 1\nVMOVUPD -0x100(%RAX),%XMM14                 | 1     | 0    | 0    | 0.50 | 0.50 | 0  | 0    | 3       | 0.50\nVINSERTF128 $0x1,-0xf0(%RAX),%YMM14,%YMM15  | 2     | 0    | 0    | 0.50 | 0.50 | 0  | 1    | 2       | 1\nVADDPD %YMM3,%YMM15,%YMM2                   | 1     | 0    | 1    | 0    | 0    | 0  | 0    | 3       | 1\nVINSERTF128 $0x1,-0x130(%RCX),%YMM1,%YMM3   | 2     | 0    | 0    | 0.50 | 0.50 | 0  | 1    | 2       | 1\nVMOVUPD -0xe0(%RAX),%XMM0                   | 1     | 0    | 0    | 0.50 | 0.50 | 0  | 0    | 3       | 0.50\nVMOVUPS %XMM13,-0x120(%RAX)                 | 1     | 0    | 0    | 0.50 | 0.50 | 1  | 0    | 3       | 1\nVINSERTF128 $0x1,-0xd0(%RAX),%YMM0,%YMM4    | 2     | 0    | 0    | 0.50 | 0.50 | 0  | 1    | 2       | 1\nVADDPD %YMM5,%YMM4,%YMM10                   | 1     | 0    | 1    | 0    | 0    | 0  | 0    | 3       | 1\nVMOVUPD -0xc0(%RAX),%XMM7                   | 1     | 0    | 0    | 0.50 | 0.50 | 0  | 0    | 3       | 0.50\nVINSERTF128 $0x1,-0xb0(%RAX),%YMM7,%YMM9    | 2     | 0    | 0    | 0.50 | 0.50 | 0  | 1    | 2       | 1\nVADDPD %YMM11,%YMM9,%YMM12                  | 1     | 0    | 1    | 0    | 0    | 0  | 0    | 3       | 1\nVEXTRACTF128 $0x1,%YMM13,-0x110(%RAX)       | 2     | 0    | 0    | 0.50 | 0.50 | 1  | 0    | 2       | 1\nVMOVUPD -0x140(%RAX),%XMM14                 | 1     | 0    | 0    | 0.50 | 0.50 | 0  | 0    | 3       | 0.50\nVINSERTF128 $0x1,-0x130(%RAX),%YMM14,%YMM15 | 2     | 0    | 0    | 0.50 | 0.50 | 0  | 1    | 2       | 1\nVADDPD %YMM3,%YMM15,%YMM0                   | 1     | 0    | 1    | 0    | 0    | 0  | 0    | 3       | 1\nVMOVUPS %XMM2,-0x100(%RAX)                  | 1     | 0    | 0    | 0.50 | 0.50 | 1  | 0    | 3       | 1\nVMOVUPS %XMM10,-0xe0(%RAX)                  | 1     | 0    | 0    | 0.50 | 0.50 | 1  | 0    | 3       | 1\nVEXTRACTF128 $0x1,%YMM10,-0xd0(%RAX)        | 2     | 0    | 0    | 0.50 | 0.50 | 1  | 0    | 2       | 1\nVEXTRACTF128 $0x1,%YMM2,-0xf0(%RAX)         | 2     | 0    | 0    | 0.50 | 0.50 | 1  | 0    | 2       | 1\nVMOVUPS %XMM12,-0xc0(%RAX)                  | 1     | 0    | 0    | 0.50 | 0.50 | 1  | 0    | 3       | 1\nVEXTRACTF128 $0x1,%YMM12,-0xb0(%RAX)        | 2     | 0    | 0    | 0.50 | 0.50 | 1  | 0    | 2       | 1\nVMOVUPS %XMM0,-0x140(%RAX)                  | 1     | 0    | 0    | 0.50 | 0.50 | 1  | 0    | 3       | 1\nVEXTRACTF128 $0x1,%YMM0,-0x130(%RAX)        | 2     | 0    | 0    | 0.50 | 0.50 | 1  | 0    | 2       | 1\nVMOVUPD 0x20(%RSI),%XMM13                   | 1     | 0    | 0    | 0.50 | 0.50 | 0  | 0    | 3       | 0.50\nVINSERTF128 $0x1,0x30(%RSI),%YMM13,%YMM2    | 2     | 0    | 0    | 0.50 | 0.50 | 0  | 1    | 2       | 1\nVMOVUPD -0x80(%RCX),%XMM4                   | 1     | 0    | 0    | 0.50 | 0.50 | 0  | 0    | 3       | 0.50\nVINSERTF128 $0x1,-0x70(%RCX),%YMM4,%YMM8    | 2     | 0    | 0    | 0.50 | 0.50 | 0  | 1    | 2       | 1\nVADDPD %YMM8,%YMM2,%YMM10                   | 1     | 0    | 1    | 0    | 0    | 0  | 0    | 3       | 1\nVMOVUPD -0x60(%RCX),%XMM9                   | 1     | 0    | 0    | 0.50 | 0.50 | 0  | 0    | 3       | 0.50\nVINSERTF128 $0x1,-0x50(%RCX),%YMM9,%YMM6    | 2     | 0    | 0    | 0.50 | 0.50 | 0  | 1    | 2       | 1\nVMOVUPD 0x40(%RSI),%XMM5                    | 1     | 0    | 0    | 0.50 | 0.50 | 0  | 0    | 3       | 0.50\nVINSERTF128 $0x1,0x50(%RSI),%YMM5,%YMM7     | 2     | 0    | 0    | 0.50 | 0.50 | 0  | 1    | 2       | 1\nVADDPD %YMM6,%YMM7,%YMM11                   | 1     | 0    | 1    | 0    | 0    | 0  | 0    | 3       | 1\nVMOVUPD -0xa0(%RAX),%XMM5                   | 1     | 0    | 0    | 0.50 | 0.50 | 0  | 0    | 3       | 0.50\nVINSERTF128 $0x1,0x10(%RSI),%YMM5,%YMM7     | 2     | 0    | 0    | 0.50 | 0.50 | 0  | 1    | 2       | 1\nVMOVUPD -0xa0(%RCX),%XMM9                   | 1     | 0    | 0    | 0.50 | 0.50 | 0  | 0    | 3       | 0.50\nVINSERTF128 $0x1,-0x90(%RCX),%YMM9,%YMM6    | 2     | 0    | 0    | 0.50 | 0.50 | 0  | 1    | 2       | 1\nVMOVUPD 0x60(%RSI),%XMM12                   | 1     | 0    | 0    | 0.50 | 0.50 | 0  | 0    | 3       | 0.50\nVINSERTF128 $0x1,0x70(%RSI),%YMM12,%YMM14   | 2     | 0    | 0    | 0.50 | 0.50 | 0  | 1    | 2       | 1\nVADDPD %YMM6,%YMM7,%YMM12                   | 1     | 0    | 1    | 0    | 0    | 0  | 0    | 3       | 1\nVMOVUPD -0x40(%RCX),%XMM15                  | 1     | 0    | 0    | 0.50 | 0.50 | 0  | 0    | 3       | 0.50\nVINSERTF128 $0x1,-0x30(%RCX),%YMM15,%YMM1   | 2     | 0    | 0    | 0.50 | 0.50 | 0  | 1    | 2       | 1\nVADDPD %YMM1,%YMM14,%YMM3                   | 1     | 0    | 1    | 0    | 0    | 0  | 0    | 3       | 1\nVMOVUPD -0x20(%RCX),%XMM2                   | 1     | 0    | 0    | 0.50 | 0.50 | 0  | 0    | 3       | 0.50\nVINSERTF128 $0x1,-0x10(%RCX),%YMM2,%YMM4    | 2     | 0    | 0    | 0.50 | 0.50 | 0  | 1    | 2       | 1\nVMOVUPD 0x80(%RSI),%XMM0                    | 1     | 0    | 0    | 0.50 | 0.50 | 0  | 0    | 3       | 0.50\nVINSERTF128 $0x1,0x90(%RSI),%YMM0,%YMM13    | 2     | 0    | 0    | 0.50 | 0.50 | 0  | 1    | 2       | 1\nVADDPD %YMM4,%YMM13,%YMM8                   | 1     | 0    | 1    | 0    | 0    | 0  | 0    | 3       | 1\nVMOVUPS %XMM12,-0xa0(%RAX)                  | 1     | 0    | 0    | 0.50 | 0.50 | 1  | 0    | 3       | 1\nVMOVUPS %XMM10,0x20(%RSI)                   | 1     | 0    | 0    | 0.50 | 0.50 | 1  | 0    | 3       | 1\nVEXTRACTF128 $0x1,%YMM12,0x10(%RSI)         | 2     | 0    | 0    | 0.50 | 0.50 | 1  | 0    | 2       | 1\nVEXTRACTF128 $0x1,%YMM10,0x30(%RSI)         | 2     | 0    | 0    | 0.50 | 0.50 | 1  | 0    | 2       | 1\nVEXTRACTF128 $0x1,%YMM11,0x50(%RSI)         | 2     | 0    | 0    | 0.50 | 0.50 | 1  | 0    | 2       | 1\nVMOVUPS %XMM11,0x40(%RSI)                   | 1     | 0    | 0    | 0.50 | 0.50 | 1  | 0    | 3       | 1\nVEXTRACTF128 $0x1,%YMM3,0x70(%RSI)          | 2     | 0    | 0    | 0.50 | 0.50 | 1  | 0    | 2       | 1\nVEXTRACTF128 $0x1,%YMM8,0x90(%RSI)          | 2     | 0    | 0    | 0.50 | 0.50 | 1  | 0    | 2       | 1\nVMOVUPS %XMM3,0x60(%RSI)                    | 1     | 0    | 0    | 0.50 | 0.50 | 1  | 0    | 3       | 1\nVMOVUPS %XMM8,0x80(%RSI)                    | 1     | 0    | 0    | 0.50 | 0.50 | 1  | 0    | 3       | 1\nCMP %RBX,%RAX                               | 1     | 0.33 | 0.33 | 0    | 0    | 0  | 0.33 | 1       | 0.33\nJNE 1e1a8 <add_._omp_fn.0+0x2e8>            | 1     | 0    | 0    | 0    | 0    | 0  | 1    | 0       | 1-2\n",
        },
      },
      header = {
        "16% of peak computational performance is used (1.33 out of 8.00 FLOP per cycle (GFLOPS @ 1GHz))",
      },
      brief = {
      },
      gain = {
        {
          workaround = "Use vector aligned instructions:\n 1) The GNU Fortran compiler does not support allocation alignment and does not feature directives to benefit from aligned data.\n 2) Use another compiler or locally use C code (for instance via libraries)\n",
          details = "All SSE/AVX instructions are used in vector version (process two or more data elements in vector registers).\nSince your execution units are vector units, only a fully vectorized loop can use their full power.\n",
          title = "Vectorization",
          txt = "Your loop is vectorized, but using 57% register length (average across all SSE/AVX instructions).\nBy fully vectorizing your loop, you can lower the cost of an iteration from 30.00 to 20.00 cycles (1.50x speedup).",
        },
        {
          workaround = " - Read less array elements\nAll SSE and/or AVX registers are used:\nin that case, try to relax register pressure by reducing the unroll factor or splitting your loop\n - Write less array elements\n - Provide more information to your compiler:\n  * hardcode the bounds of the corresponding 'for' loop\n",
          title = "Execution units bottlenecks",
          txt = "Performance is limited by:\n - reading data from caches/RAM (load units are a bottleneck)\n - writing data to caches/RAM (the store unit is a bottleneck)\n\nBy removing all these bottlenecks, you can lower the cost of an iteration from 30.00 to 26.00 cycles (1.15x speedup).\n",
        },
      },
      potential = {
      },
    },
  },
  AVG = {
      hint = {
        {
          details = "These instructions generate more than one micro-operation and only one of them can be decoded during a cycle and the extra micro-operations increase pressure on execution units.\n - VEXTRACTF128: 10 occurrences\n - VINSERTF128: 20 occurrences\n",
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
          details = " - VEXTRACTF128: 10 occurrences\n - VINSERTF128: 20 occurrences\n - VMOVUPS: 10 occurrences\n",
          title = "Vector unaligned load/store instructions",
          txt = "Detected 40 optimal vector unaligned load/store instructions.\n",
        },
        {
          title = "Type of elements and instruction set",
          txt = "10 AVX instructions are processing arithmetic or math operations on double precision FP elements in vector mode (four at a time).\n",
        },
        {
          title = "Matching between your loop (in the source code) and the binary loop",
          txt = "The binary loop is composed of 40 FP arithmetical operations:\n - 40: addition or subtraction\nThe binary loop is loading 640 bytes (80 double precision FP elements).\nThe binary loop is storing 320 bytes (40 double precision FP elements).",
        },
        {
          title = "Arithmetic intensity",
          txt = "Arithmetic intensity is 0.04 FP operations per loaded or stored byte.",
        },
      },
      expert = {
        {
          title = "General properties",
          txt = "nb instructions    : 75\nnb uops            : 104\nloop length        : 534\nused x86 registers : 4\nused mmx registers : 0\nused xmm registers : 16\nused ymm registers : 16\nused zmm registers : 0\nnb stack references: 0\n",
        },
        {
          title = "Front-end",
          txt = "ASSUMED MACRO FUSION\nFIT IN UOP CACHE\nmicro-operation queue: 26.00 cycles\nfront end            : 26.00 cycles\n",
        },
        {
          title = "Back-end",
          txt = "       | P0   | P1    | P2    | P3    | P4    | P5\n-----------------------------------------------------\nuops   | 3.00 | 10.00 | 30.00 | 30.00 | 20.00 | 21.00\ncycles | 3.00 | 10.00 | 30.00 | 30.00 | 20.00 | 21.00\n\nCycles executing div or sqrt instructions: NA\nLongest recurrence chain latency (RecMII): 1.00\n",
        },
        {
          title = "Cycles summary",
          txt = "Front-end : 26.00\nDispatch  : 30.00\nData deps.: 1.00\nOverall L1: 30.00\n",
        },
        {
          title = "Vectorization ratios",
          txt = "all     : 100%\nload    : 100%\nstore   : 100%\nmul     : NA (no mul vectorizable/vectorized instructions)\nadd-sub : 100%\nfma     : NA (no fma vectorizable/vectorized instructions)\ndiv/sqrt: NA (no div/sqrt vectorizable/vectorized instructions)\nother   : 100%\n",
        },
        {
          title = "Vector efficiency ratios",
          txt = "all     : 57%\nload    : 50%\nstore   : 50%\nmul     : NA (no mul vectorizable/vectorized instructions)\nadd-sub : 100%\nfma     : NA (no fma vectorizable/vectorized instructions)\ndiv/sqrt: NA (no div/sqrt vectorizable/vectorized instructions)\nother   : 50%\n",
        },
        {
          title = "Cycles and memory resources usage",
          txt = "Assuming all data fit into the L1 cache, each iteration of the binary loop takes 30.00 cycles. At this rate:\n - 66% of peak load performance is reached (21.33 out of 32.00 bytes loaded per cycle (GB/s @ 1GHz))\n - 66% of peak store performance is reached (10.67 out of 16.00 bytes stored per cycle (GB/s @ 1GHz))\n",
        },
        {
          title = "Front-end bottlenecks",
          txt = "Found no such bottlenecks.",
        },
        {
          title = "ASM code",
          txt = "In the binary file, the address of the loop is: 1e1a8\n\nInstruction                                 | Nb FU | P0   | P1   | P2   | P3   | P4 | P5   | Latency | Recip. throughput\n-------------------------------------------------------------------------------------------------------------------------\nVMOVUPD 0x20(%RCX),%XMM11                   | 1     | 0    | 0    | 0.50 | 0.50 | 0  | 0    | 3       | 0.50\nVINSERTF128 $0x1,0x30(%RCX),%YMM11,%YMM12   | 2     | 0    | 0    | 0.50 | 0.50 | 0  | 1    | 2       | 1\nLEA 0xa0(%RAX),%RSI                         | 1     | 0.50 | 0.50 | 0    | 0    | 0  | 0    | 1       | 0.50\nADD $0x140,%RAX                             | 1     | 0.33 | 0.33 | 0    | 0    | 0  | 0.33 | 1       | 0.33\nVMOVUPD 0x40(%RCX),%XMM1                    | 1     | 0    | 0    | 0.50 | 0.50 | 0  | 0    | 3       | 0.50\nVINSERTF128 $0x1,0x50(%RCX),%YMM1,%YMM3     | 2     | 0    | 0    | 0.50 | 0.50 | 0  | 1    | 2       | 1\nADD $0x140,%RCX                             | 1     | 0.33 | 0.33 | 0    | 0    | 0  | 0.33 | 1       | 0.33\nVMOVUPD -0xe0(%RCX),%XMM8                   | 1     | 0    | 0    | 0.50 | 0.50 | 0  | 0    | 3       | 0.50\nVINSERTF128 $0x1,-0xd0(%RCX),%YMM8,%YMM5    | 2     | 0    | 0    | 0.50 | 0.50 | 0  | 1    | 2       | 1\nVMOVUPD -0x140(%RCX),%XMM1                  | 1     | 0    | 0    | 0.50 | 0.50 | 0  | 0    | 3       | 0.50\nVMOVUPD -0x120(%RAX),%XMM6                  | 1     | 0    | 0    | 0.50 | 0.50 | 0  | 0    | 3       | 0.50\nVINSERTF128 $0x1,-0x110(%RAX),%YMM6,%YMM9   | 2     | 0    | 0    | 0.50 | 0.50 | 0  | 1    | 2       | 1\nVADDPD %YMM12,%YMM9,%YMM13                  | 1     | 0    | 1    | 0    | 0    | 0  | 0    | 3       | 1\nVMOVUPD -0xc0(%RCX),%XMM6                   | 1     | 0    | 0    | 0.50 | 0.50 | 0  | 0    | 3       | 0.50\nVINSERTF128 $0x1,-0xb0(%RCX),%YMM6,%YMM11   | 2     | 0    | 0    | 0.50 | 0.50 | 0  | 1    | 2       | 1\nVMOVUPD -0x100(%RAX),%XMM14                 | 1     | 0    | 0    | 0.50 | 0.50 | 0  | 0    | 3       | 0.50\nVINSERTF128 $0x1,-0xf0(%RAX),%YMM14,%YMM15  | 2     | 0    | 0    | 0.50 | 0.50 | 0  | 1    | 2       | 1\nVADDPD %YMM3,%YMM15,%YMM2                   | 1     | 0    | 1    | 0    | 0    | 0  | 0    | 3       | 1\nVINSERTF128 $0x1,-0x130(%RCX),%YMM1,%YMM3   | 2     | 0    | 0    | 0.50 | 0.50 | 0  | 1    | 2       | 1\nVMOVUPD -0xe0(%RAX),%XMM0                   | 1     | 0    | 0    | 0.50 | 0.50 | 0  | 0    | 3       | 0.50\nVMOVUPS %XMM13,-0x120(%RAX)                 | 1     | 0    | 0    | 0.50 | 0.50 | 1  | 0    | 3       | 1\nVINSERTF128 $0x1,-0xd0(%RAX),%YMM0,%YMM4    | 2     | 0    | 0    | 0.50 | 0.50 | 0  | 1    | 2       | 1\nVADDPD %YMM5,%YMM4,%YMM10                   | 1     | 0    | 1    | 0    | 0    | 0  | 0    | 3       | 1\nVMOVUPD -0xc0(%RAX),%XMM7                   | 1     | 0    | 0    | 0.50 | 0.50 | 0  | 0    | 3       | 0.50\nVINSERTF128 $0x1,-0xb0(%RAX),%YMM7,%YMM9    | 2     | 0    | 0    | 0.50 | 0.50 | 0  | 1    | 2       | 1\nVADDPD %YMM11,%YMM9,%YMM12                  | 1     | 0    | 1    | 0    | 0    | 0  | 0    | 3       | 1\nVEXTRACTF128 $0x1,%YMM13,-0x110(%RAX)       | 2     | 0    | 0    | 0.50 | 0.50 | 1  | 0    | 2       | 1\nVMOVUPD -0x140(%RAX),%XMM14                 | 1     | 0    | 0    | 0.50 | 0.50 | 0  | 0    | 3       | 0.50\nVINSERTF128 $0x1,-0x130(%RAX),%YMM14,%YMM15 | 2     | 0    | 0    | 0.50 | 0.50 | 0  | 1    | 2       | 1\nVADDPD %YMM3,%YMM15,%YMM0                   | 1     | 0    | 1    | 0    | 0    | 0  | 0    | 3       | 1\nVMOVUPS %XMM2,-0x100(%RAX)                  | 1     | 0    | 0    | 0.50 | 0.50 | 1  | 0    | 3       | 1\nVMOVUPS %XMM10,-0xe0(%RAX)                  | 1     | 0    | 0    | 0.50 | 0.50 | 1  | 0    | 3       | 1\nVEXTRACTF128 $0x1,%YMM10,-0xd0(%RAX)        | 2     | 0    | 0    | 0.50 | 0.50 | 1  | 0    | 2       | 1\nVEXTRACTF128 $0x1,%YMM2,-0xf0(%RAX)         | 2     | 0    | 0    | 0.50 | 0.50 | 1  | 0    | 2       | 1\nVMOVUPS %XMM12,-0xc0(%RAX)                  | 1     | 0    | 0    | 0.50 | 0.50 | 1  | 0    | 3       | 1\nVEXTRACTF128 $0x1,%YMM12,-0xb0(%RAX)        | 2     | 0    | 0    | 0.50 | 0.50 | 1  | 0    | 2       | 1\nVMOVUPS %XMM0,-0x140(%RAX)                  | 1     | 0    | 0    | 0.50 | 0.50 | 1  | 0    | 3       | 1\nVEXTRACTF128 $0x1,%YMM0,-0x130(%RAX)        | 2     | 0    | 0    | 0.50 | 0.50 | 1  | 0    | 2       | 1\nVMOVUPD 0x20(%RSI),%XMM13                   | 1     | 0    | 0    | 0.50 | 0.50 | 0  | 0    | 3       | 0.50\nVINSERTF128 $0x1,0x30(%RSI),%YMM13,%YMM2    | 2     | 0    | 0    | 0.50 | 0.50 | 0  | 1    | 2       | 1\nVMOVUPD -0x80(%RCX),%XMM4                   | 1     | 0    | 0    | 0.50 | 0.50 | 0  | 0    | 3       | 0.50\nVINSERTF128 $0x1,-0x70(%RCX),%YMM4,%YMM8    | 2     | 0    | 0    | 0.50 | 0.50 | 0  | 1    | 2       | 1\nVADDPD %YMM8,%YMM2,%YMM10                   | 1     | 0    | 1    | 0    | 0    | 0  | 0    | 3       | 1\nVMOVUPD -0x60(%RCX),%XMM9                   | 1     | 0    | 0    | 0.50 | 0.50 | 0  | 0    | 3       | 0.50\nVINSERTF128 $0x1,-0x50(%RCX),%YMM9,%YMM6    | 2     | 0    | 0    | 0.50 | 0.50 | 0  | 1    | 2       | 1\nVMOVUPD 0x40(%RSI),%XMM5                    | 1     | 0    | 0    | 0.50 | 0.50 | 0  | 0    | 3       | 0.50\nVINSERTF128 $0x1,0x50(%RSI),%YMM5,%YMM7     | 2     | 0    | 0    | 0.50 | 0.50 | 0  | 1    | 2       | 1\nVADDPD %YMM6,%YMM7,%YMM11                   | 1     | 0    | 1    | 0    | 0    | 0  | 0    | 3       | 1\nVMOVUPD -0xa0(%RAX),%XMM5                   | 1     | 0    | 0    | 0.50 | 0.50 | 0  | 0    | 3       | 0.50\nVINSERTF128 $0x1,0x10(%RSI),%YMM5,%YMM7     | 2     | 0    | 0    | 0.50 | 0.50 | 0  | 1    | 2       | 1\nVMOVUPD -0xa0(%RCX),%XMM9                   | 1     | 0    | 0    | 0.50 | 0.50 | 0  | 0    | 3       | 0.50\nVINSERTF128 $0x1,-0x90(%RCX),%YMM9,%YMM6    | 2     | 0    | 0    | 0.50 | 0.50 | 0  | 1    | 2       | 1\nVMOVUPD 0x60(%RSI),%XMM12                   | 1     | 0    | 0    | 0.50 | 0.50 | 0  | 0    | 3       | 0.50\nVINSERTF128 $0x1,0x70(%RSI),%YMM12,%YMM14   | 2     | 0    | 0    | 0.50 | 0.50 | 0  | 1    | 2       | 1\nVADDPD %YMM6,%YMM7,%YMM12                   | 1     | 0    | 1    | 0    | 0    | 0  | 0    | 3       | 1\nVMOVUPD -0x40(%RCX),%XMM15                  | 1     | 0    | 0    | 0.50 | 0.50 | 0  | 0    | 3       | 0.50\nVINSERTF128 $0x1,-0x30(%RCX),%YMM15,%YMM1   | 2     | 0    | 0    | 0.50 | 0.50 | 0  | 1    | 2       | 1\nVADDPD %YMM1,%YMM14,%YMM3                   | 1     | 0    | 1    | 0    | 0    | 0  | 0    | 3       | 1\nVMOVUPD -0x20(%RCX),%XMM2                   | 1     | 0    | 0    | 0.50 | 0.50 | 0  | 0    | 3       | 0.50\nVINSERTF128 $0x1,-0x10(%RCX),%YMM2,%YMM4    | 2     | 0    | 0    | 0.50 | 0.50 | 0  | 1    | 2       | 1\nVMOVUPD 0x80(%RSI),%XMM0                    | 1     | 0    | 0    | 0.50 | 0.50 | 0  | 0    | 3       | 0.50\nVINSERTF128 $0x1,0x90(%RSI),%YMM0,%YMM13    | 2     | 0    | 0    | 0.50 | 0.50 | 0  | 1    | 2       | 1\nVADDPD %YMM4,%YMM13,%YMM8                   | 1     | 0    | 1    | 0    | 0    | 0  | 0    | 3       | 1\nVMOVUPS %XMM12,-0xa0(%RAX)                  | 1     | 0    | 0    | 0.50 | 0.50 | 1  | 0    | 3       | 1\nVMOVUPS %XMM10,0x20(%RSI)                   | 1     | 0    | 0    | 0.50 | 0.50 | 1  | 0    | 3       | 1\nVEXTRACTF128 $0x1,%YMM12,0x10(%RSI)         | 2     | 0    | 0    | 0.50 | 0.50 | 1  | 0    | 2       | 1\nVEXTRACTF128 $0x1,%YMM10,0x30(%RSI)         | 2     | 0    | 0    | 0.50 | 0.50 | 1  | 0    | 2       | 1\nVEXTRACTF128 $0x1,%YMM11,0x50(%RSI)         | 2     | 0    | 0    | 0.50 | 0.50 | 1  | 0    | 2       | 1\nVMOVUPS %XMM11,0x40(%RSI)                   | 1     | 0    | 0    | 0.50 | 0.50 | 1  | 0    | 3       | 1\nVEXTRACTF128 $0x1,%YMM3,0x70(%RSI)          | 2     | 0    | 0    | 0.50 | 0.50 | 1  | 0    | 2       | 1\nVEXTRACTF128 $0x1,%YMM8,0x90(%RSI)          | 2     | 0    | 0    | 0.50 | 0.50 | 1  | 0    | 2       | 1\nVMOVUPS %XMM3,0x60(%RSI)                    | 1     | 0    | 0    | 0.50 | 0.50 | 1  | 0    | 3       | 1\nVMOVUPS %XMM8,0x80(%RSI)                    | 1     | 0    | 0    | 0.50 | 0.50 | 1  | 0    | 3       | 1\nCMP %RBX,%RAX                               | 1     | 0.33 | 0.33 | 0    | 0    | 0  | 0.33 | 1       | 0.33\nJNE 1e1a8 <add_._omp_fn.0+0x2e8>            | 1     | 0    | 0    | 0    | 0    | 0  | 1    | 0       | 1-2\n",
        },
      },
      header = {
        "16% of peak computational performance is used (1.33 out of 8.00 FLOP per cycle (GFLOPS @ 1GHz))",
      },
      brief = {
      },
      gain = {
        {
          workaround = "Use vector aligned instructions:\n 1) The GNU Fortran compiler does not support allocation alignment and does not feature directives to benefit from aligned data.\n 2) Use another compiler or locally use C code (for instance via libraries)\n",
          details = "All SSE/AVX instructions are used in vector version (process two or more data elements in vector registers).\nSince your execution units are vector units, only a fully vectorized loop can use their full power.\n",
          title = "Vectorization",
          txt = "Your loop is vectorized, but using 57% register length (average across all SSE/AVX instructions).\nBy fully vectorizing your loop, you can lower the cost of an iteration from 30.00 to 20.00 cycles (1.50x speedup).",
        },
        {
          workaround = " - Read less array elements\nAll SSE and/or AVX registers are used:\nin that case, try to relax register pressure by reducing the unroll factor or splitting your loop\n - Write less array elements\n - Provide more information to your compiler:\n  * hardcode the bounds of the corresponding 'for' loop\n",
          title = "Execution units bottlenecks",
          txt = "Performance is limited by:\n - reading data from caches/RAM (load units are a bottleneck)\n - writing data to caches/RAM (the store unit is a bottleneck)\n\nBy removing all these bottlenecks, you can lower the cost of an iteration from 30.00 to 26.00 cycles (1.15x speedup).\n",
        },
      },
      potential = {
      },
    },
  common = {
    header = {
      "The loop is defined in /users/user2210/NPB3.4-MZ-MPI/BT-MZ/add.f90:29.\n",
      "It is main loop of related source loop which is unrolled by 2 (including vectorization).",
    },
    nb_paths = 1,
  },
}
