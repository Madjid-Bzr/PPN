_cqa_text_report = {
  paths = {
    {
      hint = {
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
          txt = "nb instructions    : 68\nnb uops            : 67\nloop length        : 357\nused x86 registers : 7\nused mmx registers : 0\nused xmm registers : 13\nused ymm registers : 0\nused zmm registers : 0\nnb stack references: 0\nADD-SUB / MUL ratio: 1.25\n",
        },
        {
          title = "Front-end",
          txt = "ASSUMED MACRO FUSION\nFIT IN UOP CACHE\nmicro-operation queue: 16.75 cycles\nfront end            : 16.75 cycles\n",
        },
        {
          title = "Back-end",
          txt = "       | P0    | P1    | P2    | P3    | P4   | P5\n----------------------------------------------------\nuops   | 20.00 | 25.00 | 20.00 | 20.00 | 5.00 | 7.00\ncycles | 20.00 | 25.00 | 20.00 | 20.00 | 5.00 | 7.00\n\nCycles executing div or sqrt instructions: NA\nLongest recurrence chain latency (RecMII): 1.00\n",
        },
        {
          title = "Cycles summary",
          txt = "Front-end : 16.75\nDispatch  : 25.00\nData deps.: 1.00\nOverall L1: 25.00\n",
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
          txt = "In the binary file, the address of the loop is: ece8\n\nInstruction                              | Nb FU | P0   | P1   | P2   | P3   | P4 | P5   | Latency | Recip. throughput\n----------------------------------------------------------------------------------------------------------------------\nVMOVSD (%RBX),%XMM8                      | 1     | 0    | 0    | 0.50 | 0.50 | 0  | 0    | 3       | 0.50\nADD $0x28,%R15                           | 1     | 0.33 | 0.33 | 0    | 0    | 0  | 0.33 | 1       | 0.33\nADD $0x28,%RBX                           | 1     | 0.33 | 0.33 | 0    | 0    | 0  | 0.33 | 1       | 0.33\nADD $0x28,%R11                           | 1     | 0.33 | 0.33 | 0    | 0    | 0  | 0.33 | 1       | 0.33\nVMULSD -0x28(%R11),%XMM13,%XMM12         | 1     | 1    | 0    | 0.50 | 0.50 | 0  | 0    | 5       | 1\nADD $0x28,%RSI                           | 1     | 0.33 | 0.33 | 0    | 0    | 0  | 0.33 | 1       | 0.33\nADD $0x28,%RCX                           | 1     | 0.33 | 0.33 | 0    | 0    | 0  | 0.33 | 1       | 0.33\nVMULSD -0x28(%RSI),%XMM9,%XMM0           | 1     | 1    | 0    | 0.50 | 0.50 | 0  | 0    | 5       | 1\nADD $0x28,%R10                           | 1     | 0.33 | 0.33 | 0    | 0    | 0  | 0.33 | 1       | 0.33\nVMULSD -0x28(%RCX),%XMM13,%XMM3          | 1     | 1    | 0    | 0.50 | 0.50 | 0  | 0    | 5       | 1\nVMOVSD -0x28(%R15),%XMM15                | 1     | 0    | 0    | 0.50 | 0.50 | 0  | 0    | 3       | 0.50\nVSUBSD %XMM12,%XMM8,%XMM7                | 1     | 0    | 1    | 0    | 0    | 0  | 0    | 3       | 1\nVADDSD %XMM0,%XMM7,%XMM11                | 1     | 0    | 1    | 0    | 0    | 0  | 0    | 3       | 1\nVSUBSD %XMM3,%XMM11,%XMM14               | 1     | 0    | 1    | 0    | 0    | 0  | 0    | 3       | 1\nVADDSD -0x28(%R10),%XMM14,%XMM2          | 1     | 0    | 1    | 0.50 | 0.50 | 0  | 0    | 3       | 1\nVMULSD 0x1dbfb(%RIP),%XMM2,%XMM10        | 1     | 1    | 0    | 0.50 | 0.50 | 0  | 0    | 5       | 1\nVSUBSD %XMM10,%XMM15,%XMM1               | 1     | 0    | 1    | 0    | 0    | 0  | 0    | 3       | 1\nVMOVSD -0x20(%R15),%XMM15                | 1     | 0    | 0    | 0.50 | 0.50 | 0  | 0    | 3       | 0.50\nVMOVSD %XMM1,-0x28(%R15)                 | 1     | 0    | 0    | 0.50 | 0.50 | 1  | 0    | 3       | 1\nVMULSD -0x20(%R11),%XMM13,%XMM12         | 1     | 1    | 0    | 0.50 | 0.50 | 0  | 0    | 5       | 1\nVMOVSD -0x20(%RBX),%XMM8                 | 1     | 0    | 0    | 0.50 | 0.50 | 0  | 0    | 3       | 0.50\nVMULSD -0x20(%RSI),%XMM9,%XMM0           | 1     | 1    | 0    | 0.50 | 0.50 | 0  | 0    | 5       | 1\nVMULSD -0x20(%RCX),%XMM13,%XMM3          | 1     | 1    | 0    | 0.50 | 0.50 | 0  | 0    | 5       | 1\nVSUBSD %XMM12,%XMM8,%XMM7                | 1     | 0    | 1    | 0    | 0    | 0  | 0    | 3       | 1\nVADDSD %XMM0,%XMM7,%XMM11                | 1     | 0    | 1    | 0    | 0    | 0  | 0    | 3       | 1\nVSUBSD %XMM3,%XMM11,%XMM14               | 1     | 0    | 1    | 0    | 0    | 0  | 0    | 3       | 1\nVADDSD -0x20(%R10),%XMM14,%XMM2          | 1     | 0    | 1    | 0.50 | 0.50 | 0  | 0    | 3       | 1\nVMULSD 0x1dbba(%RIP),%XMM2,%XMM10        | 1     | 1    | 0    | 0.50 | 0.50 | 0  | 0    | 5       | 1\nVSUBSD %XMM10,%XMM15,%XMM1               | 1     | 0    | 1    | 0    | 0    | 0  | 0    | 3       | 1\nVMOVSD -0x18(%R15),%XMM15                | 1     | 0    | 0    | 0.50 | 0.50 | 0  | 0    | 3       | 0.50\nVMOVSD %XMM1,-0x20(%R15)                 | 1     | 0    | 0    | 0.50 | 0.50 | 1  | 0    | 3       | 1\nVMULSD -0x18(%R11),%XMM13,%XMM12         | 1     | 1    | 0    | 0.50 | 0.50 | 0  | 0    | 5       | 1\nVMOVSD -0x18(%RBX),%XMM8                 | 1     | 0    | 0    | 0.50 | 0.50 | 0  | 0    | 3       | 0.50\nVMULSD -0x18(%RSI),%XMM9,%XMM0           | 1     | 1    | 0    | 0.50 | 0.50 | 0  | 0    | 5       | 1\nVMULSD -0x18(%RCX),%XMM13,%XMM3          | 1     | 1    | 0    | 0.50 | 0.50 | 0  | 0    | 5       | 1\nVSUBSD %XMM12,%XMM8,%XMM7                | 1     | 0    | 1    | 0    | 0    | 0  | 0    | 3       | 1\nVADDSD %XMM0,%XMM7,%XMM11                | 1     | 0    | 1    | 0    | 0    | 0  | 0    | 3       | 1\nVSUBSD %XMM3,%XMM11,%XMM14               | 1     | 0    | 1    | 0    | 0    | 0  | 0    | 3       | 1\nVADDSD -0x18(%R10),%XMM14,%XMM2          | 1     | 0    | 1    | 0.50 | 0.50 | 0  | 0    | 3       | 1\nVMULSD 0x1db79(%RIP),%XMM2,%XMM10        | 1     | 1    | 0    | 0.50 | 0.50 | 0  | 0    | 5       | 1\nVSUBSD %XMM10,%XMM15,%XMM1               | 1     | 0    | 1    | 0    | 0    | 0  | 0    | 3       | 1\nVMOVSD -0x10(%R15),%XMM15                | 1     | 0    | 0    | 0.50 | 0.50 | 0  | 0    | 3       | 0.50\nVMOVSD %XMM1,-0x18(%R15)                 | 1     | 0    | 0    | 0.50 | 0.50 | 1  | 0    | 3       | 1\nVMULSD -0x10(%R11),%XMM13,%XMM12         | 1     | 1    | 0    | 0.50 | 0.50 | 0  | 0    | 5       | 1\nVMOVSD -0x10(%RBX),%XMM8                 | 1     | 0    | 0    | 0.50 | 0.50 | 0  | 0    | 3       | 0.50\nVMULSD -0x10(%RSI),%XMM9,%XMM0           | 1     | 1    | 0    | 0.50 | 0.50 | 0  | 0    | 5       | 1\nVMULSD -0x10(%RCX),%XMM13,%XMM3          | 1     | 1    | 0    | 0.50 | 0.50 | 0  | 0    | 5       | 1\nVSUBSD %XMM12,%XMM8,%XMM7                | 1     | 0    | 1    | 0    | 0    | 0  | 0    | 3       | 1\nVADDSD %XMM0,%XMM7,%XMM11                | 1     | 0    | 1    | 0    | 0    | 0  | 0    | 3       | 1\nVSUBSD %XMM3,%XMM11,%XMM14               | 1     | 0    | 1    | 0    | 0    | 0  | 0    | 3       | 1\nVADDSD -0x10(%R10),%XMM14,%XMM2          | 1     | 0    | 1    | 0.50 | 0.50 | 0  | 0    | 3       | 1\nVMULSD 0x1db38(%RIP),%XMM2,%XMM10        | 1     | 1    | 0    | 0.50 | 0.50 | 0  | 0    | 5       | 1\nVSUBSD %XMM10,%XMM15,%XMM1               | 1     | 0    | 1    | 0    | 0    | 0  | 0    | 3       | 1\nVMOVSD %XMM1,-0x10(%R15)                 | 1     | 0    | 0    | 0.50 | 0.50 | 1  | 0    | 3       | 1\nVMULSD -0x8(%R11),%XMM13,%XMM12          | 1     | 1    | 0    | 0.50 | 0.50 | 0  | 0    | 5       | 1\nVMOVSD -0x8(%RBX),%XMM8                  | 1     | 0    | 0    | 0.50 | 0.50 | 0  | 0    | 3       | 0.50\nVMULSD -0x8(%RSI),%XMM9,%XMM0            | 1     | 1    | 0    | 0.50 | 0.50 | 0  | 0    | 5       | 1\nVMULSD -0x8(%RCX),%XMM13,%XMM3           | 1     | 1    | 0    | 0.50 | 0.50 | 0  | 0    | 5       | 1\nVMOVSD -0x8(%R15),%XMM15                 | 1     | 0    | 0    | 0.50 | 0.50 | 0  | 0    | 3       | 0.50\nVSUBSD %XMM12,%XMM8,%XMM7                | 1     | 0    | 1    | 0    | 0    | 0  | 0    | 3       | 1\nVADDSD %XMM0,%XMM7,%XMM11                | 1     | 0    | 1    | 0    | 0    | 0  | 0    | 3       | 1\nVSUBSD %XMM3,%XMM11,%XMM14               | 1     | 0    | 1    | 0    | 0    | 0  | 0    | 3       | 1\nVADDSD -0x8(%R10),%XMM14,%XMM2           | 1     | 0    | 1    | 0.50 | 0.50 | 0  | 0    | 3       | 1\nVMULSD 0x1daf7(%RIP),%XMM2,%XMM10        | 1     | 1    | 0    | 0.50 | 0.50 | 0  | 0    | 5       | 1\nVSUBSD %XMM10,%XMM15,%XMM1               | 1     | 0    | 1    | 0    | 0    | 0  | 0    | 3       | 1\nVMOVSD %XMM1,-0x8(%R15)                  | 1     | 0    | 0    | 0.50 | 0.50 | 1  | 0    | 3       | 1\nCMP %R15,%R13                            | 1     | 0.33 | 0.33 | 0    | 0    | 0  | 0.33 | 1       | 0.33\nJNE ece8 <compute_rhs_._omp_fn.0+0x2998> | 1     | 0    | 0    | 0    | 0    | 0  | 1    | 0       | 1-2\n",
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
          txt = "nb instructions    : 68\nnb uops            : 67\nloop length        : 357\nused x86 registers : 7\nused mmx registers : 0\nused xmm registers : 13\nused ymm registers : 0\nused zmm registers : 0\nnb stack references: 0\nADD-SUB / MUL ratio: 1.25\n",
        },
        {
          title = "Front-end",
          txt = "ASSUMED MACRO FUSION\nFIT IN UOP CACHE\nmicro-operation queue: 16.75 cycles\nfront end            : 16.75 cycles\n",
        },
        {
          title = "Back-end",
          txt = "       | P0    | P1    | P2    | P3    | P4   | P5\n----------------------------------------------------\nuops   | 20.00 | 25.00 | 20.00 | 20.00 | 5.00 | 7.00\ncycles | 20.00 | 25.00 | 20.00 | 20.00 | 5.00 | 7.00\n\nCycles executing div or sqrt instructions: NA\nLongest recurrence chain latency (RecMII): 1.00\n",
        },
        {
          title = "Cycles summary",
          txt = "Front-end : 16.75\nDispatch  : 25.00\nData deps.: 1.00\nOverall L1: 25.00\n",
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
          txt = "In the binary file, the address of the loop is: ece8\n\nInstruction                              | Nb FU | P0   | P1   | P2   | P3   | P4 | P5   | Latency | Recip. throughput\n----------------------------------------------------------------------------------------------------------------------\nVMOVSD (%RBX),%XMM8                      | 1     | 0    | 0    | 0.50 | 0.50 | 0  | 0    | 3       | 0.50\nADD $0x28,%R15                           | 1     | 0.33 | 0.33 | 0    | 0    | 0  | 0.33 | 1       | 0.33\nADD $0x28,%RBX                           | 1     | 0.33 | 0.33 | 0    | 0    | 0  | 0.33 | 1       | 0.33\nADD $0x28,%R11                           | 1     | 0.33 | 0.33 | 0    | 0    | 0  | 0.33 | 1       | 0.33\nVMULSD -0x28(%R11),%XMM13,%XMM12         | 1     | 1    | 0    | 0.50 | 0.50 | 0  | 0    | 5       | 1\nADD $0x28,%RSI                           | 1     | 0.33 | 0.33 | 0    | 0    | 0  | 0.33 | 1       | 0.33\nADD $0x28,%RCX                           | 1     | 0.33 | 0.33 | 0    | 0    | 0  | 0.33 | 1       | 0.33\nVMULSD -0x28(%RSI),%XMM9,%XMM0           | 1     | 1    | 0    | 0.50 | 0.50 | 0  | 0    | 5       | 1\nADD $0x28,%R10                           | 1     | 0.33 | 0.33 | 0    | 0    | 0  | 0.33 | 1       | 0.33\nVMULSD -0x28(%RCX),%XMM13,%XMM3          | 1     | 1    | 0    | 0.50 | 0.50 | 0  | 0    | 5       | 1\nVMOVSD -0x28(%R15),%XMM15                | 1     | 0    | 0    | 0.50 | 0.50 | 0  | 0    | 3       | 0.50\nVSUBSD %XMM12,%XMM8,%XMM7                | 1     | 0    | 1    | 0    | 0    | 0  | 0    | 3       | 1\nVADDSD %XMM0,%XMM7,%XMM11                | 1     | 0    | 1    | 0    | 0    | 0  | 0    | 3       | 1\nVSUBSD %XMM3,%XMM11,%XMM14               | 1     | 0    | 1    | 0    | 0    | 0  | 0    | 3       | 1\nVADDSD -0x28(%R10),%XMM14,%XMM2          | 1     | 0    | 1    | 0.50 | 0.50 | 0  | 0    | 3       | 1\nVMULSD 0x1dbfb(%RIP),%XMM2,%XMM10        | 1     | 1    | 0    | 0.50 | 0.50 | 0  | 0    | 5       | 1\nVSUBSD %XMM10,%XMM15,%XMM1               | 1     | 0    | 1    | 0    | 0    | 0  | 0    | 3       | 1\nVMOVSD -0x20(%R15),%XMM15                | 1     | 0    | 0    | 0.50 | 0.50 | 0  | 0    | 3       | 0.50\nVMOVSD %XMM1,-0x28(%R15)                 | 1     | 0    | 0    | 0.50 | 0.50 | 1  | 0    | 3       | 1\nVMULSD -0x20(%R11),%XMM13,%XMM12         | 1     | 1    | 0    | 0.50 | 0.50 | 0  | 0    | 5       | 1\nVMOVSD -0x20(%RBX),%XMM8                 | 1     | 0    | 0    | 0.50 | 0.50 | 0  | 0    | 3       | 0.50\nVMULSD -0x20(%RSI),%XMM9,%XMM0           | 1     | 1    | 0    | 0.50 | 0.50 | 0  | 0    | 5       | 1\nVMULSD -0x20(%RCX),%XMM13,%XMM3          | 1     | 1    | 0    | 0.50 | 0.50 | 0  | 0    | 5       | 1\nVSUBSD %XMM12,%XMM8,%XMM7                | 1     | 0    | 1    | 0    | 0    | 0  | 0    | 3       | 1\nVADDSD %XMM0,%XMM7,%XMM11                | 1     | 0    | 1    | 0    | 0    | 0  | 0    | 3       | 1\nVSUBSD %XMM3,%XMM11,%XMM14               | 1     | 0    | 1    | 0    | 0    | 0  | 0    | 3       | 1\nVADDSD -0x20(%R10),%XMM14,%XMM2          | 1     | 0    | 1    | 0.50 | 0.50 | 0  | 0    | 3       | 1\nVMULSD 0x1dbba(%RIP),%XMM2,%XMM10        | 1     | 1    | 0    | 0.50 | 0.50 | 0  | 0    | 5       | 1\nVSUBSD %XMM10,%XMM15,%XMM1               | 1     | 0    | 1    | 0    | 0    | 0  | 0    | 3       | 1\nVMOVSD -0x18(%R15),%XMM15                | 1     | 0    | 0    | 0.50 | 0.50 | 0  | 0    | 3       | 0.50\nVMOVSD %XMM1,-0x20(%R15)                 | 1     | 0    | 0    | 0.50 | 0.50 | 1  | 0    | 3       | 1\nVMULSD -0x18(%R11),%XMM13,%XMM12         | 1     | 1    | 0    | 0.50 | 0.50 | 0  | 0    | 5       | 1\nVMOVSD -0x18(%RBX),%XMM8                 | 1     | 0    | 0    | 0.50 | 0.50 | 0  | 0    | 3       | 0.50\nVMULSD -0x18(%RSI),%XMM9,%XMM0           | 1     | 1    | 0    | 0.50 | 0.50 | 0  | 0    | 5       | 1\nVMULSD -0x18(%RCX),%XMM13,%XMM3          | 1     | 1    | 0    | 0.50 | 0.50 | 0  | 0    | 5       | 1\nVSUBSD %XMM12,%XMM8,%XMM7                | 1     | 0    | 1    | 0    | 0    | 0  | 0    | 3       | 1\nVADDSD %XMM0,%XMM7,%XMM11                | 1     | 0    | 1    | 0    | 0    | 0  | 0    | 3       | 1\nVSUBSD %XMM3,%XMM11,%XMM14               | 1     | 0    | 1    | 0    | 0    | 0  | 0    | 3       | 1\nVADDSD -0x18(%R10),%XMM14,%XMM2          | 1     | 0    | 1    | 0.50 | 0.50 | 0  | 0    | 3       | 1\nVMULSD 0x1db79(%RIP),%XMM2,%XMM10        | 1     | 1    | 0    | 0.50 | 0.50 | 0  | 0    | 5       | 1\nVSUBSD %XMM10,%XMM15,%XMM1               | 1     | 0    | 1    | 0    | 0    | 0  | 0    | 3       | 1\nVMOVSD -0x10(%R15),%XMM15                | 1     | 0    | 0    | 0.50 | 0.50 | 0  | 0    | 3       | 0.50\nVMOVSD %XMM1,-0x18(%R15)                 | 1     | 0    | 0    | 0.50 | 0.50 | 1  | 0    | 3       | 1\nVMULSD -0x10(%R11),%XMM13,%XMM12         | 1     | 1    | 0    | 0.50 | 0.50 | 0  | 0    | 5       | 1\nVMOVSD -0x10(%RBX),%XMM8                 | 1     | 0    | 0    | 0.50 | 0.50 | 0  | 0    | 3       | 0.50\nVMULSD -0x10(%RSI),%XMM9,%XMM0           | 1     | 1    | 0    | 0.50 | 0.50 | 0  | 0    | 5       | 1\nVMULSD -0x10(%RCX),%XMM13,%XMM3          | 1     | 1    | 0    | 0.50 | 0.50 | 0  | 0    | 5       | 1\nVSUBSD %XMM12,%XMM8,%XMM7                | 1     | 0    | 1    | 0    | 0    | 0  | 0    | 3       | 1\nVADDSD %XMM0,%XMM7,%XMM11                | 1     | 0    | 1    | 0    | 0    | 0  | 0    | 3       | 1\nVSUBSD %XMM3,%XMM11,%XMM14               | 1     | 0    | 1    | 0    | 0    | 0  | 0    | 3       | 1\nVADDSD -0x10(%R10),%XMM14,%XMM2          | 1     | 0    | 1    | 0.50 | 0.50 | 0  | 0    | 3       | 1\nVMULSD 0x1db38(%RIP),%XMM2,%XMM10        | 1     | 1    | 0    | 0.50 | 0.50 | 0  | 0    | 5       | 1\nVSUBSD %XMM10,%XMM15,%XMM1               | 1     | 0    | 1    | 0    | 0    | 0  | 0    | 3       | 1\nVMOVSD %XMM1,-0x10(%R15)                 | 1     | 0    | 0    | 0.50 | 0.50 | 1  | 0    | 3       | 1\nVMULSD -0x8(%R11),%XMM13,%XMM12          | 1     | 1    | 0    | 0.50 | 0.50 | 0  | 0    | 5       | 1\nVMOVSD -0x8(%RBX),%XMM8                  | 1     | 0    | 0    | 0.50 | 0.50 | 0  | 0    | 3       | 0.50\nVMULSD -0x8(%RSI),%XMM9,%XMM0            | 1     | 1    | 0    | 0.50 | 0.50 | 0  | 0    | 5       | 1\nVMULSD -0x8(%RCX),%XMM13,%XMM3           | 1     | 1    | 0    | 0.50 | 0.50 | 0  | 0    | 5       | 1\nVMOVSD -0x8(%R15),%XMM15                 | 1     | 0    | 0    | 0.50 | 0.50 | 0  | 0    | 3       | 0.50\nVSUBSD %XMM12,%XMM8,%XMM7                | 1     | 0    | 1    | 0    | 0    | 0  | 0    | 3       | 1\nVADDSD %XMM0,%XMM7,%XMM11                | 1     | 0    | 1    | 0    | 0    | 0  | 0    | 3       | 1\nVSUBSD %XMM3,%XMM11,%XMM14               | 1     | 0    | 1    | 0    | 0    | 0  | 0    | 3       | 1\nVADDSD -0x8(%R10),%XMM14,%XMM2           | 1     | 0    | 1    | 0.50 | 0.50 | 0  | 0    | 3       | 1\nVMULSD 0x1daf7(%RIP),%XMM2,%XMM10        | 1     | 1    | 0    | 0.50 | 0.50 | 0  | 0    | 5       | 1\nVSUBSD %XMM10,%XMM15,%XMM1               | 1     | 0    | 1    | 0    | 0    | 0  | 0    | 3       | 1\nVMOVSD %XMM1,-0x8(%R15)                  | 1     | 0    | 0    | 0.50 | 0.50 | 1  | 0    | 3       | 1\nCMP %R15,%R13                            | 1     | 0.33 | 0.33 | 0    | 0    | 0  | 0.33 | 1       | 0.33\nJNE ece8 <compute_rhs_._omp_fn.0+0x2998> | 1     | 0    | 0    | 0    | 0    | 0  | 1    | 0       | 1-2\n",
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
      "The loop is defined in /users/user2210/NPB3.4-MZ-MPI/BT-MZ/rhs.f90:383-388.\n",
      "The related source loop is not unrolled or unrolled with no peel/tail loop.",
    },
    nb_paths = 1,
  },
}
