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
          txt = "nb instructions    : 60\nnb uops            : 60\nloop length        : 253\nused x86 registers : 16\nused mmx registers : 0\nused xmm registers : 10\nused ymm registers : 0\nused zmm registers : 0\nnb stack references: 1\n",
        },
        {
          title = "Front-end",
          txt = "MACRO FUSION NOT POSSIBLE\nFIT IN UOP CACHE\nmicro-operation queue: 15.00 cycles\nfront end            : 15.00 cycles\n",
        },
        {
          title = "Back-end",
          txt = "       | P0    | P1    | P2    | P3    | P4    | P5\n------------------------------------------------------\nuops   | 13.33 | 13.33 | 10.50 | 10.50 | 10.00 | 13.33\ncycles | 13.33 | 13.33 | 10.50 | 10.50 | 10.00 | 13.33\n\nCycles executing div or sqrt instructions: NA\nLongest recurrence chain latency (RecMII): 2.00\n",
        },
        {
          title = "Cycles summary",
          txt = "Front-end : 15.00\nDispatch  : 13.33\nData deps.: 2.00\nOverall L1: 15.00\n",
        },
        {
          title = "Vectorization ratios",
          txt = "INT\nall    : 0%\nload   : 0%\nstore  : NA (no store vectorizable/vectorized instructions)\nmul    : NA (no mul vectorizable/vectorized instructions)\nadd-sub: 0%\nfma    : NA (no fma vectorizable/vectorized instructions)\nother  : 0%\nFP\nall     : 0%\nload    : 0%\nstore   : 0%\nmul     : NA (no mul vectorizable/vectorized instructions)\nadd-sub : NA (no add-sub vectorizable/vectorized instructions)\nfma     : NA (no fma vectorizable/vectorized instructions)\ndiv/sqrt: NA (no div/sqrt vectorizable/vectorized instructions)\nother   : NA (no other vectorizable/vectorized instructions)\nINT+FP\nall     : 0%\nload    : 0%\nstore   : 0%\nmul     : NA (no mul vectorizable/vectorized instructions)\nadd-sub : 0%\nfma     : NA (no fma vectorizable/vectorized instructions)\ndiv/sqrt: NA (no div/sqrt vectorizable/vectorized instructions)\nother   : 0%\n",
        },
        {
          title = "Vector efficiency ratios",
          txt = "INT\nall    : 27%\nload   : 25%\nstore  : NA (no store vectorizable/vectorized instructions)\nmul    : NA (no mul vectorizable/vectorized instructions)\nadd-sub: 25%\nfma    : NA (no fma vectorizable/vectorized instructions)\nother  : 30%\nFP\nall     : 25%\nload    : 25%\nstore   : 25%\nmul     : NA (no mul vectorizable/vectorized instructions)\nadd-sub : NA (no add-sub vectorizable/vectorized instructions)\nfma     : NA (no fma vectorizable/vectorized instructions)\ndiv/sqrt: NA (no div/sqrt vectorizable/vectorized instructions)\nother   : NA (no other vectorizable/vectorized instructions)\nINT+FP\nall     : 25%\nload    : 25%\nstore   : 25%\nmul     : NA (no mul vectorizable/vectorized instructions)\nadd-sub : 25%\nfma     : NA (no fma vectorizable/vectorized instructions)\ndiv/sqrt: NA (no div/sqrt vectorizable/vectorized instructions)\nother   : 30%\n",
        },
        {
          title = "Cycles and memory resources usage",
          txt = "Assuming all data fit into the L1 cache, each iteration of the binary loop takes 15.00 cycles. At this rate:\n - 17% of peak load performance is reached (5.60 out of 32.00 bytes loaded per cycle (GB/s @ 1GHz))\n - 33% of peak store performance is reached (5.33 out of 16.00 bytes stored per cycle (GB/s @ 1GHz))\n",
        },
        {
          title = "Front-end bottlenecks",
          txt = "Performance is limited by instruction throughput (loading/decoding program instructions to execution core) (front-end is a bottleneck).\n\nBy removing all these bottlenecks, you can lower the cost of an iteration from 15.00 to 13.33 cycles (1.12x speedup).\n",
        },
        {
          title = "ASM code",
          txt = "In the binary file, the address of the loop is: 180f6\n\nInstruction                              | Nb FU | P0   | P1   | P2   | P3   | P4 | P5   | Latency | Recip. throughput\n----------------------------------------------------------------------------------------------------------------------\nMOV %R11,%RDX                            | 1     | 0.33 | 0.33 | 0    | 0    | 0  | 0.33 | 1       | 0.33\nMOVSXD %ECX,%RAX                         | 1     | 0.33 | 0.33 | 0    | 0    | 0  | 0.33 | 1       | 0.33\nADD $0x1,%ECX                            | 1     | 0.33 | 0.33 | 0    | 0    | 0  | 0.33 | 1       | 0.33\nIMUL %RDI,%RDX                           | 1     | 0    | 1    | 0    | 0    | 0  | 0    | 3       | 1\nADD $0x1,%ESI                            | 1     | 0.33 | 0.33 | 0    | 0    | 0  | 0.33 | 1       | 0.33\nLEA (%RAX,%RAX,4),%R14                   | 1     | 0.50 | 0.50 | 0    | 0    | 0  | 0    | 1       | 0.50\nADD %R10,%RDX                            | 1     | 0.33 | 0.33 | 0    | 0    | 0  | 0.33 | 1       | 0.33\nADD %R9,%RDX                             | 1     | 0.33 | 0.33 | 0    | 0    | 0  | 0.33 | 1       | 0.33\nADD %R14,%RDX                            | 1     | 0.33 | 0.33 | 0    | 0    | 0  | 0.33 | 1       | 0.33\nLEA (%R12,%RDX,8),%RAX                   | 1     | 0.50 | 0.50 | 0    | 0    | 0  | 0    | 1       | 0.50\nMOV %RBP,%RDX                            | 1     | 0.33 | 0.33 | 0    | 0    | 0  | 0.33 | 1       | 0.33\nIMUL %RDI,%RDX                           | 1     | 0    | 1    | 0    | 0    | 0  | 0    | 3       | 1\nVMOVSD 0x8(%RAX),%XMM10                  | 1     | 0    | 0    | 0.50 | 0.50 | 0  | 0    | 3       | 0.50\nADD %RBX,%RDX                            | 1     | 0.33 | 0.33 | 0    | 0    | 0  | 0.33 | 1       | 0.33\nADD %R14,%RDX                            | 1     | 0.33 | 0.33 | 0    | 0    | 0  | 0.33 | 1       | 0.33\nLEA (%R13,%RDX,8),%R14                   | 1     | 0.50 | 0.50 | 0    | 0    | 0  | 0    | 1       | 0.50\nVMOVSD %XMM10,0x8(%R14)                  | 1     | 0    | 0    | 0.50 | 0.50 | 1  | 0    | 3       | 1\nVMOVSD 0x10(%RAX),%XMM11                 | 1     | 0    | 0    | 0.50 | 0.50 | 0  | 0    | 3       | 0.50\nVMOVSD %XMM11,0x10(%R14)                 | 1     | 0    | 0    | 0.50 | 0.50 | 1  | 0    | 3       | 1\nVMOVSD 0x18(%RAX),%XMM12                 | 1     | 0    | 0    | 0.50 | 0.50 | 0  | 0    | 3       | 0.50\nVMOVSD %XMM12,0x18(%R14)                 | 1     | 0    | 0    | 0.50 | 0.50 | 1  | 0    | 3       | 1\nVMOVSD 0x20(%RAX),%XMM13                 | 1     | 0    | 0    | 0.50 | 0.50 | 0  | 0    | 3       | 0.50\nVMOVSD %XMM13,0x20(%R14)                 | 1     | 0    | 0    | 0.50 | 0.50 | 1  | 0    | 3       | 1\nVMOVSD 0x28(%RAX),%XMM14                 | 1     | 0    | 0    | 0.50 | 0.50 | 0  | 0    | 3       | 0.50\nVMOVSD %XMM14,0x28(%R14)                 | 1     | 0    | 0    | 0.50 | 0.50 | 1  | 0    | 3       | 1\nCMP %ECX,%R8D                            | 1     | 0.33 | 0.33 | 0    | 0    | 0  | 0.33 | 1       | 0.33\nJLE 1818f <copy_y_face_._omp_fn.1+0x23f> | 1     | 0    | 0    | 0    | 0    | 0  | 1    | 0       | 1-2\nADD $0x1,%ESI                            | 1     | 0.33 | 0.33 | 0    | 0    | 0  | 0.33 | 1       | 0.33\nMOV %R11,%RDX                            | 1     | 0.33 | 0.33 | 0    | 0    | 0  | 0.33 | 1       | 0.33\nMOVSXD %ECX,%RAX                         | 1     | 0.33 | 0.33 | 0    | 0    | 0  | 0.33 | 1       | 0.33\nIMUL %RDI,%RDX                           | 1     | 0    | 1    | 0    | 0    | 0  | 0    | 3       | 1\nLEA (%RAX,%RAX,4),%R14                   | 1     | 0.50 | 0.50 | 0    | 0    | 0  | 0    | 1       | 0.50\nADD %R10,%RDX                            | 1     | 0.33 | 0.33 | 0    | 0    | 0  | 0.33 | 1       | 0.33\nADD %R9,%RDX                             | 1     | 0.33 | 0.33 | 0    | 0    | 0  | 0.33 | 1       | 0.33\nADD %R14,%RDX                            | 1     | 0.33 | 0.33 | 0    | 0    | 0  | 0.33 | 1       | 0.33\nLEA (%R12,%RDX,8),%RAX                   | 1     | 0.50 | 0.50 | 0    | 0    | 0  | 0    | 1       | 0.50\nMOV %RBP,%RDX                            | 1     | 0.33 | 0.33 | 0    | 0    | 0  | 0.33 | 1       | 0.33\nIMUL %RDI,%RDX                           | 1     | 0    | 1    | 0    | 0    | 0  | 0    | 3       | 1\nVMOVSD 0x8(%RAX),%XMM5                   | 1     | 0    | 0    | 0.50 | 0.50 | 0  | 0    | 3       | 0.50\nADD %RBX,%RDX                            | 1     | 0.33 | 0.33 | 0    | 0    | 0  | 0.33 | 1       | 0.33\nADD %R14,%RDX                            | 1     | 0.33 | 0.33 | 0    | 0    | 0  | 0.33 | 1       | 0.33\nLEA (%R13,%RDX,8),%R14                   | 1     | 0.50 | 0.50 | 0    | 0    | 0  | 0    | 1       | 0.50\nVMOVSD %XMM5,0x8(%R14)                   | 1     | 0    | 0    | 0.50 | 0.50 | 1  | 0    | 3       | 1\nVMOVSD 0x10(%RAX),%XMM6                  | 1     | 0    | 0    | 0.50 | 0.50 | 0  | 0    | 3       | 0.50\nVMOVSD %XMM6,0x10(%R14)                  | 1     | 0    | 0    | 0.50 | 0.50 | 1  | 0    | 3       | 1\nVMOVSD 0x18(%RAX),%XMM7                  | 1     | 0    | 0    | 0.50 | 0.50 | 0  | 0    | 3       | 0.50\nVMOVSD %XMM7,0x18(%R14)                  | 1     | 0    | 0    | 0.50 | 0.50 | 1  | 0    | 3       | 1\nVMOVSD 0x20(%RAX),%XMM8                  | 1     | 0    | 0    | 0.50 | 0.50 | 0  | 0    | 3       | 0.50\nVMOVSD %XMM8,0x20(%R14)                  | 1     | 0    | 0    | 0.50 | 0.50 | 1  | 0    | 3       | 1\nVMOVSD 0x28(%RAX),%XMM9                  | 1     | 0    | 0    | 0.50 | 0.50 | 0  | 0    | 3       | 0.50\nVMOVSD %XMM9,0x28(%R14)                  | 1     | 0    | 0    | 0.50 | 0.50 | 1  | 0    | 3       | 1\nCMP 0xc(%RSP),%ESI                       | 1     | 0.33 | 0.33 | 0.50 | 0.50 | 0  | 0.33 | 1       | 0.50\nJE 18180 <copy_y_face_._omp_fn.1+0x230>  | 1     | 0    | 0    | 0    | 0    | 0  | 1    | 0       | 1-2\nADD $0x1,%ECX                            | 1     | 0.33 | 0.33 | 0    | 0    | 0  | 0.33 | 1       | 0.33\nCMP %ECX,%R8D                            | 1     | 0.33 | 0.33 | 0    | 0    | 0  | 0.33 | 1       | 0.33\nJG 18080 <copy_y_face_._omp_fn.1+0x130>  | 1     | 0    | 0    | 0    | 0    | 0  | 1    | 0       | 1-2\nADD $0x1,%R15D                           | 1     | 0.33 | 0.33 | 0    | 0    | 0  | 0.33 | 1       | 0.33\nMOV $0x1,%ECX                            | 1     | 0.33 | 0.33 | 0    | 0    | 0  | 0.33 | 1       | 0.33\nMOVSXD %R15D,%RDI                        | 1     | 0.33 | 0.33 | 0    | 0    | 0  | 0.33 | 1       | 0.33\nJMP 18080 <copy_y_face_._omp_fn.1+0x130> | 1     | 0    | 0    | 0    | 0    | 0  | 1    | 0       | 2\n",
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
          txt = "Detected a slowdown caused by scalar integer instructions (typically used for address computation).\nBy removing them, you can lower the cost of an iteration from 15.00 to 10.00 cycles (1.50x speedup).",
        },
        {
          workaround = " - Try another compiler or update/tune your current one:\n  * recompile with fassociative-math (included in Ofast or ffast-math) to extend loop vectorization to FP reductions.\n - Remove inter-iterations dependences from your loop and make it unit-stride:\n  * If your arrays have 2 or more dimensions, check whether elements are accessed contiguously and, otherwise, try to permute loops accordingly:\nFortran storage order is column-major: do i do j a(i,j) = b(i,j) (slow, non stride 1) => do i do j a(j,i) = b(i,j) (fast, stride 1)\n  * If your loop streams arrays of structures (AoS), try to use structures of arrays instead (SoA):\ndo i a(i)%x = b(i)%x (slow, non stride 1) => do i a%x(i) = b%x(i) (fast, stride 1)\n",
          details = "All SSE/AVX instructions are used in scalar version (process only one data element in vector registers).\nSince your execution units are vector units, only a vectorized loop can use their full power.\n",
          title = "Vectorization",
          txt = "Your loop is not vectorized.\nOnly 25% of vector register length is used (average across all SSE/AVX instructions).\nBy vectorizing your loop, you can lower the cost of an iteration from 15.00 to 5.00 cycles (3.00x speedup).",
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
          txt = "nb instructions    : 64\nnb uops            : 64\nloop length        : 270\nused x86 registers : 16\nused mmx registers : 0\nused xmm registers : 10\nused ymm registers : 0\nused zmm registers : 0\nnb stack references: 1\n",
        },
        {
          title = "Front-end",
          txt = "MACRO FUSION NOT POSSIBLE\nFIT IN UOP CACHE\nmicro-operation queue: 16.00 cycles\nfront end            : 16.00 cycles\n",
        },
        {
          title = "Back-end",
          txt = "       | P0    | P1    | P2    | P3    | P4    | P5\n------------------------------------------------------\nuops   | 14.67 | 14.67 | 10.50 | 10.50 | 10.00 | 14.67\ncycles | 14.67 | 14.67 | 10.50 | 10.50 | 10.00 | 14.67\n\nCycles executing div or sqrt instructions: NA\nLongest recurrence chain latency (RecMII): 2.00\n",
        },
        {
          title = "Cycles summary",
          txt = "Front-end : 16.00\nDispatch  : 14.67\nData deps.: 2.00\nOverall L1: 16.00\n",
        },
        {
          title = "Vectorization ratios",
          txt = "INT\nall    : 0%\nload   : 0%\nstore  : NA (no store vectorizable/vectorized instructions)\nmul    : NA (no mul vectorizable/vectorized instructions)\nadd-sub: 0%\nfma    : NA (no fma vectorizable/vectorized instructions)\nother  : 0%\nFP\nall     : 0%\nload    : 0%\nstore   : 0%\nmul     : NA (no mul vectorizable/vectorized instructions)\nadd-sub : NA (no add-sub vectorizable/vectorized instructions)\nfma     : NA (no fma vectorizable/vectorized instructions)\ndiv/sqrt: NA (no div/sqrt vectorizable/vectorized instructions)\nother   : NA (no other vectorizable/vectorized instructions)\nINT+FP\nall     : 0%\nload    : 0%\nstore   : 0%\nmul     : NA (no mul vectorizable/vectorized instructions)\nadd-sub : 0%\nfma     : NA (no fma vectorizable/vectorized instructions)\ndiv/sqrt: NA (no div/sqrt vectorizable/vectorized instructions)\nother   : 0%\n",
        },
        {
          title = "Vector efficiency ratios",
          txt = "INT\nall    : 29%\nload   : 25%\nstore  : NA (no store vectorizable/vectorized instructions)\nmul    : NA (no mul vectorizable/vectorized instructions)\nadd-sub: 25%\nfma    : NA (no fma vectorizable/vectorized instructions)\nother  : 32%\nFP\nall     : 25%\nload    : 25%\nstore   : 25%\nmul     : NA (no mul vectorizable/vectorized instructions)\nadd-sub : NA (no add-sub vectorizable/vectorized instructions)\nfma     : NA (no fma vectorizable/vectorized instructions)\ndiv/sqrt: NA (no div/sqrt vectorizable/vectorized instructions)\nother   : NA (no other vectorizable/vectorized instructions)\nINT+FP\nall     : 26%\nload    : 25%\nstore   : 25%\nmul     : NA (no mul vectorizable/vectorized instructions)\nadd-sub : 25%\nfma     : NA (no fma vectorizable/vectorized instructions)\ndiv/sqrt: NA (no div/sqrt vectorizable/vectorized instructions)\nother   : 32%\n",
        },
        {
          title = "Cycles and memory resources usage",
          txt = "Assuming all data fit into the L1 cache, each iteration of the binary loop takes 16.00 cycles. At this rate:\n - 16% of peak load performance is reached (5.25 out of 32.00 bytes loaded per cycle (GB/s @ 1GHz))\n - 31% of peak store performance is reached (5.00 out of 16.00 bytes stored per cycle (GB/s @ 1GHz))\n",
        },
        {
          title = "Front-end bottlenecks",
          txt = "Performance is limited by instruction throughput (loading/decoding program instructions to execution core) (front-end is a bottleneck).\n\nBy removing all these bottlenecks, you can lower the cost of an iteration from 16.00 to 14.67 cycles (1.09x speedup).\n",
        },
        {
          title = "ASM code",
          txt = "In the binary file, the address of the loop is: 180f6\n\nInstruction                              | Nb FU | P0   | P1   | P2   | P3   | P4 | P5   | Latency | Recip. throughput\n----------------------------------------------------------------------------------------------------------------------\nMOV %R11,%RDX                            | 1     | 0.33 | 0.33 | 0    | 0    | 0  | 0.33 | 1       | 0.33\nMOVSXD %ECX,%RAX                         | 1     | 0.33 | 0.33 | 0    | 0    | 0  | 0.33 | 1       | 0.33\nADD $0x1,%ECX                            | 1     | 0.33 | 0.33 | 0    | 0    | 0  | 0.33 | 1       | 0.33\nIMUL %RDI,%RDX                           | 1     | 0    | 1    | 0    | 0    | 0  | 0    | 3       | 1\nADD $0x1,%ESI                            | 1     | 0.33 | 0.33 | 0    | 0    | 0  | 0.33 | 1       | 0.33\nLEA (%RAX,%RAX,4),%R14                   | 1     | 0.50 | 0.50 | 0    | 0    | 0  | 0    | 1       | 0.50\nADD %R10,%RDX                            | 1     | 0.33 | 0.33 | 0    | 0    | 0  | 0.33 | 1       | 0.33\nADD %R9,%RDX                             | 1     | 0.33 | 0.33 | 0    | 0    | 0  | 0.33 | 1       | 0.33\nADD %R14,%RDX                            | 1     | 0.33 | 0.33 | 0    | 0    | 0  | 0.33 | 1       | 0.33\nLEA (%R12,%RDX,8),%RAX                   | 1     | 0.50 | 0.50 | 0    | 0    | 0  | 0    | 1       | 0.50\nMOV %RBP,%RDX                            | 1     | 0.33 | 0.33 | 0    | 0    | 0  | 0.33 | 1       | 0.33\nIMUL %RDI,%RDX                           | 1     | 0    | 1    | 0    | 0    | 0  | 0    | 3       | 1\nVMOVSD 0x8(%RAX),%XMM10                  | 1     | 0    | 0    | 0.50 | 0.50 | 0  | 0    | 3       | 0.50\nADD %RBX,%RDX                            | 1     | 0.33 | 0.33 | 0    | 0    | 0  | 0.33 | 1       | 0.33\nADD %R14,%RDX                            | 1     | 0.33 | 0.33 | 0    | 0    | 0  | 0.33 | 1       | 0.33\nLEA (%R13,%RDX,8),%R14                   | 1     | 0.50 | 0.50 | 0    | 0    | 0  | 0    | 1       | 0.50\nVMOVSD %XMM10,0x8(%R14)                  | 1     | 0    | 0    | 0.50 | 0.50 | 1  | 0    | 3       | 1\nVMOVSD 0x10(%RAX),%XMM11                 | 1     | 0    | 0    | 0.50 | 0.50 | 0  | 0    | 3       | 0.50\nVMOVSD %XMM11,0x10(%R14)                 | 1     | 0    | 0    | 0.50 | 0.50 | 1  | 0    | 3       | 1\nVMOVSD 0x18(%RAX),%XMM12                 | 1     | 0    | 0    | 0.50 | 0.50 | 0  | 0    | 3       | 0.50\nVMOVSD %XMM12,0x18(%R14)                 | 1     | 0    | 0    | 0.50 | 0.50 | 1  | 0    | 3       | 1\nVMOVSD 0x20(%RAX),%XMM13                 | 1     | 0    | 0    | 0.50 | 0.50 | 0  | 0    | 3       | 0.50\nVMOVSD %XMM13,0x20(%R14)                 | 1     | 0    | 0    | 0.50 | 0.50 | 1  | 0    | 3       | 1\nVMOVSD 0x28(%RAX),%XMM14                 | 1     | 0    | 0    | 0.50 | 0.50 | 0  | 0    | 3       | 0.50\nVMOVSD %XMM14,0x28(%R14)                 | 1     | 0    | 0    | 0.50 | 0.50 | 1  | 0    | 3       | 1\nCMP %ECX,%R8D                            | 1     | 0.33 | 0.33 | 0    | 0    | 0  | 0.33 | 1       | 0.33\nJLE 1818f <copy_y_face_._omp_fn.1+0x23f> | 1     | 0    | 0    | 0    | 0    | 0  | 1    | 0       | 1-2\nADD $0x1,%ESI                            | 1     | 0.33 | 0.33 | 0    | 0    | 0  | 0.33 | 1       | 0.33\nMOV %R11,%RDX                            | 1     | 0.33 | 0.33 | 0    | 0    | 0  | 0.33 | 1       | 0.33\nMOVSXD %ECX,%RAX                         | 1     | 0.33 | 0.33 | 0    | 0    | 0  | 0.33 | 1       | 0.33\nIMUL %RDI,%RDX                           | 1     | 0    | 1    | 0    | 0    | 0  | 0    | 3       | 1\nLEA (%RAX,%RAX,4),%R14                   | 1     | 0.50 | 0.50 | 0    | 0    | 0  | 0    | 1       | 0.50\nADD %R10,%RDX                            | 1     | 0.33 | 0.33 | 0    | 0    | 0  | 0.33 | 1       | 0.33\nADD %R9,%RDX                             | 1     | 0.33 | 0.33 | 0    | 0    | 0  | 0.33 | 1       | 0.33\nADD %R14,%RDX                            | 1     | 0.33 | 0.33 | 0    | 0    | 0  | 0.33 | 1       | 0.33\nLEA (%R12,%RDX,8),%RAX                   | 1     | 0.50 | 0.50 | 0    | 0    | 0  | 0    | 1       | 0.50\nMOV %RBP,%RDX                            | 1     | 0.33 | 0.33 | 0    | 0    | 0  | 0.33 | 1       | 0.33\nIMUL %RDI,%RDX                           | 1     | 0    | 1    | 0    | 0    | 0  | 0    | 3       | 1\nVMOVSD 0x8(%RAX),%XMM5                   | 1     | 0    | 0    | 0.50 | 0.50 | 0  | 0    | 3       | 0.50\nADD %RBX,%RDX                            | 1     | 0.33 | 0.33 | 0    | 0    | 0  | 0.33 | 1       | 0.33\nADD %R14,%RDX                            | 1     | 0.33 | 0.33 | 0    | 0    | 0  | 0.33 | 1       | 0.33\nLEA (%R13,%RDX,8),%R14                   | 1     | 0.50 | 0.50 | 0    | 0    | 0  | 0    | 1       | 0.50\nVMOVSD %XMM5,0x8(%R14)                   | 1     | 0    | 0    | 0.50 | 0.50 | 1  | 0    | 3       | 1\nVMOVSD 0x10(%RAX),%XMM6                  | 1     | 0    | 0    | 0.50 | 0.50 | 0  | 0    | 3       | 0.50\nVMOVSD %XMM6,0x10(%R14)                  | 1     | 0    | 0    | 0.50 | 0.50 | 1  | 0    | 3       | 1\nVMOVSD 0x18(%RAX),%XMM7                  | 1     | 0    | 0    | 0.50 | 0.50 | 0  | 0    | 3       | 0.50\nVMOVSD %XMM7,0x18(%R14)                  | 1     | 0    | 0    | 0.50 | 0.50 | 1  | 0    | 3       | 1\nVMOVSD 0x20(%RAX),%XMM8                  | 1     | 0    | 0    | 0.50 | 0.50 | 0  | 0    | 3       | 0.50\nVMOVSD %XMM8,0x20(%R14)                  | 1     | 0    | 0    | 0.50 | 0.50 | 1  | 0    | 3       | 1\nVMOVSD 0x28(%RAX),%XMM9                  | 1     | 0    | 0    | 0.50 | 0.50 | 0  | 0    | 3       | 0.50\nVMOVSD %XMM9,0x28(%R14)                  | 1     | 0    | 0    | 0.50 | 0.50 | 1  | 0    | 3       | 1\nCMP 0xc(%RSP),%ESI                       | 1     | 0.33 | 0.33 | 0.50 | 0.50 | 0  | 0.33 | 1       | 0.50\nJE 18180 <copy_y_face_._omp_fn.1+0x230>  | 1     | 0    | 0    | 0    | 0    | 0  | 1    | 0       | 1-2\nADD $0x1,%ECX                            | 1     | 0.33 | 0.33 | 0    | 0    | 0  | 0.33 | 1       | 0.33\nCMP %ECX,%R8D                            | 1     | 0.33 | 0.33 | 0    | 0    | 0  | 0.33 | 1       | 0.33\nJG 18080 <copy_y_face_._omp_fn.1+0x130>  | 1     | 0    | 0    | 0    | 0    | 0  | 1    | 0       | 1-2\nADD $0x1,%R15D                           | 1     | 0.33 | 0.33 | 0    | 0    | 0  | 0.33 | 1       | 0.33\nMOV $0x1,%ECX                            | 1     | 0.33 | 0.33 | 0    | 0    | 0  | 0.33 | 1       | 0.33\nMOVSXD %R15D,%RDI                        | 1     | 0.33 | 0.33 | 0    | 0    | 0  | 0.33 | 1       | 0.33\nJMP 18080 <copy_y_face_._omp_fn.1+0x130> | 1     | 0    | 0    | 0    | 0    | 0  | 1    | 0       | 2\nADD $0x1,%R15D                           | 1     | 0.33 | 0.33 | 0    | 0    | 0  | 0.33 | 1       | 0.33\nMOV $0x1,%ECX                            | 1     | 0.33 | 0.33 | 0    | 0    | 0  | 0.33 | 1       | 0.33\nMOVSXD %R15D,%RDI                        | 1     | 0.33 | 0.33 | 0    | 0    | 0  | 0.33 | 1       | 0.33\nJMP 180f3 <copy_y_face_._omp_fn.1+0x1a3> | 1     | 0    | 0    | 0    | 0    | 0  | 1    | 0       | 2\n",
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
          txt = "Detected a slowdown caused by scalar integer instructions (typically used for address computation).\nBy removing them, you can lower the cost of an iteration from 16.00 to 10.00 cycles (1.60x speedup).",
        },
        {
          workaround = " - Try another compiler or update/tune your current one:\n  * recompile with fassociative-math (included in Ofast or ffast-math) to extend loop vectorization to FP reductions.\n - Remove inter-iterations dependences from your loop and make it unit-stride:\n  * If your arrays have 2 or more dimensions, check whether elements are accessed contiguously and, otherwise, try to permute loops accordingly:\nFortran storage order is column-major: do i do j a(i,j) = b(i,j) (slow, non stride 1) => do i do j a(j,i) = b(i,j) (fast, stride 1)\n  * If your loop streams arrays of structures (AoS), try to use structures of arrays instead (SoA):\ndo i a(i)%x = b(i)%x (slow, non stride 1) => do i a%x(i) = b%x(i) (fast, stride 1)\n",
          details = "All SSE/AVX instructions are used in scalar version (process only one data element in vector registers).\nSince your execution units are vector units, only a vectorized loop can use their full power.\n",
          title = "Vectorization",
          txt = "Your loop is not vectorized.\nOnly 26% of vector register length is used (average across all SSE/AVX instructions).\nBy vectorizing your loop, you can lower the cost of an iteration from 16.00 to 5.00 cycles (3.20x speedup).",
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
          txt = "nb instructions    : 56\nnb uops            : 55\nloop length        : 236\nused x86 registers : 15\nused mmx registers : 0\nused xmm registers : 10\nused ymm registers : 0\nused zmm registers : 0\nnb stack references: 1\n",
        },
        {
          title = "Front-end",
          txt = "ASSUMED MACRO FUSION\nFIT IN UOP CACHE\nmicro-operation queue: 13.75 cycles\nfront end            : 13.75 cycles\n",
        },
        {
          title = "Back-end",
          txt = "       | P0    | P1    | P2    | P3    | P4    | P5\n------------------------------------------------------\nuops   | 11.67 | 11.67 | 10.50 | 10.50 | 10.00 | 11.67\ncycles | 11.67 | 11.67 | 10.50 | 10.50 | 10.00 | 11.67\n\nCycles executing div or sqrt instructions: NA\nLongest recurrence chain latency (RecMII): 2.00\n",
        },
        {
          title = "Cycles summary",
          txt = "Front-end : 13.75\nDispatch  : 11.67\nData deps.: 2.00\nOverall L1: 13.75\n",
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
          txt = "Assuming all data fit into the L1 cache, each iteration of the binary loop takes 13.75 cycles. At this rate:\n - 19% of peak load performance is reached (6.11 out of 32.00 bytes loaded per cycle (GB/s @ 1GHz))\n - 36% of peak store performance is reached (5.82 out of 16.00 bytes stored per cycle (GB/s @ 1GHz))\n",
        },
        {
          title = "Front-end bottlenecks",
          txt = "Performance is limited by instruction throughput (loading/decoding program instructions to execution core) (front-end is a bottleneck).\n\nBy removing all these bottlenecks, you can lower the cost of an iteration from 13.75 to 11.67 cycles (1.18x speedup).\n",
        },
        {
          title = "ASM code",
          txt = "In the binary file, the address of the loop is: 180f6\n\nInstruction                              | Nb FU | P0   | P1   | P2   | P3   | P4 | P5   | Latency | Recip. throughput\n----------------------------------------------------------------------------------------------------------------------\nMOV %R11,%RDX                            | 1     | 0.33 | 0.33 | 0    | 0    | 0  | 0.33 | 1       | 0.33\nMOVSXD %ECX,%RAX                         | 1     | 0.33 | 0.33 | 0    | 0    | 0  | 0.33 | 1       | 0.33\nADD $0x1,%ECX                            | 1     | 0.33 | 0.33 | 0    | 0    | 0  | 0.33 | 1       | 0.33\nIMUL %RDI,%RDX                           | 1     | 0    | 1    | 0    | 0    | 0  | 0    | 3       | 1\nADD $0x1,%ESI                            | 1     | 0.33 | 0.33 | 0    | 0    | 0  | 0.33 | 1       | 0.33\nLEA (%RAX,%RAX,4),%R14                   | 1     | 0.50 | 0.50 | 0    | 0    | 0  | 0    | 1       | 0.50\nADD %R10,%RDX                            | 1     | 0.33 | 0.33 | 0    | 0    | 0  | 0.33 | 1       | 0.33\nADD %R9,%RDX                             | 1     | 0.33 | 0.33 | 0    | 0    | 0  | 0.33 | 1       | 0.33\nADD %R14,%RDX                            | 1     | 0.33 | 0.33 | 0    | 0    | 0  | 0.33 | 1       | 0.33\nLEA (%R12,%RDX,8),%RAX                   | 1     | 0.50 | 0.50 | 0    | 0    | 0  | 0    | 1       | 0.50\nMOV %RBP,%RDX                            | 1     | 0.33 | 0.33 | 0    | 0    | 0  | 0.33 | 1       | 0.33\nIMUL %RDI,%RDX                           | 1     | 0    | 1    | 0    | 0    | 0  | 0    | 3       | 1\nVMOVSD 0x8(%RAX),%XMM10                  | 1     | 0    | 0    | 0.50 | 0.50 | 0  | 0    | 3       | 0.50\nADD %RBX,%RDX                            | 1     | 0.33 | 0.33 | 0    | 0    | 0  | 0.33 | 1       | 0.33\nADD %R14,%RDX                            | 1     | 0.33 | 0.33 | 0    | 0    | 0  | 0.33 | 1       | 0.33\nLEA (%R13,%RDX,8),%R14                   | 1     | 0.50 | 0.50 | 0    | 0    | 0  | 0    | 1       | 0.50\nVMOVSD %XMM10,0x8(%R14)                  | 1     | 0    | 0    | 0.50 | 0.50 | 1  | 0    | 3       | 1\nVMOVSD 0x10(%RAX),%XMM11                 | 1     | 0    | 0    | 0.50 | 0.50 | 0  | 0    | 3       | 0.50\nVMOVSD %XMM11,0x10(%R14)                 | 1     | 0    | 0    | 0.50 | 0.50 | 1  | 0    | 3       | 1\nVMOVSD 0x18(%RAX),%XMM12                 | 1     | 0    | 0    | 0.50 | 0.50 | 0  | 0    | 3       | 0.50\nVMOVSD %XMM12,0x18(%R14)                 | 1     | 0    | 0    | 0.50 | 0.50 | 1  | 0    | 3       | 1\nVMOVSD 0x20(%RAX),%XMM13                 | 1     | 0    | 0    | 0.50 | 0.50 | 0  | 0    | 3       | 0.50\nVMOVSD %XMM13,0x20(%R14)                 | 1     | 0    | 0    | 0.50 | 0.50 | 1  | 0    | 3       | 1\nVMOVSD 0x28(%RAX),%XMM14                 | 1     | 0    | 0    | 0.50 | 0.50 | 0  | 0    | 3       | 0.50\nVMOVSD %XMM14,0x28(%R14)                 | 1     | 0    | 0    | 0.50 | 0.50 | 1  | 0    | 3       | 1\nCMP %ECX,%R8D                            | 1     | 0.33 | 0.33 | 0    | 0    | 0  | 0.33 | 1       | 0.33\nJLE 1818f <copy_y_face_._omp_fn.1+0x23f> | 1     | 0    | 0    | 0    | 0    | 0  | 1    | 0       | 1-2\nADD $0x1,%ESI                            | 1     | 0.33 | 0.33 | 0    | 0    | 0  | 0.33 | 1       | 0.33\nMOV %R11,%RDX                            | 1     | 0.33 | 0.33 | 0    | 0    | 0  | 0.33 | 1       | 0.33\nMOVSXD %ECX,%RAX                         | 1     | 0.33 | 0.33 | 0    | 0    | 0  | 0.33 | 1       | 0.33\nIMUL %RDI,%RDX                           | 1     | 0    | 1    | 0    | 0    | 0  | 0    | 3       | 1\nLEA (%RAX,%RAX,4),%R14                   | 1     | 0.50 | 0.50 | 0    | 0    | 0  | 0    | 1       | 0.50\nADD %R10,%RDX                            | 1     | 0.33 | 0.33 | 0    | 0    | 0  | 0.33 | 1       | 0.33\nADD %R9,%RDX                             | 1     | 0.33 | 0.33 | 0    | 0    | 0  | 0.33 | 1       | 0.33\nADD %R14,%RDX                            | 1     | 0.33 | 0.33 | 0    | 0    | 0  | 0.33 | 1       | 0.33\nLEA (%R12,%RDX,8),%RAX                   | 1     | 0.50 | 0.50 | 0    | 0    | 0  | 0    | 1       | 0.50\nMOV %RBP,%RDX                            | 1     | 0.33 | 0.33 | 0    | 0    | 0  | 0.33 | 1       | 0.33\nIMUL %RDI,%RDX                           | 1     | 0    | 1    | 0    | 0    | 0  | 0    | 3       | 1\nVMOVSD 0x8(%RAX),%XMM5                   | 1     | 0    | 0    | 0.50 | 0.50 | 0  | 0    | 3       | 0.50\nADD %RBX,%RDX                            | 1     | 0.33 | 0.33 | 0    | 0    | 0  | 0.33 | 1       | 0.33\nADD %R14,%RDX                            | 1     | 0.33 | 0.33 | 0    | 0    | 0  | 0.33 | 1       | 0.33\nLEA (%R13,%RDX,8),%R14                   | 1     | 0.50 | 0.50 | 0    | 0    | 0  | 0    | 1       | 0.50\nVMOVSD %XMM5,0x8(%R14)                   | 1     | 0    | 0    | 0.50 | 0.50 | 1  | 0    | 3       | 1\nVMOVSD 0x10(%RAX),%XMM6                  | 1     | 0    | 0    | 0.50 | 0.50 | 0  | 0    | 3       | 0.50\nVMOVSD %XMM6,0x10(%R14)                  | 1     | 0    | 0    | 0.50 | 0.50 | 1  | 0    | 3       | 1\nVMOVSD 0x18(%RAX),%XMM7                  | 1     | 0    | 0    | 0.50 | 0.50 | 0  | 0    | 3       | 0.50\nVMOVSD %XMM7,0x18(%R14)                  | 1     | 0    | 0    | 0.50 | 0.50 | 1  | 0    | 3       | 1\nVMOVSD 0x20(%RAX),%XMM8                  | 1     | 0    | 0    | 0.50 | 0.50 | 0  | 0    | 3       | 0.50\nVMOVSD %XMM8,0x20(%R14)                  | 1     | 0    | 0    | 0.50 | 0.50 | 1  | 0    | 3       | 1\nVMOVSD 0x28(%RAX),%XMM9                  | 1     | 0    | 0    | 0.50 | 0.50 | 0  | 0    | 3       | 0.50\nVMOVSD %XMM9,0x28(%R14)                  | 1     | 0    | 0    | 0.50 | 0.50 | 1  | 0    | 3       | 1\nCMP 0xc(%RSP),%ESI                       | 1     | 0.33 | 0.33 | 0.50 | 0.50 | 0  | 0.33 | 1       | 0.50\nJE 18180 <copy_y_face_._omp_fn.1+0x230>  | 1     | 0    | 0    | 0    | 0    | 0  | 1    | 0       | 1-2\nADD $0x1,%ECX                            | 1     | 0.33 | 0.33 | 0    | 0    | 0  | 0.33 | 1       | 0.33\nCMP %ECX,%R8D                            | 1     | 0.33 | 0.33 | 0    | 0    | 0  | 0.33 | 1       | 0.33\nJG 18080 <copy_y_face_._omp_fn.1+0x130>  | 1     | 0    | 0    | 0    | 0    | 0  | 1    | 0       | 1-2\n",
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
          txt = "Detected a slowdown caused by scalar integer instructions (typically used for address computation).\nBy removing them, you can lower the cost of an iteration from 13.75 to 10.00 cycles (1.37x speedup).",
        },
        {
          workaround = " - Try another compiler or update/tune your current one:\n  * recompile with fassociative-math (included in Ofast or ffast-math) to extend loop vectorization to FP reductions.\n - Remove inter-iterations dependences from your loop and make it unit-stride:\n  * If your arrays have 2 or more dimensions, check whether elements are accessed contiguously and, otherwise, try to permute loops accordingly:\nFortran storage order is column-major: do i do j a(i,j) = b(i,j) (slow, non stride 1) => do i do j a(j,i) = b(i,j) (fast, stride 1)\n  * If your loop streams arrays of structures (AoS), try to use structures of arrays instead (SoA):\ndo i a(i)%x = b(i)%x (slow, non stride 1) => do i a%x(i) = b%x(i) (fast, stride 1)\n",
          details = "All SSE/AVX instructions are used in scalar version (process only one data element in vector registers).\nSince your execution units are vector units, only a vectorized loop can use their full power.\n",
          title = "Vectorization",
          txt = "Your loop is not vectorized.\n4 data elements could be processed at once in vector registers.\nBy vectorizing your loop, you can lower the cost of an iteration from 13.75 to 5.00 cycles (2.75x speedup).",
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
          txt = "nb instructions    : 60\nnb uops            : 60\nloop length        : 253\nused x86 registers : 16\nused mmx registers : 0\nused xmm registers : 10\nused ymm registers : 0\nused zmm registers : 0\nnb stack references: 1\n",
        },
        {
          title = "Front-end",
          txt = "MACRO FUSION NOT POSSIBLE\nFIT IN UOP CACHE\nmicro-operation queue: 15.00 cycles\nfront end            : 15.00 cycles\n",
        },
        {
          title = "Back-end",
          txt = "       | P0    | P1    | P2    | P3    | P4    | P5\n------------------------------------------------------\nuops   | 13.33 | 13.33 | 10.50 | 10.50 | 10.00 | 13.33\ncycles | 13.33 | 13.33 | 10.50 | 10.50 | 10.00 | 13.33\n\nCycles executing div or sqrt instructions: NA\nLongest recurrence chain latency (RecMII): 2.00\n",
        },
        {
          title = "Cycles summary",
          txt = "Front-end : 15.00\nDispatch  : 13.33\nData deps.: 2.00\nOverall L1: 15.00\n",
        },
        {
          title = "Vectorization ratios",
          txt = "INT\nall    : 0%\nload   : 0%\nstore  : NA (no store vectorizable/vectorized instructions)\nmul    : NA (no mul vectorizable/vectorized instructions)\nadd-sub: 0%\nfma    : NA (no fma vectorizable/vectorized instructions)\nother  : 0%\nFP\nall     : 0%\nload    : 0%\nstore   : 0%\nmul     : NA (no mul vectorizable/vectorized instructions)\nadd-sub : NA (no add-sub vectorizable/vectorized instructions)\nfma     : NA (no fma vectorizable/vectorized instructions)\ndiv/sqrt: NA (no div/sqrt vectorizable/vectorized instructions)\nother   : NA (no other vectorizable/vectorized instructions)\nINT+FP\nall     : 0%\nload    : 0%\nstore   : 0%\nmul     : NA (no mul vectorizable/vectorized instructions)\nadd-sub : 0%\nfma     : NA (no fma vectorizable/vectorized instructions)\ndiv/sqrt: NA (no div/sqrt vectorizable/vectorized instructions)\nother   : 0%\n",
        },
        {
          title = "Vector efficiency ratios",
          txt = "INT\nall    : 27%\nload   : 25%\nstore  : NA (no store vectorizable/vectorized instructions)\nmul    : NA (no mul vectorizable/vectorized instructions)\nadd-sub: 25%\nfma    : NA (no fma vectorizable/vectorized instructions)\nother  : 30%\nFP\nall     : 25%\nload    : 25%\nstore   : 25%\nmul     : NA (no mul vectorizable/vectorized instructions)\nadd-sub : NA (no add-sub vectorizable/vectorized instructions)\nfma     : NA (no fma vectorizable/vectorized instructions)\ndiv/sqrt: NA (no div/sqrt vectorizable/vectorized instructions)\nother   : NA (no other vectorizable/vectorized instructions)\nINT+FP\nall     : 25%\nload    : 25%\nstore   : 25%\nmul     : NA (no mul vectorizable/vectorized instructions)\nadd-sub : 25%\nfma     : NA (no fma vectorizable/vectorized instructions)\ndiv/sqrt: NA (no div/sqrt vectorizable/vectorized instructions)\nother   : 30%\n",
        },
        {
          title = "Cycles and memory resources usage",
          txt = "Assuming all data fit into the L1 cache, each iteration of the binary loop takes 15.00 cycles. At this rate:\n - 17% of peak load performance is reached (5.60 out of 32.00 bytes loaded per cycle (GB/s @ 1GHz))\n - 33% of peak store performance is reached (5.33 out of 16.00 bytes stored per cycle (GB/s @ 1GHz))\n",
        },
        {
          title = "Front-end bottlenecks",
          txt = "Performance is limited by instruction throughput (loading/decoding program instructions to execution core) (front-end is a bottleneck).\n\nBy removing all these bottlenecks, you can lower the cost of an iteration from 15.00 to 13.33 cycles (1.12x speedup).\n",
        },
        {
          title = "ASM code",
          txt = "In the binary file, the address of the loop is: 180f6\n\nInstruction                              | Nb FU | P0   | P1   | P2   | P3   | P4 | P5   | Latency | Recip. throughput\n----------------------------------------------------------------------------------------------------------------------\nMOV %R11,%RDX                            | 1     | 0.33 | 0.33 | 0    | 0    | 0  | 0.33 | 1       | 0.33\nMOVSXD %ECX,%RAX                         | 1     | 0.33 | 0.33 | 0    | 0    | 0  | 0.33 | 1       | 0.33\nADD $0x1,%ECX                            | 1     | 0.33 | 0.33 | 0    | 0    | 0  | 0.33 | 1       | 0.33\nIMUL %RDI,%RDX                           | 1     | 0    | 1    | 0    | 0    | 0  | 0    | 3       | 1\nADD $0x1,%ESI                            | 1     | 0.33 | 0.33 | 0    | 0    | 0  | 0.33 | 1       | 0.33\nLEA (%RAX,%RAX,4),%R14                   | 1     | 0.50 | 0.50 | 0    | 0    | 0  | 0    | 1       | 0.50\nADD %R10,%RDX                            | 1     | 0.33 | 0.33 | 0    | 0    | 0  | 0.33 | 1       | 0.33\nADD %R9,%RDX                             | 1     | 0.33 | 0.33 | 0    | 0    | 0  | 0.33 | 1       | 0.33\nADD %R14,%RDX                            | 1     | 0.33 | 0.33 | 0    | 0    | 0  | 0.33 | 1       | 0.33\nLEA (%R12,%RDX,8),%RAX                   | 1     | 0.50 | 0.50 | 0    | 0    | 0  | 0    | 1       | 0.50\nMOV %RBP,%RDX                            | 1     | 0.33 | 0.33 | 0    | 0    | 0  | 0.33 | 1       | 0.33\nIMUL %RDI,%RDX                           | 1     | 0    | 1    | 0    | 0    | 0  | 0    | 3       | 1\nVMOVSD 0x8(%RAX),%XMM10                  | 1     | 0    | 0    | 0.50 | 0.50 | 0  | 0    | 3       | 0.50\nADD %RBX,%RDX                            | 1     | 0.33 | 0.33 | 0    | 0    | 0  | 0.33 | 1       | 0.33\nADD %R14,%RDX                            | 1     | 0.33 | 0.33 | 0    | 0    | 0  | 0.33 | 1       | 0.33\nLEA (%R13,%RDX,8),%R14                   | 1     | 0.50 | 0.50 | 0    | 0    | 0  | 0    | 1       | 0.50\nVMOVSD %XMM10,0x8(%R14)                  | 1     | 0    | 0    | 0.50 | 0.50 | 1  | 0    | 3       | 1\nVMOVSD 0x10(%RAX),%XMM11                 | 1     | 0    | 0    | 0.50 | 0.50 | 0  | 0    | 3       | 0.50\nVMOVSD %XMM11,0x10(%R14)                 | 1     | 0    | 0    | 0.50 | 0.50 | 1  | 0    | 3       | 1\nVMOVSD 0x18(%RAX),%XMM12                 | 1     | 0    | 0    | 0.50 | 0.50 | 0  | 0    | 3       | 0.50\nVMOVSD %XMM12,0x18(%R14)                 | 1     | 0    | 0    | 0.50 | 0.50 | 1  | 0    | 3       | 1\nVMOVSD 0x20(%RAX),%XMM13                 | 1     | 0    | 0    | 0.50 | 0.50 | 0  | 0    | 3       | 0.50\nVMOVSD %XMM13,0x20(%R14)                 | 1     | 0    | 0    | 0.50 | 0.50 | 1  | 0    | 3       | 1\nVMOVSD 0x28(%RAX),%XMM14                 | 1     | 0    | 0    | 0.50 | 0.50 | 0  | 0    | 3       | 0.50\nVMOVSD %XMM14,0x28(%R14)                 | 1     | 0    | 0    | 0.50 | 0.50 | 1  | 0    | 3       | 1\nCMP %ECX,%R8D                            | 1     | 0.33 | 0.33 | 0    | 0    | 0  | 0.33 | 1       | 0.33\nJLE 1818f <copy_y_face_._omp_fn.1+0x23f> | 1     | 0    | 0    | 0    | 0    | 0  | 1    | 0       | 1-2\nADD $0x1,%ESI                            | 1     | 0.33 | 0.33 | 0    | 0    | 0  | 0.33 | 1       | 0.33\nMOV %R11,%RDX                            | 1     | 0.33 | 0.33 | 0    | 0    | 0  | 0.33 | 1       | 0.33\nMOVSXD %ECX,%RAX                         | 1     | 0.33 | 0.33 | 0    | 0    | 0  | 0.33 | 1       | 0.33\nIMUL %RDI,%RDX                           | 1     | 0    | 1    | 0    | 0    | 0  | 0    | 3       | 1\nLEA (%RAX,%RAX,4),%R14                   | 1     | 0.50 | 0.50 | 0    | 0    | 0  | 0    | 1       | 0.50\nADD %R10,%RDX                            | 1     | 0.33 | 0.33 | 0    | 0    | 0  | 0.33 | 1       | 0.33\nADD %R9,%RDX                             | 1     | 0.33 | 0.33 | 0    | 0    | 0  | 0.33 | 1       | 0.33\nADD %R14,%RDX                            | 1     | 0.33 | 0.33 | 0    | 0    | 0  | 0.33 | 1       | 0.33\nLEA (%R12,%RDX,8),%RAX                   | 1     | 0.50 | 0.50 | 0    | 0    | 0  | 0    | 1       | 0.50\nMOV %RBP,%RDX                            | 1     | 0.33 | 0.33 | 0    | 0    | 0  | 0.33 | 1       | 0.33\nIMUL %RDI,%RDX                           | 1     | 0    | 1    | 0    | 0    | 0  | 0    | 3       | 1\nVMOVSD 0x8(%RAX),%XMM5                   | 1     | 0    | 0    | 0.50 | 0.50 | 0  | 0    | 3       | 0.50\nADD %RBX,%RDX                            | 1     | 0.33 | 0.33 | 0    | 0    | 0  | 0.33 | 1       | 0.33\nADD %R14,%RDX                            | 1     | 0.33 | 0.33 | 0    | 0    | 0  | 0.33 | 1       | 0.33\nLEA (%R13,%RDX,8),%R14                   | 1     | 0.50 | 0.50 | 0    | 0    | 0  | 0    | 1       | 0.50\nVMOVSD %XMM5,0x8(%R14)                   | 1     | 0    | 0    | 0.50 | 0.50 | 1  | 0    | 3       | 1\nVMOVSD 0x10(%RAX),%XMM6                  | 1     | 0    | 0    | 0.50 | 0.50 | 0  | 0    | 3       | 0.50\nVMOVSD %XMM6,0x10(%R14)                  | 1     | 0    | 0    | 0.50 | 0.50 | 1  | 0    | 3       | 1\nVMOVSD 0x18(%RAX),%XMM7                  | 1     | 0    | 0    | 0.50 | 0.50 | 0  | 0    | 3       | 0.50\nVMOVSD %XMM7,0x18(%R14)                  | 1     | 0    | 0    | 0.50 | 0.50 | 1  | 0    | 3       | 1\nVMOVSD 0x20(%RAX),%XMM8                  | 1     | 0    | 0    | 0.50 | 0.50 | 0  | 0    | 3       | 0.50\nVMOVSD %XMM8,0x20(%R14)                  | 1     | 0    | 0    | 0.50 | 0.50 | 1  | 0    | 3       | 1\nVMOVSD 0x28(%RAX),%XMM9                  | 1     | 0    | 0    | 0.50 | 0.50 | 0  | 0    | 3       | 0.50\nVMOVSD %XMM9,0x28(%R14)                  | 1     | 0    | 0    | 0.50 | 0.50 | 1  | 0    | 3       | 1\nCMP 0xc(%RSP),%ESI                       | 1     | 0.33 | 0.33 | 0.50 | 0.50 | 0  | 0.33 | 1       | 0.50\nJE 18180 <copy_y_face_._omp_fn.1+0x230>  | 1     | 0    | 0    | 0    | 0    | 0  | 1    | 0       | 1-2\nADD $0x1,%ECX                            | 1     | 0.33 | 0.33 | 0    | 0    | 0  | 0.33 | 1       | 0.33\nCMP %ECX,%R8D                            | 1     | 0.33 | 0.33 | 0    | 0    | 0  | 0.33 | 1       | 0.33\nJG 18080 <copy_y_face_._omp_fn.1+0x130>  | 1     | 0    | 0    | 0    | 0    | 0  | 1    | 0       | 1-2\nADD $0x1,%R15D                           | 1     | 0.33 | 0.33 | 0    | 0    | 0  | 0.33 | 1       | 0.33\nMOV $0x1,%ECX                            | 1     | 0.33 | 0.33 | 0    | 0    | 0  | 0.33 | 1       | 0.33\nMOVSXD %R15D,%RDI                        | 1     | 0.33 | 0.33 | 0    | 0    | 0  | 0.33 | 1       | 0.33\nJMP 180f3 <copy_y_face_._omp_fn.1+0x1a3> | 1     | 0    | 0    | 0    | 0    | 0  | 1    | 0       | 2\n",
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
          txt = "Detected a slowdown caused by scalar integer instructions (typically used for address computation).\nBy removing them, you can lower the cost of an iteration from 15.00 to 10.00 cycles (1.50x speedup).",
        },
        {
          workaround = " - Try another compiler or update/tune your current one:\n  * recompile with fassociative-math (included in Ofast or ffast-math) to extend loop vectorization to FP reductions.\n - Remove inter-iterations dependences from your loop and make it unit-stride:\n  * If your arrays have 2 or more dimensions, check whether elements are accessed contiguously and, otherwise, try to permute loops accordingly:\nFortran storage order is column-major: do i do j a(i,j) = b(i,j) (slow, non stride 1) => do i do j a(j,i) = b(i,j) (fast, stride 1)\n  * If your loop streams arrays of structures (AoS), try to use structures of arrays instead (SoA):\ndo i a(i)%x = b(i)%x (slow, non stride 1) => do i a%x(i) = b%x(i) (fast, stride 1)\n",
          details = "All SSE/AVX instructions are used in scalar version (process only one data element in vector registers).\nSince your execution units are vector units, only a vectorized loop can use their full power.\n",
          title = "Vectorization",
          txt = "Your loop is not vectorized.\nOnly 25% of vector register length is used (average across all SSE/AVX instructions).\nBy vectorizing your loop, you can lower the cost of an iteration from 15.00 to 5.00 cycles (3.00x speedup).",
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
          txt = "nb instructions    : 60\nnb uops            : 59.75\nloop length        : 253\nused x86 registers : 15.75\nused mmx registers : 0\nused xmm registers : 10\nused ymm registers : 0\nused zmm registers : 0\nnb stack references: 1\n",
        },
        {
          title = "Front-end",
          txt = "MACRO FUSION NOT POSSIBLE\nmicro-operation queue: 14.94 cycles\nfront end            : 14.94 cycles\n",
        },
        {
          title = "Back-end",
          txt = "       | P0    | P1    | P2    | P3    | P4    | P5\n------------------------------------------------------\nuops   | 13.25 | 13.25 | 10.50 | 10.50 | 10.00 | 13.25\ncycles | 13.25 | 13.25 | 10.50 | 10.50 | 10.00 | 13.25\n\nCycles executing div or sqrt instructions: NA\nLongest recurrence chain latency (RecMII): 2.00\n",
        },
        {
          title = "Cycles summary",
          txt = "Front-end : 14.94\nDispatch  : 13.25\nData deps.: 2.00\nOverall L1: 14.94\n",
        },
        {
          title = "Vectorization ratios",
          txt = "INT\nall    : 0%\nload   : 0%\nstore  : NA (no store vectorizable/vectorized instructions)\nmul    : NA (no mul vectorizable/vectorized instructions)\nadd-sub: 0%\nfma    : NA (no fma vectorizable/vectorized instructions)\nother  : 0%\nFP\nall     : 0%\nload    : 0%\nstore   : 0%\nmul     : NA (no mul vectorizable/vectorized instructions)\nadd-sub : NA (no add-sub vectorizable/vectorized instructions)\nfma     : NA (no fma vectorizable/vectorized instructions)\ndiv/sqrt: NA (no div/sqrt vectorizable/vectorized instructions)\nother   : NA (no other vectorizable/vectorized instructions)\nINT+FP\nall     : 0%\nload    : 0%\nstore   : 0%\nmul     : NA (no mul vectorizable/vectorized instructions)\nadd-sub : 0%\nfma     : NA (no fma vectorizable/vectorized instructions)\ndiv/sqrt: NA (no div/sqrt vectorizable/vectorized instructions)\nother   : 0%\n",
        },
        {
          title = "Vector efficiency ratios",
          txt = "INT\nall    : 27%\nload   : 25%\nstore  : NA (no store vectorizable/vectorized instructions)\nmul    : NA (no mul vectorizable/vectorized instructions)\nadd-sub: 25%\nfma    : NA (no fma vectorizable/vectorized instructions)\nother  : 29%\nFP\nall     : 25%\nload    : 25%\nstore   : 25%\nmul     : NA (no mul vectorizable/vectorized instructions)\nadd-sub : NA (no add-sub vectorizable/vectorized instructions)\nfma     : NA (no fma vectorizable/vectorized instructions)\ndiv/sqrt: NA (no div/sqrt vectorizable/vectorized instructions)\nother   : NA (no other vectorizable/vectorized instructions)\nINT+FP\nall     : 25%\nload    : 25%\nstore   : 25%\nmul     : NA (no mul vectorizable/vectorized instructions)\nadd-sub : 25%\nfma     : NA (no fma vectorizable/vectorized instructions)\ndiv/sqrt: NA (no div/sqrt vectorizable/vectorized instructions)\nother   : 29%\n",
        },
        {
          title = "Cycles and memory resources usage",
          txt = "Assuming all data fit into the L1 cache, each iteration of the binary loop takes 14.94 cycles. At this rate:\n - 17% of peak load performance is reached (5.64 out of 32.00 bytes loaded per cycle (GB/s @ 1GHz))\n - 33% of peak store performance is reached (5.37 out of 16.00 bytes stored per cycle (GB/s @ 1GHz))\n",
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
          txt = "Your loop is not vectorized.\nOnly 25% of vector register length is used (average across all SSE/AVX instructions).\nBy vectorizing your loop, you can lower the cost of an iteration from 14.94 to 5.00 cycles (2.99x speedup).",
        },
      },
      potential = {
      },
    },
  common = {
    header = {
      "The loop is defined in /users/user2210/NPB3.4-MZ-MPI/BT-MZ/exch_qbc.f90:218-222.\n",
      "The related source loop is not unrolled or unrolled with no peel/tail loop.",
      "This loop has 4 execution paths.\n",
      "The presence of multiple execution paths is typically the main/first bottleneck.\nTry to simplify control inside loop: ideally, try to remove all conditional expressions, for example by (if applicable):\n - hoisting them (moving them outside the loop)\n - turning them into conditional moves, MIN or MAX\n\n",
      "Ex: if (x<0) x=0 => x = max(0,x) (Fortran instrinsic procedure)\n",
    },
    nb_paths = 4,
  },
}
