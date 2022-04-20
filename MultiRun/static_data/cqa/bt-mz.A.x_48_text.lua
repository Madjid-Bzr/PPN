_cqa_text_report = {
  paths = {
    {
      hint = {
        {
          title = "Type of elements and instruction set",
          txt = "20 SSE or AVX instructions are processing arithmetic or math operations on double precision FP elements in scalar mode (one at a time).\n",
        },
        {
          title = "Matching between your loop (in the source code) and the binary loop",
          txt = "The binary loop is composed of 20 FP arithmetical operations:\n - 20: multiply\nThe binary loop is loading 320 bytes (40 double precision FP elements).\nThe binary loop is storing 160 bytes (20 double precision FP elements).",
        },
        {
          title = "Arithmetic intensity",
          txt = "Arithmetic intensity is 0.04 FP operations per loaded or stored byte.",
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
          txt = "nb instructions    : 63\nnb uops            : 62\nloop length        : 395\nused x86 registers : 2\nused mmx registers : 0\nused xmm registers : 16\nused ymm registers : 0\nused zmm registers : 0\nnb stack references: 0\n",
        },
        {
          title = "Front-end",
          txt = "ASSUMED MACRO FUSION\nFIT IN UOP CACHE\nmicro-operation queue: 15.50 cycles\nfront end            : 15.50 cycles\n",
        },
        {
          title = "Back-end",
          txt = "       | P0    | P1   | P2    | P3    | P4    | P5\n----------------------------------------------------\nuops   | 20.00 | 1.00 | 30.00 | 30.00 | 20.00 | 1.00\ncycles | 20.00 | 1.00 | 30.00 | 30.00 | 20.00 | 1.00\n\nCycles executing div or sqrt instructions: NA\nLongest recurrence chain latency (RecMII): 1.00\n",
        },
        {
          title = "Cycles summary",
          txt = "Front-end : 15.50\nDispatch  : 30.00\nData deps.: 1.00\nOverall L1: 30.00\n",
        },
        {
          title = "Vectorization ratios",
          txt = "all     : 0%\nload    : 0%\nstore   : 0%\nmul     : 0%\nadd-sub : NA (no add-sub vectorizable/vectorized instructions)\nfma     : NA (no fma vectorizable/vectorized instructions)\ndiv/sqrt: NA (no div/sqrt vectorizable/vectorized instructions)\nother   : NA (no other vectorizable/vectorized instructions)\n",
        },
        {
          title = "Vector efficiency ratios",
          txt = "all     : 25%\nload    : 25%\nstore   : 25%\nmul     : 25%\nadd-sub : NA (no add-sub vectorizable/vectorized instructions)\nfma     : NA (no fma vectorizable/vectorized instructions)\ndiv/sqrt: NA (no div/sqrt vectorizable/vectorized instructions)\nother   : NA (no other vectorizable/vectorized instructions)\n",
        },
        {
          title = "Cycles and memory resources usage",
          txt = "Assuming all data fit into the L1 cache, each iteration of the binary loop takes 30.00 cycles. At this rate:\n - 33% of peak load performance is reached (10.67 out of 32.00 bytes loaded per cycle (GB/s @ 1GHz))\n - 33% of peak store performance is reached (5.33 out of 16.00 bytes stored per cycle (GB/s @ 1GHz))\n",
        },
        {
          title = "Front-end bottlenecks",
          txt = "Found no such bottlenecks.",
        },
        {
          title = "ASM code",
          txt = "In the binary file, the address of the loop is: f113\n\nInstruction                              | Nb FU | P0   | P1   | P2   | P3   | P4 | P5   | Latency | Recip. throughput\n----------------------------------------------------------------------------------------------------------------------\nVMOVSD (%RAX),%XMM14                     | 1     | 0    | 0    | 0.50 | 0.50 | 0  | 0    | 3       | 0.50\nADD $0xa0,%RAX                           | 1     | 0.33 | 0.33 | 0    | 0    | 0  | 0.33 | 1       | 0.33\nVMULSD 0x1d803(%RIP),%XMM14,%XMM3        | 1     | 1    | 0    | 0.50 | 0.50 | 0  | 0    | 5       | 1\nVMOVSD -0x98(%RAX),%XMM4                 | 1     | 0    | 0    | 0.50 | 0.50 | 0  | 0    | 3       | 0.50\nVMOVSD -0x90(%RAX),%XMM6                 | 1     | 0    | 0    | 0.50 | 0.50 | 0  | 0    | 3       | 0.50\nVMOVSD -0x88(%RAX),%XMM9                 | 1     | 0    | 0    | 0.50 | 0.50 | 0  | 0    | 3       | 0.50\nVMOVSD -0x80(%RAX),%XMM10                | 1     | 0    | 0    | 0.50 | 0.50 | 0  | 0    | 3       | 0.50\nVMOVSD %XMM3,-0xa0(%RAX)                 | 1     | 0    | 0    | 0.50 | 0.50 | 1  | 0    | 3       | 1\nVMULSD 0x1d7d6(%RIP),%XMM4,%XMM5         | 1     | 1    | 0    | 0.50 | 0.50 | 0  | 0    | 5       | 1\nVMOVSD -0x78(%RAX),%XMM1                 | 1     | 0    | 0    | 0.50 | 0.50 | 0  | 0    | 3       | 0.50\nVMOVSD -0x70(%RAX),%XMM8                 | 1     | 0    | 0    | 0.50 | 0.50 | 0  | 0    | 3       | 0.50\nVMOVSD -0x68(%RAX),%XMM0                 | 1     | 0    | 0    | 0.50 | 0.50 | 0  | 0    | 3       | 0.50\nVMOVSD -0x60(%RAX),%XMM14                | 1     | 0    | 0    | 0.50 | 0.50 | 0  | 0    | 3       | 0.50\nVMOVSD %XMM5,-0x98(%RAX)                 | 1     | 0    | 0    | 0.50 | 0.50 | 1  | 0    | 3       | 1\nVMULSD 0x1d7b2(%RIP),%XMM6,%XMM13        | 1     | 1    | 0    | 0.50 | 0.50 | 0  | 0    | 5       | 1\nVMOVSD -0x58(%RAX),%XMM4                 | 1     | 0    | 0    | 0.50 | 0.50 | 0  | 0    | 3       | 0.50\nVMOVSD -0x50(%RAX),%XMM6                 | 1     | 0    | 0    | 0.50 | 0.50 | 0  | 0    | 3       | 0.50\nVMOVSD %XMM13,-0x90(%RAX)                | 1     | 0    | 0    | 0.50 | 0.50 | 1  | 0    | 3       | 1\nVMULSD 0x1d798(%RIP),%XMM9,%XMM2         | 1     | 1    | 0    | 0.50 | 0.50 | 0  | 0    | 5       | 1\nVMOVSD %XMM2,-0x88(%RAX)                 | 1     | 0    | 0    | 0.50 | 0.50 | 1  | 0    | 3       | 1\nVMULSD 0x1d788(%RIP),%XMM10,%XMM15       | 1     | 1    | 0    | 0.50 | 0.50 | 0  | 0    | 5       | 1\nVMOVSD %XMM15,-0x80(%RAX)                | 1     | 0    | 0    | 0.50 | 0.50 | 1  | 0    | 3       | 1\nVMULSD 0x1d77b(%RIP),%XMM1,%XMM12        | 1     | 1    | 0    | 0.50 | 0.50 | 0  | 0    | 5       | 1\nVMOVSD %XMM12,-0x78(%RAX)                | 1     | 0    | 0    | 0.50 | 0.50 | 1  | 0    | 3       | 1\nVMULSD 0x1d76e(%RIP),%XMM8,%XMM7         | 1     | 1    | 0    | 0.50 | 0.50 | 0  | 0    | 5       | 1\nVMOVSD %XMM7,-0x70(%RAX)                 | 1     | 0    | 0    | 0.50 | 0.50 | 1  | 0    | 3       | 1\nVMULSD 0x1d761(%RIP),%XMM0,%XMM11        | 1     | 1    | 0    | 0.50 | 0.50 | 0  | 0    | 5       | 1\nVMOVSD %XMM11,-0x68(%RAX)                | 1     | 0    | 0    | 0.50 | 0.50 | 1  | 0    | 3       | 1\nVMULSD 0x1d754(%RIP),%XMM14,%XMM3        | 1     | 1    | 0    | 0.50 | 0.50 | 0  | 0    | 5       | 1\nVMOVSD %XMM3,-0x60(%RAX)                 | 1     | 0    | 0    | 0.50 | 0.50 | 1  | 0    | 3       | 1\nVMULSD 0x1d747(%RIP),%XMM4,%XMM5         | 1     | 1    | 0    | 0.50 | 0.50 | 0  | 0    | 5       | 1\nVMOVSD %XMM5,-0x58(%RAX)                 | 1     | 0    | 0    | 0.50 | 0.50 | 1  | 0    | 3       | 1\nVMULSD 0x1d73a(%RIP),%XMM6,%XMM13        | 1     | 1    | 0    | 0.50 | 0.50 | 0  | 0    | 5       | 1\nVMOVSD %XMM13,-0x50(%RAX)                | 1     | 0    | 0    | 0.50 | 0.50 | 1  | 0    | 3       | 1\nVMOVSD -0x48(%RAX),%XMM9                 | 1     | 0    | 0    | 0.50 | 0.50 | 0  | 0    | 3       | 0.50\nVMULSD 0x1d728(%RIP),%XMM9,%XMM2         | 1     | 1    | 0    | 0.50 | 0.50 | 0  | 0    | 5       | 1\nVMOVSD -0x40(%RAX),%XMM10                | 1     | 0    | 0    | 0.50 | 0.50 | 0  | 0    | 3       | 0.50\nVMOVSD -0x38(%RAX),%XMM1                 | 1     | 0    | 0    | 0.50 | 0.50 | 0  | 0    | 3       | 0.50\nVMOVSD -0x30(%RAX),%XMM8                 | 1     | 0    | 0    | 0.50 | 0.50 | 0  | 0    | 3       | 0.50\nVMOVSD -0x28(%RAX),%XMM0                 | 1     | 0    | 0    | 0.50 | 0.50 | 0  | 0    | 3       | 0.50\nVMOVSD %XMM2,-0x48(%RAX)                 | 1     | 0    | 0    | 0.50 | 0.50 | 1  | 0    | 3       | 1\nVMULSD 0x1d707(%RIP),%XMM10,%XMM15       | 1     | 1    | 0    | 0.50 | 0.50 | 0  | 0    | 5       | 1\nVMOVSD -0x20(%RAX),%XMM14                | 1     | 0    | 0    | 0.50 | 0.50 | 0  | 0    | 3       | 0.50\nVMOVSD -0x18(%RAX),%XMM4                 | 1     | 0    | 0    | 0.50 | 0.50 | 0  | 0    | 3       | 0.50\nVMOVSD -0x10(%RAX),%XMM6                 | 1     | 0    | 0    | 0.50 | 0.50 | 0  | 0    | 3       | 0.50\nVMOVSD -0x8(%RAX),%XMM9                  | 1     | 0    | 0    | 0.50 | 0.50 | 0  | 0    | 3       | 0.50\nVMOVSD %XMM15,-0x40(%RAX)                | 1     | 0    | 0    | 0.50 | 0.50 | 1  | 0    | 3       | 1\nVMULSD 0x1d6e6(%RIP),%XMM1,%XMM12        | 1     | 1    | 0    | 0.50 | 0.50 | 0  | 0    | 5       | 1\nVMOVSD %XMM12,-0x38(%RAX)                | 1     | 0    | 0    | 0.50 | 0.50 | 1  | 0    | 3       | 1\nVMULSD 0x1d6d9(%RIP),%XMM8,%XMM7         | 1     | 1    | 0    | 0.50 | 0.50 | 0  | 0    | 5       | 1\nVMOVSD %XMM7,-0x30(%RAX)                 | 1     | 0    | 0    | 0.50 | 0.50 | 1  | 0    | 3       | 1\nVMULSD 0x1d6cc(%RIP),%XMM0,%XMM11        | 1     | 1    | 0    | 0.50 | 0.50 | 0  | 0    | 5       | 1\nVMOVSD %XMM11,-0x28(%RAX)                | 1     | 0    | 0    | 0.50 | 0.50 | 1  | 0    | 3       | 1\nVMULSD 0x1d6bf(%RIP),%XMM14,%XMM3        | 1     | 1    | 0    | 0.50 | 0.50 | 0  | 0    | 5       | 1\nVMOVSD %XMM3,-0x20(%RAX)                 | 1     | 0    | 0    | 0.50 | 0.50 | 1  | 0    | 3       | 1\nVMULSD 0x1d6b2(%RIP),%XMM4,%XMM5         | 1     | 1    | 0    | 0.50 | 0.50 | 0  | 0    | 5       | 1\nVMOVSD %XMM5,-0x18(%RAX)                 | 1     | 0    | 0    | 0.50 | 0.50 | 1  | 0    | 3       | 1\nVMULSD 0x1d6a5(%RIP),%XMM6,%XMM13        | 1     | 1    | 0    | 0.50 | 0.50 | 0  | 0    | 5       | 1\nVMOVSD %XMM13,-0x10(%RAX)                | 1     | 0    | 0    | 0.50 | 0.50 | 1  | 0    | 3       | 1\nVMULSD 0x1d698(%RIP),%XMM9,%XMM2         | 1     | 1    | 0    | 0.50 | 0.50 | 0  | 0    | 5       | 1\nVMOVSD %XMM2,-0x8(%RAX)                  | 1     | 0    | 0    | 0.50 | 0.50 | 1  | 0    | 3       | 1\nCMP %RCX,%RAX                            | 1     | 0.33 | 0.33 | 0    | 0    | 0  | 0.33 | 1       | 0.33\nJNE f113 <compute_rhs_._omp_fn.0+0x2dc3> | 1     | 0    | 0    | 0    | 0    | 0  | 1    | 0       | 1-2\n",
        },
      },
      header = {
        "8% of peak computational performance is used (0.67 out of 8.00 FLOP per cycle (GFLOPS @ 1GHz))",
      },
      brief = {
      },
      gain = {
        {
          workaround = " - Try another compiler or update/tune your current one:\n  * recompile with fassociative-math (included in Ofast or ffast-math) to extend loop vectorization to FP reductions.\n - Remove inter-iterations dependences from your loop and make it unit-stride:\n  * If your arrays have 2 or more dimensions, check whether elements are accessed contiguously and, otherwise, try to permute loops accordingly:\nFortran storage order is column-major: do i do j a(i,j) = b(i,j) (slow, non stride 1) => do i do j a(j,i) = b(i,j) (fast, stride 1)\n  * If your loop streams arrays of structures (AoS), try to use structures of arrays instead (SoA):\ndo i a(i)%x = b(i)%x (slow, non stride 1) => do i a%x(i) = b%x(i) (fast, stride 1)\n",
          details = "All SSE/AVX instructions are used in scalar version (process only one data element in vector registers).\nSince your execution units are vector units, only a vectorized loop can use their full power.\n",
          title = "Vectorization",
          txt = "Your loop is not vectorized.\n4 data elements could be processed at once in vector registers.\nBy vectorizing your loop, you can lower the cost of an iteration from 30.00 to 10.00 cycles (3.00x speedup).",
        },
        {
          workaround = " - Read less array elements\nAll SSE and/or AVX registers are used:\nin that case, try to relax register pressure by reducing the unroll factor or splitting your loop\n - Write less array elements\n - Provide more information to your compiler:\n  * hardcode the bounds of the corresponding 'for' loop\n",
          title = "Execution units bottlenecks",
          txt = "Performance is limited by:\n - reading data from caches/RAM (load units are a bottleneck)\n - writing data to caches/RAM (the store unit is a bottleneck)\n\nBy removing all these bottlenecks, you can lower the cost of an iteration from 30.00 to 20.00 cycles (1.50x speedup).\n",
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
          txt = "20 SSE or AVX instructions are processing arithmetic or math operations on double precision FP elements in scalar mode (one at a time).\n",
        },
        {
          title = "Matching between your loop (in the source code) and the binary loop",
          txt = "The binary loop is composed of 20 FP arithmetical operations:\n - 20: multiply\nThe binary loop is loading 320 bytes (40 double precision FP elements).\nThe binary loop is storing 160 bytes (20 double precision FP elements).",
        },
        {
          title = "Arithmetic intensity",
          txt = "Arithmetic intensity is 0.04 FP operations per loaded or stored byte.",
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
          txt = "nb instructions    : 63\nnb uops            : 62\nloop length        : 395\nused x86 registers : 2\nused mmx registers : 0\nused xmm registers : 16\nused ymm registers : 0\nused zmm registers : 0\nnb stack references: 0\n",
        },
        {
          title = "Front-end",
          txt = "ASSUMED MACRO FUSION\nFIT IN UOP CACHE\nmicro-operation queue: 15.50 cycles\nfront end            : 15.50 cycles\n",
        },
        {
          title = "Back-end",
          txt = "       | P0    | P1   | P2    | P3    | P4    | P5\n----------------------------------------------------\nuops   | 20.00 | 1.00 | 30.00 | 30.00 | 20.00 | 1.00\ncycles | 20.00 | 1.00 | 30.00 | 30.00 | 20.00 | 1.00\n\nCycles executing div or sqrt instructions: NA\nLongest recurrence chain latency (RecMII): 1.00\n",
        },
        {
          title = "Cycles summary",
          txt = "Front-end : 15.50\nDispatch  : 30.00\nData deps.: 1.00\nOverall L1: 30.00\n",
        },
        {
          title = "Vectorization ratios",
          txt = "all     : 0%\nload    : 0%\nstore   : 0%\nmul     : 0%\nadd-sub : NA (no add-sub vectorizable/vectorized instructions)\nfma     : NA (no fma vectorizable/vectorized instructions)\ndiv/sqrt: NA (no div/sqrt vectorizable/vectorized instructions)\nother   : NA (no other vectorizable/vectorized instructions)\n",
        },
        {
          title = "Vector efficiency ratios",
          txt = "all     : 25%\nload    : 25%\nstore   : 25%\nmul     : 25%\nadd-sub : NA (no add-sub vectorizable/vectorized instructions)\nfma     : NA (no fma vectorizable/vectorized instructions)\ndiv/sqrt: NA (no div/sqrt vectorizable/vectorized instructions)\nother   : NA (no other vectorizable/vectorized instructions)\n",
        },
        {
          title = "Cycles and memory resources usage",
          txt = "Assuming all data fit into the L1 cache, each iteration of the binary loop takes 30.00 cycles. At this rate:\n - 33% of peak load performance is reached (10.67 out of 32.00 bytes loaded per cycle (GB/s @ 1GHz))\n - 33% of peak store performance is reached (5.33 out of 16.00 bytes stored per cycle (GB/s @ 1GHz))\n",
        },
        {
          title = "Front-end bottlenecks",
          txt = "Found no such bottlenecks.",
        },
        {
          title = "ASM code",
          txt = "In the binary file, the address of the loop is: f113\n\nInstruction                              | Nb FU | P0   | P1   | P2   | P3   | P4 | P5   | Latency | Recip. throughput\n----------------------------------------------------------------------------------------------------------------------\nVMOVSD (%RAX),%XMM14                     | 1     | 0    | 0    | 0.50 | 0.50 | 0  | 0    | 3       | 0.50\nADD $0xa0,%RAX                           | 1     | 0.33 | 0.33 | 0    | 0    | 0  | 0.33 | 1       | 0.33\nVMULSD 0x1d803(%RIP),%XMM14,%XMM3        | 1     | 1    | 0    | 0.50 | 0.50 | 0  | 0    | 5       | 1\nVMOVSD -0x98(%RAX),%XMM4                 | 1     | 0    | 0    | 0.50 | 0.50 | 0  | 0    | 3       | 0.50\nVMOVSD -0x90(%RAX),%XMM6                 | 1     | 0    | 0    | 0.50 | 0.50 | 0  | 0    | 3       | 0.50\nVMOVSD -0x88(%RAX),%XMM9                 | 1     | 0    | 0    | 0.50 | 0.50 | 0  | 0    | 3       | 0.50\nVMOVSD -0x80(%RAX),%XMM10                | 1     | 0    | 0    | 0.50 | 0.50 | 0  | 0    | 3       | 0.50\nVMOVSD %XMM3,-0xa0(%RAX)                 | 1     | 0    | 0    | 0.50 | 0.50 | 1  | 0    | 3       | 1\nVMULSD 0x1d7d6(%RIP),%XMM4,%XMM5         | 1     | 1    | 0    | 0.50 | 0.50 | 0  | 0    | 5       | 1\nVMOVSD -0x78(%RAX),%XMM1                 | 1     | 0    | 0    | 0.50 | 0.50 | 0  | 0    | 3       | 0.50\nVMOVSD -0x70(%RAX),%XMM8                 | 1     | 0    | 0    | 0.50 | 0.50 | 0  | 0    | 3       | 0.50\nVMOVSD -0x68(%RAX),%XMM0                 | 1     | 0    | 0    | 0.50 | 0.50 | 0  | 0    | 3       | 0.50\nVMOVSD -0x60(%RAX),%XMM14                | 1     | 0    | 0    | 0.50 | 0.50 | 0  | 0    | 3       | 0.50\nVMOVSD %XMM5,-0x98(%RAX)                 | 1     | 0    | 0    | 0.50 | 0.50 | 1  | 0    | 3       | 1\nVMULSD 0x1d7b2(%RIP),%XMM6,%XMM13        | 1     | 1    | 0    | 0.50 | 0.50 | 0  | 0    | 5       | 1\nVMOVSD -0x58(%RAX),%XMM4                 | 1     | 0    | 0    | 0.50 | 0.50 | 0  | 0    | 3       | 0.50\nVMOVSD -0x50(%RAX),%XMM6                 | 1     | 0    | 0    | 0.50 | 0.50 | 0  | 0    | 3       | 0.50\nVMOVSD %XMM13,-0x90(%RAX)                | 1     | 0    | 0    | 0.50 | 0.50 | 1  | 0    | 3       | 1\nVMULSD 0x1d798(%RIP),%XMM9,%XMM2         | 1     | 1    | 0    | 0.50 | 0.50 | 0  | 0    | 5       | 1\nVMOVSD %XMM2,-0x88(%RAX)                 | 1     | 0    | 0    | 0.50 | 0.50 | 1  | 0    | 3       | 1\nVMULSD 0x1d788(%RIP),%XMM10,%XMM15       | 1     | 1    | 0    | 0.50 | 0.50 | 0  | 0    | 5       | 1\nVMOVSD %XMM15,-0x80(%RAX)                | 1     | 0    | 0    | 0.50 | 0.50 | 1  | 0    | 3       | 1\nVMULSD 0x1d77b(%RIP),%XMM1,%XMM12        | 1     | 1    | 0    | 0.50 | 0.50 | 0  | 0    | 5       | 1\nVMOVSD %XMM12,-0x78(%RAX)                | 1     | 0    | 0    | 0.50 | 0.50 | 1  | 0    | 3       | 1\nVMULSD 0x1d76e(%RIP),%XMM8,%XMM7         | 1     | 1    | 0    | 0.50 | 0.50 | 0  | 0    | 5       | 1\nVMOVSD %XMM7,-0x70(%RAX)                 | 1     | 0    | 0    | 0.50 | 0.50 | 1  | 0    | 3       | 1\nVMULSD 0x1d761(%RIP),%XMM0,%XMM11        | 1     | 1    | 0    | 0.50 | 0.50 | 0  | 0    | 5       | 1\nVMOVSD %XMM11,-0x68(%RAX)                | 1     | 0    | 0    | 0.50 | 0.50 | 1  | 0    | 3       | 1\nVMULSD 0x1d754(%RIP),%XMM14,%XMM3        | 1     | 1    | 0    | 0.50 | 0.50 | 0  | 0    | 5       | 1\nVMOVSD %XMM3,-0x60(%RAX)                 | 1     | 0    | 0    | 0.50 | 0.50 | 1  | 0    | 3       | 1\nVMULSD 0x1d747(%RIP),%XMM4,%XMM5         | 1     | 1    | 0    | 0.50 | 0.50 | 0  | 0    | 5       | 1\nVMOVSD %XMM5,-0x58(%RAX)                 | 1     | 0    | 0    | 0.50 | 0.50 | 1  | 0    | 3       | 1\nVMULSD 0x1d73a(%RIP),%XMM6,%XMM13        | 1     | 1    | 0    | 0.50 | 0.50 | 0  | 0    | 5       | 1\nVMOVSD %XMM13,-0x50(%RAX)                | 1     | 0    | 0    | 0.50 | 0.50 | 1  | 0    | 3       | 1\nVMOVSD -0x48(%RAX),%XMM9                 | 1     | 0    | 0    | 0.50 | 0.50 | 0  | 0    | 3       | 0.50\nVMULSD 0x1d728(%RIP),%XMM9,%XMM2         | 1     | 1    | 0    | 0.50 | 0.50 | 0  | 0    | 5       | 1\nVMOVSD -0x40(%RAX),%XMM10                | 1     | 0    | 0    | 0.50 | 0.50 | 0  | 0    | 3       | 0.50\nVMOVSD -0x38(%RAX),%XMM1                 | 1     | 0    | 0    | 0.50 | 0.50 | 0  | 0    | 3       | 0.50\nVMOVSD -0x30(%RAX),%XMM8                 | 1     | 0    | 0    | 0.50 | 0.50 | 0  | 0    | 3       | 0.50\nVMOVSD -0x28(%RAX),%XMM0                 | 1     | 0    | 0    | 0.50 | 0.50 | 0  | 0    | 3       | 0.50\nVMOVSD %XMM2,-0x48(%RAX)                 | 1     | 0    | 0    | 0.50 | 0.50 | 1  | 0    | 3       | 1\nVMULSD 0x1d707(%RIP),%XMM10,%XMM15       | 1     | 1    | 0    | 0.50 | 0.50 | 0  | 0    | 5       | 1\nVMOVSD -0x20(%RAX),%XMM14                | 1     | 0    | 0    | 0.50 | 0.50 | 0  | 0    | 3       | 0.50\nVMOVSD -0x18(%RAX),%XMM4                 | 1     | 0    | 0    | 0.50 | 0.50 | 0  | 0    | 3       | 0.50\nVMOVSD -0x10(%RAX),%XMM6                 | 1     | 0    | 0    | 0.50 | 0.50 | 0  | 0    | 3       | 0.50\nVMOVSD -0x8(%RAX),%XMM9                  | 1     | 0    | 0    | 0.50 | 0.50 | 0  | 0    | 3       | 0.50\nVMOVSD %XMM15,-0x40(%RAX)                | 1     | 0    | 0    | 0.50 | 0.50 | 1  | 0    | 3       | 1\nVMULSD 0x1d6e6(%RIP),%XMM1,%XMM12        | 1     | 1    | 0    | 0.50 | 0.50 | 0  | 0    | 5       | 1\nVMOVSD %XMM12,-0x38(%RAX)                | 1     | 0    | 0    | 0.50 | 0.50 | 1  | 0    | 3       | 1\nVMULSD 0x1d6d9(%RIP),%XMM8,%XMM7         | 1     | 1    | 0    | 0.50 | 0.50 | 0  | 0    | 5       | 1\nVMOVSD %XMM7,-0x30(%RAX)                 | 1     | 0    | 0    | 0.50 | 0.50 | 1  | 0    | 3       | 1\nVMULSD 0x1d6cc(%RIP),%XMM0,%XMM11        | 1     | 1    | 0    | 0.50 | 0.50 | 0  | 0    | 5       | 1\nVMOVSD %XMM11,-0x28(%RAX)                | 1     | 0    | 0    | 0.50 | 0.50 | 1  | 0    | 3       | 1\nVMULSD 0x1d6bf(%RIP),%XMM14,%XMM3        | 1     | 1    | 0    | 0.50 | 0.50 | 0  | 0    | 5       | 1\nVMOVSD %XMM3,-0x20(%RAX)                 | 1     | 0    | 0    | 0.50 | 0.50 | 1  | 0    | 3       | 1\nVMULSD 0x1d6b2(%RIP),%XMM4,%XMM5         | 1     | 1    | 0    | 0.50 | 0.50 | 0  | 0    | 5       | 1\nVMOVSD %XMM5,-0x18(%RAX)                 | 1     | 0    | 0    | 0.50 | 0.50 | 1  | 0    | 3       | 1\nVMULSD 0x1d6a5(%RIP),%XMM6,%XMM13        | 1     | 1    | 0    | 0.50 | 0.50 | 0  | 0    | 5       | 1\nVMOVSD %XMM13,-0x10(%RAX)                | 1     | 0    | 0    | 0.50 | 0.50 | 1  | 0    | 3       | 1\nVMULSD 0x1d698(%RIP),%XMM9,%XMM2         | 1     | 1    | 0    | 0.50 | 0.50 | 0  | 0    | 5       | 1\nVMOVSD %XMM2,-0x8(%RAX)                  | 1     | 0    | 0    | 0.50 | 0.50 | 1  | 0    | 3       | 1\nCMP %RCX,%RAX                            | 1     | 0.33 | 0.33 | 0    | 0    | 0  | 0.33 | 1       | 0.33\nJNE f113 <compute_rhs_._omp_fn.0+0x2dc3> | 1     | 0    | 0    | 0    | 0    | 0  | 1    | 0       | 1-2\n",
        },
      },
      header = {
        "8% of peak computational performance is used (0.67 out of 8.00 FLOP per cycle (GFLOPS @ 1GHz))",
      },
      brief = {
      },
      gain = {
        {
          workaround = " - Try another compiler or update/tune your current one:\n  * recompile with fassociative-math (included in Ofast or ffast-math) to extend loop vectorization to FP reductions.\n - Remove inter-iterations dependences from your loop and make it unit-stride:\n  * If your arrays have 2 or more dimensions, check whether elements are accessed contiguously and, otherwise, try to permute loops accordingly:\nFortran storage order is column-major: do i do j a(i,j) = b(i,j) (slow, non stride 1) => do i do j a(j,i) = b(i,j) (fast, stride 1)\n  * If your loop streams arrays of structures (AoS), try to use structures of arrays instead (SoA):\ndo i a(i)%x = b(i)%x (slow, non stride 1) => do i a%x(i) = b%x(i) (fast, stride 1)\n",
          details = "All SSE/AVX instructions are used in scalar version (process only one data element in vector registers).\nSince your execution units are vector units, only a vectorized loop can use their full power.\n",
          title = "Vectorization",
          txt = "Your loop is not vectorized.\n4 data elements could be processed at once in vector registers.\nBy vectorizing your loop, you can lower the cost of an iteration from 30.00 to 10.00 cycles (3.00x speedup).",
        },
        {
          workaround = " - Read less array elements\nAll SSE and/or AVX registers are used:\nin that case, try to relax register pressure by reducing the unroll factor or splitting your loop\n - Write less array elements\n - Provide more information to your compiler:\n  * hardcode the bounds of the corresponding 'for' loop\n",
          title = "Execution units bottlenecks",
          txt = "Performance is limited by:\n - reading data from caches/RAM (load units are a bottleneck)\n - writing data to caches/RAM (the store unit is a bottleneck)\n\nBy removing all these bottlenecks, you can lower the cost of an iteration from 30.00 to 20.00 cycles (1.50x speedup).\n",
        },
      },
      potential = {
      },
    },
  common = {
    header = {
      "The loop is defined in /users/user2210/NPB3.4-MZ-MPI/BT-MZ/rhs.f90:402-404.\n",
      "The related source loop is not unrolled or unrolled with no peel/tail loop.",
    },
    nb_paths = 1,
  },
}
