_cqa_text_report = {
  paths = {
    {
      hint = {
        {
          title = "Type of elements and instruction set",
          txt = "30 SSE or AVX instructions are processing arithmetic or math operations on double precision FP elements in scalar mode (one at a time).\n",
        },
        {
          title = "Matching between your loop (in the source code) and the binary loop",
          txt = "The binary loop is composed of 30 FP arithmetical operations:\n - 15: addition or subtraction\n - 15: multiply\nThe binary loop is loading 200 bytes (25 double precision FP elements).\nThe binary loop is storing 40 bytes (5 double precision FP elements).",
        },
        {
          title = "Arithmetic intensity",
          txt = "Arithmetic intensity is 0.12 FP operations per loaded or stored byte.",
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
          txt = "nb instructions    : 46\nnb uops            : 45\nloop length        : 255\nused x86 registers : 5\nused mmx registers : 0\nused xmm registers : 14\nused ymm registers : 0\nused zmm registers : 0\nnb stack references: 0\nADD-SUB / MUL ratio: 1.00\n",
        },
        {
          title = "Front-end",
          txt = "ASSUMED MACRO FUSION\nFIT IN UOP CACHE\nmicro-operation queue: 11.25 cycles\nfront end            : 11.25 cycles\n",
        },
        {
          title = "Back-end",
          txt = "       | P0    | P1    | P2    | P3    | P4   | P5\n----------------------------------------------------\nuops   | 15.00 | 15.00 | 15.00 | 15.00 | 5.00 | 5.00\ncycles | 15.00 | 15.00 | 15.00 | 15.00 | 5.00 | 5.00\n\nCycles executing div or sqrt instructions: NA\nLongest recurrence chain latency (RecMII): 1.00\n",
        },
        {
          title = "Cycles summary",
          txt = "Front-end : 11.25\nDispatch  : 15.00\nData deps.: 1.00\nOverall L1: 15.00\n",
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
          txt = "Assuming all data fit into the L1 cache, each iteration of the binary loop takes 15.00 cycles. At this rate:\n - 41% of peak load performance is reached (13.33 out of 32.00 bytes loaded per cycle (GB/s @ 1GHz))\n - 16% of peak store performance is reached (2.67 out of 16.00 bytes stored per cycle (GB/s @ 1GHz))\n",
        },
        {
          title = "Front-end bottlenecks",
          txt = "Found no such bottlenecks.",
        },
        {
          title = "ASM code",
          txt = "In the binary file, the address of the loop is: f6c0\n\nInstruction                              | Nb FU | P0   | P1   | P2   | P3   | P4 | P5   | Latency | Recip. throughput\n----------------------------------------------------------------------------------------------------------------------\nVMOVSD (%RAX),%XMM5                      | 1     | 0    | 0    | 0.50 | 0.50 | 0  | 0    | 3       | 0.50\nADD $0x28,%RAX                           | 1     | 0.33 | 0.33 | 0    | 0    | 0  | 0.33 | 1       | 0.33\nADD $0x28,%R12                           | 1     | 0.33 | 0.33 | 0    | 0    | 0  | 0.33 | 1       | 0.33\nADD $0x28,%R15                           | 1     | 0.33 | 0.33 | 0    | 0    | 0  | 0.33 | 1       | 0.33\nVMULSD -0x28(%R12),%XMM2,%XMM8           | 1     | 1    | 0    | 0.50 | 0.50 | 0  | 0    | 5       | 1\nADD $0x28,%R13                           | 1     | 0.33 | 0.33 | 0    | 0    | 0  | 0.33 | 1       | 0.33\nVMULSD -0x28(%R15),%XMM3,%XMM11          | 1     | 1    | 0    | 0.50 | 0.50 | 0  | 0    | 5       | 1\nVSUBSD %XMM11,%XMM8,%XMM13               | 1     | 0    | 1    | 0    | 0    | 0  | 0    | 3       | 1\nVMOVSD -0x20(%RAX),%XMM8                 | 1     | 0    | 0    | 0.50 | 0.50 | 0  | 0    | 3       | 0.50\nVADDSD -0x28(%R13),%XMM13,%XMM12         | 1     | 0    | 1    | 0.50 | 0.50 | 0  | 0    | 3       | 1\nVMULSD 0x1d237(%RIP),%XMM12,%XMM7        | 1     | 1    | 0    | 0.50 | 0.50 | 0  | 0    | 5       | 1\nVSUBSD %XMM7,%XMM5,%XMM0                 | 1     | 0    | 1    | 0    | 0    | 0  | 0    | 3       | 1\nVMOVSD %XMM0,-0x28(%RAX)                 | 1     | 0    | 0    | 0.50 | 0.50 | 1  | 0    | 3       | 1\nVMULSD -0x20(%R12),%XMM2,%XMM10          | 1     | 1    | 0    | 0.50 | 0.50 | 0  | 0    | 5       | 1\nVMULSD -0x20(%R15),%XMM3,%XMM15          | 1     | 1    | 0    | 0.50 | 0.50 | 0  | 0    | 5       | 1\nVSUBSD %XMM15,%XMM10,%XMM9               | 1     | 0    | 1    | 0    | 0    | 0  | 0    | 3       | 1\nVMOVSD -0x18(%RAX),%XMM10                | 1     | 0    | 0    | 0.50 | 0.50 | 0  | 0    | 3       | 0.50\nVADDSD -0x20(%R13),%XMM9,%XMM14          | 1     | 0    | 1    | 0.50 | 0.50 | 0  | 0    | 3       | 1\nVMULSD 0x1d209(%RIP),%XMM14,%XMM6        | 1     | 1    | 0    | 0.50 | 0.50 | 0  | 0    | 5       | 1\nVSUBSD %XMM6,%XMM8,%XMM11                | 1     | 0    | 1    | 0    | 0    | 0  | 0    | 3       | 1\nVMOVSD %XMM11,-0x20(%RAX)                | 1     | 0    | 0    | 0.50 | 0.50 | 1  | 0    | 3       | 1\nVMULSD -0x18(%R12),%XMM2,%XMM13          | 1     | 1    | 0    | 0.50 | 0.50 | 0  | 0    | 5       | 1\nVMULSD -0x18(%R15),%XMM3,%XMM12          | 1     | 1    | 0    | 0.50 | 0.50 | 0  | 0    | 5       | 1\nVSUBSD %XMM12,%XMM13,%XMM7               | 1     | 0    | 1    | 0    | 0    | 0  | 0    | 3       | 1\nVMOVSD -0x10(%RAX),%XMM13                | 1     | 0    | 0    | 0.50 | 0.50 | 0  | 0    | 3       | 0.50\nVADDSD -0x18(%R13),%XMM7,%XMM5           | 1     | 0    | 1    | 0.50 | 0.50 | 0  | 0    | 3       | 1\nVMULSD 0x1d1db(%RIP),%XMM5,%XMM0         | 1     | 1    | 0    | 0.50 | 0.50 | 0  | 0    | 5       | 1\nVSUBSD %XMM0,%XMM10,%XMM15               | 1     | 0    | 1    | 0    | 0    | 0  | 0    | 3       | 1\nVMOVSD %XMM15,-0x18(%RAX)                | 1     | 0    | 0    | 0.50 | 0.50 | 1  | 0    | 3       | 1\nVMULSD -0x10(%R12),%XMM2,%XMM9           | 1     | 1    | 0    | 0.50 | 0.50 | 0  | 0    | 5       | 1\nVMULSD -0x10(%R15),%XMM3,%XMM14          | 1     | 1    | 0    | 0.50 | 0.50 | 0  | 0    | 5       | 1\nVSUBSD %XMM14,%XMM9,%XMM6                | 1     | 0    | 1    | 0    | 0    | 0  | 0    | 3       | 1\nVMOVSD -0x8(%RAX),%XMM9                  | 1     | 0    | 0    | 0.50 | 0.50 | 0  | 0    | 3       | 0.50\nVADDSD -0x10(%R13),%XMM6,%XMM8           | 1     | 0    | 1    | 0.50 | 0.50 | 0  | 0    | 3       | 1\nVMULSD 0x1d1ad(%RIP),%XMM8,%XMM11        | 1     | 1    | 0    | 0.50 | 0.50 | 0  | 0    | 5       | 1\nVSUBSD %XMM11,%XMM13,%XMM12              | 1     | 0    | 1    | 0    | 0    | 0  | 0    | 3       | 1\nVMOVSD %XMM12,-0x10(%RAX)                | 1     | 0    | 0    | 0.50 | 0.50 | 1  | 0    | 3       | 1\nVMULSD -0x8(%R12),%XMM2,%XMM7            | 1     | 1    | 0    | 0.50 | 0.50 | 0  | 0    | 5       | 1\nVMULSD -0x8(%R15),%XMM3,%XMM5            | 1     | 1    | 0    | 0.50 | 0.50 | 0  | 0    | 5       | 1\nVSUBSD %XMM5,%XMM7,%XMM0                 | 1     | 0    | 1    | 0    | 0    | 0  | 0    | 3       | 1\nVADDSD -0x8(%R13),%XMM0,%XMM10           | 1     | 0    | 1    | 0.50 | 0.50 | 0  | 0    | 3       | 1\nVMULSD 0x1d184(%RIP),%XMM10,%XMM15       | 1     | 1    | 0    | 0.50 | 0.50 | 0  | 0    | 5       | 1\nVSUBSD %XMM15,%XMM9,%XMM14               | 1     | 0    | 1    | 0    | 0    | 0  | 0    | 3       | 1\nVMOVSD %XMM14,-0x8(%RAX)                 | 1     | 0    | 0    | 0.50 | 0.50 | 1  | 0    | 3       | 1\nCMP %RAX,%RSI                            | 1     | 0.33 | 0.33 | 0    | 0    | 0  | 0.33 | 1       | 0.33\nJNE f6c0 <compute_rhs_._omp_fn.0+0x3370> | 1     | 0    | 0    | 0    | 0    | 0  | 1    | 0       | 1-2\n",
        },
      },
      header = {
        "25% of peak computational performance is used (2.00 out of 8.00 FLOP per cycle (GFLOPS @ 1GHz))",
      },
      brief = {
      },
      gain = {
        {
          workaround = " - Try another compiler or update/tune your current one:\n  * recompile with fassociative-math (included in Ofast or ffast-math) to extend loop vectorization to FP reductions.\n - Remove inter-iterations dependences from your loop and make it unit-stride:\n  * If your arrays have 2 or more dimensions, check whether elements are accessed contiguously and, otherwise, try to permute loops accordingly:\nFortran storage order is column-major: do i do j a(i,j) = b(i,j) (slow, non stride 1) => do i do j a(j,i) = b(i,j) (fast, stride 1)\n  * If your loop streams arrays of structures (AoS), try to use structures of arrays instead (SoA):\ndo i a(i)%x = b(i)%x (slow, non stride 1) => do i a%x(i) = b%x(i) (fast, stride 1)\n",
          details = "All SSE/AVX instructions are used in scalar version (process only one data element in vector registers).\nSince your execution units are vector units, only a vectorized loop can use their full power.\n",
          title = "Vectorization",
          txt = "Your loop is not vectorized.\n4 data elements could be processed at once in vector registers.\nBy vectorizing your loop, you can lower the cost of an iteration from 15.00 to 6.25 cycles (2.40x speedup).",
        },
        {
          workaround = " - Reduce the number of FP add instructions\n - Reduce the number of FP multiply instructions\n - Read less array elements\n - Write less array elements\n - Provide more information to your compiler:\n  * hardcode the bounds of the corresponding 'for' loop\n",
          title = "Execution units bottlenecks",
          txt = "Performance is limited by:\n - execution of FP add operations (the FP add unit is a bottleneck)\n - execution of FP multiply operations (the FP multiply unit is a bottleneck)\n - reading data from caches/RAM (load units are a bottleneck)\n - writing data to caches/RAM (the store unit is a bottleneck)\n\nBy removing all these bottlenecks, you can lower the cost of an iteration from 15.00 to 11.25 cycles (1.33x speedup).\n",
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
          txt = "30 SSE or AVX instructions are processing arithmetic or math operations on double precision FP elements in scalar mode (one at a time).\n",
        },
        {
          title = "Matching between your loop (in the source code) and the binary loop",
          txt = "The binary loop is composed of 30 FP arithmetical operations:\n - 15: addition or subtraction\n - 15: multiply\nThe binary loop is loading 200 bytes (25 double precision FP elements).\nThe binary loop is storing 40 bytes (5 double precision FP elements).",
        },
        {
          title = "Arithmetic intensity",
          txt = "Arithmetic intensity is 0.12 FP operations per loaded or stored byte.",
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
          txt = "nb instructions    : 46\nnb uops            : 45\nloop length        : 255\nused x86 registers : 5\nused mmx registers : 0\nused xmm registers : 14\nused ymm registers : 0\nused zmm registers : 0\nnb stack references: 0\nADD-SUB / MUL ratio: 1.00\n",
        },
        {
          title = "Front-end",
          txt = "ASSUMED MACRO FUSION\nFIT IN UOP CACHE\nmicro-operation queue: 11.25 cycles\nfront end            : 11.25 cycles\n",
        },
        {
          title = "Back-end",
          txt = "       | P0    | P1    | P2    | P3    | P4   | P5\n----------------------------------------------------\nuops   | 15.00 | 15.00 | 15.00 | 15.00 | 5.00 | 5.00\ncycles | 15.00 | 15.00 | 15.00 | 15.00 | 5.00 | 5.00\n\nCycles executing div or sqrt instructions: NA\nLongest recurrence chain latency (RecMII): 1.00\n",
        },
        {
          title = "Cycles summary",
          txt = "Front-end : 11.25\nDispatch  : 15.00\nData deps.: 1.00\nOverall L1: 15.00\n",
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
          txt = "Assuming all data fit into the L1 cache, each iteration of the binary loop takes 15.00 cycles. At this rate:\n - 41% of peak load performance is reached (13.33 out of 32.00 bytes loaded per cycle (GB/s @ 1GHz))\n - 16% of peak store performance is reached (2.67 out of 16.00 bytes stored per cycle (GB/s @ 1GHz))\n",
        },
        {
          title = "Front-end bottlenecks",
          txt = "Found no such bottlenecks.",
        },
        {
          title = "ASM code",
          txt = "In the binary file, the address of the loop is: f6c0\n\nInstruction                              | Nb FU | P0   | P1   | P2   | P3   | P4 | P5   | Latency | Recip. throughput\n----------------------------------------------------------------------------------------------------------------------\nVMOVSD (%RAX),%XMM5                      | 1     | 0    | 0    | 0.50 | 0.50 | 0  | 0    | 3       | 0.50\nADD $0x28,%RAX                           | 1     | 0.33 | 0.33 | 0    | 0    | 0  | 0.33 | 1       | 0.33\nADD $0x28,%R12                           | 1     | 0.33 | 0.33 | 0    | 0    | 0  | 0.33 | 1       | 0.33\nADD $0x28,%R15                           | 1     | 0.33 | 0.33 | 0    | 0    | 0  | 0.33 | 1       | 0.33\nVMULSD -0x28(%R12),%XMM2,%XMM8           | 1     | 1    | 0    | 0.50 | 0.50 | 0  | 0    | 5       | 1\nADD $0x28,%R13                           | 1     | 0.33 | 0.33 | 0    | 0    | 0  | 0.33 | 1       | 0.33\nVMULSD -0x28(%R15),%XMM3,%XMM11          | 1     | 1    | 0    | 0.50 | 0.50 | 0  | 0    | 5       | 1\nVSUBSD %XMM11,%XMM8,%XMM13               | 1     | 0    | 1    | 0    | 0    | 0  | 0    | 3       | 1\nVMOVSD -0x20(%RAX),%XMM8                 | 1     | 0    | 0    | 0.50 | 0.50 | 0  | 0    | 3       | 0.50\nVADDSD -0x28(%R13),%XMM13,%XMM12         | 1     | 0    | 1    | 0.50 | 0.50 | 0  | 0    | 3       | 1\nVMULSD 0x1d237(%RIP),%XMM12,%XMM7        | 1     | 1    | 0    | 0.50 | 0.50 | 0  | 0    | 5       | 1\nVSUBSD %XMM7,%XMM5,%XMM0                 | 1     | 0    | 1    | 0    | 0    | 0  | 0    | 3       | 1\nVMOVSD %XMM0,-0x28(%RAX)                 | 1     | 0    | 0    | 0.50 | 0.50 | 1  | 0    | 3       | 1\nVMULSD -0x20(%R12),%XMM2,%XMM10          | 1     | 1    | 0    | 0.50 | 0.50 | 0  | 0    | 5       | 1\nVMULSD -0x20(%R15),%XMM3,%XMM15          | 1     | 1    | 0    | 0.50 | 0.50 | 0  | 0    | 5       | 1\nVSUBSD %XMM15,%XMM10,%XMM9               | 1     | 0    | 1    | 0    | 0    | 0  | 0    | 3       | 1\nVMOVSD -0x18(%RAX),%XMM10                | 1     | 0    | 0    | 0.50 | 0.50 | 0  | 0    | 3       | 0.50\nVADDSD -0x20(%R13),%XMM9,%XMM14          | 1     | 0    | 1    | 0.50 | 0.50 | 0  | 0    | 3       | 1\nVMULSD 0x1d209(%RIP),%XMM14,%XMM6        | 1     | 1    | 0    | 0.50 | 0.50 | 0  | 0    | 5       | 1\nVSUBSD %XMM6,%XMM8,%XMM11                | 1     | 0    | 1    | 0    | 0    | 0  | 0    | 3       | 1\nVMOVSD %XMM11,-0x20(%RAX)                | 1     | 0    | 0    | 0.50 | 0.50 | 1  | 0    | 3       | 1\nVMULSD -0x18(%R12),%XMM2,%XMM13          | 1     | 1    | 0    | 0.50 | 0.50 | 0  | 0    | 5       | 1\nVMULSD -0x18(%R15),%XMM3,%XMM12          | 1     | 1    | 0    | 0.50 | 0.50 | 0  | 0    | 5       | 1\nVSUBSD %XMM12,%XMM13,%XMM7               | 1     | 0    | 1    | 0    | 0    | 0  | 0    | 3       | 1\nVMOVSD -0x10(%RAX),%XMM13                | 1     | 0    | 0    | 0.50 | 0.50 | 0  | 0    | 3       | 0.50\nVADDSD -0x18(%R13),%XMM7,%XMM5           | 1     | 0    | 1    | 0.50 | 0.50 | 0  | 0    | 3       | 1\nVMULSD 0x1d1db(%RIP),%XMM5,%XMM0         | 1     | 1    | 0    | 0.50 | 0.50 | 0  | 0    | 5       | 1\nVSUBSD %XMM0,%XMM10,%XMM15               | 1     | 0    | 1    | 0    | 0    | 0  | 0    | 3       | 1\nVMOVSD %XMM15,-0x18(%RAX)                | 1     | 0    | 0    | 0.50 | 0.50 | 1  | 0    | 3       | 1\nVMULSD -0x10(%R12),%XMM2,%XMM9           | 1     | 1    | 0    | 0.50 | 0.50 | 0  | 0    | 5       | 1\nVMULSD -0x10(%R15),%XMM3,%XMM14          | 1     | 1    | 0    | 0.50 | 0.50 | 0  | 0    | 5       | 1\nVSUBSD %XMM14,%XMM9,%XMM6                | 1     | 0    | 1    | 0    | 0    | 0  | 0    | 3       | 1\nVMOVSD -0x8(%RAX),%XMM9                  | 1     | 0    | 0    | 0.50 | 0.50 | 0  | 0    | 3       | 0.50\nVADDSD -0x10(%R13),%XMM6,%XMM8           | 1     | 0    | 1    | 0.50 | 0.50 | 0  | 0    | 3       | 1\nVMULSD 0x1d1ad(%RIP),%XMM8,%XMM11        | 1     | 1    | 0    | 0.50 | 0.50 | 0  | 0    | 5       | 1\nVSUBSD %XMM11,%XMM13,%XMM12              | 1     | 0    | 1    | 0    | 0    | 0  | 0    | 3       | 1\nVMOVSD %XMM12,-0x10(%RAX)                | 1     | 0    | 0    | 0.50 | 0.50 | 1  | 0    | 3       | 1\nVMULSD -0x8(%R12),%XMM2,%XMM7            | 1     | 1    | 0    | 0.50 | 0.50 | 0  | 0    | 5       | 1\nVMULSD -0x8(%R15),%XMM3,%XMM5            | 1     | 1    | 0    | 0.50 | 0.50 | 0  | 0    | 5       | 1\nVSUBSD %XMM5,%XMM7,%XMM0                 | 1     | 0    | 1    | 0    | 0    | 0  | 0    | 3       | 1\nVADDSD -0x8(%R13),%XMM0,%XMM10           | 1     | 0    | 1    | 0.50 | 0.50 | 0  | 0    | 3       | 1\nVMULSD 0x1d184(%RIP),%XMM10,%XMM15       | 1     | 1    | 0    | 0.50 | 0.50 | 0  | 0    | 5       | 1\nVSUBSD %XMM15,%XMM9,%XMM14               | 1     | 0    | 1    | 0    | 0    | 0  | 0    | 3       | 1\nVMOVSD %XMM14,-0x8(%RAX)                 | 1     | 0    | 0    | 0.50 | 0.50 | 1  | 0    | 3       | 1\nCMP %RAX,%RSI                            | 1     | 0.33 | 0.33 | 0    | 0    | 0  | 0.33 | 1       | 0.33\nJNE f6c0 <compute_rhs_._omp_fn.0+0x3370> | 1     | 0    | 0    | 0    | 0    | 0  | 1    | 0       | 1-2\n",
        },
      },
      header = {
        "25% of peak computational performance is used (2.00 out of 8.00 FLOP per cycle (GFLOPS @ 1GHz))",
      },
      brief = {
      },
      gain = {
        {
          workaround = " - Try another compiler or update/tune your current one:\n  * recompile with fassociative-math (included in Ofast or ffast-math) to extend loop vectorization to FP reductions.\n - Remove inter-iterations dependences from your loop and make it unit-stride:\n  * If your arrays have 2 or more dimensions, check whether elements are accessed contiguously and, otherwise, try to permute loops accordingly:\nFortran storage order is column-major: do i do j a(i,j) = b(i,j) (slow, non stride 1) => do i do j a(j,i) = b(i,j) (fast, stride 1)\n  * If your loop streams arrays of structures (AoS), try to use structures of arrays instead (SoA):\ndo i a(i)%x = b(i)%x (slow, non stride 1) => do i a%x(i) = b%x(i) (fast, stride 1)\n",
          details = "All SSE/AVX instructions are used in scalar version (process only one data element in vector registers).\nSince your execution units are vector units, only a vectorized loop can use their full power.\n",
          title = "Vectorization",
          txt = "Your loop is not vectorized.\n4 data elements could be processed at once in vector registers.\nBy vectorizing your loop, you can lower the cost of an iteration from 15.00 to 6.25 cycles (2.40x speedup).",
        },
        {
          workaround = " - Reduce the number of FP add instructions\n - Reduce the number of FP multiply instructions\n - Read less array elements\n - Write less array elements\n - Provide more information to your compiler:\n  * hardcode the bounds of the corresponding 'for' loop\n",
          title = "Execution units bottlenecks",
          txt = "Performance is limited by:\n - execution of FP add operations (the FP add unit is a bottleneck)\n - execution of FP multiply operations (the FP multiply unit is a bottleneck)\n - reading data from caches/RAM (load units are a bottleneck)\n - writing data to caches/RAM (the store unit is a bottleneck)\n\nBy removing all these bottlenecks, you can lower the cost of an iteration from 15.00 to 11.25 cycles (1.33x speedup).\n",
        },
      },
      potential = {
      },
    },
  common = {
    header = {
      "The loop is defined in /users/user2210/NPB3.4-MZ-MPI/BT-MZ/rhs.f90:236-240.\n",
      "The related source loop is not unrolled or unrolled with no peel/tail loop.",
    },
    nb_paths = 1,
  },
}
