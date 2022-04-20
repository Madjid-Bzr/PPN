_cqa_text_report = {
  paths = {
    {
      hint = {
        {
          details = "These instructions generate more than one micro-operation and only one of them can be decoded during a cycle and the extra micro-operations increase pressure on execution units.\n - VINSERTF128: 5 occurrences\n",
          title = "Complex instructions",
          txt = "Detected COMPLEX INSTRUCTIONS.\n",
        },
        {
          workaround = " - Try to reorganize arrays of structures to structures of arrays\n - Consider to permute loops (see vectorization gain report)\n",
          details = " - Constant unknown stride: 4 occurrence(s)\nNon-unit stride (uncontiguous) accesses are not efficiently using data caches\n",
          title = "Slow data structures access",
          txt = "Detected data structures (typically arrays) that cannot be efficiently read/written",
        },
        {
          workaround = "Use vector aligned instructions:\n 1) The GNU Fortran compiler does not support allocation alignment and does not feature directives to benefit from aligned data.\n 2) Use another compiler or locally use C code (for instance via libraries)\n",
          details = " - VEXTRACTF128: 1 occurrences\n - VINSERTF128: 6 occurrences\n",
          title = "Vector unaligned load/store instructions",
          txt = "Detected 7 optimal vector unaligned load/store instructions.\n",
        },
        {
          title = "Type of elements and instruction set",
          txt = "9 AVX instructions are processing arithmetic or math operations on double precision FP elements in vector mode (four at a time).\n",
        },
        {
          title = "Matching between your loop (in the source code) and the binary loop",
          txt = "The binary loop is composed of 36 FP arithmetical operations:\n - 20: addition or subtraction\n - 16: multiply\nThe binary loop is loading 200 bytes (25 double precision FP elements).\nThe binary loop is storing 32 bytes (4 double precision FP elements).",
        },
        {
          title = "Arithmetic intensity",
          txt = "Arithmetic intensity is 0.16 FP operations per loaded or stored byte.",
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
          txt = "nb instructions    : 34\nnb uops            : 38\nloop length        : 183\nused x86 registers : 11\nused mmx registers : 0\nused xmm registers : 8\nused ymm registers : 14\nused zmm registers : 0\nnb stack references: 1\nADD-SUB / MUL ratio: 1.25\n",
        },
        {
          title = "Front-end",
          txt = "ASSUMED MACRO FUSION\nFIT IN UOP CACHE\nmicro-operation queue: 10.50 cycles\nfront end            : 10.50 cycles\n",
        },
        {
          title = "Back-end",
          txt = "       | P0   | P1   | P2   | P3   | P4   | P5\n-------------------------------------------------\nuops   | 6.00 | 6.00 | 9.50 | 9.50 | 4.00 | 10.00\ncycles | 6.00 | 6.00 | 9.50 | 9.50 | 4.00 | 10.00\n\nCycles executing div or sqrt instructions: NA\nLongest recurrence chain latency (RecMII): 1.00\n",
        },
        {
          title = "Cycles summary",
          txt = "Front-end : 10.50\nDispatch  : 10.00\nData deps.: 1.00\nOverall L1: 10.50\n",
        },
        {
          title = "Vectorization ratios",
          txt = "all     : 72%\nload    : 71%\nstore   : 0%\nmul     : 100%\nadd-sub : 100%\nfma     : NA (no fma vectorizable/vectorized instructions)\ndiv/sqrt: NA (no div/sqrt vectorizable/vectorized instructions)\nother   : 100%\n",
        },
        {
          title = "Vector efficiency ratios",
          txt = "all     : 58%\nload    : 42%\nstore   : 25%\nmul     : 100%\nadd-sub : 100%\nfma     : NA (no fma vectorizable/vectorized instructions)\ndiv/sqrt: NA (no div/sqrt vectorizable/vectorized instructions)\nother   : 50%\n",
        },
        {
          title = "Cycles and memory resources usage",
          txt = "Assuming all data fit into the L1 cache, each iteration of the binary loop takes 10.50 cycles. At this rate:\n - 59% of peak load performance is reached (19.05 out of 32.00 bytes loaded per cycle (GB/s @ 1GHz))\n - 19% of peak store performance is reached (3.05 out of 16.00 bytes stored per cycle (GB/s @ 1GHz))\n",
        },
        {
          title = "Front-end bottlenecks",
          txt = "Performance is limited by instruction throughput (loading/decoding program instructions to execution core) (front-end is a bottleneck).\n\nBy removing all these bottlenecks, you can lower the cost of an iteration from 10.50 to 10.00 cycles (1.05x speedup).\n",
        },
        {
          title = "ASM code",
          txt = "In the binary file, the address of the loop is: a850\n\nInstruction                                     | Nb FU | P0   | P1   | P2   | P3   | P4 | P5   | Latency | Recip. throughput\n-----------------------------------------------------------------------------------------------------------------------------\nVMOVSD (%RDX),%XMM0                             | 1     | 0    | 0    | 0.50 | 0.50 | 0  | 0    | 3       | 0.50\nVMOVSD (%RCX),%XMM1                             | 1     | 0    | 0    | 0.50 | 0.50 | 0  | 0    | 3       | 0.50\nVMOVUPD (%RSI,%RAX,1),%XMM4                     | 1     | 0    | 0    | 0.50 | 0.50 | 0  | 0    | 3       | 0.50\nVINSERTF128 $0x1,0x10(%RSI,%RAX,1),%YMM4,%YMM11 | 2     | 0    | 0    | 0.50 | 0.50 | 0  | 1    | 2       | 1\nVMOVHPD (%RDX,%R8,1),%XMM0,%XMM2                | 1     | 0    | 0    | 0.50 | 0.50 | 0  | 1    | 3       | 1\nVMOVUPD (%R11,%RAX,1),%XMM6                     | 1     | 0    | 0    | 0.50 | 0.50 | 0  | 0    | 3       | 0.50\nVINSERTF128 $0x1,0x10(%R11,%RAX,1),%YMM6,%YMM14 | 2     | 0    | 0    | 0.50 | 0.50 | 0  | 1    | 2       | 1\nVMULPD %YMM5,%YMM14,%YMM12                      | 1     | 1    | 0    | 0    | 0    | 0  | 0    | 5       | 1\nVSUBPD %YMM12,%YMM11,%YMM9                      | 1     | 0    | 1    | 0    | 0    | 0  | 0    | 3       | 1\nVMOVHPD (%RCX,%R8,1),%XMM1,%XMM15               | 1     | 0    | 0    | 0.50 | 0.50 | 0  | 1    | 3       | 1\nVMOVUPD (%R10,%RAX,1),%XMM0                     | 1     | 0    | 0    | 0.50 | 0.50 | 0  | 0    | 3       | 0.50\nVINSERTF128 $0x1,%XMM2,%YMM15,%YMM8             | 1     | 0    | 0    | 0    | 0    | 0  | 1    | 2       | 1\nVINSERTF128 $0x1,0x10(%R10,%RAX,1),%YMM0,%YMM2  | 2     | 0    | 0    | 0.50 | 0.50 | 0  | 1    | 2       | 1\nVMULPD %YMM7,%YMM2,%YMM1                        | 1     | 1    | 0    | 0    | 0    | 0  | 0    | 5       | 1\nVMOVUPD (%R9,%RAX,1),%XMM4                      | 1     | 0    | 0    | 0.50 | 0.50 | 0  | 0    | 3       | 0.50\nVADDPD %YMM1,%YMM9,%YMM15                       | 1     | 0    | 1    | 0    | 0    | 0  | 0    | 3       | 1\nVINSERTF128 $0x1,0x10(%R9,%RAX,1),%YMM4,%YMM11  | 2     | 0    | 0    | 0.50 | 0.50 | 0  | 1    | 2       | 1\nVMULPD %YMM5,%YMM11,%YMM6                       | 1     | 1    | 0    | 0    | 0    | 0  | 0    | 5       | 1\nVMOVUPD (%RDI,%RAX,1),%XMM12                    | 1     | 0    | 0    | 0.50 | 0.50 | 0  | 0    | 3       | 0.50\nVINSERTF128 $0x1,0x10(%RDI,%RAX,1),%YMM12,%YMM9 | 2     | 0    | 0    | 0.50 | 0.50 | 0  | 1    | 2       | 1\nADD $0x20,%RAX                                  | 1     | 0.33 | 0.33 | 0    | 0    | 0  | 0.33 | 1       | 0.33\nVSUBPD %YMM6,%YMM15,%YMM14                      | 1     | 0    | 1    | 0    | 0    | 0  | 0    | 3       | 1\nVADDPD %YMM9,%YMM14,%YMM0                       | 1     | 0    | 1    | 0    | 0    | 0  | 0    | 3       | 1\nVMULPD %YMM10,%YMM0,%YMM2                       | 1     | 1    | 0    | 0    | 0    | 0  | 0    | 5       | 1\nVSUBPD %YMM2,%YMM8,%YMM8                        | 1     | 0    | 1    | 0    | 0    | 0  | 0    | 3       | 1\nVMOVLPD %XMM8,(%RCX)                            | 1     | 0    | 0    | 0.50 | 0.50 | 1  | 0    | 3       | 1\nVEXTRACTF128 $0x1,%YMM8,%XMM15                  | 1     | 0    | 0    | 0    | 0    | 0  | 1    | 2       | 1\nVMOVHPD %XMM8,(%RCX,%R8,1)                      | 1     | 0    | 0    | 0.50 | 0.50 | 1  | 0    | 3       | 1\nADD %R12,%RCX                                   | 1     | 0.33 | 0.33 | 0    | 0    | 0  | 0.33 | 1       | 0.33\nVMOVLPD %XMM15,(%RDX)                           | 1     | 0    | 0    | 0.50 | 0.50 | 1  | 0    | 3       | 1\nVMOVHPD %XMM15,(%RDX,%R8,1)                     | 1     | 0    | 0    | 0.50 | 0.50 | 1  | 0    | 3       | 1\nADD %R12,%RDX                                   | 1     | 0.33 | 0.33 | 0    | 0    | 0  | 0.33 | 1       | 0.33\nCMP %RAX,0x148(%RSP)                            | 1     | 0.33 | 0.33 | 0.50 | 0.50 | 0  | 0.33 | 1       | 0.50\nJNE a850 <exact_rhs_._omp_fn.0+0x3500>          | 1     | 0    | 0    | 0    | 0    | 0  | 1    | 0       | 1-2\n",
        },
      },
      header = {
        "42% of peak computational performance is used (3.43 out of 8.00 FLOP per cycle (GFLOPS @ 1GHz))",
      },
      brief = {
      },
      gain = {
        {
          workaround = " - Try to reorganize arrays of structures to structures of arrays\n - Consider to permute loops (see vectorization gain report)\n - To reference allocatable arrays, use \"allocatable\" instead of \"pointer\" pointers or qualify them with the \"contiguous\" attribute (Fortran 2008)\n - For structures, limit to one indirection. For example, use a_b%c instead of a%b%c with a_b set to a%b before this loop\n",
          title = "Code clean check",
          txt = "Detected a slowdown caused by scalar integer instructions (typically used for address computation).\nBy removing them, you can lower the cost of an iteration from 10.50 to 10.00 cycles (1.05x speedup).",
        },
        {
          workaround = " - Try another compiler or update/tune your current one:\n  * recompile with fassociative-math (included in Ofast or ffast-math) to extend loop vectorization to FP reductions.\n - Remove inter-iterations dependences from your loop and make it unit-stride:\n  * If your arrays have 2 or more dimensions, check whether elements are accessed contiguously and, otherwise, try to permute loops accordingly:\nFortran storage order is column-major: do i do j a(i,j) = b(i,j) (slow, non stride 1) => do i do j a(j,i) = b(i,j) (fast, stride 1)\n  * If your loop streams arrays of structures (AoS), try to use structures of arrays instead (SoA):\ndo i a(i)%x = b(i)%x (slow, non stride 1) => do i a%x(i) = b%x(i) (fast, stride 1)\n",
          details = "72% of SSE/AVX instructions are used in vector version (process two or more data elements in vector registers):\n - 71% of SSE/AVX loads are used in vector version.\n - 0% of SSE/AVX stores are used in vector version.\nSince your execution units are vector units, only a fully vectorized loop can use their full power.\n",
          title = "Vectorization",
          txt = "Your loop is partially vectorized.\nOnly 58% of vector register length is used (average across all SSE/AVX instructions).\nBy fully vectorizing your loop, you can lower the cost of an iteration from 10.50 to 6.79 cycles (1.55x speedup).",
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
          details = "These instructions generate more than one micro-operation and only one of them can be decoded during a cycle and the extra micro-operations increase pressure on execution units.\n - VINSERTF128: 5 occurrences\n",
          title = "Complex instructions",
          txt = "Detected COMPLEX INSTRUCTIONS.\n",
        },
        {
          workaround = " - Try to reorganize arrays of structures to structures of arrays\n - Consider to permute loops (see vectorization gain report)\n",
          details = " - Constant unknown stride: 4 occurrence(s)\nNon-unit stride (uncontiguous) accesses are not efficiently using data caches\n",
          title = "Slow data structures access",
          txt = "Detected data structures (typically arrays) that cannot be efficiently read/written",
        },
        {
          workaround = "Use vector aligned instructions:\n 1) The GNU Fortran compiler does not support allocation alignment and does not feature directives to benefit from aligned data.\n 2) Use another compiler or locally use C code (for instance via libraries)\n",
          details = " - VEXTRACTF128: 1 occurrences\n - VINSERTF128: 6 occurrences\n",
          title = "Vector unaligned load/store instructions",
          txt = "Detected 7 optimal vector unaligned load/store instructions.\n",
        },
        {
          title = "Type of elements and instruction set",
          txt = "9 AVX instructions are processing arithmetic or math operations on double precision FP elements in vector mode (four at a time).\n",
        },
        {
          title = "Matching between your loop (in the source code) and the binary loop",
          txt = "The binary loop is composed of 36 FP arithmetical operations:\n - 20: addition or subtraction\n - 16: multiply\nThe binary loop is loading 200 bytes (25 double precision FP elements).\nThe binary loop is storing 32 bytes (4 double precision FP elements).",
        },
        {
          title = "Arithmetic intensity",
          txt = "Arithmetic intensity is 0.16 FP operations per loaded or stored byte.",
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
          txt = "nb instructions    : 34\nnb uops            : 38\nloop length        : 183\nused x86 registers : 11\nused mmx registers : 0\nused xmm registers : 8\nused ymm registers : 14\nused zmm registers : 0\nnb stack references: 1\nADD-SUB / MUL ratio: 1.25\n",
        },
        {
          title = "Front-end",
          txt = "ASSUMED MACRO FUSION\nFIT IN UOP CACHE\nmicro-operation queue: 10.50 cycles\nfront end            : 10.50 cycles\n",
        },
        {
          title = "Back-end",
          txt = "       | P0   | P1   | P2   | P3   | P4   | P5\n-------------------------------------------------\nuops   | 6.00 | 6.00 | 9.50 | 9.50 | 4.00 | 10.00\ncycles | 6.00 | 6.00 | 9.50 | 9.50 | 4.00 | 10.00\n\nCycles executing div or sqrt instructions: NA\nLongest recurrence chain latency (RecMII): 1.00\n",
        },
        {
          title = "Cycles summary",
          txt = "Front-end : 10.50\nDispatch  : 10.00\nData deps.: 1.00\nOverall L1: 10.50\n",
        },
        {
          title = "Vectorization ratios",
          txt = "all     : 72%\nload    : 71%\nstore   : 0%\nmul     : 100%\nadd-sub : 100%\nfma     : NA (no fma vectorizable/vectorized instructions)\ndiv/sqrt: NA (no div/sqrt vectorizable/vectorized instructions)\nother   : 100%\n",
        },
        {
          title = "Vector efficiency ratios",
          txt = "all     : 58%\nload    : 42%\nstore   : 25%\nmul     : 100%\nadd-sub : 100%\nfma     : NA (no fma vectorizable/vectorized instructions)\ndiv/sqrt: NA (no div/sqrt vectorizable/vectorized instructions)\nother   : 50%\n",
        },
        {
          title = "Cycles and memory resources usage",
          txt = "Assuming all data fit into the L1 cache, each iteration of the binary loop takes 10.50 cycles. At this rate:\n - 59% of peak load performance is reached (19.05 out of 32.00 bytes loaded per cycle (GB/s @ 1GHz))\n - 19% of peak store performance is reached (3.05 out of 16.00 bytes stored per cycle (GB/s @ 1GHz))\n",
        },
        {
          title = "Front-end bottlenecks",
          txt = "Performance is limited by instruction throughput (loading/decoding program instructions to execution core) (front-end is a bottleneck).\n\nBy removing all these bottlenecks, you can lower the cost of an iteration from 10.50 to 10.00 cycles (1.05x speedup).\n",
        },
        {
          title = "ASM code",
          txt = "In the binary file, the address of the loop is: a850\n\nInstruction                                     | Nb FU | P0   | P1   | P2   | P3   | P4 | P5   | Latency | Recip. throughput\n-----------------------------------------------------------------------------------------------------------------------------\nVMOVSD (%RDX),%XMM0                             | 1     | 0    | 0    | 0.50 | 0.50 | 0  | 0    | 3       | 0.50\nVMOVSD (%RCX),%XMM1                             | 1     | 0    | 0    | 0.50 | 0.50 | 0  | 0    | 3       | 0.50\nVMOVUPD (%RSI,%RAX,1),%XMM4                     | 1     | 0    | 0    | 0.50 | 0.50 | 0  | 0    | 3       | 0.50\nVINSERTF128 $0x1,0x10(%RSI,%RAX,1),%YMM4,%YMM11 | 2     | 0    | 0    | 0.50 | 0.50 | 0  | 1    | 2       | 1\nVMOVHPD (%RDX,%R8,1),%XMM0,%XMM2                | 1     | 0    | 0    | 0.50 | 0.50 | 0  | 1    | 3       | 1\nVMOVUPD (%R11,%RAX,1),%XMM6                     | 1     | 0    | 0    | 0.50 | 0.50 | 0  | 0    | 3       | 0.50\nVINSERTF128 $0x1,0x10(%R11,%RAX,1),%YMM6,%YMM14 | 2     | 0    | 0    | 0.50 | 0.50 | 0  | 1    | 2       | 1\nVMULPD %YMM5,%YMM14,%YMM12                      | 1     | 1    | 0    | 0    | 0    | 0  | 0    | 5       | 1\nVSUBPD %YMM12,%YMM11,%YMM9                      | 1     | 0    | 1    | 0    | 0    | 0  | 0    | 3       | 1\nVMOVHPD (%RCX,%R8,1),%XMM1,%XMM15               | 1     | 0    | 0    | 0.50 | 0.50 | 0  | 1    | 3       | 1\nVMOVUPD (%R10,%RAX,1),%XMM0                     | 1     | 0    | 0    | 0.50 | 0.50 | 0  | 0    | 3       | 0.50\nVINSERTF128 $0x1,%XMM2,%YMM15,%YMM8             | 1     | 0    | 0    | 0    | 0    | 0  | 1    | 2       | 1\nVINSERTF128 $0x1,0x10(%R10,%RAX,1),%YMM0,%YMM2  | 2     | 0    | 0    | 0.50 | 0.50 | 0  | 1    | 2       | 1\nVMULPD %YMM7,%YMM2,%YMM1                        | 1     | 1    | 0    | 0    | 0    | 0  | 0    | 5       | 1\nVMOVUPD (%R9,%RAX,1),%XMM4                      | 1     | 0    | 0    | 0.50 | 0.50 | 0  | 0    | 3       | 0.50\nVADDPD %YMM1,%YMM9,%YMM15                       | 1     | 0    | 1    | 0    | 0    | 0  | 0    | 3       | 1\nVINSERTF128 $0x1,0x10(%R9,%RAX,1),%YMM4,%YMM11  | 2     | 0    | 0    | 0.50 | 0.50 | 0  | 1    | 2       | 1\nVMULPD %YMM5,%YMM11,%YMM6                       | 1     | 1    | 0    | 0    | 0    | 0  | 0    | 5       | 1\nVMOVUPD (%RDI,%RAX,1),%XMM12                    | 1     | 0    | 0    | 0.50 | 0.50 | 0  | 0    | 3       | 0.50\nVINSERTF128 $0x1,0x10(%RDI,%RAX,1),%YMM12,%YMM9 | 2     | 0    | 0    | 0.50 | 0.50 | 0  | 1    | 2       | 1\nADD $0x20,%RAX                                  | 1     | 0.33 | 0.33 | 0    | 0    | 0  | 0.33 | 1       | 0.33\nVSUBPD %YMM6,%YMM15,%YMM14                      | 1     | 0    | 1    | 0    | 0    | 0  | 0    | 3       | 1\nVADDPD %YMM9,%YMM14,%YMM0                       | 1     | 0    | 1    | 0    | 0    | 0  | 0    | 3       | 1\nVMULPD %YMM10,%YMM0,%YMM2                       | 1     | 1    | 0    | 0    | 0    | 0  | 0    | 5       | 1\nVSUBPD %YMM2,%YMM8,%YMM8                        | 1     | 0    | 1    | 0    | 0    | 0  | 0    | 3       | 1\nVMOVLPD %XMM8,(%RCX)                            | 1     | 0    | 0    | 0.50 | 0.50 | 1  | 0    | 3       | 1\nVEXTRACTF128 $0x1,%YMM8,%XMM15                  | 1     | 0    | 0    | 0    | 0    | 0  | 1    | 2       | 1\nVMOVHPD %XMM8,(%RCX,%R8,1)                      | 1     | 0    | 0    | 0.50 | 0.50 | 1  | 0    | 3       | 1\nADD %R12,%RCX                                   | 1     | 0.33 | 0.33 | 0    | 0    | 0  | 0.33 | 1       | 0.33\nVMOVLPD %XMM15,(%RDX)                           | 1     | 0    | 0    | 0.50 | 0.50 | 1  | 0    | 3       | 1\nVMOVHPD %XMM15,(%RDX,%R8,1)                     | 1     | 0    | 0    | 0.50 | 0.50 | 1  | 0    | 3       | 1\nADD %R12,%RDX                                   | 1     | 0.33 | 0.33 | 0    | 0    | 0  | 0.33 | 1       | 0.33\nCMP %RAX,0x148(%RSP)                            | 1     | 0.33 | 0.33 | 0.50 | 0.50 | 0  | 0.33 | 1       | 0.50\nJNE a850 <exact_rhs_._omp_fn.0+0x3500>          | 1     | 0    | 0    | 0    | 0    | 0  | 1    | 0       | 1-2\n",
        },
      },
      header = {
        "42% of peak computational performance is used (3.43 out of 8.00 FLOP per cycle (GFLOPS @ 1GHz))",
      },
      brief = {
      },
      gain = {
        {
          workaround = " - Try to reorganize arrays of structures to structures of arrays\n - Consider to permute loops (see vectorization gain report)\n - To reference allocatable arrays, use \"allocatable\" instead of \"pointer\" pointers or qualify them with the \"contiguous\" attribute (Fortran 2008)\n - For structures, limit to one indirection. For example, use a_b%c instead of a%b%c with a_b set to a%b before this loop\n",
          title = "Code clean check",
          txt = "Detected a slowdown caused by scalar integer instructions (typically used for address computation).\nBy removing them, you can lower the cost of an iteration from 10.50 to 10.00 cycles (1.05x speedup).",
        },
        {
          workaround = " - Try another compiler or update/tune your current one:\n  * recompile with fassociative-math (included in Ofast or ffast-math) to extend loop vectorization to FP reductions.\n - Remove inter-iterations dependences from your loop and make it unit-stride:\n  * If your arrays have 2 or more dimensions, check whether elements are accessed contiguously and, otherwise, try to permute loops accordingly:\nFortran storage order is column-major: do i do j a(i,j) = b(i,j) (slow, non stride 1) => do i do j a(j,i) = b(i,j) (fast, stride 1)\n  * If your loop streams arrays of structures (AoS), try to use structures of arrays instead (SoA):\ndo i a(i)%x = b(i)%x (slow, non stride 1) => do i a%x(i) = b%x(i) (fast, stride 1)\n",
          details = "72% of SSE/AVX instructions are used in vector version (process two or more data elements in vector registers):\n - 71% of SSE/AVX loads are used in vector version.\n - 0% of SSE/AVX stores are used in vector version.\nSince your execution units are vector units, only a fully vectorized loop can use their full power.\n",
          title = "Vectorization",
          txt = "Your loop is partially vectorized.\nOnly 58% of vector register length is used (average across all SSE/AVX instructions).\nBy fully vectorizing your loop, you can lower the cost of an iteration from 10.50 to 6.79 cycles (1.55x speedup).",
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
      "The loop is defined in /users/user2210/NPB3.4-MZ-MPI/BT-MZ/exact_rhs.f90:321.\n",
      "The related source loop is multi-versionned.",
    },
    nb_paths = 1,
  },
}
