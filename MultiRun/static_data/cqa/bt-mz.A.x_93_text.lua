_cqa_text_report = {
  paths = {
    {
      hint = {
        {
          workaround = " - Try to reorganize arrays of structures to structures of arrays\n - Consider to permute loops (see vectorization gain report)\n",
          details = " - Constant unknown stride: 1 occurrence(s)\n - Constant non-unit stride: 1 occurrence(s)\nNon-unit stride (uncontiguous) accesses are not efficiently using data caches\n",
          title = "Slow data structures access",
          txt = "Detected data structures (typically arrays) that cannot be efficiently read/written",
        },
        {
          title = "Type of elements and instruction set",
          txt = "50 SSE or AVX instructions are processing arithmetic or math operations on double precision FP elements in scalar mode (one at a time).\n",
        },
        {
          title = "Matching between your loop (in the source code) and the binary loop",
          txt = "The binary loop is composed of 50 FP arithmetical operations:\n - 25: addition or subtraction\n - 25: multiply\nThe binary loop is loading 280 bytes (35 double precision FP elements).\nThe binary loop is storing 200 bytes (25 double precision FP elements).",
        },
        {
          title = "Arithmetic intensity",
          txt = "Arithmetic intensity is 0.10 FP operations per loaded or stored byte.",
        },
        {
          workaround = "Unroll your loop if trip count is significantly higher than target unroll factor and if some data references are common to consecutive iterations. This can be done manually. Or by recompiling with -funroll-loops and/or -floop-unroll-and-jam.",
          title = "Unroll opportunity",
          txt = "Loop is data access bound.",
        },
      },
      expert = {
        {
          title = "General properties",
          txt = "nb instructions    : 89\nnb uops            : 89\nloop length        : 506\nused x86 registers : 3\nused mmx registers : 0\nused xmm registers : 15\nused ymm registers : 0\nused zmm registers : 0\nnb stack references: 0\nADD-SUB / MUL ratio: 1.00\n",
        },
        {
          title = "Front-end",
          txt = "MACRO FUSION NOT POSSIBLE\nFIT IN UOP CACHE\nmicro-operation queue: 22.25 cycles\nfront end            : 22.25 cycles\n",
        },
        {
          title = "Back-end",
          txt = "       | P0    | P1    | P2    | P3    | P4    | P5\n-----------------------------------------------------\nuops   | 25.00 | 25.00 | 30.00 | 30.00 | 25.00 | 4.00\ncycles | 25.00 | 25.00 | 30.00 | 30.00 | 25.00 | 4.00\n\nCycles executing div or sqrt instructions: NA\nLongest recurrence chain latency (RecMII): 1.00\n",
        },
        {
          title = "Cycles summary",
          txt = "Front-end : 22.25\nDispatch  : 30.00\nData deps.: 1.00\nOverall L1: 30.00\n",
        },
        {
          title = "Vectorization ratios",
          txt = "all     : 0%\nload    : 0%\nstore   : 0%\nmul     : 0%\nadd-sub : 0%\nfma     : NA (no fma vectorizable/vectorized instructions)\ndiv/sqrt: NA (no div/sqrt vectorizable/vectorized instructions)\nother   : NA (no other vectorizable/vectorized instructions)\n",
        },
        {
          title = "Vector efficiency ratios",
          txt = "all     : 25%\nload    : 25%\nstore   : 25%\nmul     : 25%\nadd-sub : 25%\nfma     : NA (no fma vectorizable/vectorized instructions)\ndiv/sqrt: NA (no div/sqrt vectorizable/vectorized instructions)\nother   : NA (no other vectorizable/vectorized instructions)\n",
        },
        {
          title = "Cycles and memory resources usage",
          txt = "Assuming all data fit into the L1 cache, each iteration of the binary loop takes 30.00 cycles. At this rate:\n - 29% of peak load performance is reached (9.33 out of 32.00 bytes loaded per cycle (GB/s @ 1GHz))\n - 41% of peak store performance is reached (6.67 out of 16.00 bytes stored per cycle (GB/s @ 1GHz))\n",
        },
        {
          title = "Front-end bottlenecks",
          txt = "Found no such bottlenecks.",
        },
        {
          title = "ASM code",
          txt = "In the binary file, the address of the loop is: 15190\n\nInstruction                           | Nb FU | P0   | P1   | P2   | P3   | P4 | P5   | Latency | Recip. throughput\n-------------------------------------------------------------------------------------------------------------------\nVMOVSD 0x8(%RAX),%XMM14               | 1     | 0    | 0    | 0.50 | 0.50 | 0  | 0    | 3       | 0.50\nSUB $0x258,%RBX                       | 1     | 0.33 | 0.33 | 0    | 0    | 0  | 0.33 | 1       | 0.33\nSUB $0x28,%RAX                        | 1     | 0.33 | 0.33 | 0    | 0    | 0  | 0.33 | 1       | 0.33\nVMULSD 0x190(%RBX),%XMM14,%XMM6       | 1     | 1    | 0    | 0.50 | 0.50 | 0  | 0    | 5       | 1\nVMOVSD 0x8(%RAX),%XMM7                | 1     | 0    | 0    | 0.50 | 0.50 | 0  | 0    | 3       | 0.50\nVMOVSD 0x38(%RAX),%XMM5               | 1     | 0    | 0    | 0.50 | 0.50 | 0  | 0    | 3       | 0.50\nVMOVSD 0x40(%RAX),%XMM8               | 1     | 0    | 0    | 0.50 | 0.50 | 0  | 0    | 3       | 0.50\nVMOVSD 0x48(%RAX),%XMM11              | 1     | 0    | 0    | 0.50 | 0.50 | 0  | 0    | 3       | 0.50\nVSUBSD %XMM6,%XMM7,%XMM3              | 1     | 0    | 1    | 0    | 0    | 0  | 0    | 3       | 1\nVMOVSD 0x50(%RAX),%XMM2               | 1     | 0    | 0    | 0.50 | 0.50 | 0  | 0    | 3       | 0.50\nVMOVSD %XMM3,0x8(%RAX)                | 1     | 0    | 0    | 0.50 | 0.50 | 1  | 0    | 3       | 1\nVMULSD 0x1b8(%RBX),%XMM5,%XMM0        | 1     | 1    | 0    | 0.50 | 0.50 | 0  | 0    | 5       | 1\nVSUBSD %XMM0,%XMM3,%XMM15             | 1     | 0    | 1    | 0    | 0    | 0  | 0    | 3       | 1\nVMOVSD 0x10(%RAX),%XMM3               | 1     | 0    | 0    | 0.50 | 0.50 | 0  | 0    | 3       | 0.50\nVMOVSD %XMM15,0x8(%RAX)               | 1     | 0    | 0    | 0.50 | 0.50 | 1  | 0    | 3       | 1\nVMULSD 0x1e0(%RBX),%XMM8,%XMM9        | 1     | 1    | 0    | 0.50 | 0.50 | 0  | 0    | 5       | 1\nVSUBSD %XMM9,%XMM15,%XMM10            | 1     | 0    | 1    | 0    | 0    | 0  | 0    | 3       | 1\nVMOVSD %XMM10,0x8(%RAX)               | 1     | 0    | 0    | 0.50 | 0.50 | 1  | 0    | 3       | 1\nVMULSD 0x208(%RBX),%XMM11,%XMM13      | 1     | 1    | 0    | 0.50 | 0.50 | 0  | 0    | 5       | 1\nVSUBSD %XMM13,%XMM10,%XMM1            | 1     | 0    | 1    | 0    | 0    | 0  | 0    | 3       | 1\nVMOVSD %XMM1,0x8(%RAX)                | 1     | 0    | 0    | 0.50 | 0.50 | 1  | 0    | 3       | 1\nVMULSD 0x230(%RBX),%XMM2,%XMM4        | 1     | 1    | 0    | 0.50 | 0.50 | 0  | 0    | 5       | 1\nVSUBSD %XMM4,%XMM1,%XMM6              | 1     | 0    | 1    | 0    | 0    | 0  | 0    | 3       | 1\nVMOVSD %XMM6,0x8(%RAX)                | 1     | 0    | 0    | 0.50 | 0.50 | 1  | 0    | 3       | 1\nVMULSD 0x198(%RBX),%XMM14,%XMM7       | 1     | 1    | 0    | 0.50 | 0.50 | 0  | 0    | 5       | 1\nVSUBSD %XMM7,%XMM3,%XMM0              | 1     | 0    | 1    | 0    | 0    | 0  | 0    | 3       | 1\nVMOVSD %XMM0,0x10(%RAX)               | 1     | 0    | 0    | 0.50 | 0.50 | 1  | 0    | 3       | 1\nVMULSD 0x1c0(%RBX),%XMM5,%XMM15       | 1     | 1    | 0    | 0.50 | 0.50 | 0  | 0    | 5       | 1\nVSUBSD %XMM15,%XMM0,%XMM9             | 1     | 0    | 1    | 0    | 0    | 0  | 0    | 3       | 1\nVMOVSD 0x18(%RAX),%XMM0               | 1     | 0    | 0    | 0.50 | 0.50 | 0  | 0    | 3       | 0.50\nVMOVSD %XMM9,0x10(%RAX)               | 1     | 0    | 0    | 0.50 | 0.50 | 1  | 0    | 3       | 1\nVMULSD 0x1e8(%RBX),%XMM8,%XMM10       | 1     | 1    | 0    | 0.50 | 0.50 | 0  | 0    | 5       | 1\nVSUBSD %XMM10,%XMM9,%XMM13            | 1     | 0    | 1    | 0    | 0    | 0  | 0    | 3       | 1\nVMOVSD %XMM13,0x10(%RAX)              | 1     | 0    | 0    | 0.50 | 0.50 | 1  | 0    | 3       | 1\nVMULSD 0x210(%RBX),%XMM11,%XMM1       | 1     | 1    | 0    | 0.50 | 0.50 | 0  | 0    | 5       | 1\nVSUBSD %XMM1,%XMM13,%XMM4             | 1     | 0    | 1    | 0    | 0    | 0  | 0    | 3       | 1\nVMOVSD %XMM4,0x10(%RAX)               | 1     | 0    | 0    | 0.50 | 0.50 | 1  | 0    | 3       | 1\nVMULSD 0x238(%RBX),%XMM2,%XMM6        | 1     | 1    | 0    | 0.50 | 0.50 | 0  | 0    | 5       | 1\nVSUBSD %XMM6,%XMM4,%XMM7              | 1     | 0    | 1    | 0    | 0    | 0  | 0    | 3       | 1\nVMOVSD %XMM7,0x10(%RAX)               | 1     | 0    | 0    | 0.50 | 0.50 | 1  | 0    | 3       | 1\nVMULSD 0x1a0(%RBX),%XMM14,%XMM3       | 1     | 1    | 0    | 0.50 | 0.50 | 0  | 0    | 5       | 1\nVSUBSD %XMM3,%XMM0,%XMM15             | 1     | 0    | 1    | 0    | 0    | 0  | 0    | 3       | 1\nVMOVSD %XMM15,0x18(%RAX)              | 1     | 0    | 0    | 0.50 | 0.50 | 1  | 0    | 3       | 1\nVMULSD 0x1c8(%RBX),%XMM5,%XMM9        | 1     | 1    | 0    | 0.50 | 0.50 | 0  | 0    | 5       | 1\nVSUBSD %XMM9,%XMM15,%XMM10            | 1     | 0    | 1    | 0    | 0    | 0  | 0    | 3       | 1\nVMOVSD %XMM10,0x18(%RAX)              | 1     | 0    | 0    | 0.50 | 0.50 | 1  | 0    | 3       | 1\nVMULSD 0x1f0(%RBX),%XMM8,%XMM13       | 1     | 1    | 0    | 0.50 | 0.50 | 0  | 0    | 5       | 1\nVMOVSD 0x20(%RAX),%XMM15              | 1     | 0    | 0    | 0.50 | 0.50 | 0  | 0    | 3       | 0.50\nVSUBSD %XMM13,%XMM10,%XMM1            | 1     | 0    | 1    | 0    | 0    | 0  | 0    | 3       | 1\nVMOVSD %XMM1,0x18(%RAX)               | 1     | 0    | 0    | 0.50 | 0.50 | 1  | 0    | 3       | 1\nVMULSD 0x218(%RBX),%XMM11,%XMM4       | 1     | 1    | 0    | 0.50 | 0.50 | 0  | 0    | 5       | 1\nVSUBSD %XMM4,%XMM1,%XMM7              | 1     | 0    | 1    | 0    | 0    | 0  | 0    | 3       | 1\nVMOVSD %XMM7,0x18(%RAX)               | 1     | 0    | 0    | 0.50 | 0.50 | 1  | 0    | 3       | 1\nVMULSD 0x240(%RBX),%XMM2,%XMM6        | 1     | 1    | 0    | 0.50 | 0.50 | 0  | 0    | 5       | 1\nVSUBSD %XMM6,%XMM7,%XMM3              | 1     | 0    | 1    | 0    | 0    | 0  | 0    | 3       | 1\nVMOVSD %XMM3,0x18(%RAX)               | 1     | 0    | 0    | 0.50 | 0.50 | 1  | 0    | 3       | 1\nVMULSD 0x1a8(%RBX),%XMM14,%XMM0       | 1     | 1    | 0    | 0.50 | 0.50 | 0  | 0    | 5       | 1\nVSUBSD %XMM0,%XMM15,%XMM9             | 1     | 0    | 1    | 0    | 0    | 0  | 0    | 3       | 1\nVMOVSD 0x28(%RAX),%XMM15              | 1     | 0    | 0    | 0.50 | 0.50 | 0  | 0    | 3       | 0.50\nVMOVSD %XMM9,0x20(%RAX)               | 1     | 0    | 0    | 0.50 | 0.50 | 1  | 0    | 3       | 1\nVMULSD 0x1d0(%RBX),%XMM5,%XMM10       | 1     | 1    | 0    | 0.50 | 0.50 | 0  | 0    | 5       | 1\nVSUBSD %XMM10,%XMM9,%XMM13            | 1     | 0    | 1    | 0    | 0    | 0  | 0    | 3       | 1\nVMOVSD %XMM13,0x20(%RAX)              | 1     | 0    | 0    | 0.50 | 0.50 | 1  | 0    | 3       | 1\nVMULSD 0x1f8(%RBX),%XMM8,%XMM1        | 1     | 1    | 0    | 0.50 | 0.50 | 0  | 0    | 5       | 1\nVSUBSD %XMM1,%XMM13,%XMM4             | 1     | 0    | 1    | 0    | 0    | 0  | 0    | 3       | 1\nVMOVSD %XMM4,0x20(%RAX)               | 1     | 0    | 0    | 0.50 | 0.50 | 1  | 0    | 3       | 1\nVMULSD 0x220(%RBX),%XMM11,%XMM7       | 1     | 1    | 0    | 0.50 | 0.50 | 0  | 0    | 5       | 1\nVSUBSD %XMM7,%XMM4,%XMM3              | 1     | 0    | 1    | 0    | 0    | 0  | 0    | 3       | 1\nVMOVSD %XMM3,0x20(%RAX)               | 1     | 0    | 0    | 0.50 | 0.50 | 1  | 0    | 3       | 1\nVMULSD 0x248(%RBX),%XMM2,%XMM6        | 1     | 1    | 0    | 0.50 | 0.50 | 0  | 0    | 5       | 1\nVSUBSD %XMM6,%XMM3,%XMM0              | 1     | 0    | 1    | 0    | 0    | 0  | 0    | 3       | 1\nVMOVSD %XMM0,0x20(%RAX)               | 1     | 0    | 0    | 0.50 | 0.50 | 1  | 0    | 3       | 1\nVMULSD 0x1b0(%RBX),%XMM14,%XMM14      | 1     | 1    | 0    | 0.50 | 0.50 | 0  | 0    | 5       | 1\nVSUBSD %XMM14,%XMM15,%XMM9            | 1     | 0    | 1    | 0    | 0    | 0  | 0    | 3       | 1\nVMOVSD %XMM9,0x28(%RAX)               | 1     | 0    | 0    | 0.50 | 0.50 | 1  | 0    | 3       | 1\nVMULSD 0x1d8(%RBX),%XMM5,%XMM5        | 1     | 1    | 0    | 0.50 | 0.50 | 0  | 0    | 5       | 1\nVSUBSD %XMM5,%XMM9,%XMM10             | 1     | 0    | 1    | 0    | 0    | 0  | 0    | 3       | 1\nVMOVSD %XMM10,0x28(%RAX)              | 1     | 0    | 0    | 0.50 | 0.50 | 1  | 0    | 3       | 1\nVMULSD 0x200(%RBX),%XMM8,%XMM8        | 1     | 1    | 0    | 0.50 | 0.50 | 0  | 0    | 5       | 1\nVSUBSD %XMM8,%XMM10,%XMM13            | 1     | 0    | 1    | 0    | 0    | 0  | 0    | 3       | 1\nVMOVSD %XMM13,0x28(%RAX)              | 1     | 0    | 0    | 0.50 | 0.50 | 1  | 0    | 3       | 1\nVMULSD 0x228(%RBX),%XMM11,%XMM11      | 1     | 1    | 0    | 0.50 | 0.50 | 0  | 0    | 5       | 1\nVSUBSD %XMM11,%XMM13,%XMM1            | 1     | 0    | 1    | 0    | 0    | 0  | 0    | 3       | 1\nVMOVSD %XMM1,0x28(%RAX)               | 1     | 0    | 0    | 0.50 | 0.50 | 1  | 0    | 3       | 1\nVMULSD 0x250(%RBX),%XMM2,%XMM2        | 1     | 1    | 0    | 0.50 | 0.50 | 0  | 0    | 5       | 1\nVSUBSD %XMM2,%XMM1,%XMM4              | 1     | 0    | 1    | 0    | 0    | 0  | 0    | 3       | 1\nVMOVSD %XMM4,0x28(%RAX)               | 1     | 0    | 0    | 0.50 | 0.50 | 1  | 0    | 3       | 1\nSUB $0x1,%R12D                        | 1     | 0.33 | 0.33 | 0    | 0    | 0  | 0.33 | 1       | 0.33\nJNS 15190 <x_solve_._omp_fn.0+0x2110> | 1     | 0    | 0    | 0    | 0    | 0  | 1    | 0       | 1-2\n",
        },
      },
      header = {
        "20% of peak computational performance is used (1.67 out of 8.00 FLOP per cycle (GFLOPS @ 1GHz))",
      },
      brief = {
      },
      gain = {
        {
          workaround = " - Try another compiler or update/tune your current one:\n  * recompile with fassociative-math (included in Ofast or ffast-math) to extend loop vectorization to FP reductions.\n - Remove inter-iterations dependences from your loop and make it unit-stride:\n  * If your arrays have 2 or more dimensions, check whether elements are accessed contiguously and, otherwise, try to permute loops accordingly:\nFortran storage order is column-major: do i do j a(i,j) = b(i,j) (slow, non stride 1) => do i do j a(j,i) = b(i,j) (fast, stride 1)\n  * If your loop streams arrays of structures (AoS), try to use structures of arrays instead (SoA):\ndo i a(i)%x = b(i)%x (slow, non stride 1) => do i a%x(i) = b%x(i) (fast, stride 1)\n",
          details = "All SSE/AVX instructions are used in scalar version (process only one data element in vector registers).\nSince your execution units are vector units, only a vectorized loop can use their full power.\n",
          title = "Vectorization",
          txt = "Your loop is not vectorized.\n4 data elements could be processed at once in vector registers.\nBy vectorizing your loop, you can lower the cost of an iteration from 30.00 to 12.50 cycles (2.40x speedup).",
        },
        {
          workaround = " - Read less array elements\n - Write less array elements\n - Provide more information to your compiler:\n  * hardcode the bounds of the corresponding 'for' loop\n",
          title = "Execution units bottlenecks",
          txt = "Performance is limited by:\n - reading data from caches/RAM (load units are a bottleneck)\n - writing data to caches/RAM (the store unit is a bottleneck)\n\nBy removing all these bottlenecks, you can lower the cost of an iteration from 30.00 to 25.00 cycles (1.20x speedup).\n",
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
          details = " - Constant unknown stride: 1 occurrence(s)\n - Constant non-unit stride: 1 occurrence(s)\nNon-unit stride (uncontiguous) accesses are not efficiently using data caches\n",
          title = "Slow data structures access",
          txt = "Detected data structures (typically arrays) that cannot be efficiently read/written",
        },
        {
          title = "Type of elements and instruction set",
          txt = "50 SSE or AVX instructions are processing arithmetic or math operations on double precision FP elements in scalar mode (one at a time).\n",
        },
        {
          title = "Matching between your loop (in the source code) and the binary loop",
          txt = "The binary loop is composed of 50 FP arithmetical operations:\n - 25: addition or subtraction\n - 25: multiply\nThe binary loop is loading 280 bytes (35 double precision FP elements).\nThe binary loop is storing 200 bytes (25 double precision FP elements).",
        },
        {
          title = "Arithmetic intensity",
          txt = "Arithmetic intensity is 0.10 FP operations per loaded or stored byte.",
        },
        {
          workaround = "Unroll your loop if trip count is significantly higher than target unroll factor and if some data references are common to consecutive iterations. This can be done manually. Or by recompiling with -funroll-loops and/or -floop-unroll-and-jam.",
          title = "Unroll opportunity",
          txt = "Loop is data access bound.",
        },
      },
      expert = {
        {
          title = "General properties",
          txt = "nb instructions    : 89\nnb uops            : 89\nloop length        : 506\nused x86 registers : 3\nused mmx registers : 0\nused xmm registers : 15\nused ymm registers : 0\nused zmm registers : 0\nnb stack references: 0\nADD-SUB / MUL ratio: 1.00\n",
        },
        {
          title = "Front-end",
          txt = "MACRO FUSION NOT POSSIBLE\nFIT IN UOP CACHE\nmicro-operation queue: 22.25 cycles\nfront end            : 22.25 cycles\n",
        },
        {
          title = "Back-end",
          txt = "       | P0    | P1    | P2    | P3    | P4    | P5\n-----------------------------------------------------\nuops   | 25.00 | 25.00 | 30.00 | 30.00 | 25.00 | 4.00\ncycles | 25.00 | 25.00 | 30.00 | 30.00 | 25.00 | 4.00\n\nCycles executing div or sqrt instructions: NA\nLongest recurrence chain latency (RecMII): 1.00\n",
        },
        {
          title = "Cycles summary",
          txt = "Front-end : 22.25\nDispatch  : 30.00\nData deps.: 1.00\nOverall L1: 30.00\n",
        },
        {
          title = "Vectorization ratios",
          txt = "all     : 0%\nload    : 0%\nstore   : 0%\nmul     : 0%\nadd-sub : 0%\nfma     : NA (no fma vectorizable/vectorized instructions)\ndiv/sqrt: NA (no div/sqrt vectorizable/vectorized instructions)\nother   : NA (no other vectorizable/vectorized instructions)\n",
        },
        {
          title = "Vector efficiency ratios",
          txt = "all     : 25%\nload    : 25%\nstore   : 25%\nmul     : 25%\nadd-sub : 25%\nfma     : NA (no fma vectorizable/vectorized instructions)\ndiv/sqrt: NA (no div/sqrt vectorizable/vectorized instructions)\nother   : NA (no other vectorizable/vectorized instructions)\n",
        },
        {
          title = "Cycles and memory resources usage",
          txt = "Assuming all data fit into the L1 cache, each iteration of the binary loop takes 30.00 cycles. At this rate:\n - 29% of peak load performance is reached (9.33 out of 32.00 bytes loaded per cycle (GB/s @ 1GHz))\n - 41% of peak store performance is reached (6.67 out of 16.00 bytes stored per cycle (GB/s @ 1GHz))\n",
        },
        {
          title = "Front-end bottlenecks",
          txt = "Found no such bottlenecks.",
        },
        {
          title = "ASM code",
          txt = "In the binary file, the address of the loop is: 15190\n\nInstruction                           | Nb FU | P0   | P1   | P2   | P3   | P4 | P5   | Latency | Recip. throughput\n-------------------------------------------------------------------------------------------------------------------\nVMOVSD 0x8(%RAX),%XMM14               | 1     | 0    | 0    | 0.50 | 0.50 | 0  | 0    | 3       | 0.50\nSUB $0x258,%RBX                       | 1     | 0.33 | 0.33 | 0    | 0    | 0  | 0.33 | 1       | 0.33\nSUB $0x28,%RAX                        | 1     | 0.33 | 0.33 | 0    | 0    | 0  | 0.33 | 1       | 0.33\nVMULSD 0x190(%RBX),%XMM14,%XMM6       | 1     | 1    | 0    | 0.50 | 0.50 | 0  | 0    | 5       | 1\nVMOVSD 0x8(%RAX),%XMM7                | 1     | 0    | 0    | 0.50 | 0.50 | 0  | 0    | 3       | 0.50\nVMOVSD 0x38(%RAX),%XMM5               | 1     | 0    | 0    | 0.50 | 0.50 | 0  | 0    | 3       | 0.50\nVMOVSD 0x40(%RAX),%XMM8               | 1     | 0    | 0    | 0.50 | 0.50 | 0  | 0    | 3       | 0.50\nVMOVSD 0x48(%RAX),%XMM11              | 1     | 0    | 0    | 0.50 | 0.50 | 0  | 0    | 3       | 0.50\nVSUBSD %XMM6,%XMM7,%XMM3              | 1     | 0    | 1    | 0    | 0    | 0  | 0    | 3       | 1\nVMOVSD 0x50(%RAX),%XMM2               | 1     | 0    | 0    | 0.50 | 0.50 | 0  | 0    | 3       | 0.50\nVMOVSD %XMM3,0x8(%RAX)                | 1     | 0    | 0    | 0.50 | 0.50 | 1  | 0    | 3       | 1\nVMULSD 0x1b8(%RBX),%XMM5,%XMM0        | 1     | 1    | 0    | 0.50 | 0.50 | 0  | 0    | 5       | 1\nVSUBSD %XMM0,%XMM3,%XMM15             | 1     | 0    | 1    | 0    | 0    | 0  | 0    | 3       | 1\nVMOVSD 0x10(%RAX),%XMM3               | 1     | 0    | 0    | 0.50 | 0.50 | 0  | 0    | 3       | 0.50\nVMOVSD %XMM15,0x8(%RAX)               | 1     | 0    | 0    | 0.50 | 0.50 | 1  | 0    | 3       | 1\nVMULSD 0x1e0(%RBX),%XMM8,%XMM9        | 1     | 1    | 0    | 0.50 | 0.50 | 0  | 0    | 5       | 1\nVSUBSD %XMM9,%XMM15,%XMM10            | 1     | 0    | 1    | 0    | 0    | 0  | 0    | 3       | 1\nVMOVSD %XMM10,0x8(%RAX)               | 1     | 0    | 0    | 0.50 | 0.50 | 1  | 0    | 3       | 1\nVMULSD 0x208(%RBX),%XMM11,%XMM13      | 1     | 1    | 0    | 0.50 | 0.50 | 0  | 0    | 5       | 1\nVSUBSD %XMM13,%XMM10,%XMM1            | 1     | 0    | 1    | 0    | 0    | 0  | 0    | 3       | 1\nVMOVSD %XMM1,0x8(%RAX)                | 1     | 0    | 0    | 0.50 | 0.50 | 1  | 0    | 3       | 1\nVMULSD 0x230(%RBX),%XMM2,%XMM4        | 1     | 1    | 0    | 0.50 | 0.50 | 0  | 0    | 5       | 1\nVSUBSD %XMM4,%XMM1,%XMM6              | 1     | 0    | 1    | 0    | 0    | 0  | 0    | 3       | 1\nVMOVSD %XMM6,0x8(%RAX)                | 1     | 0    | 0    | 0.50 | 0.50 | 1  | 0    | 3       | 1\nVMULSD 0x198(%RBX),%XMM14,%XMM7       | 1     | 1    | 0    | 0.50 | 0.50 | 0  | 0    | 5       | 1\nVSUBSD %XMM7,%XMM3,%XMM0              | 1     | 0    | 1    | 0    | 0    | 0  | 0    | 3       | 1\nVMOVSD %XMM0,0x10(%RAX)               | 1     | 0    | 0    | 0.50 | 0.50 | 1  | 0    | 3       | 1\nVMULSD 0x1c0(%RBX),%XMM5,%XMM15       | 1     | 1    | 0    | 0.50 | 0.50 | 0  | 0    | 5       | 1\nVSUBSD %XMM15,%XMM0,%XMM9             | 1     | 0    | 1    | 0    | 0    | 0  | 0    | 3       | 1\nVMOVSD 0x18(%RAX),%XMM0               | 1     | 0    | 0    | 0.50 | 0.50 | 0  | 0    | 3       | 0.50\nVMOVSD %XMM9,0x10(%RAX)               | 1     | 0    | 0    | 0.50 | 0.50 | 1  | 0    | 3       | 1\nVMULSD 0x1e8(%RBX),%XMM8,%XMM10       | 1     | 1    | 0    | 0.50 | 0.50 | 0  | 0    | 5       | 1\nVSUBSD %XMM10,%XMM9,%XMM13            | 1     | 0    | 1    | 0    | 0    | 0  | 0    | 3       | 1\nVMOVSD %XMM13,0x10(%RAX)              | 1     | 0    | 0    | 0.50 | 0.50 | 1  | 0    | 3       | 1\nVMULSD 0x210(%RBX),%XMM11,%XMM1       | 1     | 1    | 0    | 0.50 | 0.50 | 0  | 0    | 5       | 1\nVSUBSD %XMM1,%XMM13,%XMM4             | 1     | 0    | 1    | 0    | 0    | 0  | 0    | 3       | 1\nVMOVSD %XMM4,0x10(%RAX)               | 1     | 0    | 0    | 0.50 | 0.50 | 1  | 0    | 3       | 1\nVMULSD 0x238(%RBX),%XMM2,%XMM6        | 1     | 1    | 0    | 0.50 | 0.50 | 0  | 0    | 5       | 1\nVSUBSD %XMM6,%XMM4,%XMM7              | 1     | 0    | 1    | 0    | 0    | 0  | 0    | 3       | 1\nVMOVSD %XMM7,0x10(%RAX)               | 1     | 0    | 0    | 0.50 | 0.50 | 1  | 0    | 3       | 1\nVMULSD 0x1a0(%RBX),%XMM14,%XMM3       | 1     | 1    | 0    | 0.50 | 0.50 | 0  | 0    | 5       | 1\nVSUBSD %XMM3,%XMM0,%XMM15             | 1     | 0    | 1    | 0    | 0    | 0  | 0    | 3       | 1\nVMOVSD %XMM15,0x18(%RAX)              | 1     | 0    | 0    | 0.50 | 0.50 | 1  | 0    | 3       | 1\nVMULSD 0x1c8(%RBX),%XMM5,%XMM9        | 1     | 1    | 0    | 0.50 | 0.50 | 0  | 0    | 5       | 1\nVSUBSD %XMM9,%XMM15,%XMM10            | 1     | 0    | 1    | 0    | 0    | 0  | 0    | 3       | 1\nVMOVSD %XMM10,0x18(%RAX)              | 1     | 0    | 0    | 0.50 | 0.50 | 1  | 0    | 3       | 1\nVMULSD 0x1f0(%RBX),%XMM8,%XMM13       | 1     | 1    | 0    | 0.50 | 0.50 | 0  | 0    | 5       | 1\nVMOVSD 0x20(%RAX),%XMM15              | 1     | 0    | 0    | 0.50 | 0.50 | 0  | 0    | 3       | 0.50\nVSUBSD %XMM13,%XMM10,%XMM1            | 1     | 0    | 1    | 0    | 0    | 0  | 0    | 3       | 1\nVMOVSD %XMM1,0x18(%RAX)               | 1     | 0    | 0    | 0.50 | 0.50 | 1  | 0    | 3       | 1\nVMULSD 0x218(%RBX),%XMM11,%XMM4       | 1     | 1    | 0    | 0.50 | 0.50 | 0  | 0    | 5       | 1\nVSUBSD %XMM4,%XMM1,%XMM7              | 1     | 0    | 1    | 0    | 0    | 0  | 0    | 3       | 1\nVMOVSD %XMM7,0x18(%RAX)               | 1     | 0    | 0    | 0.50 | 0.50 | 1  | 0    | 3       | 1\nVMULSD 0x240(%RBX),%XMM2,%XMM6        | 1     | 1    | 0    | 0.50 | 0.50 | 0  | 0    | 5       | 1\nVSUBSD %XMM6,%XMM7,%XMM3              | 1     | 0    | 1    | 0    | 0    | 0  | 0    | 3       | 1\nVMOVSD %XMM3,0x18(%RAX)               | 1     | 0    | 0    | 0.50 | 0.50 | 1  | 0    | 3       | 1\nVMULSD 0x1a8(%RBX),%XMM14,%XMM0       | 1     | 1    | 0    | 0.50 | 0.50 | 0  | 0    | 5       | 1\nVSUBSD %XMM0,%XMM15,%XMM9             | 1     | 0    | 1    | 0    | 0    | 0  | 0    | 3       | 1\nVMOVSD 0x28(%RAX),%XMM15              | 1     | 0    | 0    | 0.50 | 0.50 | 0  | 0    | 3       | 0.50\nVMOVSD %XMM9,0x20(%RAX)               | 1     | 0    | 0    | 0.50 | 0.50 | 1  | 0    | 3       | 1\nVMULSD 0x1d0(%RBX),%XMM5,%XMM10       | 1     | 1    | 0    | 0.50 | 0.50 | 0  | 0    | 5       | 1\nVSUBSD %XMM10,%XMM9,%XMM13            | 1     | 0    | 1    | 0    | 0    | 0  | 0    | 3       | 1\nVMOVSD %XMM13,0x20(%RAX)              | 1     | 0    | 0    | 0.50 | 0.50 | 1  | 0    | 3       | 1\nVMULSD 0x1f8(%RBX),%XMM8,%XMM1        | 1     | 1    | 0    | 0.50 | 0.50 | 0  | 0    | 5       | 1\nVSUBSD %XMM1,%XMM13,%XMM4             | 1     | 0    | 1    | 0    | 0    | 0  | 0    | 3       | 1\nVMOVSD %XMM4,0x20(%RAX)               | 1     | 0    | 0    | 0.50 | 0.50 | 1  | 0    | 3       | 1\nVMULSD 0x220(%RBX),%XMM11,%XMM7       | 1     | 1    | 0    | 0.50 | 0.50 | 0  | 0    | 5       | 1\nVSUBSD %XMM7,%XMM4,%XMM3              | 1     | 0    | 1    | 0    | 0    | 0  | 0    | 3       | 1\nVMOVSD %XMM3,0x20(%RAX)               | 1     | 0    | 0    | 0.50 | 0.50 | 1  | 0    | 3       | 1\nVMULSD 0x248(%RBX),%XMM2,%XMM6        | 1     | 1    | 0    | 0.50 | 0.50 | 0  | 0    | 5       | 1\nVSUBSD %XMM6,%XMM3,%XMM0              | 1     | 0    | 1    | 0    | 0    | 0  | 0    | 3       | 1\nVMOVSD %XMM0,0x20(%RAX)               | 1     | 0    | 0    | 0.50 | 0.50 | 1  | 0    | 3       | 1\nVMULSD 0x1b0(%RBX),%XMM14,%XMM14      | 1     | 1    | 0    | 0.50 | 0.50 | 0  | 0    | 5       | 1\nVSUBSD %XMM14,%XMM15,%XMM9            | 1     | 0    | 1    | 0    | 0    | 0  | 0    | 3       | 1\nVMOVSD %XMM9,0x28(%RAX)               | 1     | 0    | 0    | 0.50 | 0.50 | 1  | 0    | 3       | 1\nVMULSD 0x1d8(%RBX),%XMM5,%XMM5        | 1     | 1    | 0    | 0.50 | 0.50 | 0  | 0    | 5       | 1\nVSUBSD %XMM5,%XMM9,%XMM10             | 1     | 0    | 1    | 0    | 0    | 0  | 0    | 3       | 1\nVMOVSD %XMM10,0x28(%RAX)              | 1     | 0    | 0    | 0.50 | 0.50 | 1  | 0    | 3       | 1\nVMULSD 0x200(%RBX),%XMM8,%XMM8        | 1     | 1    | 0    | 0.50 | 0.50 | 0  | 0    | 5       | 1\nVSUBSD %XMM8,%XMM10,%XMM13            | 1     | 0    | 1    | 0    | 0    | 0  | 0    | 3       | 1\nVMOVSD %XMM13,0x28(%RAX)              | 1     | 0    | 0    | 0.50 | 0.50 | 1  | 0    | 3       | 1\nVMULSD 0x228(%RBX),%XMM11,%XMM11      | 1     | 1    | 0    | 0.50 | 0.50 | 0  | 0    | 5       | 1\nVSUBSD %XMM11,%XMM13,%XMM1            | 1     | 0    | 1    | 0    | 0    | 0  | 0    | 3       | 1\nVMOVSD %XMM1,0x28(%RAX)               | 1     | 0    | 0    | 0.50 | 0.50 | 1  | 0    | 3       | 1\nVMULSD 0x250(%RBX),%XMM2,%XMM2        | 1     | 1    | 0    | 0.50 | 0.50 | 0  | 0    | 5       | 1\nVSUBSD %XMM2,%XMM1,%XMM4              | 1     | 0    | 1    | 0    | 0    | 0  | 0    | 3       | 1\nVMOVSD %XMM4,0x28(%RAX)               | 1     | 0    | 0    | 0.50 | 0.50 | 1  | 0    | 3       | 1\nSUB $0x1,%R12D                        | 1     | 0.33 | 0.33 | 0    | 0    | 0  | 0.33 | 1       | 0.33\nJNS 15190 <x_solve_._omp_fn.0+0x2110> | 1     | 0    | 0    | 0    | 0    | 0  | 1    | 0       | 1-2\n",
        },
      },
      header = {
        "20% of peak computational performance is used (1.67 out of 8.00 FLOP per cycle (GFLOPS @ 1GHz))",
      },
      brief = {
      },
      gain = {
        {
          workaround = " - Try another compiler or update/tune your current one:\n  * recompile with fassociative-math (included in Ofast or ffast-math) to extend loop vectorization to FP reductions.\n - Remove inter-iterations dependences from your loop and make it unit-stride:\n  * If your arrays have 2 or more dimensions, check whether elements are accessed contiguously and, otherwise, try to permute loops accordingly:\nFortran storage order is column-major: do i do j a(i,j) = b(i,j) (slow, non stride 1) => do i do j a(j,i) = b(i,j) (fast, stride 1)\n  * If your loop streams arrays of structures (AoS), try to use structures of arrays instead (SoA):\ndo i a(i)%x = b(i)%x (slow, non stride 1) => do i a%x(i) = b%x(i) (fast, stride 1)\n",
          details = "All SSE/AVX instructions are used in scalar version (process only one data element in vector registers).\nSince your execution units are vector units, only a vectorized loop can use their full power.\n",
          title = "Vectorization",
          txt = "Your loop is not vectorized.\n4 data elements could be processed at once in vector registers.\nBy vectorizing your loop, you can lower the cost of an iteration from 30.00 to 12.50 cycles (2.40x speedup).",
        },
        {
          workaround = " - Read less array elements\n - Write less array elements\n - Provide more information to your compiler:\n  * hardcode the bounds of the corresponding 'for' loop\n",
          title = "Execution units bottlenecks",
          txt = "Performance is limited by:\n - reading data from caches/RAM (load units are a bottleneck)\n - writing data to caches/RAM (the store unit is a bottleneck)\n\nBy removing all these bottlenecks, you can lower the cost of an iteration from 30.00 to 25.00 cycles (1.20x speedup).\n",
        },
      },
      potential = {
      },
    },
  common = {
    header = {
      "The loop is defined in /users/user2210/NPB3.4-MZ-MPI/BT-MZ/x_solve.f90:394-398.\n",
      "The related source loop is not unrolled or unrolled with no peel/tail loop.",
    },
    nb_paths = 1,
  },
}
