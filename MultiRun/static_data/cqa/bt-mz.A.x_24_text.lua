_cqa_text_report = {
  paths = {
    {
      hint = {
        {
          details = "These instructions generate more than one micro-operation and only one of them can be decoded during a cycle and the extra micro-operations increase pressure on execution units.\n - ADD: 1 occurrences\n - VEXTRACTF128: 4 occurrences\n",
          title = "Complex instructions",
          txt = "Detected COMPLEX INSTRUCTIONS.\n",
        },
        {
          workaround = "Use vector aligned instructions:\n 1) The GNU Fortran compiler does not support allocation alignment and does not feature directives to benefit from aligned data.\n 2) Use another compiler or locally use C code (for instance via libraries)\n",
          details = " - VEXTRACTF128: 4 occurrences\n - VMOVUPS: 32 occurrences\n",
          title = "Vector unaligned load/store instructions",
          txt = "Detected 36 optimal vector unaligned load/store instructions.\n",
        },
        {
          title = "Type of elements and instruction set",
          txt = "No instructions are processing arithmetic or math operations on FP elements. This loop is probably writing/copying data or processing integer elements.",
        },
        {
          title = "Matching between your loop (in the source code) and the binary loop",
          txt = "The binary loop does not contain any FP arithmetical operations.\nThe binary loop is loading 32 bytes.\nThe binary loop is storing 604 bytes.",
        },
      },
      expert = {
        {
          title = "General properties",
          txt = "nb instructions    : 91\nnb uops            : 96\nloop length        : 431\nused x86 registers : 15\nused mmx registers : 0\nused xmm registers : 2\nused ymm registers : 1\nused zmm registers : 0\nnb stack references: 5\n",
        },
        {
          title = "Front-end",
          txt = "MACRO FUSION NOT POSSIBLE\nFIT IN UOP CACHE\nmicro-operation queue: 26.00 cycles\nfront end            : 26.00 cycles\n",
        },
        {
          title = "Back-end",
          txt = "       | P0    | P1    | P2    | P3    | P4    | P5\n------------------------------------------------------\nuops   | 16.00 | 16.00 | 23.00 | 23.00 | 40.00 | 16.00\ncycles | 16.00 | 16.00 | 23.00 | 23.00 | 40.00 | 16.00\n\nCycles executing div or sqrt instructions: NA\n",
        },
        {
          title = "Cycles summary",
          txt = "Front-end : 26.00\nDispatch  : 40.00\nOverall L1: 40.00\n",
        },
        {
          title = "Vectorization ratios",
          txt = "INT\nall    : 0%\nload   : 0%\nstore  : NA (no store vectorizable/vectorized instructions)\nmul    : NA (no mul vectorizable/vectorized instructions)\nadd-sub: 0%\nfma    : NA (no fma vectorizable/vectorized instructions)\nother  : 0%\nFP\nall     : 90%\nload    : 0%\nstore   : 92%\nmul     : NA (no mul vectorizable/vectorized instructions)\nadd-sub : NA (no add-sub vectorizable/vectorized instructions)\nfma     : NA (no fma vectorizable/vectorized instructions)\ndiv/sqrt: NA (no div/sqrt vectorizable/vectorized instructions)\nother   : NA (no other vectorizable/vectorized instructions)\nINT+FP\nall     : 67%\nload    : 0%\nstore   : 92%\nmul     : NA (no mul vectorizable/vectorized instructions)\nadd-sub : 0%\nfma     : NA (no fma vectorizable/vectorized instructions)\ndiv/sqrt: NA (no div/sqrt vectorizable/vectorized instructions)\nother   : 0%\n",
        },
        {
          title = "Vector efficiency ratios",
          txt = "INT\nall    : 32%\nload   : 33%\nstore  : NA (no store vectorizable/vectorized instructions)\nmul    : NA (no mul vectorizable/vectorized instructions)\nadd-sub: 25%\nfma    : NA (no fma vectorizable/vectorized instructions)\nother  : 32%\nFP\nall     : 47%\nload    : 25%\nstore   : 48%\nmul     : NA (no mul vectorizable/vectorized instructions)\nadd-sub : NA (no add-sub vectorizable/vectorized instructions)\nfma     : NA (no fma vectorizable/vectorized instructions)\ndiv/sqrt: NA (no div/sqrt vectorizable/vectorized instructions)\nother   : NA (no other vectorizable/vectorized instructions)\nINT+FP\nall     : 43%\nload    : 31%\nstore   : 48%\nmul     : NA (no mul vectorizable/vectorized instructions)\nadd-sub : 25%\nfma     : NA (no fma vectorizable/vectorized instructions)\ndiv/sqrt: NA (no div/sqrt vectorizable/vectorized instructions)\nother   : 32%\n",
        },
        {
          title = "Cycles and memory resources usage",
          txt = "Assuming all data fit into the L1 cache, each iteration of the binary loop takes 40.00 cycles. At this rate:\n - 2% of peak load performance is reached (0.80 out of 32.00 bytes loaded per cycle (GB/s @ 1GHz))\n - 94% of peak store performance is reached (15.10 out of 16.00 bytes stored per cycle (GB/s @ 1GHz))\n",
        },
        {
          title = "Front-end bottlenecks",
          txt = "Found no such bottlenecks.",
        },
        {
          title = "ASM code",
          txt = "In the binary file, the address of the loop is: 4b70\n\nInstruction                               | Nb FU | P0   | P1   | P2   | P3   | P4 | P5   | Latency | Recip. throughput\n-----------------------------------------------------------------------------------------------------------------------\nMOV %R13,%RSI                             | 1     | 0.33 | 0.33 | 0    | 0    | 0  | 0.33 | 1       | 0.33\nMOVSXD %EDI,%RDX                          | 1     | 0.33 | 0.33 | 0    | 0    | 0  | 0.33 | 1       | 0.33\nIMUL %R15,%RSI                            | 1     | 0    | 1    | 0    | 0    | 0  | 0    | 3       | 1\nIMUL 0x48(%RSP),%RDX                      | 1     | 0    | 1    | 0.50 | 0.50 | 0  | 0    | 3       | 1\nLEA (%RSI,%R11,1),%RAX                    | 1     | 0.50 | 0.50 | 0    | 0    | 0  | 0    | 1       | 0.50\nADD %RAX,%RDX                             | 1     | 0.33 | 0.33 | 0    | 0    | 0  | 0.33 | 1       | 0.33\nCMP $0x2,%R14D                            | 1     | 0.33 | 0.33 | 0    | 0    | 0  | 0.33 | 1       | 0.33\nJBE 688c <initialize_._omp_fn.0+0x215c>   | 1     | 0    | 0    | 0    | 0    | 0  | 1    | 0       | 1-2\nLEA -0xa0(%RBX),%RSI                      | 1     | 0.50 | 0.50 | 0    | 0    | 0  | 0    | 1       | 0.50\nLEA 0x8(%RCX,%RDX,8),%RAX                 | 1     | 0    | 1    | 0    | 0    | 0  | 0    | 3       | 1\nSHR $0x5,%RSI                             | 1     | 0.50 | 0    | 0    | 0    | 0  | 0.50 | 1       | 0.50\nLEA (%RBX,%RAX,1),%R10                    | 1     | 0.50 | 0.50 | 0    | 0    | 0  | 0    | 1       | 0.50\nADD $0x1,%RSI                             | 1     | 0.33 | 0.33 | 0    | 0    | 0  | 0.33 | 1       | 0.33\nAND $0x3,%ESI                             | 1     | 0.33 | 0.33 | 0    | 0    | 0  | 0.33 | 1       | 0.33\nJE 4c72 <initialize_._omp_fn.0+0x542>     | 1     | 0    | 0    | 0    | 0    | 0  | 1    | 0       | 1-2\nCMP $0x1,%RSI                             | 1     | 0.33 | 0.33 | 0    | 0    | 0  | 0.33 | 1       | 0.33\nJE 4c30 <initialize_._omp_fn.0+0x500>     | 1     | 0    | 0    | 0    | 0    | 0  | 1    | 0       | 1-2\nCMP $0x2,%RSI                             | 1     | 0.33 | 0.33 | 0    | 0    | 0  | 0.33 | 1       | 0.33\nJE 4bf7 <initialize_._omp_fn.0+0x4c7>     | 1     | 0    | 0    | 0    | 0    | 0  | 1    | 0       | 1-2\nVMOVUPS %XMM4,(%RAX)                      | 1     | 0    | 0    | 0.50 | 0.50 | 1  | 0    | 3       | 1\nVEXTRACTF128 $0x1,%YMM4,0x10(%RAX)        | 2     | 0    | 0    | 0.50 | 0.50 | 1  | 0    | 2       | 1\nADD $0xa0,%RAX                            | 1     | 0.33 | 0.33 | 0    | 0    | 0  | 0.33 | 1       | 0.33\nVMOVUPS %XMM4,-0x80(%RAX)                 | 1     | 0    | 0    | 0.50 | 0.50 | 1  | 0    | 3       | 1\nVMOVUPS %XMM4,-0x70(%RAX)                 | 1     | 0    | 0    | 0.50 | 0.50 | 1  | 0    | 3       | 1\nVMOVUPS %XMM4,-0x60(%RAX)                 | 1     | 0    | 0    | 0.50 | 0.50 | 1  | 0    | 3       | 1\nVMOVUPS %XMM4,-0x50(%RAX)                 | 1     | 0    | 0    | 0.50 | 0.50 | 1  | 0    | 3       | 1\nVMOVUPS %XMM4,-0x40(%RAX)                 | 1     | 0    | 0    | 0.50 | 0.50 | 1  | 0    | 3       | 1\nVMOVUPS %XMM4,-0x30(%RAX)                 | 1     | 0    | 0    | 0.50 | 0.50 | 1  | 0    | 3       | 1\nVMOVUPS %XMM4,-0x20(%RAX)                 | 1     | 0    | 0    | 0.50 | 0.50 | 1  | 0    | 3       | 1\nVMOVUPS %XMM4,-0x10(%RAX)                 | 1     | 0    | 0    | 0.50 | 0.50 | 1  | 0    | 3       | 1\nVMOVUPS %XMM4,(%RAX)                      | 1     | 0    | 0    | 0.50 | 0.50 | 1  | 0    | 3       | 1\nVEXTRACTF128 $0x1,%YMM4,0x10(%RAX)        | 2     | 0    | 0    | 0.50 | 0.50 | 1  | 0    | 2       | 1\nADD $0xa0,%RAX                            | 1     | 0.33 | 0.33 | 0    | 0    | 0  | 0.33 | 1       | 0.33\nVMOVUPS %XMM4,-0x80(%RAX)                 | 1     | 0    | 0    | 0.50 | 0.50 | 1  | 0    | 3       | 1\nVMOVUPS %XMM4,-0x70(%RAX)                 | 1     | 0    | 0    | 0.50 | 0.50 | 1  | 0    | 3       | 1\nVMOVUPS %XMM4,-0x60(%RAX)                 | 1     | 0    | 0    | 0.50 | 0.50 | 1  | 0    | 3       | 1\nVMOVUPS %XMM4,-0x50(%RAX)                 | 1     | 0    | 0    | 0.50 | 0.50 | 1  | 0    | 3       | 1\nVMOVUPS %XMM4,-0x40(%RAX)                 | 1     | 0    | 0    | 0.50 | 0.50 | 1  | 0    | 3       | 1\nVMOVUPS %XMM4,-0x30(%RAX)                 | 1     | 0    | 0    | 0.50 | 0.50 | 1  | 0    | 3       | 1\nVMOVUPS %XMM4,-0x20(%RAX)                 | 1     | 0    | 0    | 0.50 | 0.50 | 1  | 0    | 3       | 1\nVMOVUPS %XMM4,-0x10(%RAX)                 | 1     | 0    | 0    | 0.50 | 0.50 | 1  | 0    | 3       | 1\nVMOVUPS %XMM4,(%RAX)                      | 1     | 0    | 0    | 0.50 | 0.50 | 1  | 0    | 3       | 1\nVEXTRACTF128 $0x1,%YMM4,0x10(%RAX)        | 2     | 0    | 0    | 0.50 | 0.50 | 1  | 0    | 2       | 1\nADD $0xa0,%RAX                            | 1     | 0.33 | 0.33 | 0    | 0    | 0  | 0.33 | 1       | 0.33\nVMOVUPS %XMM4,-0x80(%RAX)                 | 1     | 0    | 0    | 0.50 | 0.50 | 1  | 0    | 3       | 1\nVMOVUPS %XMM4,-0x70(%RAX)                 | 1     | 0    | 0    | 0.50 | 0.50 | 1  | 0    | 3       | 1\nVMOVUPS %XMM4,-0x60(%RAX)                 | 1     | 0    | 0    | 0.50 | 0.50 | 1  | 0    | 3       | 1\nVMOVUPS %XMM4,-0x50(%RAX)                 | 1     | 0    | 0    | 0.50 | 0.50 | 1  | 0    | 3       | 1\nVMOVUPS %XMM4,-0x40(%RAX)                 | 1     | 0    | 0    | 0.50 | 0.50 | 1  | 0    | 3       | 1\nVMOVUPS %XMM4,-0x30(%RAX)                 | 1     | 0    | 0    | 0.50 | 0.50 | 1  | 0    | 3       | 1\nVMOVUPS %XMM4,-0x20(%RAX)                 | 1     | 0    | 0    | 0.50 | 0.50 | 1  | 0    | 3       | 1\nVMOVUPS %XMM4,-0x10(%RAX)                 | 1     | 0    | 0    | 0.50 | 0.50 | 1  | 0    | 3       | 1\nCMP %RAX,%R10                             | 1     | 0.33 | 0.33 | 0    | 0    | 0  | 0.33 | 1       | 0.33\nJE 4da7 <initialize_._omp_fn.0+0x677>     | 1     | 0    | 0    | 0    | 0    | 0  | 1    | 0       | 1-2\nMOV %R12D,%EAX                            | 1     | 0.33 | 0.33 | 0    | 0    | 0  | 0.33 | 1       | 0.33\nCMP %R12D,%R9D                            | 1     | 0.33 | 0.33 | 0    | 0    | 0  | 0.33 | 1       | 0.33\nJE 4e15 <initialize_._omp_fn.0+0x6e5>     | 1     | 0    | 0    | 0    | 0    | 0  | 1    | 0       | 1-2\nVMOVSD 0x98(%RSP),%XMM3                   | 1     | 0    | 0    | 0.50 | 0.50 | 0  | 0    | 3       | 0.50\nMOVSXD %EAX,%R10                          | 1     | 0.33 | 0.33 | 0    | 0    | 0  | 0.33 | 1       | 0.33\nLEA (%R10,%R10,4),%R10                    | 1     | 0.50 | 0.50 | 0    | 0    | 0  | 0    | 1       | 0.50\nLEA (%RDX,%R10,1),%RSI                    | 1     | 0.50 | 0.50 | 0    | 0    | 0  | 0    | 1       | 0.50\nVMOVUPS %XMM4,0x8(%RCX,%RSI,8)            | 1     | 0    | 0    | 0.50 | 0.50 | 1  | 0    | 3       | 1\nVEXTRACTF128 $0x1,%YMM4,0x18(%RCX,%RSI,8) | 2     | 0    | 0    | 0.50 | 0.50 | 1  | 0    | 2       | 1\nVMOVSD %XMM3,0x28(%RCX,%RSI,8)            | 1     | 0    | 0    | 0.50 | 0.50 | 1  | 0    | 3       | 1\nLEA 0x1(%RAX),%ESI                        | 1     | 0.50 | 0.50 | 0    | 0    | 0  | 0    | 1       | 0.50\nCMP %ESI,%R9D                             | 1     | 0.33 | 0.33 | 0    | 0    | 0  | 0.33 | 1       | 0.33\nJLE 4e15 <initialize_._omp_fn.0+0x6e5>    | 1     | 0    | 0    | 0    | 0    | 0  | 1    | 0       | 1-2\nLEA 0x5(%RDX,%R10,1),%RSI                 | 1     | 0    | 1    | 0    | 0    | 0  | 0    | 3       | 1\nADD $0x2,%EAX                             | 1     | 0.33 | 0.33 | 0    | 0    | 0  | 0.33 | 1       | 0.33\nVMOVUPS %XMM4,0x8(%RCX,%RSI,8)            | 1     | 0    | 0    | 0.50 | 0.50 | 1  | 0    | 3       | 1\nVMOVUPS %XMM4,0x18(%RCX,%RSI,8)           | 1     | 0    | 0    | 0.50 | 0.50 | 1  | 0    | 3       | 1\nVMOVSD %XMM3,0x28(%RCX,%RSI,8)            | 1     | 0    | 0    | 0.50 | 0.50 | 1  | 0    | 3       | 1\nCMP %EAX,%R9D                             | 1     | 0.33 | 0.33 | 0    | 0    | 0  | 0.33 | 1       | 0.33\nJLE 4e15 <initialize_._omp_fn.0+0x6e5>    | 1     | 0    | 0    | 0    | 0    | 0  | 1    | 0       | 1-2\nLEA 0xa(%RDX,%R10,1),%RDX                 | 1     | 0    | 1    | 0    | 0    | 0  | 0    | 3       | 1\nVMOVUPS %XMM4,0x8(%RCX,%RDX,8)            | 1     | 0    | 0    | 0.50 | 0.50 | 1  | 0    | 3       | 1\nVMOVUPS %XMM4,0x18(%RCX,%RDX,8)           | 1     | 0    | 0    | 0.50 | 0.50 | 1  | 0    | 3       | 1\nVMOVSD %XMM3,0x28(%RCX,%RDX,8)            | 1     | 0    | 0    | 0.50 | 0.50 | 1  | 0    | 3       | 1\nCMP %R8D,0x28(%RSP)                       | 1     | 0.33 | 0.33 | 0.50 | 0.50 | 0  | 0.33 | 1       | 0.50\nJE 63da <initialize_._omp_fn.0+0x1caa>    | 1     | 0    | 0    | 0    | 0    | 0  | 1    | 0       | 1-2\nADD $0x1,%EDI                             | 1     | 0.33 | 0.33 | 0    | 0    | 0  | 0.33 | 1       | 0.33\nCMP %EDI,0x3c(%RSP)                       | 1     | 0.33 | 0.33 | 0.50 | 0.50 | 0  | 0.33 | 1       | 0.50\nJLE 63c3 <initialize_._omp_fn.0+0x1c93>   | 1     | 0    | 0    | 0    | 0    | 0  | 1    | 0       | 1-2\nADD $0x1,%R8D                             | 1     | 0.33 | 0.33 | 0    | 0    | 0  | 0.33 | 1       | 0.33\nJMP 4b70 <initialize_._omp_fn.0+0x440>    | 1     | 0    | 0    | 0    | 0    | 0  | 1    | 0       | 2\nADDL $0x1,0x90(%RSP)                      | 2     | 0.33 | 0.33 | 1    | 1    | 1  | 0.33 | 6       | 1\nXOR %EDI,%EDI                             | 1     | 0    | 0    | 0    | 0    | 0  | 0    | 0       | 0.25\nMOVSXD 0x90(%RSP),%R13                    | 1     | 0    | 0    | 0.50 | 0.50 | 0  | 0    | 1       | 0.50\nJMP 4e2d <initialize_._omp_fn.0+0x6fd>    | 1     | 0    | 0    | 0    | 0    | 0  | 1    | 0       | 2\nXOR %EAX,%EAX                             | 1     | 0    | 0    | 0    | 0    | 0  | 0    | 0       | 0.25\nJMP 4daf <initialize_._omp_fn.0+0x67f>    | 1     | 0    | 0    | 0    | 0    | 0  | 1    | 0       | 2\n",
        },
      },
      header = {
        "0% of peak computational performance is used (0.00 out of 2.00 FLOP per cycle (GFLOPS @ 1GHz))",
      },
      brief = {
      },
      gain = {
        {
          workaround = " - Try another compiler or update/tune your current one:\n  * recompile with fassociative-math (included in Ofast or ffast-math) to extend loop vectorization to FP reductions.\n - Remove inter-iterations dependences from your loop and make it unit-stride:\n  * If your arrays have 2 or more dimensions, check whether elements are accessed contiguously and, otherwise, try to permute loops accordingly:\nFortran storage order is column-major: do i do j a(i,j) = b(i,j) (slow, non stride 1) => do i do j a(j,i) = b(i,j) (fast, stride 1)\n  * If your loop streams arrays of structures (AoS), try to use structures of arrays instead (SoA):\ndo i a(i)%x = b(i)%x (slow, non stride 1) => do i a%x(i) = b%x(i) (fast, stride 1)\n",
          details = "67% of SSE/AVX instructions are used in vector version (process two or more data elements in vector registers):\n - 0% of SSE/AVX loads are used in vector version.\n - 92% of SSE/AVX stores are used in vector version.\n - 0% of SSE/AVX addition or subtraction instructions are used in vector version.\n - 0% of SSE/AVX instructions that are not load, store, addition, subtraction nor multiply instructions are used in vector version.\nSince your execution units are vector units, only a fully vectorized loop can use their full power.\n",
          title = "Vectorization",
          txt = "Your loop is partially vectorized.\nOnly 43% of vector register length is used (average across all SSE/AVX instructions).\nBy fully vectorizing your loop, you can lower the cost of an iteration from 40.00 to 37.75 cycles (1.06x speedup).",
        },
        {
          workaround = " - Write less array elements\n - Provide more information to your compiler:\n  * hardcode the bounds of the corresponding 'for' loop\n",
          title = "Execution units bottlenecks",
          txt = "Performance is limited by writing data to caches/RAM (the store unit is a bottleneck).\n\nBy removing all these bottlenecks, you can lower the cost of an iteration from 40.00 to 26.00 cycles (1.54x speedup).\n",
        },
      },
      potential = {
      },
    },
  },
  AVG = {
      hint = {
        {
          details = "These instructions generate more than one micro-operation and only one of them can be decoded during a cycle and the extra micro-operations increase pressure on execution units.\n - ADD: 1 occurrences\n - VEXTRACTF128: 4 occurrences\n",
          title = "Complex instructions",
          txt = "Detected COMPLEX INSTRUCTIONS.\n",
        },
        {
          workaround = "Use vector aligned instructions:\n 1) The GNU Fortran compiler does not support allocation alignment and does not feature directives to benefit from aligned data.\n 2) Use another compiler or locally use C code (for instance via libraries)\n",
          details = " - VEXTRACTF128: 4 occurrences\n - VMOVUPS: 32 occurrences\n",
          title = "Vector unaligned load/store instructions",
          txt = "Detected 36 optimal vector unaligned load/store instructions.\n",
        },
        {
          title = "Type of elements and instruction set",
          txt = "No instructions are processing arithmetic or math operations on FP elements. This loop is probably writing/copying data or processing integer elements.",
        },
        {
          title = "Matching between your loop (in the source code) and the binary loop",
          txt = "The binary loop does not contain any FP arithmetical operations.\nThe binary loop is loading 32 bytes.\nThe binary loop is storing 604 bytes.",
        },
      },
      expert = {
        {
          title = "General properties",
          txt = "nb instructions    : 91\nnb uops            : 96\nloop length        : 431\nused x86 registers : 15\nused mmx registers : 0\nused xmm registers : 2\nused ymm registers : 1\nused zmm registers : 0\nnb stack references: 5\n",
        },
        {
          title = "Front-end",
          txt = "MACRO FUSION NOT POSSIBLE\nFIT IN UOP CACHE\nmicro-operation queue: 26.00 cycles\nfront end            : 26.00 cycles\n",
        },
        {
          title = "Back-end",
          txt = "       | P0    | P1    | P2    | P3    | P4    | P5\n------------------------------------------------------\nuops   | 16.00 | 16.00 | 23.00 | 23.00 | 40.00 | 16.00\ncycles | 16.00 | 16.00 | 23.00 | 23.00 | 40.00 | 16.00\n\nCycles executing div or sqrt instructions: NA\n",
        },
        {
          title = "Cycles summary",
          txt = "Front-end : 26.00\nDispatch  : 40.00\nOverall L1: 40.00\n",
        },
        {
          title = "Vectorization ratios",
          txt = "INT\nall    : 0%\nload   : 0%\nstore  : NA (no store vectorizable/vectorized instructions)\nmul    : NA (no mul vectorizable/vectorized instructions)\nadd-sub: 0%\nfma    : NA (no fma vectorizable/vectorized instructions)\nother  : 0%\nFP\nall     : 90%\nload    : 0%\nstore   : 92%\nmul     : NA (no mul vectorizable/vectorized instructions)\nadd-sub : NA (no add-sub vectorizable/vectorized instructions)\nfma     : NA (no fma vectorizable/vectorized instructions)\ndiv/sqrt: NA (no div/sqrt vectorizable/vectorized instructions)\nother   : NA (no other vectorizable/vectorized instructions)\nINT+FP\nall     : 67%\nload    : 0%\nstore   : 92%\nmul     : NA (no mul vectorizable/vectorized instructions)\nadd-sub : 0%\nfma     : NA (no fma vectorizable/vectorized instructions)\ndiv/sqrt: NA (no div/sqrt vectorizable/vectorized instructions)\nother   : 0%\n",
        },
        {
          title = "Vector efficiency ratios",
          txt = "INT\nall    : 32%\nload   : 33%\nstore  : NA (no store vectorizable/vectorized instructions)\nmul    : NA (no mul vectorizable/vectorized instructions)\nadd-sub: 25%\nfma    : NA (no fma vectorizable/vectorized instructions)\nother  : 32%\nFP\nall     : 47%\nload    : 25%\nstore   : 48%\nmul     : NA (no mul vectorizable/vectorized instructions)\nadd-sub : NA (no add-sub vectorizable/vectorized instructions)\nfma     : NA (no fma vectorizable/vectorized instructions)\ndiv/sqrt: NA (no div/sqrt vectorizable/vectorized instructions)\nother   : NA (no other vectorizable/vectorized instructions)\nINT+FP\nall     : 43%\nload    : 31%\nstore   : 48%\nmul     : NA (no mul vectorizable/vectorized instructions)\nadd-sub : 25%\nfma     : NA (no fma vectorizable/vectorized instructions)\ndiv/sqrt: NA (no div/sqrt vectorizable/vectorized instructions)\nother   : 32%\n",
        },
        {
          title = "Cycles and memory resources usage",
          txt = "Assuming all data fit into the L1 cache, each iteration of the binary loop takes 40.00 cycles. At this rate:\n - 2% of peak load performance is reached (0.80 out of 32.00 bytes loaded per cycle (GB/s @ 1GHz))\n - 94% of peak store performance is reached (15.10 out of 16.00 bytes stored per cycle (GB/s @ 1GHz))\n",
        },
        {
          title = "Front-end bottlenecks",
          txt = "Found no such bottlenecks.",
        },
        {
          title = "ASM code",
          txt = "In the binary file, the address of the loop is: 4b70\n\nInstruction                               | Nb FU | P0   | P1   | P2   | P3   | P4 | P5   | Latency | Recip. throughput\n-----------------------------------------------------------------------------------------------------------------------\nMOV %R13,%RSI                             | 1     | 0.33 | 0.33 | 0    | 0    | 0  | 0.33 | 1       | 0.33\nMOVSXD %EDI,%RDX                          | 1     | 0.33 | 0.33 | 0    | 0    | 0  | 0.33 | 1       | 0.33\nIMUL %R15,%RSI                            | 1     | 0    | 1    | 0    | 0    | 0  | 0    | 3       | 1\nIMUL 0x48(%RSP),%RDX                      | 1     | 0    | 1    | 0.50 | 0.50 | 0  | 0    | 3       | 1\nLEA (%RSI,%R11,1),%RAX                    | 1     | 0.50 | 0.50 | 0    | 0    | 0  | 0    | 1       | 0.50\nADD %RAX,%RDX                             | 1     | 0.33 | 0.33 | 0    | 0    | 0  | 0.33 | 1       | 0.33\nCMP $0x2,%R14D                            | 1     | 0.33 | 0.33 | 0    | 0    | 0  | 0.33 | 1       | 0.33\nJBE 688c <initialize_._omp_fn.0+0x215c>   | 1     | 0    | 0    | 0    | 0    | 0  | 1    | 0       | 1-2\nLEA -0xa0(%RBX),%RSI                      | 1     | 0.50 | 0.50 | 0    | 0    | 0  | 0    | 1       | 0.50\nLEA 0x8(%RCX,%RDX,8),%RAX                 | 1     | 0    | 1    | 0    | 0    | 0  | 0    | 3       | 1\nSHR $0x5,%RSI                             | 1     | 0.50 | 0    | 0    | 0    | 0  | 0.50 | 1       | 0.50\nLEA (%RBX,%RAX,1),%R10                    | 1     | 0.50 | 0.50 | 0    | 0    | 0  | 0    | 1       | 0.50\nADD $0x1,%RSI                             | 1     | 0.33 | 0.33 | 0    | 0    | 0  | 0.33 | 1       | 0.33\nAND $0x3,%ESI                             | 1     | 0.33 | 0.33 | 0    | 0    | 0  | 0.33 | 1       | 0.33\nJE 4c72 <initialize_._omp_fn.0+0x542>     | 1     | 0    | 0    | 0    | 0    | 0  | 1    | 0       | 1-2\nCMP $0x1,%RSI                             | 1     | 0.33 | 0.33 | 0    | 0    | 0  | 0.33 | 1       | 0.33\nJE 4c30 <initialize_._omp_fn.0+0x500>     | 1     | 0    | 0    | 0    | 0    | 0  | 1    | 0       | 1-2\nCMP $0x2,%RSI                             | 1     | 0.33 | 0.33 | 0    | 0    | 0  | 0.33 | 1       | 0.33\nJE 4bf7 <initialize_._omp_fn.0+0x4c7>     | 1     | 0    | 0    | 0    | 0    | 0  | 1    | 0       | 1-2\nVMOVUPS %XMM4,(%RAX)                      | 1     | 0    | 0    | 0.50 | 0.50 | 1  | 0    | 3       | 1\nVEXTRACTF128 $0x1,%YMM4,0x10(%RAX)        | 2     | 0    | 0    | 0.50 | 0.50 | 1  | 0    | 2       | 1\nADD $0xa0,%RAX                            | 1     | 0.33 | 0.33 | 0    | 0    | 0  | 0.33 | 1       | 0.33\nVMOVUPS %XMM4,-0x80(%RAX)                 | 1     | 0    | 0    | 0.50 | 0.50 | 1  | 0    | 3       | 1\nVMOVUPS %XMM4,-0x70(%RAX)                 | 1     | 0    | 0    | 0.50 | 0.50 | 1  | 0    | 3       | 1\nVMOVUPS %XMM4,-0x60(%RAX)                 | 1     | 0    | 0    | 0.50 | 0.50 | 1  | 0    | 3       | 1\nVMOVUPS %XMM4,-0x50(%RAX)                 | 1     | 0    | 0    | 0.50 | 0.50 | 1  | 0    | 3       | 1\nVMOVUPS %XMM4,-0x40(%RAX)                 | 1     | 0    | 0    | 0.50 | 0.50 | 1  | 0    | 3       | 1\nVMOVUPS %XMM4,-0x30(%RAX)                 | 1     | 0    | 0    | 0.50 | 0.50 | 1  | 0    | 3       | 1\nVMOVUPS %XMM4,-0x20(%RAX)                 | 1     | 0    | 0    | 0.50 | 0.50 | 1  | 0    | 3       | 1\nVMOVUPS %XMM4,-0x10(%RAX)                 | 1     | 0    | 0    | 0.50 | 0.50 | 1  | 0    | 3       | 1\nVMOVUPS %XMM4,(%RAX)                      | 1     | 0    | 0    | 0.50 | 0.50 | 1  | 0    | 3       | 1\nVEXTRACTF128 $0x1,%YMM4,0x10(%RAX)        | 2     | 0    | 0    | 0.50 | 0.50 | 1  | 0    | 2       | 1\nADD $0xa0,%RAX                            | 1     | 0.33 | 0.33 | 0    | 0    | 0  | 0.33 | 1       | 0.33\nVMOVUPS %XMM4,-0x80(%RAX)                 | 1     | 0    | 0    | 0.50 | 0.50 | 1  | 0    | 3       | 1\nVMOVUPS %XMM4,-0x70(%RAX)                 | 1     | 0    | 0    | 0.50 | 0.50 | 1  | 0    | 3       | 1\nVMOVUPS %XMM4,-0x60(%RAX)                 | 1     | 0    | 0    | 0.50 | 0.50 | 1  | 0    | 3       | 1\nVMOVUPS %XMM4,-0x50(%RAX)                 | 1     | 0    | 0    | 0.50 | 0.50 | 1  | 0    | 3       | 1\nVMOVUPS %XMM4,-0x40(%RAX)                 | 1     | 0    | 0    | 0.50 | 0.50 | 1  | 0    | 3       | 1\nVMOVUPS %XMM4,-0x30(%RAX)                 | 1     | 0    | 0    | 0.50 | 0.50 | 1  | 0    | 3       | 1\nVMOVUPS %XMM4,-0x20(%RAX)                 | 1     | 0    | 0    | 0.50 | 0.50 | 1  | 0    | 3       | 1\nVMOVUPS %XMM4,-0x10(%RAX)                 | 1     | 0    | 0    | 0.50 | 0.50 | 1  | 0    | 3       | 1\nVMOVUPS %XMM4,(%RAX)                      | 1     | 0    | 0    | 0.50 | 0.50 | 1  | 0    | 3       | 1\nVEXTRACTF128 $0x1,%YMM4,0x10(%RAX)        | 2     | 0    | 0    | 0.50 | 0.50 | 1  | 0    | 2       | 1\nADD $0xa0,%RAX                            | 1     | 0.33 | 0.33 | 0    | 0    | 0  | 0.33 | 1       | 0.33\nVMOVUPS %XMM4,-0x80(%RAX)                 | 1     | 0    | 0    | 0.50 | 0.50 | 1  | 0    | 3       | 1\nVMOVUPS %XMM4,-0x70(%RAX)                 | 1     | 0    | 0    | 0.50 | 0.50 | 1  | 0    | 3       | 1\nVMOVUPS %XMM4,-0x60(%RAX)                 | 1     | 0    | 0    | 0.50 | 0.50 | 1  | 0    | 3       | 1\nVMOVUPS %XMM4,-0x50(%RAX)                 | 1     | 0    | 0    | 0.50 | 0.50 | 1  | 0    | 3       | 1\nVMOVUPS %XMM4,-0x40(%RAX)                 | 1     | 0    | 0    | 0.50 | 0.50 | 1  | 0    | 3       | 1\nVMOVUPS %XMM4,-0x30(%RAX)                 | 1     | 0    | 0    | 0.50 | 0.50 | 1  | 0    | 3       | 1\nVMOVUPS %XMM4,-0x20(%RAX)                 | 1     | 0    | 0    | 0.50 | 0.50 | 1  | 0    | 3       | 1\nVMOVUPS %XMM4,-0x10(%RAX)                 | 1     | 0    | 0    | 0.50 | 0.50 | 1  | 0    | 3       | 1\nCMP %RAX,%R10                             | 1     | 0.33 | 0.33 | 0    | 0    | 0  | 0.33 | 1       | 0.33\nJE 4da7 <initialize_._omp_fn.0+0x677>     | 1     | 0    | 0    | 0    | 0    | 0  | 1    | 0       | 1-2\nMOV %R12D,%EAX                            | 1     | 0.33 | 0.33 | 0    | 0    | 0  | 0.33 | 1       | 0.33\nCMP %R12D,%R9D                            | 1     | 0.33 | 0.33 | 0    | 0    | 0  | 0.33 | 1       | 0.33\nJE 4e15 <initialize_._omp_fn.0+0x6e5>     | 1     | 0    | 0    | 0    | 0    | 0  | 1    | 0       | 1-2\nVMOVSD 0x98(%RSP),%XMM3                   | 1     | 0    | 0    | 0.50 | 0.50 | 0  | 0    | 3       | 0.50\nMOVSXD %EAX,%R10                          | 1     | 0.33 | 0.33 | 0    | 0    | 0  | 0.33 | 1       | 0.33\nLEA (%R10,%R10,4),%R10                    | 1     | 0.50 | 0.50 | 0    | 0    | 0  | 0    | 1       | 0.50\nLEA (%RDX,%R10,1),%RSI                    | 1     | 0.50 | 0.50 | 0    | 0    | 0  | 0    | 1       | 0.50\nVMOVUPS %XMM4,0x8(%RCX,%RSI,8)            | 1     | 0    | 0    | 0.50 | 0.50 | 1  | 0    | 3       | 1\nVEXTRACTF128 $0x1,%YMM4,0x18(%RCX,%RSI,8) | 2     | 0    | 0    | 0.50 | 0.50 | 1  | 0    | 2       | 1\nVMOVSD %XMM3,0x28(%RCX,%RSI,8)            | 1     | 0    | 0    | 0.50 | 0.50 | 1  | 0    | 3       | 1\nLEA 0x1(%RAX),%ESI                        | 1     | 0.50 | 0.50 | 0    | 0    | 0  | 0    | 1       | 0.50\nCMP %ESI,%R9D                             | 1     | 0.33 | 0.33 | 0    | 0    | 0  | 0.33 | 1       | 0.33\nJLE 4e15 <initialize_._omp_fn.0+0x6e5>    | 1     | 0    | 0    | 0    | 0    | 0  | 1    | 0       | 1-2\nLEA 0x5(%RDX,%R10,1),%RSI                 | 1     | 0    | 1    | 0    | 0    | 0  | 0    | 3       | 1\nADD $0x2,%EAX                             | 1     | 0.33 | 0.33 | 0    | 0    | 0  | 0.33 | 1       | 0.33\nVMOVUPS %XMM4,0x8(%RCX,%RSI,8)            | 1     | 0    | 0    | 0.50 | 0.50 | 1  | 0    | 3       | 1\nVMOVUPS %XMM4,0x18(%RCX,%RSI,8)           | 1     | 0    | 0    | 0.50 | 0.50 | 1  | 0    | 3       | 1\nVMOVSD %XMM3,0x28(%RCX,%RSI,8)            | 1     | 0    | 0    | 0.50 | 0.50 | 1  | 0    | 3       | 1\nCMP %EAX,%R9D                             | 1     | 0.33 | 0.33 | 0    | 0    | 0  | 0.33 | 1       | 0.33\nJLE 4e15 <initialize_._omp_fn.0+0x6e5>    | 1     | 0    | 0    | 0    | 0    | 0  | 1    | 0       | 1-2\nLEA 0xa(%RDX,%R10,1),%RDX                 | 1     | 0    | 1    | 0    | 0    | 0  | 0    | 3       | 1\nVMOVUPS %XMM4,0x8(%RCX,%RDX,8)            | 1     | 0    | 0    | 0.50 | 0.50 | 1  | 0    | 3       | 1\nVMOVUPS %XMM4,0x18(%RCX,%RDX,8)           | 1     | 0    | 0    | 0.50 | 0.50 | 1  | 0    | 3       | 1\nVMOVSD %XMM3,0x28(%RCX,%RDX,8)            | 1     | 0    | 0    | 0.50 | 0.50 | 1  | 0    | 3       | 1\nCMP %R8D,0x28(%RSP)                       | 1     | 0.33 | 0.33 | 0.50 | 0.50 | 0  | 0.33 | 1       | 0.50\nJE 63da <initialize_._omp_fn.0+0x1caa>    | 1     | 0    | 0    | 0    | 0    | 0  | 1    | 0       | 1-2\nADD $0x1,%EDI                             | 1     | 0.33 | 0.33 | 0    | 0    | 0  | 0.33 | 1       | 0.33\nCMP %EDI,0x3c(%RSP)                       | 1     | 0.33 | 0.33 | 0.50 | 0.50 | 0  | 0.33 | 1       | 0.50\nJLE 63c3 <initialize_._omp_fn.0+0x1c93>   | 1     | 0    | 0    | 0    | 0    | 0  | 1    | 0       | 1-2\nADD $0x1,%R8D                             | 1     | 0.33 | 0.33 | 0    | 0    | 0  | 0.33 | 1       | 0.33\nJMP 4b70 <initialize_._omp_fn.0+0x440>    | 1     | 0    | 0    | 0    | 0    | 0  | 1    | 0       | 2\nADDL $0x1,0x90(%RSP)                      | 2     | 0.33 | 0.33 | 1    | 1    | 1  | 0.33 | 6       | 1\nXOR %EDI,%EDI                             | 1     | 0    | 0    | 0    | 0    | 0  | 0    | 0       | 0.25\nMOVSXD 0x90(%RSP),%R13                    | 1     | 0    | 0    | 0.50 | 0.50 | 0  | 0    | 1       | 0.50\nJMP 4e2d <initialize_._omp_fn.0+0x6fd>    | 1     | 0    | 0    | 0    | 0    | 0  | 1    | 0       | 2\nXOR %EAX,%EAX                             | 1     | 0    | 0    | 0    | 0    | 0  | 0    | 0       | 0.25\nJMP 4daf <initialize_._omp_fn.0+0x67f>    | 1     | 0    | 0    | 0    | 0    | 0  | 1    | 0       | 2\n",
        },
      },
      header = {
        "0% of peak computational performance is used (0.00 out of 2.00 FLOP per cycle (GFLOPS @ 1GHz))",
      },
      brief = {
      },
      gain = {
        {
          workaround = " - Try another compiler or update/tune your current one:\n  * recompile with fassociative-math (included in Ofast or ffast-math) to extend loop vectorization to FP reductions.\n - Remove inter-iterations dependences from your loop and make it unit-stride:\n  * If your arrays have 2 or more dimensions, check whether elements are accessed contiguously and, otherwise, try to permute loops accordingly:\nFortran storage order is column-major: do i do j a(i,j) = b(i,j) (slow, non stride 1) => do i do j a(j,i) = b(i,j) (fast, stride 1)\n  * If your loop streams arrays of structures (AoS), try to use structures of arrays instead (SoA):\ndo i a(i)%x = b(i)%x (slow, non stride 1) => do i a%x(i) = b%x(i) (fast, stride 1)\n",
          details = "67% of SSE/AVX instructions are used in vector version (process two or more data elements in vector registers):\n - 0% of SSE/AVX loads are used in vector version.\n - 92% of SSE/AVX stores are used in vector version.\n - 0% of SSE/AVX addition or subtraction instructions are used in vector version.\n - 0% of SSE/AVX instructions that are not load, store, addition, subtraction nor multiply instructions are used in vector version.\nSince your execution units are vector units, only a fully vectorized loop can use their full power.\n",
          title = "Vectorization",
          txt = "Your loop is partially vectorized.\nOnly 43% of vector register length is used (average across all SSE/AVX instructions).\nBy fully vectorizing your loop, you can lower the cost of an iteration from 40.00 to 37.75 cycles (1.06x speedup).",
        },
        {
          workaround = " - Write less array elements\n - Provide more information to your compiler:\n  * hardcode the bounds of the corresponding 'for' loop\n",
          title = "Execution units bottlenecks",
          txt = "Performance is limited by writing data to caches/RAM (the store unit is a bottleneck).\n\nBy removing all these bottlenecks, you can lower the cost of an iteration from 40.00 to 26.00 cycles (1.54x speedup).\n",
        },
      },
      potential = {
      },
    },
  common = {
    header = {
      "The loop is defined in /users/user2210/NPB3.4-MZ-MPI/BT-MZ/initialize.f90:32-37,118.\n",
      "Warnings:\n - Non-innermost loop: analyzing only self part (ignoring child loops).\n - Ignoring paths for analysis\n - Too many paths. If you really need to analyze all of the 62 paths individually, rerun with max-paths=62\n - RecMII not computed since number of paths is unknown or > max_paths\n - Streams not analyzed since number of paths is unknown or > max_paths\n",
      "Try to simplify control and/or increase the maximum number of paths per function/loop through the 'max-paths-nb' option.\n",
      "This loop has 62 execution paths.\n",
      "The presence of multiple execution paths is typically the main/first bottleneck.\nTry to simplify control inside loop: ideally, try to remove all conditional expressions, for example by (if applicable):\n - hoisting them (moving them outside the loop)\n - turning them into conditional moves, MIN or MAX\n\n",
      "Ex: if (x<0) x=0 => x = max(0,x) (Fortran instrinsic procedure)\n",
    },
    nb_paths = 62,
  },
}
