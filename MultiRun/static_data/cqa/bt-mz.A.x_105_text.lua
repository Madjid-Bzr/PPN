_cqa_text_report = {
  paths = {
    {
      hint = {
        {
          details = "These instructions generate more than one micro-operation and only one of them can be decoded during a cycle and the extra micro-operations increase pressure on execution units.\n - ADD: 1 occurrences\n",
          title = "Complex instructions",
          txt = "Detected COMPLEX INSTRUCTIONS.\n",
        },
        {
          workaround = " - Try to reorganize arrays of structures to structures of arrays\n - Consider to permute loops (see vectorization gain report)\n",
          details = " - Constant unknown stride: 2 occurrence(s)\nNon-unit stride (uncontiguous) accesses are not efficiently using data caches\n",
          title = "Slow data structures access",
          txt = "Detected data structures (typically arrays) that cannot be efficiently read/written",
        },
        {
          title = "Type of elements and instruction set",
          txt = "No instructions are processing arithmetic or math operations on FP elements. This loop is probably writing/copying data or processing integer elements.",
        },
        {
          title = "Matching between your loop (in the source code) and the binary loop",
          txt = "The binary loop does not contain any FP arithmetical operations.\nThe binary loop is loading 92 bytes.\nThe binary loop is storing 84 bytes.",
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
          txt = "nb instructions    : 64\nnb uops            : 65\nloop length        : 270\nused x86 registers : 16\nused mmx registers : 0\nused xmm registers : 10\nused ymm registers : 0\nused zmm registers : 0\nnb stack references: 2\n",
        },
        {
          title = "Front-end",
          txt = "MACRO FUSION NOT POSSIBLE\nFIT IN UOP CACHE\nmicro-operation queue: 16.25 cycles\nfront end            : 16.25 cycles\n",
        },
        {
          title = "Back-end",
          txt = "       | P0    | P1    | P2    | P3    | P4    | P5\n------------------------------------------------------\nuops   | 14.33 | 14.33 | 12.00 | 12.00 | 11.00 | 14.33\ncycles | 14.33 | 14.33 | 12.00 | 12.00 | 11.00 | 14.33\n\nCycles executing div or sqrt instructions: NA\nLongest recurrence chain latency (RecMII): 2.00\n",
        },
        {
          title = "Cycles summary",
          txt = "Front-end : 16.25\nDispatch  : 14.33\nData deps.: 2.00\nOverall L1: 16.25\n",
        },
        {
          title = "Vectorization ratios",
          txt = "INT\nall    : 0%\nload   : 0%\nstore  : NA (no store vectorizable/vectorized instructions)\nmul    : NA (no mul vectorizable/vectorized instructions)\nadd-sub: 0%\nfma    : NA (no fma vectorizable/vectorized instructions)\nother  : 0%\nFP\nall     : 0%\nload    : 0%\nstore   : 0%\nmul     : NA (no mul vectorizable/vectorized instructions)\nadd-sub : NA (no add-sub vectorizable/vectorized instructions)\nfma     : NA (no fma vectorizable/vectorized instructions)\ndiv/sqrt: NA (no div/sqrt vectorizable/vectorized instructions)\nother   : NA (no other vectorizable/vectorized instructions)\nINT+FP\nall     : 0%\nload    : 0%\nstore   : 0%\nmul     : NA (no mul vectorizable/vectorized instructions)\nadd-sub : 0%\nfma     : NA (no fma vectorizable/vectorized instructions)\ndiv/sqrt: NA (no div/sqrt vectorizable/vectorized instructions)\nother   : 0%\n",
        },
        {
          title = "Vector efficiency ratios",
          txt = "INT\nall    : 27%\nload   : 37%\nstore  : NA (no store vectorizable/vectorized instructions)\nmul    : NA (no mul vectorizable/vectorized instructions)\nadd-sub: 25%\nfma    : NA (no fma vectorizable/vectorized instructions)\nother  : 25%\nFP\nall     : 25%\nload    : 25%\nstore   : 25%\nmul     : NA (no mul vectorizable/vectorized instructions)\nadd-sub : NA (no add-sub vectorizable/vectorized instructions)\nfma     : NA (no fma vectorizable/vectorized instructions)\ndiv/sqrt: NA (no div/sqrt vectorizable/vectorized instructions)\nother   : NA (no other vectorizable/vectorized instructions)\nINT+FP\nall     : 25%\nload    : 27%\nstore   : 25%\nmul     : NA (no mul vectorizable/vectorized instructions)\nadd-sub : 25%\nfma     : NA (no fma vectorizable/vectorized instructions)\ndiv/sqrt: NA (no div/sqrt vectorizable/vectorized instructions)\nother   : 25%\n",
        },
        {
          title = "Cycles and memory resources usage",
          txt = "Assuming all data fit into the L1 cache, each iteration of the binary loop takes 16.25 cycles. At this rate:\n - 17% of peak load performance is reached (5.66 out of 32.00 bytes loaded per cycle (GB/s @ 1GHz))\n - 32% of peak store performance is reached (5.17 out of 16.00 bytes stored per cycle (GB/s @ 1GHz))\n",
        },
        {
          title = "Front-end bottlenecks",
          txt = "Performance is limited by instruction throughput (loading/decoding program instructions to execution core) (front-end is a bottleneck).\n\nBy removing all these bottlenecks, you can lower the cost of an iteration from 16.25 to 14.33 cycles (1.13x speedup).\n",
        },
        {
          title = "ASM code",
          txt = "In the binary file, the address of the loop is: 1861d\n\nInstruction                              | Nb FU | P0   | P1   | P2   | P3   | P4 | P5   | Latency | Recip. throughput\n----------------------------------------------------------------------------------------------------------------------\nMOV %R10,%RAX                            | 1     | 0.33 | 0.33 | 0    | 0    | 0  | 0.33 | 1       | 0.33\nMOVSXD %ECX,%RDX                         | 1     | 0.33 | 0.33 | 0    | 0    | 0  | 0.33 | 1       | 0.33\nMOV %R11,%R14                            | 1     | 0.33 | 0.33 | 0    | 0    | 0  | 0.33 | 1       | 0.33\nIMUL %RDI,%RAX                           | 1     | 0    | 1    | 0    | 0    | 0  | 0    | 3       | 1\nADD $0x1,%ECX                            | 1     | 0.33 | 0.33 | 0    | 0    | 0  | 0.33 | 1       | 0.33\nADD $0x1,%ESI                            | 1     | 0.33 | 0.33 | 0    | 0    | 0  | 0.33 | 1       | 0.33\nIMUL %RDX,%R14                           | 1     | 0    | 1    | 0    | 0    | 0  | 0    | 3       | 1\nLEA (%RDX,%RDX,4),%RDX                   | 1     | 0.50 | 0.50 | 0    | 0    | 0  | 0    | 1       | 0.50\nADD %R9,%RAX                             | 1     | 0.33 | 0.33 | 0    | 0    | 0  | 0.33 | 1       | 0.33\nADD %R14,%RAX                            | 1     | 0.33 | 0.33 | 0    | 0    | 0  | 0.33 | 1       | 0.33\nMOV %RBP,%R14                            | 1     | 0.33 | 0.33 | 0    | 0    | 0  | 0.33 | 1       | 0.33\nIMUL %RDI,%R14                           | 1     | 0    | 1    | 0    | 0    | 0  | 0    | 3       | 1\nADD %R15,%RAX                            | 1     | 0.33 | 0.33 | 0    | 0    | 0  | 0.33 | 1       | 0.33\nLEA (%R12,%RAX,8),%RAX                   | 1     | 0.50 | 0.50 | 0    | 0    | 0  | 0    | 1       | 0.50\nVMOVSD 0x8(%RAX),%XMM10                  | 1     | 0    | 0    | 0.50 | 0.50 | 0  | 0    | 3       | 0.50\nADD %RBX,%R14                            | 1     | 0.33 | 0.33 | 0    | 0    | 0  | 0.33 | 1       | 0.33\nADD %RDX,%R14                            | 1     | 0.33 | 0.33 | 0    | 0    | 0  | 0.33 | 1       | 0.33\nLEA (%R13,%R14,8),%R14                   | 1     | 0.50 | 0.50 | 0    | 0    | 0  | 0    | 1       | 0.50\nVMOVSD %XMM10,0x8(%R14)                  | 1     | 0    | 0    | 0.50 | 0.50 | 1  | 0    | 3       | 1\nVMOVSD 0x10(%RAX),%XMM11                 | 1     | 0    | 0    | 0.50 | 0.50 | 0  | 0    | 3       | 0.50\nVMOVSD %XMM11,0x10(%R14)                 | 1     | 0    | 0    | 0.50 | 0.50 | 1  | 0    | 3       | 1\nVMOVSD 0x18(%RAX),%XMM12                 | 1     | 0    | 0    | 0.50 | 0.50 | 0  | 0    | 3       | 0.50\nVMOVSD %XMM12,0x18(%R14)                 | 1     | 0    | 0    | 0.50 | 0.50 | 1  | 0    | 3       | 1\nVMOVSD 0x20(%RAX),%XMM13                 | 1     | 0    | 0    | 0.50 | 0.50 | 0  | 0    | 3       | 0.50\nVMOVSD %XMM13,0x20(%R14)                 | 1     | 0    | 0    | 0.50 | 0.50 | 1  | 0    | 3       | 1\nVMOVSD 0x28(%RAX),%XMM14                 | 1     | 0    | 0    | 0.50 | 0.50 | 0  | 0    | 3       | 0.50\nVMOVSD %XMM14,0x28(%R14)                 | 1     | 0    | 0    | 0.50 | 0.50 | 1  | 0    | 3       | 1\nCMP %ECX,%R8D                            | 1     | 0.33 | 0.33 | 0    | 0    | 0  | 0.33 | 1       | 0.33\nJLE 186bf <copy_x_face_._omp_fn.1+0x25f> | 1     | 0    | 0    | 0    | 0    | 0  | 1    | 0       | 1-2\nADD $0x1,%ESI                            | 1     | 0.33 | 0.33 | 0    | 0    | 0  | 0.33 | 1       | 0.33\nMOV %R10,%RAX                            | 1     | 0.33 | 0.33 | 0    | 0    | 0  | 0.33 | 1       | 0.33\nMOVSXD %ECX,%RDX                         | 1     | 0.33 | 0.33 | 0    | 0    | 0  | 0.33 | 1       | 0.33\nMOV %R11,%R14                            | 1     | 0.33 | 0.33 | 0    | 0    | 0  | 0.33 | 1       | 0.33\nIMUL %RDI,%RAX                           | 1     | 0    | 1    | 0    | 0    | 0  | 0    | 3       | 1\nIMUL %RDX,%R14                           | 1     | 0    | 1    | 0    | 0    | 0  | 0    | 3       | 1\nLEA (%RDX,%RDX,4),%RDX                   | 1     | 0.50 | 0.50 | 0    | 0    | 0  | 0    | 1       | 0.50\nADD %R9,%RAX                             | 1     | 0.33 | 0.33 | 0    | 0    | 0  | 0.33 | 1       | 0.33\nADD %R14,%RAX                            | 1     | 0.33 | 0.33 | 0    | 0    | 0  | 0.33 | 1       | 0.33\nMOV %RBP,%R14                            | 1     | 0.33 | 0.33 | 0    | 0    | 0  | 0.33 | 1       | 0.33\nIMUL %RDI,%R14                           | 1     | 0    | 1    | 0    | 0    | 0  | 0    | 3       | 1\nADD %R15,%RAX                            | 1     | 0.33 | 0.33 | 0    | 0    | 0  | 0.33 | 1       | 0.33\nLEA (%R12,%RAX,8),%RAX                   | 1     | 0.50 | 0.50 | 0    | 0    | 0  | 0    | 1       | 0.50\nVMOVSD 0x8(%RAX),%XMM5                   | 1     | 0    | 0    | 0.50 | 0.50 | 0  | 0    | 3       | 0.50\nADD %RBX,%R14                            | 1     | 0.33 | 0.33 | 0    | 0    | 0  | 0.33 | 1       | 0.33\nADD %RDX,%R14                            | 1     | 0.33 | 0.33 | 0    | 0    | 0  | 0.33 | 1       | 0.33\nLEA (%R13,%R14,8),%R14                   | 1     | 0.50 | 0.50 | 0    | 0    | 0  | 0    | 1       | 0.50\nVMOVSD %XMM5,0x8(%R14)                   | 1     | 0    | 0    | 0.50 | 0.50 | 1  | 0    | 3       | 1\nVMOVSD 0x10(%RAX),%XMM6                  | 1     | 0    | 0    | 0.50 | 0.50 | 0  | 0    | 3       | 0.50\nVMOVSD %XMM6,0x10(%R14)                  | 1     | 0    | 0    | 0.50 | 0.50 | 1  | 0    | 3       | 1\nVMOVSD 0x18(%RAX),%XMM7                  | 1     | 0    | 0    | 0.50 | 0.50 | 0  | 0    | 3       | 0.50\nVMOVSD %XMM7,0x18(%R14)                  | 1     | 0    | 0    | 0.50 | 0.50 | 1  | 0    | 3       | 1\nVMOVSD 0x20(%RAX),%XMM8                  | 1     | 0    | 0    | 0.50 | 0.50 | 0  | 0    | 3       | 0.50\nVMOVSD %XMM8,0x20(%R14)                  | 1     | 0    | 0    | 0.50 | 0.50 | 1  | 0    | 3       | 1\nVMOVSD 0x28(%RAX),%XMM9                  | 1     | 0    | 0    | 0.50 | 0.50 | 0  | 0    | 3       | 0.50\nVMOVSD %XMM9,0x28(%R14)                  | 1     | 0    | 0    | 0.50 | 0.50 | 1  | 0    | 3       | 1\nCMP 0x8(%RSP),%ESI                       | 1     | 0.33 | 0.33 | 0.50 | 0.50 | 0  | 0.33 | 1       | 0.50\nJE 186b0 <copy_x_face_._omp_fn.1+0x250>  | 1     | 0    | 0    | 0    | 0    | 0  | 1    | 0       | 1-2\nADD $0x1,%ECX                            | 1     | 0.33 | 0.33 | 0    | 0    | 0  | 0.33 | 1       | 0.33\nCMP %ECX,%R8D                            | 1     | 0.33 | 0.33 | 0    | 0    | 0  | 0.33 | 1       | 0.33\nJG 185a0 <copy_x_face_._omp_fn.1+0x140>  | 1     | 0    | 0    | 0    | 0    | 0  | 1    | 0       | 1-2\nADDL $0x1,0xc(%RSP)                      | 2     | 0.33 | 0.33 | 1    | 1    | 1  | 0.33 | 6       | 1\nMOV $0x1,%ECX                            | 1     | 0.33 | 0.33 | 0    | 0    | 0  | 0.33 | 1       | 0.33\nMOVSXD 0xc(%RSP),%RDI                    | 1     | 0    | 0    | 0.50 | 0.50 | 0  | 0    | 1       | 0.50\nJMP 185a0 <copy_x_face_._omp_fn.1+0x140> | 1     | 0    | 0    | 0    | 0    | 0  | 1    | 0       | 2\n",
        },
      },
      header = {
        "0% of peak computational performance is used (0.00 out of 2.00 FLOP per cycle (GFLOPS @ 1GHz))",
      },
      brief = {
      },
      gain = {
        {
          workaround = " - Try to reorganize arrays of structures to structures of arrays\n - Consider to permute loops (see vectorization gain report)\n - To reference allocatable arrays, use \"allocatable\" instead of \"pointer\" pointers or qualify them with the \"contiguous\" attribute (Fortran 2008)\n - For structures, limit to one indirection. For example, use a_b%c instead of a%b%c with a_b set to a%b before this loop\n",
          title = "Code clean check",
          txt = "Detected a slowdown caused by scalar integer instructions (typically used for address computation).\nBy removing them, you can lower the cost of an iteration from 16.25 to 11.50 cycles (1.41x speedup).",
        },
        {
          workaround = " - Try another compiler or update/tune your current one:\n  * recompile with fassociative-math (included in Ofast or ffast-math) to extend loop vectorization to FP reductions.\n - Remove inter-iterations dependences from your loop and make it unit-stride:\n  * If your arrays have 2 or more dimensions, check whether elements are accessed contiguously and, otherwise, try to permute loops accordingly:\nFortran storage order is column-major: do i do j a(i,j) = b(i,j) (slow, non stride 1) => do i do j a(j,i) = b(i,j) (fast, stride 1)\n  * If your loop streams arrays of structures (AoS), try to use structures of arrays instead (SoA):\ndo i a(i)%x = b(i)%x (slow, non stride 1) => do i a%x(i) = b%x(i) (fast, stride 1)\n",
          details = "All SSE/AVX instructions are used in scalar version (process only one data element in vector registers).\nSince your execution units are vector units, only a vectorized loop can use their full power.\n",
          title = "Vectorization",
          txt = "Your loop is not vectorized.\nOnly 25% of vector register length is used (average across all SSE/AVX instructions).\nBy vectorizing your loop, you can lower the cost of an iteration from 16.25 to 5.25 cycles (3.10x speedup).",
        },
        {
          title = "Execution units bottlenecks",
          txt = "Found no such bottlenecks but see expert reports for more complex bottlenecks.",
        },
      },
      potential = {
      },
    },
    {
      hint = {
        {
          details = "These instructions generate more than one micro-operation and only one of them can be decoded during a cycle and the extra micro-operations increase pressure on execution units.\n - ADD: 2 occurrences\n",
          title = "Complex instructions",
          txt = "Detected COMPLEX INSTRUCTIONS.\n",
        },
        {
          workaround = " - Try to reorganize arrays of structures to structures of arrays\n - Consider to permute loops (see vectorization gain report)\n",
          details = " - Constant unknown stride: 2 occurrence(s)\nNon-unit stride (uncontiguous) accesses are not efficiently using data caches\n",
          title = "Slow data structures access",
          txt = "Detected data structures (typically arrays) that cannot be efficiently read/written",
        },
        {
          title = "Type of elements and instruction set",
          txt = "No instructions are processing arithmetic or math operations on FP elements. This loop is probably writing/copying data or processing integer elements.",
        },
        {
          title = "Matching between your loop (in the source code) and the binary loop",
          txt = "The binary loop does not contain any FP arithmetical operations.\nThe binary loop is loading 100 bytes.\nThe binary loop is storing 88 bytes.",
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
          txt = "nb instructions    : 68\nnb uops            : 70\nloop length        : 290\nused x86 registers : 16\nused mmx registers : 0\nused xmm registers : 10\nused ymm registers : 0\nused zmm registers : 0\nnb stack references: 2\n",
        },
        {
          title = "Front-end",
          txt = "MACRO FUSION NOT POSSIBLE\nFIT IN UOP CACHE\nmicro-operation queue: 17.50 cycles\nfront end            : 17.50 cycles\n",
        },
        {
          title = "Back-end",
          txt = "       | P0    | P1    | P2    | P3    | P4    | P5\n------------------------------------------------------\nuops   | 15.33 | 15.33 | 13.50 | 13.50 | 12.00 | 15.33\ncycles | 15.33 | 15.33 | 13.50 | 13.50 | 12.00 | 15.33\n\nCycles executing div or sqrt instructions: NA\nLongest recurrence chain latency (RecMII): 2.00\n",
        },
        {
          title = "Cycles summary",
          txt = "Front-end : 17.50\nDispatch  : 15.33\nData deps.: 2.00\nOverall L1: 17.50\n",
        },
        {
          title = "Vectorization ratios",
          txt = "INT\nall    : 0%\nload   : 0%\nstore  : 0%\nmul    : NA (no mul vectorizable/vectorized instructions)\nadd-sub: 0%\nfma    : NA (no fma vectorizable/vectorized instructions)\nother  : 0%\nFP\nall     : 0%\nload    : 0%\nstore   : 0%\nmul     : NA (no mul vectorizable/vectorized instructions)\nadd-sub : NA (no add-sub vectorizable/vectorized instructions)\nfma     : NA (no fma vectorizable/vectorized instructions)\ndiv/sqrt: NA (no div/sqrt vectorizable/vectorized instructions)\nother   : NA (no other vectorizable/vectorized instructions)\nINT+FP\nall     : 0%\nload    : 0%\nstore   : 0%\nmul     : NA (no mul vectorizable/vectorized instructions)\nadd-sub : 0%\nfma     : NA (no fma vectorizable/vectorized instructions)\ndiv/sqrt: NA (no div/sqrt vectorizable/vectorized instructions)\nother   : 0%\n",
        },
        {
          title = "Vector efficiency ratios",
          txt = "INT\nall    : 29%\nload   : 37%\nstore  : 25%\nmul    : NA (no mul vectorizable/vectorized instructions)\nadd-sub: 25%\nfma    : NA (no fma vectorizable/vectorized instructions)\nother  : 25%\nFP\nall     : 25%\nload    : 25%\nstore   : 25%\nmul     : NA (no mul vectorizable/vectorized instructions)\nadd-sub : NA (no add-sub vectorizable/vectorized instructions)\nfma     : NA (no fma vectorizable/vectorized instructions)\ndiv/sqrt: NA (no div/sqrt vectorizable/vectorized instructions)\nother   : NA (no other vectorizable/vectorized instructions)\nINT+FP\nall     : 26%\nload    : 28%\nstore   : 25%\nmul     : NA (no mul vectorizable/vectorized instructions)\nadd-sub : 25%\nfma     : NA (no fma vectorizable/vectorized instructions)\ndiv/sqrt: NA (no div/sqrt vectorizable/vectorized instructions)\nother   : 25%\n",
        },
        {
          title = "Cycles and memory resources usage",
          txt = "Assuming all data fit into the L1 cache, each iteration of the binary loop takes 17.50 cycles. At this rate:\n - 17% of peak load performance is reached (5.71 out of 32.00 bytes loaded per cycle (GB/s @ 1GHz))\n - 31% of peak store performance is reached (5.03 out of 16.00 bytes stored per cycle (GB/s @ 1GHz))\n",
        },
        {
          title = "Front-end bottlenecks",
          txt = "Performance is limited by instruction throughput (loading/decoding program instructions to execution core) (front-end is a bottleneck).\n\nBy removing all these bottlenecks, you can lower the cost of an iteration from 17.50 to 15.33 cycles (1.14x speedup).\n",
        },
        {
          title = "ASM code",
          txt = "In the binary file, the address of the loop is: 1861d\n\nInstruction                              | Nb FU | P0   | P1   | P2   | P3   | P4 | P5   | Latency | Recip. throughput\n----------------------------------------------------------------------------------------------------------------------\nMOV %R10,%RAX                            | 1     | 0.33 | 0.33 | 0    | 0    | 0  | 0.33 | 1       | 0.33\nMOVSXD %ECX,%RDX                         | 1     | 0.33 | 0.33 | 0    | 0    | 0  | 0.33 | 1       | 0.33\nMOV %R11,%R14                            | 1     | 0.33 | 0.33 | 0    | 0    | 0  | 0.33 | 1       | 0.33\nIMUL %RDI,%RAX                           | 1     | 0    | 1    | 0    | 0    | 0  | 0    | 3       | 1\nADD $0x1,%ECX                            | 1     | 0.33 | 0.33 | 0    | 0    | 0  | 0.33 | 1       | 0.33\nADD $0x1,%ESI                            | 1     | 0.33 | 0.33 | 0    | 0    | 0  | 0.33 | 1       | 0.33\nIMUL %RDX,%R14                           | 1     | 0    | 1    | 0    | 0    | 0  | 0    | 3       | 1\nLEA (%RDX,%RDX,4),%RDX                   | 1     | 0.50 | 0.50 | 0    | 0    | 0  | 0    | 1       | 0.50\nADD %R9,%RAX                             | 1     | 0.33 | 0.33 | 0    | 0    | 0  | 0.33 | 1       | 0.33\nADD %R14,%RAX                            | 1     | 0.33 | 0.33 | 0    | 0    | 0  | 0.33 | 1       | 0.33\nMOV %RBP,%R14                            | 1     | 0.33 | 0.33 | 0    | 0    | 0  | 0.33 | 1       | 0.33\nIMUL %RDI,%R14                           | 1     | 0    | 1    | 0    | 0    | 0  | 0    | 3       | 1\nADD %R15,%RAX                            | 1     | 0.33 | 0.33 | 0    | 0    | 0  | 0.33 | 1       | 0.33\nLEA (%R12,%RAX,8),%RAX                   | 1     | 0.50 | 0.50 | 0    | 0    | 0  | 0    | 1       | 0.50\nVMOVSD 0x8(%RAX),%XMM10                  | 1     | 0    | 0    | 0.50 | 0.50 | 0  | 0    | 3       | 0.50\nADD %RBX,%R14                            | 1     | 0.33 | 0.33 | 0    | 0    | 0  | 0.33 | 1       | 0.33\nADD %RDX,%R14                            | 1     | 0.33 | 0.33 | 0    | 0    | 0  | 0.33 | 1       | 0.33\nLEA (%R13,%R14,8),%R14                   | 1     | 0.50 | 0.50 | 0    | 0    | 0  | 0    | 1       | 0.50\nVMOVSD %XMM10,0x8(%R14)                  | 1     | 0    | 0    | 0.50 | 0.50 | 1  | 0    | 3       | 1\nVMOVSD 0x10(%RAX),%XMM11                 | 1     | 0    | 0    | 0.50 | 0.50 | 0  | 0    | 3       | 0.50\nVMOVSD %XMM11,0x10(%R14)                 | 1     | 0    | 0    | 0.50 | 0.50 | 1  | 0    | 3       | 1\nVMOVSD 0x18(%RAX),%XMM12                 | 1     | 0    | 0    | 0.50 | 0.50 | 0  | 0    | 3       | 0.50\nVMOVSD %XMM12,0x18(%R14)                 | 1     | 0    | 0    | 0.50 | 0.50 | 1  | 0    | 3       | 1\nVMOVSD 0x20(%RAX),%XMM13                 | 1     | 0    | 0    | 0.50 | 0.50 | 0  | 0    | 3       | 0.50\nVMOVSD %XMM13,0x20(%R14)                 | 1     | 0    | 0    | 0.50 | 0.50 | 1  | 0    | 3       | 1\nVMOVSD 0x28(%RAX),%XMM14                 | 1     | 0    | 0    | 0.50 | 0.50 | 0  | 0    | 3       | 0.50\nVMOVSD %XMM14,0x28(%R14)                 | 1     | 0    | 0    | 0.50 | 0.50 | 1  | 0    | 3       | 1\nCMP %ECX,%R8D                            | 1     | 0.33 | 0.33 | 0    | 0    | 0  | 0.33 | 1       | 0.33\nJLE 186bf <copy_x_face_._omp_fn.1+0x25f> | 1     | 0    | 0    | 0    | 0    | 0  | 1    | 0       | 1-2\nADD $0x1,%ESI                            | 1     | 0.33 | 0.33 | 0    | 0    | 0  | 0.33 | 1       | 0.33\nMOV %R10,%RAX                            | 1     | 0.33 | 0.33 | 0    | 0    | 0  | 0.33 | 1       | 0.33\nMOVSXD %ECX,%RDX                         | 1     | 0.33 | 0.33 | 0    | 0    | 0  | 0.33 | 1       | 0.33\nMOV %R11,%R14                            | 1     | 0.33 | 0.33 | 0    | 0    | 0  | 0.33 | 1       | 0.33\nIMUL %RDI,%RAX                           | 1     | 0    | 1    | 0    | 0    | 0  | 0    | 3       | 1\nIMUL %RDX,%R14                           | 1     | 0    | 1    | 0    | 0    | 0  | 0    | 3       | 1\nLEA (%RDX,%RDX,4),%RDX                   | 1     | 0.50 | 0.50 | 0    | 0    | 0  | 0    | 1       | 0.50\nADD %R9,%RAX                             | 1     | 0.33 | 0.33 | 0    | 0    | 0  | 0.33 | 1       | 0.33\nADD %R14,%RAX                            | 1     | 0.33 | 0.33 | 0    | 0    | 0  | 0.33 | 1       | 0.33\nMOV %RBP,%R14                            | 1     | 0.33 | 0.33 | 0    | 0    | 0  | 0.33 | 1       | 0.33\nIMUL %RDI,%R14                           | 1     | 0    | 1    | 0    | 0    | 0  | 0    | 3       | 1\nADD %R15,%RAX                            | 1     | 0.33 | 0.33 | 0    | 0    | 0  | 0.33 | 1       | 0.33\nLEA (%R12,%RAX,8),%RAX                   | 1     | 0.50 | 0.50 | 0    | 0    | 0  | 0    | 1       | 0.50\nVMOVSD 0x8(%RAX),%XMM5                   | 1     | 0    | 0    | 0.50 | 0.50 | 0  | 0    | 3       | 0.50\nADD %RBX,%R14                            | 1     | 0.33 | 0.33 | 0    | 0    | 0  | 0.33 | 1       | 0.33\nADD %RDX,%R14                            | 1     | 0.33 | 0.33 | 0    | 0    | 0  | 0.33 | 1       | 0.33\nLEA (%R13,%R14,8),%R14                   | 1     | 0.50 | 0.50 | 0    | 0    | 0  | 0    | 1       | 0.50\nVMOVSD %XMM5,0x8(%R14)                   | 1     | 0    | 0    | 0.50 | 0.50 | 1  | 0    | 3       | 1\nVMOVSD 0x10(%RAX),%XMM6                  | 1     | 0    | 0    | 0.50 | 0.50 | 0  | 0    | 3       | 0.50\nVMOVSD %XMM6,0x10(%R14)                  | 1     | 0    | 0    | 0.50 | 0.50 | 1  | 0    | 3       | 1\nVMOVSD 0x18(%RAX),%XMM7                  | 1     | 0    | 0    | 0.50 | 0.50 | 0  | 0    | 3       | 0.50\nVMOVSD %XMM7,0x18(%R14)                  | 1     | 0    | 0    | 0.50 | 0.50 | 1  | 0    | 3       | 1\nVMOVSD 0x20(%RAX),%XMM8                  | 1     | 0    | 0    | 0.50 | 0.50 | 0  | 0    | 3       | 0.50\nVMOVSD %XMM8,0x20(%R14)                  | 1     | 0    | 0    | 0.50 | 0.50 | 1  | 0    | 3       | 1\nVMOVSD 0x28(%RAX),%XMM9                  | 1     | 0    | 0    | 0.50 | 0.50 | 0  | 0    | 3       | 0.50\nVMOVSD %XMM9,0x28(%R14)                  | 1     | 0    | 0    | 0.50 | 0.50 | 1  | 0    | 3       | 1\nCMP 0x8(%RSP),%ESI                       | 1     | 0.33 | 0.33 | 0.50 | 0.50 | 0  | 0.33 | 1       | 0.50\nJE 186b0 <copy_x_face_._omp_fn.1+0x250>  | 1     | 0    | 0    | 0    | 0    | 0  | 1    | 0       | 1-2\nADD $0x1,%ECX                            | 1     | 0.33 | 0.33 | 0    | 0    | 0  | 0.33 | 1       | 0.33\nCMP %ECX,%R8D                            | 1     | 0.33 | 0.33 | 0    | 0    | 0  | 0.33 | 1       | 0.33\nJG 185a0 <copy_x_face_._omp_fn.1+0x140>  | 1     | 0    | 0    | 0    | 0    | 0  | 1    | 0       | 1-2\nADDL $0x1,0xc(%RSP)                      | 2     | 0.33 | 0.33 | 1    | 1    | 1  | 0.33 | 6       | 1\nMOV $0x1,%ECX                            | 1     | 0.33 | 0.33 | 0    | 0    | 0  | 0.33 | 1       | 0.33\nMOVSXD 0xc(%RSP),%RDI                    | 1     | 0    | 0    | 0.50 | 0.50 | 0  | 0    | 1       | 0.50\nJMP 185a0 <copy_x_face_._omp_fn.1+0x140> | 1     | 0    | 0    | 0    | 0    | 0  | 1    | 0       | 2\nADDL $0x1,0xc(%RSP)                      | 2     | 0.33 | 0.33 | 1    | 1    | 1  | 0.33 | 6       | 1\nMOV $0x1,%ECX                            | 1     | 0.33 | 0.33 | 0    | 0    | 0  | 0.33 | 1       | 0.33\nMOVSXD 0xc(%RSP),%RDI                    | 1     | 0    | 0    | 0.50 | 0.50 | 0  | 0    | 1       | 0.50\nJMP 1861a <copy_x_face_._omp_fn.1+0x1ba> | 1     | 0    | 0    | 0    | 0    | 0  | 1    | 0       | 2\n",
        },
      },
      header = {
        "0% of peak computational performance is used (0.00 out of 2.00 FLOP per cycle (GFLOPS @ 1GHz))",
      },
      brief = {
      },
      gain = {
        {
          workaround = " - Try to reorganize arrays of structures to structures of arrays\n - Consider to permute loops (see vectorization gain report)\n - To reference allocatable arrays, use \"allocatable\" instead of \"pointer\" pointers or qualify them with the \"contiguous\" attribute (Fortran 2008)\n - For structures, limit to one indirection. For example, use a_b%c instead of a%b%c with a_b set to a%b before this loop\n",
          title = "Code clean check",
          txt = "Detected a slowdown caused by scalar integer instructions (typically used for address computation).\nBy removing them, you can lower the cost of an iteration from 17.50 to 12.00 cycles (1.46x speedup).",
        },
        {
          workaround = " - Try another compiler or update/tune your current one:\n  * recompile with fassociative-math (included in Ofast or ffast-math) to extend loop vectorization to FP reductions.\n - Remove inter-iterations dependences from your loop and make it unit-stride:\n  * If your arrays have 2 or more dimensions, check whether elements are accessed contiguously and, otherwise, try to permute loops accordingly:\nFortran storage order is column-major: do i do j a(i,j) = b(i,j) (slow, non stride 1) => do i do j a(j,i) = b(i,j) (fast, stride 1)\n  * If your loop streams arrays of structures (AoS), try to use structures of arrays instead (SoA):\ndo i a(i)%x = b(i)%x (slow, non stride 1) => do i a%x(i) = b%x(i) (fast, stride 1)\n",
          details = "All SSE/AVX instructions are used in scalar version (process only one data element in vector registers).\nSince your execution units are vector units, only a vectorized loop can use their full power.\n",
          title = "Vectorization",
          txt = "Your loop is not vectorized.\nOnly 26% of vector register length is used (average across all SSE/AVX instructions).\nBy vectorizing your loop, you can lower the cost of an iteration from 17.50 to 5.50 cycles (3.18x speedup).",
        },
        {
          title = "Execution units bottlenecks",
          txt = "Found no such bottlenecks but see expert reports for more complex bottlenecks.",
        },
      },
      potential = {
      },
    },
    {
      hint = {
        {
          workaround = " - Try to reorganize arrays of structures to structures of arrays\n - Consider to permute loops (see vectorization gain report)\n",
          details = " - Constant unknown stride: 2 occurrence(s)\nNon-unit stride (uncontiguous) accesses are not efficiently using data caches\n",
          title = "Slow data structures access",
          txt = "Detected data structures (typically arrays) that cannot be efficiently read/written",
        },
        {
          title = "Type of elements and instruction set",
          txt = "No instructions are processing arithmetic or math operations on FP elements. This loop is probably writing/copying data or processing integer elements.",
        },
        {
          title = "Matching between your loop (in the source code) and the binary loop",
          txt = "The binary loop does not contain any FP arithmetical operations.\nThe binary loop is loading 84 bytes.\nThe binary loop is storing 80 bytes.",
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
          txt = "nb instructions    : 60\nnb uops            : 59\nloop length        : 250\nused x86 registers : 16\nused mmx registers : 0\nused xmm registers : 10\nused ymm registers : 0\nused zmm registers : 0\nnb stack references: 1\n",
        },
        {
          title = "Front-end",
          txt = "ASSUMED MACRO FUSION\nFIT IN UOP CACHE\nmicro-operation queue: 14.75 cycles\nfront end            : 14.75 cycles\n",
        },
        {
          title = "Back-end",
          txt = "       | P0    | P1    | P2    | P3    | P4    | P5\n------------------------------------------------------\nuops   | 13.00 | 13.00 | 10.50 | 10.50 | 10.00 | 13.00\ncycles | 13.00 | 13.00 | 10.50 | 10.50 | 10.00 | 13.00\n\nCycles executing div or sqrt instructions: NA\nLongest recurrence chain latency (RecMII): 2.00\n",
        },
        {
          title = "Cycles summary",
          txt = "Front-end : 14.75\nDispatch  : 13.00\nData deps.: 2.00\nOverall L1: 14.75\n",
        },
        {
          title = "Vectorization ratios",
          txt = "INT\nall    : 0%\nload   : 0%\nstore  : NA (no store vectorizable/vectorized instructions)\nmul    : NA (no mul vectorizable/vectorized instructions)\nadd-sub: 0%\nfma    : NA (no fma vectorizable/vectorized instructions)\nother  : 0%\nFP\nall     : 0%\nload    : 0%\nstore   : 0%\nmul     : NA (no mul vectorizable/vectorized instructions)\nadd-sub : NA (no add-sub vectorizable/vectorized instructions)\nfma     : NA (no fma vectorizable/vectorized instructions)\ndiv/sqrt: NA (no div/sqrt vectorizable/vectorized instructions)\nother   : NA (no other vectorizable/vectorized instructions)\nINT+FP\nall     : 0%\nload    : 0%\nstore   : 0%\nmul     : NA (no mul vectorizable/vectorized instructions)\nadd-sub : 0%\nfma     : NA (no fma vectorizable/vectorized instructions)\ndiv/sqrt: NA (no div/sqrt vectorizable/vectorized instructions)\nother   : 0%\n",
        },
        {
          title = "Vector efficiency ratios",
          txt = "INT\nall    : 25%\nload   : 25%\nstore  : NA (no store vectorizable/vectorized instructions)\nmul    : NA (no mul vectorizable/vectorized instructions)\nadd-sub: 25%\nfma    : NA (no fma vectorizable/vectorized instructions)\nother  : 25%\nFP\nall     : 25%\nload    : 25%\nstore   : 25%\nmul     : NA (no mul vectorizable/vectorized instructions)\nadd-sub : NA (no add-sub vectorizable/vectorized instructions)\nfma     : NA (no fma vectorizable/vectorized instructions)\ndiv/sqrt: NA (no div/sqrt vectorizable/vectorized instructions)\nother   : NA (no other vectorizable/vectorized instructions)\nINT+FP\nall     : 25%\nload    : 25%\nstore   : 25%\nmul     : NA (no mul vectorizable/vectorized instructions)\nadd-sub : 25%\nfma     : NA (no fma vectorizable/vectorized instructions)\ndiv/sqrt: NA (no div/sqrt vectorizable/vectorized instructions)\nother   : 25%\n",
        },
        {
          title = "Cycles and memory resources usage",
          txt = "Assuming all data fit into the L1 cache, each iteration of the binary loop takes 14.75 cycles. At this rate:\n - 17% of peak load performance is reached (5.69 out of 32.00 bytes loaded per cycle (GB/s @ 1GHz))\n - 33% of peak store performance is reached (5.42 out of 16.00 bytes stored per cycle (GB/s @ 1GHz))\n",
        },
        {
          title = "Front-end bottlenecks",
          txt = "Performance is limited by instruction throughput (loading/decoding program instructions to execution core) (front-end is a bottleneck).\n\nBy removing all these bottlenecks, you can lower the cost of an iteration from 14.75 to 13.00 cycles (1.13x speedup).\n",
        },
        {
          title = "ASM code",
          txt = "In the binary file, the address of the loop is: 1861d\n\nInstruction                              | Nb FU | P0   | P1   | P2   | P3   | P4 | P5   | Latency | Recip. throughput\n----------------------------------------------------------------------------------------------------------------------\nMOV %R10,%RAX                            | 1     | 0.33 | 0.33 | 0    | 0    | 0  | 0.33 | 1       | 0.33\nMOVSXD %ECX,%RDX                         | 1     | 0.33 | 0.33 | 0    | 0    | 0  | 0.33 | 1       | 0.33\nMOV %R11,%R14                            | 1     | 0.33 | 0.33 | 0    | 0    | 0  | 0.33 | 1       | 0.33\nIMUL %RDI,%RAX                           | 1     | 0    | 1    | 0    | 0    | 0  | 0    | 3       | 1\nADD $0x1,%ECX                            | 1     | 0.33 | 0.33 | 0    | 0    | 0  | 0.33 | 1       | 0.33\nADD $0x1,%ESI                            | 1     | 0.33 | 0.33 | 0    | 0    | 0  | 0.33 | 1       | 0.33\nIMUL %RDX,%R14                           | 1     | 0    | 1    | 0    | 0    | 0  | 0    | 3       | 1\nLEA (%RDX,%RDX,4),%RDX                   | 1     | 0.50 | 0.50 | 0    | 0    | 0  | 0    | 1       | 0.50\nADD %R9,%RAX                             | 1     | 0.33 | 0.33 | 0    | 0    | 0  | 0.33 | 1       | 0.33\nADD %R14,%RAX                            | 1     | 0.33 | 0.33 | 0    | 0    | 0  | 0.33 | 1       | 0.33\nMOV %RBP,%R14                            | 1     | 0.33 | 0.33 | 0    | 0    | 0  | 0.33 | 1       | 0.33\nIMUL %RDI,%R14                           | 1     | 0    | 1    | 0    | 0    | 0  | 0    | 3       | 1\nADD %R15,%RAX                            | 1     | 0.33 | 0.33 | 0    | 0    | 0  | 0.33 | 1       | 0.33\nLEA (%R12,%RAX,8),%RAX                   | 1     | 0.50 | 0.50 | 0    | 0    | 0  | 0    | 1       | 0.50\nVMOVSD 0x8(%RAX),%XMM10                  | 1     | 0    | 0    | 0.50 | 0.50 | 0  | 0    | 3       | 0.50\nADD %RBX,%R14                            | 1     | 0.33 | 0.33 | 0    | 0    | 0  | 0.33 | 1       | 0.33\nADD %RDX,%R14                            | 1     | 0.33 | 0.33 | 0    | 0    | 0  | 0.33 | 1       | 0.33\nLEA (%R13,%R14,8),%R14                   | 1     | 0.50 | 0.50 | 0    | 0    | 0  | 0    | 1       | 0.50\nVMOVSD %XMM10,0x8(%R14)                  | 1     | 0    | 0    | 0.50 | 0.50 | 1  | 0    | 3       | 1\nVMOVSD 0x10(%RAX),%XMM11                 | 1     | 0    | 0    | 0.50 | 0.50 | 0  | 0    | 3       | 0.50\nVMOVSD %XMM11,0x10(%R14)                 | 1     | 0    | 0    | 0.50 | 0.50 | 1  | 0    | 3       | 1\nVMOVSD 0x18(%RAX),%XMM12                 | 1     | 0    | 0    | 0.50 | 0.50 | 0  | 0    | 3       | 0.50\nVMOVSD %XMM12,0x18(%R14)                 | 1     | 0    | 0    | 0.50 | 0.50 | 1  | 0    | 3       | 1\nVMOVSD 0x20(%RAX),%XMM13                 | 1     | 0    | 0    | 0.50 | 0.50 | 0  | 0    | 3       | 0.50\nVMOVSD %XMM13,0x20(%R14)                 | 1     | 0    | 0    | 0.50 | 0.50 | 1  | 0    | 3       | 1\nVMOVSD 0x28(%RAX),%XMM14                 | 1     | 0    | 0    | 0.50 | 0.50 | 0  | 0    | 3       | 0.50\nVMOVSD %XMM14,0x28(%R14)                 | 1     | 0    | 0    | 0.50 | 0.50 | 1  | 0    | 3       | 1\nCMP %ECX,%R8D                            | 1     | 0.33 | 0.33 | 0    | 0    | 0  | 0.33 | 1       | 0.33\nJLE 186bf <copy_x_face_._omp_fn.1+0x25f> | 1     | 0    | 0    | 0    | 0    | 0  | 1    | 0       | 1-2\nADD $0x1,%ESI                            | 1     | 0.33 | 0.33 | 0    | 0    | 0  | 0.33 | 1       | 0.33\nMOV %R10,%RAX                            | 1     | 0.33 | 0.33 | 0    | 0    | 0  | 0.33 | 1       | 0.33\nMOVSXD %ECX,%RDX                         | 1     | 0.33 | 0.33 | 0    | 0    | 0  | 0.33 | 1       | 0.33\nMOV %R11,%R14                            | 1     | 0.33 | 0.33 | 0    | 0    | 0  | 0.33 | 1       | 0.33\nIMUL %RDI,%RAX                           | 1     | 0    | 1    | 0    | 0    | 0  | 0    | 3       | 1\nIMUL %RDX,%R14                           | 1     | 0    | 1    | 0    | 0    | 0  | 0    | 3       | 1\nLEA (%RDX,%RDX,4),%RDX                   | 1     | 0.50 | 0.50 | 0    | 0    | 0  | 0    | 1       | 0.50\nADD %R9,%RAX                             | 1     | 0.33 | 0.33 | 0    | 0    | 0  | 0.33 | 1       | 0.33\nADD %R14,%RAX                            | 1     | 0.33 | 0.33 | 0    | 0    | 0  | 0.33 | 1       | 0.33\nMOV %RBP,%R14                            | 1     | 0.33 | 0.33 | 0    | 0    | 0  | 0.33 | 1       | 0.33\nIMUL %RDI,%R14                           | 1     | 0    | 1    | 0    | 0    | 0  | 0    | 3       | 1\nADD %R15,%RAX                            | 1     | 0.33 | 0.33 | 0    | 0    | 0  | 0.33 | 1       | 0.33\nLEA (%R12,%RAX,8),%RAX                   | 1     | 0.50 | 0.50 | 0    | 0    | 0  | 0    | 1       | 0.50\nVMOVSD 0x8(%RAX),%XMM5                   | 1     | 0    | 0    | 0.50 | 0.50 | 0  | 0    | 3       | 0.50\nADD %RBX,%R14                            | 1     | 0.33 | 0.33 | 0    | 0    | 0  | 0.33 | 1       | 0.33\nADD %RDX,%R14                            | 1     | 0.33 | 0.33 | 0    | 0    | 0  | 0.33 | 1       | 0.33\nLEA (%R13,%R14,8),%R14                   | 1     | 0.50 | 0.50 | 0    | 0    | 0  | 0    | 1       | 0.50\nVMOVSD %XMM5,0x8(%R14)                   | 1     | 0    | 0    | 0.50 | 0.50 | 1  | 0    | 3       | 1\nVMOVSD 0x10(%RAX),%XMM6                  | 1     | 0    | 0    | 0.50 | 0.50 | 0  | 0    | 3       | 0.50\nVMOVSD %XMM6,0x10(%R14)                  | 1     | 0    | 0    | 0.50 | 0.50 | 1  | 0    | 3       | 1\nVMOVSD 0x18(%RAX),%XMM7                  | 1     | 0    | 0    | 0.50 | 0.50 | 0  | 0    | 3       | 0.50\nVMOVSD %XMM7,0x18(%R14)                  | 1     | 0    | 0    | 0.50 | 0.50 | 1  | 0    | 3       | 1\nVMOVSD 0x20(%RAX),%XMM8                  | 1     | 0    | 0    | 0.50 | 0.50 | 0  | 0    | 3       | 0.50\nVMOVSD %XMM8,0x20(%R14)                  | 1     | 0    | 0    | 0.50 | 0.50 | 1  | 0    | 3       | 1\nVMOVSD 0x28(%RAX),%XMM9                  | 1     | 0    | 0    | 0.50 | 0.50 | 0  | 0    | 3       | 0.50\nVMOVSD %XMM9,0x28(%R14)                  | 1     | 0    | 0    | 0.50 | 0.50 | 1  | 0    | 3       | 1\nCMP 0x8(%RSP),%ESI                       | 1     | 0.33 | 0.33 | 0.50 | 0.50 | 0  | 0.33 | 1       | 0.50\nJE 186b0 <copy_x_face_._omp_fn.1+0x250>  | 1     | 0    | 0    | 0    | 0    | 0  | 1    | 0       | 1-2\nADD $0x1,%ECX                            | 1     | 0.33 | 0.33 | 0    | 0    | 0  | 0.33 | 1       | 0.33\nCMP %ECX,%R8D                            | 1     | 0.33 | 0.33 | 0    | 0    | 0  | 0.33 | 1       | 0.33\nJG 185a0 <copy_x_face_._omp_fn.1+0x140>  | 1     | 0    | 0    | 0    | 0    | 0  | 1    | 0       | 1-2\n",
        },
      },
      header = {
        "0% of peak computational performance is used (0.00 out of 2.00 FLOP per cycle (GFLOPS @ 1GHz))",
      },
      brief = {
      },
      gain = {
        {
          workaround = " - Try to reorganize arrays of structures to structures of arrays\n - Consider to permute loops (see vectorization gain report)\n - To reference allocatable arrays, use \"allocatable\" instead of \"pointer\" pointers or qualify them with the \"contiguous\" attribute (Fortran 2008)\n - For structures, limit to one indirection. For example, use a_b%c instead of a%b%c with a_b set to a%b before this loop\n",
          title = "Code clean check",
          txt = "Detected a slowdown caused by scalar integer instructions (typically used for address computation).\nBy removing them, you can lower the cost of an iteration from 14.75 to 10.00 cycles (1.47x speedup).",
        },
        {
          workaround = " - Try another compiler or update/tune your current one:\n  * recompile with fassociative-math (included in Ofast or ffast-math) to extend loop vectorization to FP reductions.\n - Remove inter-iterations dependences from your loop and make it unit-stride:\n  * If your arrays have 2 or more dimensions, check whether elements are accessed contiguously and, otherwise, try to permute loops accordingly:\nFortran storage order is column-major: do i do j a(i,j) = b(i,j) (slow, non stride 1) => do i do j a(j,i) = b(i,j) (fast, stride 1)\n  * If your loop streams arrays of structures (AoS), try to use structures of arrays instead (SoA):\ndo i a(i)%x = b(i)%x (slow, non stride 1) => do i a%x(i) = b%x(i) (fast, stride 1)\n",
          details = "All SSE/AVX instructions are used in scalar version (process only one data element in vector registers).\nSince your execution units are vector units, only a vectorized loop can use their full power.\n",
          title = "Vectorization",
          txt = "Your loop is not vectorized.\n4 data elements could be processed at once in vector registers.\nBy vectorizing your loop, you can lower the cost of an iteration from 14.75 to 5.00 cycles (2.95x speedup).",
        },
        {
          title = "Execution units bottlenecks",
          txt = "Found no such bottlenecks but see expert reports for more complex bottlenecks.",
        },
      },
      potential = {
      },
    },
    {
      hint = {
        {
          details = "These instructions generate more than one micro-operation and only one of them can be decoded during a cycle and the extra micro-operations increase pressure on execution units.\n - ADD: 1 occurrences\n",
          title = "Complex instructions",
          txt = "Detected COMPLEX INSTRUCTIONS.\n",
        },
        {
          workaround = " - Try to reorganize arrays of structures to structures of arrays\n - Consider to permute loops (see vectorization gain report)\n",
          details = " - Constant unknown stride: 2 occurrence(s)\nNon-unit stride (uncontiguous) accesses are not efficiently using data caches\n",
          title = "Slow data structures access",
          txt = "Detected data structures (typically arrays) that cannot be efficiently read/written",
        },
        {
          title = "Type of elements and instruction set",
          txt = "No instructions are processing arithmetic or math operations on FP elements. This loop is probably writing/copying data or processing integer elements.",
        },
        {
          title = "Matching between your loop (in the source code) and the binary loop",
          txt = "The binary loop does not contain any FP arithmetical operations.\nThe binary loop is loading 92 bytes.\nThe binary loop is storing 84 bytes.",
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
          txt = "nb instructions    : 64\nnb uops            : 65\nloop length        : 270\nused x86 registers : 16\nused mmx registers : 0\nused xmm registers : 10\nused ymm registers : 0\nused zmm registers : 0\nnb stack references: 2\n",
        },
        {
          title = "Front-end",
          txt = "MACRO FUSION NOT POSSIBLE\nFIT IN UOP CACHE\nmicro-operation queue: 16.25 cycles\nfront end            : 16.25 cycles\n",
        },
        {
          title = "Back-end",
          txt = "       | P0    | P1    | P2    | P3    | P4    | P5\n------------------------------------------------------\nuops   | 14.33 | 14.33 | 12.00 | 12.00 | 11.00 | 14.33\ncycles | 14.33 | 14.33 | 12.00 | 12.00 | 11.00 | 14.33\n\nCycles executing div or sqrt instructions: NA\nLongest recurrence chain latency (RecMII): 2.00\n",
        },
        {
          title = "Cycles summary",
          txt = "Front-end : 16.25\nDispatch  : 14.33\nData deps.: 2.00\nOverall L1: 16.25\n",
        },
        {
          title = "Vectorization ratios",
          txt = "INT\nall    : 0%\nload   : 0%\nstore  : NA (no store vectorizable/vectorized instructions)\nmul    : NA (no mul vectorizable/vectorized instructions)\nadd-sub: 0%\nfma    : NA (no fma vectorizable/vectorized instructions)\nother  : 0%\nFP\nall     : 0%\nload    : 0%\nstore   : 0%\nmul     : NA (no mul vectorizable/vectorized instructions)\nadd-sub : NA (no add-sub vectorizable/vectorized instructions)\nfma     : NA (no fma vectorizable/vectorized instructions)\ndiv/sqrt: NA (no div/sqrt vectorizable/vectorized instructions)\nother   : NA (no other vectorizable/vectorized instructions)\nINT+FP\nall     : 0%\nload    : 0%\nstore   : 0%\nmul     : NA (no mul vectorizable/vectorized instructions)\nadd-sub : 0%\nfma     : NA (no fma vectorizable/vectorized instructions)\ndiv/sqrt: NA (no div/sqrt vectorizable/vectorized instructions)\nother   : 0%\n",
        },
        {
          title = "Vector efficiency ratios",
          txt = "INT\nall    : 27%\nload   : 37%\nstore  : NA (no store vectorizable/vectorized instructions)\nmul    : NA (no mul vectorizable/vectorized instructions)\nadd-sub: 25%\nfma    : NA (no fma vectorizable/vectorized instructions)\nother  : 25%\nFP\nall     : 25%\nload    : 25%\nstore   : 25%\nmul     : NA (no mul vectorizable/vectorized instructions)\nadd-sub : NA (no add-sub vectorizable/vectorized instructions)\nfma     : NA (no fma vectorizable/vectorized instructions)\ndiv/sqrt: NA (no div/sqrt vectorizable/vectorized instructions)\nother   : NA (no other vectorizable/vectorized instructions)\nINT+FP\nall     : 25%\nload    : 27%\nstore   : 25%\nmul     : NA (no mul vectorizable/vectorized instructions)\nadd-sub : 25%\nfma     : NA (no fma vectorizable/vectorized instructions)\ndiv/sqrt: NA (no div/sqrt vectorizable/vectorized instructions)\nother   : 25%\n",
        },
        {
          title = "Cycles and memory resources usage",
          txt = "Assuming all data fit into the L1 cache, each iteration of the binary loop takes 16.25 cycles. At this rate:\n - 17% of peak load performance is reached (5.66 out of 32.00 bytes loaded per cycle (GB/s @ 1GHz))\n - 32% of peak store performance is reached (5.17 out of 16.00 bytes stored per cycle (GB/s @ 1GHz))\n",
        },
        {
          title = "Front-end bottlenecks",
          txt = "Performance is limited by instruction throughput (loading/decoding program instructions to execution core) (front-end is a bottleneck).\n\nBy removing all these bottlenecks, you can lower the cost of an iteration from 16.25 to 14.33 cycles (1.13x speedup).\n",
        },
        {
          title = "ASM code",
          txt = "In the binary file, the address of the loop is: 1861d\n\nInstruction                              | Nb FU | P0   | P1   | P2   | P3   | P4 | P5   | Latency | Recip. throughput\n----------------------------------------------------------------------------------------------------------------------\nMOV %R10,%RAX                            | 1     | 0.33 | 0.33 | 0    | 0    | 0  | 0.33 | 1       | 0.33\nMOVSXD %ECX,%RDX                         | 1     | 0.33 | 0.33 | 0    | 0    | 0  | 0.33 | 1       | 0.33\nMOV %R11,%R14                            | 1     | 0.33 | 0.33 | 0    | 0    | 0  | 0.33 | 1       | 0.33\nIMUL %RDI,%RAX                           | 1     | 0    | 1    | 0    | 0    | 0  | 0    | 3       | 1\nADD $0x1,%ECX                            | 1     | 0.33 | 0.33 | 0    | 0    | 0  | 0.33 | 1       | 0.33\nADD $0x1,%ESI                            | 1     | 0.33 | 0.33 | 0    | 0    | 0  | 0.33 | 1       | 0.33\nIMUL %RDX,%R14                           | 1     | 0    | 1    | 0    | 0    | 0  | 0    | 3       | 1\nLEA (%RDX,%RDX,4),%RDX                   | 1     | 0.50 | 0.50 | 0    | 0    | 0  | 0    | 1       | 0.50\nADD %R9,%RAX                             | 1     | 0.33 | 0.33 | 0    | 0    | 0  | 0.33 | 1       | 0.33\nADD %R14,%RAX                            | 1     | 0.33 | 0.33 | 0    | 0    | 0  | 0.33 | 1       | 0.33\nMOV %RBP,%R14                            | 1     | 0.33 | 0.33 | 0    | 0    | 0  | 0.33 | 1       | 0.33\nIMUL %RDI,%R14                           | 1     | 0    | 1    | 0    | 0    | 0  | 0    | 3       | 1\nADD %R15,%RAX                            | 1     | 0.33 | 0.33 | 0    | 0    | 0  | 0.33 | 1       | 0.33\nLEA (%R12,%RAX,8),%RAX                   | 1     | 0.50 | 0.50 | 0    | 0    | 0  | 0    | 1       | 0.50\nVMOVSD 0x8(%RAX),%XMM10                  | 1     | 0    | 0    | 0.50 | 0.50 | 0  | 0    | 3       | 0.50\nADD %RBX,%R14                            | 1     | 0.33 | 0.33 | 0    | 0    | 0  | 0.33 | 1       | 0.33\nADD %RDX,%R14                            | 1     | 0.33 | 0.33 | 0    | 0    | 0  | 0.33 | 1       | 0.33\nLEA (%R13,%R14,8),%R14                   | 1     | 0.50 | 0.50 | 0    | 0    | 0  | 0    | 1       | 0.50\nVMOVSD %XMM10,0x8(%R14)                  | 1     | 0    | 0    | 0.50 | 0.50 | 1  | 0    | 3       | 1\nVMOVSD 0x10(%RAX),%XMM11                 | 1     | 0    | 0    | 0.50 | 0.50 | 0  | 0    | 3       | 0.50\nVMOVSD %XMM11,0x10(%R14)                 | 1     | 0    | 0    | 0.50 | 0.50 | 1  | 0    | 3       | 1\nVMOVSD 0x18(%RAX),%XMM12                 | 1     | 0    | 0    | 0.50 | 0.50 | 0  | 0    | 3       | 0.50\nVMOVSD %XMM12,0x18(%R14)                 | 1     | 0    | 0    | 0.50 | 0.50 | 1  | 0    | 3       | 1\nVMOVSD 0x20(%RAX),%XMM13                 | 1     | 0    | 0    | 0.50 | 0.50 | 0  | 0    | 3       | 0.50\nVMOVSD %XMM13,0x20(%R14)                 | 1     | 0    | 0    | 0.50 | 0.50 | 1  | 0    | 3       | 1\nVMOVSD 0x28(%RAX),%XMM14                 | 1     | 0    | 0    | 0.50 | 0.50 | 0  | 0    | 3       | 0.50\nVMOVSD %XMM14,0x28(%R14)                 | 1     | 0    | 0    | 0.50 | 0.50 | 1  | 0    | 3       | 1\nCMP %ECX,%R8D                            | 1     | 0.33 | 0.33 | 0    | 0    | 0  | 0.33 | 1       | 0.33\nJLE 186bf <copy_x_face_._omp_fn.1+0x25f> | 1     | 0    | 0    | 0    | 0    | 0  | 1    | 0       | 1-2\nADD $0x1,%ESI                            | 1     | 0.33 | 0.33 | 0    | 0    | 0  | 0.33 | 1       | 0.33\nMOV %R10,%RAX                            | 1     | 0.33 | 0.33 | 0    | 0    | 0  | 0.33 | 1       | 0.33\nMOVSXD %ECX,%RDX                         | 1     | 0.33 | 0.33 | 0    | 0    | 0  | 0.33 | 1       | 0.33\nMOV %R11,%R14                            | 1     | 0.33 | 0.33 | 0    | 0    | 0  | 0.33 | 1       | 0.33\nIMUL %RDI,%RAX                           | 1     | 0    | 1    | 0    | 0    | 0  | 0    | 3       | 1\nIMUL %RDX,%R14                           | 1     | 0    | 1    | 0    | 0    | 0  | 0    | 3       | 1\nLEA (%RDX,%RDX,4),%RDX                   | 1     | 0.50 | 0.50 | 0    | 0    | 0  | 0    | 1       | 0.50\nADD %R9,%RAX                             | 1     | 0.33 | 0.33 | 0    | 0    | 0  | 0.33 | 1       | 0.33\nADD %R14,%RAX                            | 1     | 0.33 | 0.33 | 0    | 0    | 0  | 0.33 | 1       | 0.33\nMOV %RBP,%R14                            | 1     | 0.33 | 0.33 | 0    | 0    | 0  | 0.33 | 1       | 0.33\nIMUL %RDI,%R14                           | 1     | 0    | 1    | 0    | 0    | 0  | 0    | 3       | 1\nADD %R15,%RAX                            | 1     | 0.33 | 0.33 | 0    | 0    | 0  | 0.33 | 1       | 0.33\nLEA (%R12,%RAX,8),%RAX                   | 1     | 0.50 | 0.50 | 0    | 0    | 0  | 0    | 1       | 0.50\nVMOVSD 0x8(%RAX),%XMM5                   | 1     | 0    | 0    | 0.50 | 0.50 | 0  | 0    | 3       | 0.50\nADD %RBX,%R14                            | 1     | 0.33 | 0.33 | 0    | 0    | 0  | 0.33 | 1       | 0.33\nADD %RDX,%R14                            | 1     | 0.33 | 0.33 | 0    | 0    | 0  | 0.33 | 1       | 0.33\nLEA (%R13,%R14,8),%R14                   | 1     | 0.50 | 0.50 | 0    | 0    | 0  | 0    | 1       | 0.50\nVMOVSD %XMM5,0x8(%R14)                   | 1     | 0    | 0    | 0.50 | 0.50 | 1  | 0    | 3       | 1\nVMOVSD 0x10(%RAX),%XMM6                  | 1     | 0    | 0    | 0.50 | 0.50 | 0  | 0    | 3       | 0.50\nVMOVSD %XMM6,0x10(%R14)                  | 1     | 0    | 0    | 0.50 | 0.50 | 1  | 0    | 3       | 1\nVMOVSD 0x18(%RAX),%XMM7                  | 1     | 0    | 0    | 0.50 | 0.50 | 0  | 0    | 3       | 0.50\nVMOVSD %XMM7,0x18(%R14)                  | 1     | 0    | 0    | 0.50 | 0.50 | 1  | 0    | 3       | 1\nVMOVSD 0x20(%RAX),%XMM8                  | 1     | 0    | 0    | 0.50 | 0.50 | 0  | 0    | 3       | 0.50\nVMOVSD %XMM8,0x20(%R14)                  | 1     | 0    | 0    | 0.50 | 0.50 | 1  | 0    | 3       | 1\nVMOVSD 0x28(%RAX),%XMM9                  | 1     | 0    | 0    | 0.50 | 0.50 | 0  | 0    | 3       | 0.50\nVMOVSD %XMM9,0x28(%R14)                  | 1     | 0    | 0    | 0.50 | 0.50 | 1  | 0    | 3       | 1\nCMP 0x8(%RSP),%ESI                       | 1     | 0.33 | 0.33 | 0.50 | 0.50 | 0  | 0.33 | 1       | 0.50\nJE 186b0 <copy_x_face_._omp_fn.1+0x250>  | 1     | 0    | 0    | 0    | 0    | 0  | 1    | 0       | 1-2\nADD $0x1,%ECX                            | 1     | 0.33 | 0.33 | 0    | 0    | 0  | 0.33 | 1       | 0.33\nCMP %ECX,%R8D                            | 1     | 0.33 | 0.33 | 0    | 0    | 0  | 0.33 | 1       | 0.33\nJG 185a0 <copy_x_face_._omp_fn.1+0x140>  | 1     | 0    | 0    | 0    | 0    | 0  | 1    | 0       | 1-2\nADDL $0x1,0xc(%RSP)                      | 2     | 0.33 | 0.33 | 1    | 1    | 1  | 0.33 | 6       | 1\nMOV $0x1,%ECX                            | 1     | 0.33 | 0.33 | 0    | 0    | 0  | 0.33 | 1       | 0.33\nMOVSXD 0xc(%RSP),%RDI                    | 1     | 0    | 0    | 0.50 | 0.50 | 0  | 0    | 1       | 0.50\nJMP 1861a <copy_x_face_._omp_fn.1+0x1ba> | 1     | 0    | 0    | 0    | 0    | 0  | 1    | 0       | 2\n",
        },
      },
      header = {
        "0% of peak computational performance is used (0.00 out of 2.00 FLOP per cycle (GFLOPS @ 1GHz))",
      },
      brief = {
      },
      gain = {
        {
          workaround = " - Try to reorganize arrays of structures to structures of arrays\n - Consider to permute loops (see vectorization gain report)\n - To reference allocatable arrays, use \"allocatable\" instead of \"pointer\" pointers or qualify them with the \"contiguous\" attribute (Fortran 2008)\n - For structures, limit to one indirection. For example, use a_b%c instead of a%b%c with a_b set to a%b before this loop\n",
          title = "Code clean check",
          txt = "Detected a slowdown caused by scalar integer instructions (typically used for address computation).\nBy removing them, you can lower the cost of an iteration from 16.25 to 11.50 cycles (1.41x speedup).",
        },
        {
          workaround = " - Try another compiler or update/tune your current one:\n  * recompile with fassociative-math (included in Ofast or ffast-math) to extend loop vectorization to FP reductions.\n - Remove inter-iterations dependences from your loop and make it unit-stride:\n  * If your arrays have 2 or more dimensions, check whether elements are accessed contiguously and, otherwise, try to permute loops accordingly:\nFortran storage order is column-major: do i do j a(i,j) = b(i,j) (slow, non stride 1) => do i do j a(j,i) = b(i,j) (fast, stride 1)\n  * If your loop streams arrays of structures (AoS), try to use structures of arrays instead (SoA):\ndo i a(i)%x = b(i)%x (slow, non stride 1) => do i a%x(i) = b%x(i) (fast, stride 1)\n",
          details = "All SSE/AVX instructions are used in scalar version (process only one data element in vector registers).\nSince your execution units are vector units, only a vectorized loop can use their full power.\n",
          title = "Vectorization",
          txt = "Your loop is not vectorized.\nOnly 25% of vector register length is used (average across all SSE/AVX instructions).\nBy vectorizing your loop, you can lower the cost of an iteration from 16.25 to 5.25 cycles (3.10x speedup).",
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
          details = "These instructions generate more than one micro-operation and only one of them can be decoded during a cycle and the extra micro-operations increase pressure on execution units.\n - ADD: 1.33 occurrences\n",
          title = "Complex instructions",
          txt = "Detected COMPLEX INSTRUCTIONS.\n",
        },
        {
          title = "Type of elements and instruction set",
          txt = "No instructions are processing arithmetic or math operations on FP elements. This loop is probably writing/copying data or processing integer elements.",
        },
        {
          title = "Matching between your loop (in the source code) and the binary loop",
          txt = "The binary loop does not contain any FP arithmetical operations.\nThe binary loop is loading 92 bytes.\nThe binary loop is storing 84 bytes.",
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
          txt = "nb instructions    : 64\nnb uops            : 64.75\nloop length        : 270\nused x86 registers : 16\nused mmx registers : 0\nused xmm registers : 10\nused ymm registers : 0\nused zmm registers : 0\nnb stack references: 1.75\n",
        },
        {
          title = "Front-end",
          txt = "MACRO FUSION NOT POSSIBLE\nmicro-operation queue: 16.19 cycles\nfront end            : 16.19 cycles\n",
        },
        {
          title = "Back-end",
          txt = "       | P0    | P1    | P2    | P3    | P4    | P5\n------------------------------------------------------\nuops   | 14.25 | 14.25 | 12.00 | 12.00 | 11.00 | 14.25\ncycles | 14.25 | 14.25 | 12.00 | 12.00 | 11.00 | 14.25\n\nCycles executing div or sqrt instructions: NA\nLongest recurrence chain latency (RecMII): 2.00\n",
        },
        {
          title = "Cycles summary",
          txt = "Front-end : 16.19\nDispatch  : 14.25\nData deps.: 2.00\nOverall L1: 16.19\n",
        },
        {
          title = "Vectorization ratios",
          txt = "INT\nall    : 0%\nload   : 0%\nstore  : 0%\nmul    : NA (no mul vectorizable/vectorized instructions)\nadd-sub: 0%\nfma    : NA (no fma vectorizable/vectorized instructions)\nother  : 0%\nFP\nall     : 0%\nload    : 0%\nstore   : 0%\nmul     : NA (no mul vectorizable/vectorized instructions)\nadd-sub : NA (no add-sub vectorizable/vectorized instructions)\nfma     : NA (no fma vectorizable/vectorized instructions)\ndiv/sqrt: NA (no div/sqrt vectorizable/vectorized instructions)\nother   : NA (no other vectorizable/vectorized instructions)\nINT+FP\nall     : 0%\nload    : 0%\nstore   : 0%\nmul     : NA (no mul vectorizable/vectorized instructions)\nadd-sub : 0%\nfma     : NA (no fma vectorizable/vectorized instructions)\ndiv/sqrt: NA (no div/sqrt vectorizable/vectorized instructions)\nother   : 0%\n",
        },
        {
          title = "Vector efficiency ratios",
          txt = "INT\nall    : 27%\nload   : 34%\nstore  : 25%\nmul    : NA (no mul vectorizable/vectorized instructions)\nadd-sub: 25%\nfma    : NA (no fma vectorizable/vectorized instructions)\nother  : 25%\nFP\nall     : 25%\nload    : 25%\nstore   : 25%\nmul     : NA (no mul vectorizable/vectorized instructions)\nadd-sub : NA (no add-sub vectorizable/vectorized instructions)\nfma     : NA (no fma vectorizable/vectorized instructions)\ndiv/sqrt: NA (no div/sqrt vectorizable/vectorized instructions)\nother   : NA (no other vectorizable/vectorized instructions)\nINT+FP\nall     : 25%\nload    : 26%\nstore   : 25%\nmul     : NA (no mul vectorizable/vectorized instructions)\nadd-sub : 25%\nfma     : NA (no fma vectorizable/vectorized instructions)\ndiv/sqrt: NA (no div/sqrt vectorizable/vectorized instructions)\nother   : 25%\n",
        },
        {
          title = "Cycles and memory resources usage",
          txt = "Assuming all data fit into the L1 cache, each iteration of the binary loop takes 16.19 cycles. At this rate:\n - 17% of peak load performance is reached (5.68 out of 32.00 bytes loaded per cycle (GB/s @ 1GHz))\n - 32% of peak store performance is reached (5.20 out of 16.00 bytes stored per cycle (GB/s @ 1GHz))\n",
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
          details = "All SSE/AVX instructions are used in scalar version (process only one data element in vector registers).\nSince your execution units are vector units, only a vectorized loop can use their full power.\n",
          title = "Vectorization",
          txt = "Your loop is not vectorized.\nOnly 25% of vector register length is used (average across all SSE/AVX instructions).\nBy vectorizing your loop, you can lower the cost of an iteration from 16.19 to 5.25 cycles (3.08x speedup).",
        },
      },
      potential = {
      },
    },
  common = {
    header = {
      "The loop is defined in /users/user2210/NPB3.4-MZ-MPI/BT-MZ/exch_qbc.f90:257-261.\n",
      "The related source loop is not unrolled or unrolled with no peel/tail loop.",
      "This loop has 4 execution paths.\n",
      "The presence of multiple execution paths is typically the main/first bottleneck.\nTry to simplify control inside loop: ideally, try to remove all conditional expressions, for example by (if applicable):\n - hoisting them (moving them outside the loop)\n - turning them into conditional moves, MIN or MAX\n\n",
      "Ex: if (x<0) x=0 => x = max(0,x) (Fortran instrinsic procedure)\n",
    },
    nb_paths = 4,
  },
}
