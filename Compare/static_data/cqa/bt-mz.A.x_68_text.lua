_cqa_text_report = {
  paths = {
    {
      hint = {
        {
          workaround = " - Try to reorganize arrays of structures to structures of arrays\n - Consider to permute loops (see vectorization gain report)\n",
          details = " - Constant non-unit stride: 1 occurrence(s)\nNon-unit stride (uncontiguous) accesses are not efficiently using data caches\n",
          title = "Slow data structures access",
          txt = "Detected data structures (typically arrays) that cannot be efficiently read/written",
        },
        {
          title = "Type of elements and instruction set",
          txt = "45 SSE or AVX instructions are processing arithmetic or math operations on double precision FP elements in scalar mode (one at a time).\n",
        },
        {
          title = "Matching between your loop (in the source code) and the binary loop",
          txt = "The binary loop is composed of 45 FP arithmetical operations:\n - 25: addition or subtraction\n - 20: multiply\nThe binary loop is loading 280 bytes (35 double precision FP elements).\nThe binary loop is storing 40 bytes (5 double precision FP elements).",
        },
        {
          title = "Arithmetic intensity",
          txt = "Arithmetic intensity is 0.14 FP operations per loaded or stored byte.",
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
          txt = "nb instructions    : 64\nnb uops            : 63\nloop length        : 371\nused x86 registers : 3\nused mmx registers : 0\nused xmm registers : 15\nused ymm registers : 0\nused zmm registers : 0\nnb stack references: 0\nADD-SUB / MUL ratio: 1.25\n",
        },
        {
          title = "Front-end",
          txt = "ASSUMED MACRO FUSION\nFIT IN UOP CACHE\nmicro-operation queue: 15.75 cycles\nfront end            : 15.75 cycles\n",
        },
        {
          title = "Back-end",
          txt = "       | P0    | P1    | P2    | P3    | P4   | P5\n----------------------------------------------------\nuops   | 20.00 | 25.00 | 20.00 | 20.00 | 5.00 | 3.00\ncycles | 20.00 | 25.00 | 20.00 | 20.00 | 5.00 | 3.00\n\nCycles executing div or sqrt instructions: NA\nLongest recurrence chain latency (RecMII): 1.00\n",
        },
        {
          title = "Cycles summary",
          txt = "Front-end : 15.75\nDispatch  : 25.00\nData deps.: 1.00\nOverall L1: 25.00\n",
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
          txt = "Assuming all data fit into the L1 cache, each iteration of the binary loop takes 25.00 cycles. At this rate:\n - 35% of peak load performance is reached (11.20 out of 32.00 bytes loaded per cycle (GB/s @ 1GHz))\n - 10% of peak store performance is reached (1.60 out of 16.00 bytes stored per cycle (GB/s @ 1GHz))\n",
        },
        {
          title = "Front-end bottlenecks",
          txt = "Found no such bottlenecks.",
        },
        {
          title = "ASM code",
          txt = "In the binary file, the address of the loop is: d298\n\nInstruction                             | Nb FU | P0   | P1   | P2   | P3   | P4 | P5   | Latency | Recip. throughput\n---------------------------------------------------------------------------------------------------------------------\nVMULSD 0x28(%R8),%XMM1,%XMM2            | 1     | 1    | 0    | 0.50 | 0.50 | 0  | 0    | 5       | 1\nADD $0x28,%R8                           | 1     | 0.33 | 0.33 | 0    | 0    | 0  | 0.33 | 1       | 0.33\nADD $0x28,%R9                           | 1     | 0.33 | 0.33 | 0    | 0    | 0  | 0.33 | 1       | 0.33\nVMOVSD -0x28(%R8),%XMM0                 | 1     | 0    | 0    | 0.50 | 0.50 | 0  | 0    | 3       | 0.50\nVMULSD 0x28(%R8),%XMM4,%XMM13           | 1     | 1    | 0    | 0.50 | 0.50 | 0  | 0    | 5       | 1\nVMULSD 0x50(%R8),%XMM1,%XMM3            | 1     | 1    | 0    | 0.50 | 0.50 | 0  | 0    | 5       | 1\nVMOVSD -0x28(%R9),%XMM15                | 1     | 0    | 0    | 0.50 | 0.50 | 0  | 0    | 3       | 0.50\nVSUBSD %XMM2,%XMM0,%XMM5                | 1     | 0    | 1    | 0    | 0    | 0  | 0    | 3       | 1\nVADDSD %XMM13,%XMM5,%XMM6               | 1     | 0    | 1    | 0    | 0    | 0  | 0    | 3       | 1\nVSUBSD %XMM3,%XMM6,%XMM12               | 1     | 0    | 1    | 0    | 0    | 0  | 0    | 3       | 1\nVADDSD 0x78(%R8),%XMM12,%XMM14          | 1     | 0    | 1    | 0.50 | 0.50 | 0  | 0    | 3       | 1\nVMULSD 0x1f657(%RIP),%XMM14,%XMM11      | 1     | 1    | 0    | 0.50 | 0.50 | 0  | 0    | 5       | 1\nVMOVSD -0x20(%R9),%XMM14                | 1     | 0    | 0    | 0.50 | 0.50 | 0  | 0    | 3       | 0.50\nVSUBSD %XMM11,%XMM15,%XMM8              | 1     | 0    | 1    | 0    | 0    | 0  | 0    | 3       | 1\nVMOVSD %XMM8,-0x28(%R9)                 | 1     | 0    | 0    | 0.50 | 0.50 | 1  | 0    | 3       | 1\nVMULSD 0x8(%R8),%XMM1,%XMM10            | 1     | 1    | 0    | 0.50 | 0.50 | 0  | 0    | 5       | 1\nVMOVSD -0x20(%R8),%XMM9                 | 1     | 0    | 0    | 0.50 | 0.50 | 0  | 0    | 3       | 0.50\nVMULSD 0x30(%R8),%XMM4,%XMM2            | 1     | 1    | 0    | 0.50 | 0.50 | 0  | 0    | 5       | 1\nVMULSD 0x58(%R8),%XMM1,%XMM13           | 1     | 1    | 0    | 0.50 | 0.50 | 0  | 0    | 5       | 1\nVSUBSD %XMM10,%XMM9,%XMM0               | 1     | 0    | 1    | 0    | 0    | 0  | 0    | 3       | 1\nVADDSD %XMM2,%XMM0,%XMM5                | 1     | 0    | 1    | 0    | 0    | 0  | 0    | 3       | 1\nVSUBSD %XMM13,%XMM5,%XMM6               | 1     | 0    | 1    | 0    | 0    | 0  | 0    | 3       | 1\nVADDSD 0x80(%R8),%XMM6,%XMM3            | 1     | 0    | 1    | 0.50 | 0.50 | 0  | 0    | 3       | 1\nVMULSD 0x1f60f(%RIP),%XMM3,%XMM12       | 1     | 1    | 0    | 0.50 | 0.50 | 0  | 0    | 5       | 1\nVMOVSD -0x18(%R9),%XMM3                 | 1     | 0    | 0    | 0.50 | 0.50 | 0  | 0    | 3       | 0.50\nVSUBSD %XMM12,%XMM14,%XMM11             | 1     | 0    | 1    | 0    | 0    | 0  | 0    | 3       | 1\nVMOVSD %XMM11,-0x20(%R9)                | 1     | 0    | 0    | 0.50 | 0.50 | 1  | 0    | 3       | 1\nVMULSD 0x10(%R8),%XMM1,%XMM15           | 1     | 1    | 0    | 0.50 | 0.50 | 0  | 0    | 5       | 1\nVMOVSD -0x18(%R8),%XMM8                 | 1     | 0    | 0    | 0.50 | 0.50 | 0  | 0    | 3       | 0.50\nVMULSD 0x38(%R8),%XMM4,%XMM9            | 1     | 1    | 0    | 0.50 | 0.50 | 0  | 0    | 5       | 1\nVMULSD 0x60(%R8),%XMM1,%XMM2            | 1     | 1    | 0    | 0.50 | 0.50 | 0  | 0    | 5       | 1\nVSUBSD %XMM15,%XMM8,%XMM10              | 1     | 0    | 1    | 0    | 0    | 0  | 0    | 3       | 1\nVADDSD %XMM9,%XMM10,%XMM0               | 1     | 0    | 1    | 0    | 0    | 0  | 0    | 3       | 1\nVSUBSD %XMM2,%XMM0,%XMM5                | 1     | 0    | 1    | 0    | 0    | 0  | 0    | 3       | 1\nVADDSD 0x88(%R8),%XMM5,%XMM13           | 1     | 0    | 1    | 0.50 | 0.50 | 0  | 0    | 3       | 1\nVMULSD 0x1f5c7(%RIP),%XMM13,%XMM6       | 1     | 1    | 0    | 0.50 | 0.50 | 0  | 0    | 5       | 1\nVMOVSD -0x10(%R9),%XMM13                | 1     | 0    | 0    | 0.50 | 0.50 | 0  | 0    | 3       | 0.50\nVSUBSD %XMM6,%XMM3,%XMM12               | 1     | 0    | 1    | 0    | 0    | 0  | 0    | 3       | 1\nVMOVSD %XMM12,-0x18(%R9)                | 1     | 0    | 0    | 0.50 | 0.50 | 1  | 0    | 3       | 1\nVMULSD 0x18(%R8),%XMM1,%XMM14           | 1     | 1    | 0    | 0.50 | 0.50 | 0  | 0    | 5       | 1\nVMOVSD -0x10(%R8),%XMM11                | 1     | 0    | 0    | 0.50 | 0.50 | 0  | 0    | 3       | 0.50\nVMULSD 0x40(%R8),%XMM4,%XMM8            | 1     | 1    | 0    | 0.50 | 0.50 | 0  | 0    | 5       | 1\nVMULSD 0x68(%R8),%XMM1,%XMM9            | 1     | 1    | 0    | 0.50 | 0.50 | 0  | 0    | 5       | 1\nVSUBSD %XMM14,%XMM11,%XMM15             | 1     | 0    | 1    | 0    | 0    | 0  | 0    | 3       | 1\nVADDSD %XMM8,%XMM15,%XMM10              | 1     | 0    | 1    | 0    | 0    | 0  | 0    | 3       | 1\nVSUBSD %XMM9,%XMM10,%XMM0               | 1     | 0    | 1    | 0    | 0    | 0  | 0    | 3       | 1\nVADDSD 0x90(%R8),%XMM0,%XMM2            | 1     | 0    | 1    | 0.50 | 0.50 | 0  | 0    | 3       | 1\nVMULSD 0x1f57f(%RIP),%XMM2,%XMM5        | 1     | 1    | 0    | 0.50 | 0.50 | 0  | 0    | 5       | 1\nVSUBSD %XMM5,%XMM13,%XMM6               | 1     | 0    | 1    | 0    | 0    | 0  | 0    | 3       | 1\nVMOVSD %XMM6,-0x10(%R9)                 | 1     | 0    | 0    | 0.50 | 0.50 | 1  | 0    | 3       | 1\nVMULSD 0x20(%R8),%XMM1,%XMM3            | 1     | 1    | 0    | 0.50 | 0.50 | 0  | 0    | 5       | 1\nVMOVSD -0x8(%R8),%XMM12                 | 1     | 0    | 0    | 0.50 | 0.50 | 0  | 0    | 3       | 0.50\nVMULSD 0x48(%R8),%XMM4,%XMM11           | 1     | 1    | 0    | 0.50 | 0.50 | 0  | 0    | 5       | 1\nVMULSD 0x70(%R8),%XMM1,%XMM8            | 1     | 1    | 0    | 0.50 | 0.50 | 0  | 0    | 5       | 1\nVMOVSD -0x8(%R9),%XMM2                  | 1     | 0    | 0    | 0.50 | 0.50 | 0  | 0    | 3       | 0.50\nVSUBSD %XMM3,%XMM12,%XMM14              | 1     | 0    | 1    | 0    | 0    | 0  | 0    | 3       | 1\nVADDSD %XMM11,%XMM14,%XMM15             | 1     | 0    | 1    | 0    | 0    | 0  | 0    | 3       | 1\nVSUBSD %XMM8,%XMM15,%XMM10              | 1     | 0    | 1    | 0    | 0    | 0  | 0    | 3       | 1\nVADDSD 0x98(%R8),%XMM10,%XMM9           | 1     | 0    | 1    | 0.50 | 0.50 | 0  | 0    | 3       | 1\nVMULSD 0x1f538(%RIP),%XMM9,%XMM0        | 1     | 1    | 0    | 0.50 | 0.50 | 0  | 0    | 5       | 1\nVSUBSD %XMM0,%XMM2,%XMM5                | 1     | 0    | 1    | 0    | 0    | 0  | 0    | 3       | 1\nVMOVSD %XMM5,-0x8(%R9)                  | 1     | 0    | 0    | 0.50 | 0.50 | 1  | 0    | 3       | 1\nCMP %R8,%R12                            | 1     | 0.33 | 0.33 | 0    | 0    | 0  | 0.33 | 1       | 0.33\nJNE d298 <compute_rhs_._omp_fn.0+0xf48> | 1     | 0    | 0    | 0    | 0    | 0  | 1    | 0       | 1-2\n",
        },
      },
      header = {
        "22% of peak computational performance is used (1.80 out of 8.00 FLOP per cycle (GFLOPS @ 1GHz))",
      },
      brief = {
      },
      gain = {
        {
          workaround = " - Try another compiler or update/tune your current one:\n  * recompile with fassociative-math (included in Ofast or ffast-math) to extend loop vectorization to FP reductions.\n - Remove inter-iterations dependences from your loop and make it unit-stride:\n  * If your arrays have 2 or more dimensions, check whether elements are accessed contiguously and, otherwise, try to permute loops accordingly:\nFortran storage order is column-major: do i do j a(i,j) = b(i,j) (slow, non stride 1) => do i do j a(j,i) = b(i,j) (fast, stride 1)\n  * If your loop streams arrays of structures (AoS), try to use structures of arrays instead (SoA):\ndo i a(i)%x = b(i)%x (slow, non stride 1) => do i a%x(i) = b%x(i) (fast, stride 1)\n",
          details = "All SSE/AVX instructions are used in scalar version (process only one data element in vector registers).\nSince your execution units are vector units, only a vectorized loop can use their full power.\n",
          title = "Vectorization",
          txt = "Your loop is not vectorized.\n4 data elements could be processed at once in vector registers.\nBy vectorizing your loop, you can lower the cost of an iteration from 25.00 to 8.75 cycles (2.86x speedup).",
        },
        {
          workaround = "Reduce the number of FP add instructions",
          title = "Execution units bottlenecks",
          txt = "Performance is limited by execution of FP add operations (the FP add unit is a bottleneck).\n\nBy removing all these bottlenecks, you can lower the cost of an iteration from 25.00 to 20.00 cycles (1.25x speedup).\n",
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
          details = " - Constant non-unit stride: 1 occurrence(s)\nNon-unit stride (uncontiguous) accesses are not efficiently using data caches\n",
          title = "Slow data structures access",
          txt = "Detected data structures (typically arrays) that cannot be efficiently read/written",
        },
        {
          title = "Type of elements and instruction set",
          txt = "45 SSE or AVX instructions are processing arithmetic or math operations on double precision FP elements in scalar mode (one at a time).\n",
        },
        {
          title = "Matching between your loop (in the source code) and the binary loop",
          txt = "The binary loop is composed of 45 FP arithmetical operations:\n - 25: addition or subtraction\n - 20: multiply\nThe binary loop is loading 280 bytes (35 double precision FP elements).\nThe binary loop is storing 40 bytes (5 double precision FP elements).",
        },
        {
          title = "Arithmetic intensity",
          txt = "Arithmetic intensity is 0.14 FP operations per loaded or stored byte.",
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
          txt = "nb instructions    : 64\nnb uops            : 63\nloop length        : 371\nused x86 registers : 3\nused mmx registers : 0\nused xmm registers : 15\nused ymm registers : 0\nused zmm registers : 0\nnb stack references: 0\nADD-SUB / MUL ratio: 1.25\n",
        },
        {
          title = "Front-end",
          txt = "ASSUMED MACRO FUSION\nFIT IN UOP CACHE\nmicro-operation queue: 15.75 cycles\nfront end            : 15.75 cycles\n",
        },
        {
          title = "Back-end",
          txt = "       | P0    | P1    | P2    | P3    | P4   | P5\n----------------------------------------------------\nuops   | 20.00 | 25.00 | 20.00 | 20.00 | 5.00 | 3.00\ncycles | 20.00 | 25.00 | 20.00 | 20.00 | 5.00 | 3.00\n\nCycles executing div or sqrt instructions: NA\nLongest recurrence chain latency (RecMII): 1.00\n",
        },
        {
          title = "Cycles summary",
          txt = "Front-end : 15.75\nDispatch  : 25.00\nData deps.: 1.00\nOverall L1: 25.00\n",
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
          txt = "Assuming all data fit into the L1 cache, each iteration of the binary loop takes 25.00 cycles. At this rate:\n - 35% of peak load performance is reached (11.20 out of 32.00 bytes loaded per cycle (GB/s @ 1GHz))\n - 10% of peak store performance is reached (1.60 out of 16.00 bytes stored per cycle (GB/s @ 1GHz))\n",
        },
        {
          title = "Front-end bottlenecks",
          txt = "Found no such bottlenecks.",
        },
        {
          title = "ASM code",
          txt = "In the binary file, the address of the loop is: d298\n\nInstruction                             | Nb FU | P0   | P1   | P2   | P3   | P4 | P5   | Latency | Recip. throughput\n---------------------------------------------------------------------------------------------------------------------\nVMULSD 0x28(%R8),%XMM1,%XMM2            | 1     | 1    | 0    | 0.50 | 0.50 | 0  | 0    | 5       | 1\nADD $0x28,%R8                           | 1     | 0.33 | 0.33 | 0    | 0    | 0  | 0.33 | 1       | 0.33\nADD $0x28,%R9                           | 1     | 0.33 | 0.33 | 0    | 0    | 0  | 0.33 | 1       | 0.33\nVMOVSD -0x28(%R8),%XMM0                 | 1     | 0    | 0    | 0.50 | 0.50 | 0  | 0    | 3       | 0.50\nVMULSD 0x28(%R8),%XMM4,%XMM13           | 1     | 1    | 0    | 0.50 | 0.50 | 0  | 0    | 5       | 1\nVMULSD 0x50(%R8),%XMM1,%XMM3            | 1     | 1    | 0    | 0.50 | 0.50 | 0  | 0    | 5       | 1\nVMOVSD -0x28(%R9),%XMM15                | 1     | 0    | 0    | 0.50 | 0.50 | 0  | 0    | 3       | 0.50\nVSUBSD %XMM2,%XMM0,%XMM5                | 1     | 0    | 1    | 0    | 0    | 0  | 0    | 3       | 1\nVADDSD %XMM13,%XMM5,%XMM6               | 1     | 0    | 1    | 0    | 0    | 0  | 0    | 3       | 1\nVSUBSD %XMM3,%XMM6,%XMM12               | 1     | 0    | 1    | 0    | 0    | 0  | 0    | 3       | 1\nVADDSD 0x78(%R8),%XMM12,%XMM14          | 1     | 0    | 1    | 0.50 | 0.50 | 0  | 0    | 3       | 1\nVMULSD 0x1f657(%RIP),%XMM14,%XMM11      | 1     | 1    | 0    | 0.50 | 0.50 | 0  | 0    | 5       | 1\nVMOVSD -0x20(%R9),%XMM14                | 1     | 0    | 0    | 0.50 | 0.50 | 0  | 0    | 3       | 0.50\nVSUBSD %XMM11,%XMM15,%XMM8              | 1     | 0    | 1    | 0    | 0    | 0  | 0    | 3       | 1\nVMOVSD %XMM8,-0x28(%R9)                 | 1     | 0    | 0    | 0.50 | 0.50 | 1  | 0    | 3       | 1\nVMULSD 0x8(%R8),%XMM1,%XMM10            | 1     | 1    | 0    | 0.50 | 0.50 | 0  | 0    | 5       | 1\nVMOVSD -0x20(%R8),%XMM9                 | 1     | 0    | 0    | 0.50 | 0.50 | 0  | 0    | 3       | 0.50\nVMULSD 0x30(%R8),%XMM4,%XMM2            | 1     | 1    | 0    | 0.50 | 0.50 | 0  | 0    | 5       | 1\nVMULSD 0x58(%R8),%XMM1,%XMM13           | 1     | 1    | 0    | 0.50 | 0.50 | 0  | 0    | 5       | 1\nVSUBSD %XMM10,%XMM9,%XMM0               | 1     | 0    | 1    | 0    | 0    | 0  | 0    | 3       | 1\nVADDSD %XMM2,%XMM0,%XMM5                | 1     | 0    | 1    | 0    | 0    | 0  | 0    | 3       | 1\nVSUBSD %XMM13,%XMM5,%XMM6               | 1     | 0    | 1    | 0    | 0    | 0  | 0    | 3       | 1\nVADDSD 0x80(%R8),%XMM6,%XMM3            | 1     | 0    | 1    | 0.50 | 0.50 | 0  | 0    | 3       | 1\nVMULSD 0x1f60f(%RIP),%XMM3,%XMM12       | 1     | 1    | 0    | 0.50 | 0.50 | 0  | 0    | 5       | 1\nVMOVSD -0x18(%R9),%XMM3                 | 1     | 0    | 0    | 0.50 | 0.50 | 0  | 0    | 3       | 0.50\nVSUBSD %XMM12,%XMM14,%XMM11             | 1     | 0    | 1    | 0    | 0    | 0  | 0    | 3       | 1\nVMOVSD %XMM11,-0x20(%R9)                | 1     | 0    | 0    | 0.50 | 0.50 | 1  | 0    | 3       | 1\nVMULSD 0x10(%R8),%XMM1,%XMM15           | 1     | 1    | 0    | 0.50 | 0.50 | 0  | 0    | 5       | 1\nVMOVSD -0x18(%R8),%XMM8                 | 1     | 0    | 0    | 0.50 | 0.50 | 0  | 0    | 3       | 0.50\nVMULSD 0x38(%R8),%XMM4,%XMM9            | 1     | 1    | 0    | 0.50 | 0.50 | 0  | 0    | 5       | 1\nVMULSD 0x60(%R8),%XMM1,%XMM2            | 1     | 1    | 0    | 0.50 | 0.50 | 0  | 0    | 5       | 1\nVSUBSD %XMM15,%XMM8,%XMM10              | 1     | 0    | 1    | 0    | 0    | 0  | 0    | 3       | 1\nVADDSD %XMM9,%XMM10,%XMM0               | 1     | 0    | 1    | 0    | 0    | 0  | 0    | 3       | 1\nVSUBSD %XMM2,%XMM0,%XMM5                | 1     | 0    | 1    | 0    | 0    | 0  | 0    | 3       | 1\nVADDSD 0x88(%R8),%XMM5,%XMM13           | 1     | 0    | 1    | 0.50 | 0.50 | 0  | 0    | 3       | 1\nVMULSD 0x1f5c7(%RIP),%XMM13,%XMM6       | 1     | 1    | 0    | 0.50 | 0.50 | 0  | 0    | 5       | 1\nVMOVSD -0x10(%R9),%XMM13                | 1     | 0    | 0    | 0.50 | 0.50 | 0  | 0    | 3       | 0.50\nVSUBSD %XMM6,%XMM3,%XMM12               | 1     | 0    | 1    | 0    | 0    | 0  | 0    | 3       | 1\nVMOVSD %XMM12,-0x18(%R9)                | 1     | 0    | 0    | 0.50 | 0.50 | 1  | 0    | 3       | 1\nVMULSD 0x18(%R8),%XMM1,%XMM14           | 1     | 1    | 0    | 0.50 | 0.50 | 0  | 0    | 5       | 1\nVMOVSD -0x10(%R8),%XMM11                | 1     | 0    | 0    | 0.50 | 0.50 | 0  | 0    | 3       | 0.50\nVMULSD 0x40(%R8),%XMM4,%XMM8            | 1     | 1    | 0    | 0.50 | 0.50 | 0  | 0    | 5       | 1\nVMULSD 0x68(%R8),%XMM1,%XMM9            | 1     | 1    | 0    | 0.50 | 0.50 | 0  | 0    | 5       | 1\nVSUBSD %XMM14,%XMM11,%XMM15             | 1     | 0    | 1    | 0    | 0    | 0  | 0    | 3       | 1\nVADDSD %XMM8,%XMM15,%XMM10              | 1     | 0    | 1    | 0    | 0    | 0  | 0    | 3       | 1\nVSUBSD %XMM9,%XMM10,%XMM0               | 1     | 0    | 1    | 0    | 0    | 0  | 0    | 3       | 1\nVADDSD 0x90(%R8),%XMM0,%XMM2            | 1     | 0    | 1    | 0.50 | 0.50 | 0  | 0    | 3       | 1\nVMULSD 0x1f57f(%RIP),%XMM2,%XMM5        | 1     | 1    | 0    | 0.50 | 0.50 | 0  | 0    | 5       | 1\nVSUBSD %XMM5,%XMM13,%XMM6               | 1     | 0    | 1    | 0    | 0    | 0  | 0    | 3       | 1\nVMOVSD %XMM6,-0x10(%R9)                 | 1     | 0    | 0    | 0.50 | 0.50 | 1  | 0    | 3       | 1\nVMULSD 0x20(%R8),%XMM1,%XMM3            | 1     | 1    | 0    | 0.50 | 0.50 | 0  | 0    | 5       | 1\nVMOVSD -0x8(%R8),%XMM12                 | 1     | 0    | 0    | 0.50 | 0.50 | 0  | 0    | 3       | 0.50\nVMULSD 0x48(%R8),%XMM4,%XMM11           | 1     | 1    | 0    | 0.50 | 0.50 | 0  | 0    | 5       | 1\nVMULSD 0x70(%R8),%XMM1,%XMM8            | 1     | 1    | 0    | 0.50 | 0.50 | 0  | 0    | 5       | 1\nVMOVSD -0x8(%R9),%XMM2                  | 1     | 0    | 0    | 0.50 | 0.50 | 0  | 0    | 3       | 0.50\nVSUBSD %XMM3,%XMM12,%XMM14              | 1     | 0    | 1    | 0    | 0    | 0  | 0    | 3       | 1\nVADDSD %XMM11,%XMM14,%XMM15             | 1     | 0    | 1    | 0    | 0    | 0  | 0    | 3       | 1\nVSUBSD %XMM8,%XMM15,%XMM10              | 1     | 0    | 1    | 0    | 0    | 0  | 0    | 3       | 1\nVADDSD 0x98(%R8),%XMM10,%XMM9           | 1     | 0    | 1    | 0.50 | 0.50 | 0  | 0    | 3       | 1\nVMULSD 0x1f538(%RIP),%XMM9,%XMM0        | 1     | 1    | 0    | 0.50 | 0.50 | 0  | 0    | 5       | 1\nVSUBSD %XMM0,%XMM2,%XMM5                | 1     | 0    | 1    | 0    | 0    | 0  | 0    | 3       | 1\nVMOVSD %XMM5,-0x8(%R9)                  | 1     | 0    | 0    | 0.50 | 0.50 | 1  | 0    | 3       | 1\nCMP %R8,%R12                            | 1     | 0.33 | 0.33 | 0    | 0    | 0  | 0.33 | 1       | 0.33\nJNE d298 <compute_rhs_._omp_fn.0+0xf48> | 1     | 0    | 0    | 0    | 0    | 0  | 1    | 0       | 1-2\n",
        },
      },
      header = {
        "22% of peak computational performance is used (1.80 out of 8.00 FLOP per cycle (GFLOPS @ 1GHz))",
      },
      brief = {
      },
      gain = {
        {
          workaround = " - Try another compiler or update/tune your current one:\n  * recompile with fassociative-math (included in Ofast or ffast-math) to extend loop vectorization to FP reductions.\n - Remove inter-iterations dependences from your loop and make it unit-stride:\n  * If your arrays have 2 or more dimensions, check whether elements are accessed contiguously and, otherwise, try to permute loops accordingly:\nFortran storage order is column-major: do i do j a(i,j) = b(i,j) (slow, non stride 1) => do i do j a(j,i) = b(i,j) (fast, stride 1)\n  * If your loop streams arrays of structures (AoS), try to use structures of arrays instead (SoA):\ndo i a(i)%x = b(i)%x (slow, non stride 1) => do i a%x(i) = b%x(i) (fast, stride 1)\n",
          details = "All SSE/AVX instructions are used in scalar version (process only one data element in vector registers).\nSince your execution units are vector units, only a vectorized loop can use their full power.\n",
          title = "Vectorization",
          txt = "Your loop is not vectorized.\n4 data elements could be processed at once in vector registers.\nBy vectorizing your loop, you can lower the cost of an iteration from 25.00 to 8.75 cycles (2.86x speedup).",
        },
        {
          workaround = "Reduce the number of FP add instructions",
          title = "Execution units bottlenecks",
          txt = "Performance is limited by execution of FP add operations (the FP add unit is a bottleneck).\n\nBy removing all these bottlenecks, you can lower the cost of an iteration from 25.00 to 20.00 cycles (1.25x speedup).\n",
        },
      },
      potential = {
      },
    },
  common = {
    header = {
      "The loop is defined in /users/user2210/NPB3.4-MZ-MPI/BT-MZ/rhs.f90:149-154.\n",
      "The related source loop is not unrolled or unrolled with no peel/tail loop.",
    },
    nb_paths = 1,
  },
}
