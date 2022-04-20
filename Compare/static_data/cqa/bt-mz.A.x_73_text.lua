_cqa_text_report = {
  paths = {
    {
      hint = {
        {
          workaround = " - Try to reorganize arrays of structures to structures of arrays\n - Consider to permute loops (see vectorization gain report)\n",
          details = " - Constant non-unit stride: 13 occurrence(s)\nNon-unit stride (uncontiguous) accesses are not efficiently using data caches\n",
          title = "Slow data structures access",
          txt = "Detected data structures (typically arrays) that cannot be efficiently read/written",
        },
        {
          title = "Type of elements and instruction set",
          txt = "24 SSE or AVX instructions are processing arithmetic or math operations on double precision FP elements in scalar mode (one at a time).\n",
        },
        {
          title = "Matching between your loop (in the source code) and the binary loop",
          txt = "The binary loop is composed of 24 FP arithmetical operations:\n - 4: addition or subtraction\n - 18: multiply\n - 2: divide\nThe binary loop is loading 112 bytes (14 double precision FP elements).\nThe binary loop is storing 96 bytes (12 double precision FP elements).",
        },
        {
          title = "Arithmetic intensity",
          txt = "Arithmetic intensity is 0.12 FP operations per loaded or stored byte.",
        },
      },
      expert = {
        {
          title = "General properties",
          txt = "nb instructions    : 47\nnb uops            : 46\nloop length        : 231\nused x86 registers : 10\nused mmx registers : 0\nused xmm registers : 16\nused ymm registers : 0\nused zmm registers : 0\nnb stack references: 0\nADD-SUB / MUL ratio: 0.22\n",
        },
        {
          title = "Front-end",
          txt = "ASSUMED MACRO FUSION\nFIT IN UOP CACHE\nmicro-operation queue: 14.50 cycles\nfront end            : 14.50 cycles\n",
        },
        {
          title = "Back-end",
          txt = "       | P0    | P1   | P2    | P3    | P4    | P5\n----------------------------------------------------\nuops   | 20.00 | 5.00 | 13.00 | 13.00 | 12.00 | 3.00\ncycles | 20.00 | 5.00 | 13.00 | 13.00 | 12.00 | 3.00\n\nCycles executing div or sqrt instructions: 20.00-44.00\nLongest recurrence chain latency (RecMII): 1.00\n",
        },
        {
          title = "Cycles summary",
          txt = "Front-end : 14.50\nDispatch  : 20.00\nDIV/SQRT  : 20.00-44.00\nData deps.: 1.00\nOverall L1: 20.00-44.00\n",
        },
        {
          title = "Vectorization ratios",
          txt = "all     : 0%\nload    : 0%\nstore   : 0%\nmul     : 0%\nadd-sub : 0%\nfma     : NA (no fma vectorizable/vectorized instructions)\ndiv/sqrt: 0%\nother   : NA (no other vectorizable/vectorized instructions)\n",
        },
        {
          title = "Vector efficiency ratios",
          txt = "all     : 25%\nload    : 25%\nstore   : 25%\nmul     : 25%\nadd-sub : 25%\nfma     : NA (no fma vectorizable/vectorized instructions)\ndiv/sqrt: 25%\nother   : NA (no other vectorizable/vectorized instructions)\n",
        },
        {
          title = "Cycles and memory resources usage",
          txt = "Assuming all data fit into the L1 cache, each iteration of the binary loop takes 44.00 cycles. At this rate:\n - 7% of peak load performance is reached (2.55 out of 32.00 bytes loaded per cycle (GB/s @ 1GHz))\n - 13% of peak store performance is reached (2.18 out of 16.00 bytes stored per cycle (GB/s @ 1GHz))\n",
        },
        {
          title = "Front-end bottlenecks",
          txt = "Found no such bottlenecks.",
        },
        {
          title = "ASM code",
          txt = "In the binary file, the address of the loop is: c800\n\nInstruction                             | Nb FU | P0   | P1   | P2   | P3   | P4 | P5   | Latency | Recip. throughput\n---------------------------------------------------------------------------------------------------------------------\nVDIVSD (%RAX),%XMM4,%XMM2               | 1     | 1    | 0    | 0.50 | 0.50 | 0  | 0    | 10-22   | 10-22\nVMOVSD %XMM2,(%RBX,%RDX,8)              | 1     | 0    | 0    | 0.50 | 0.50 | 1  | 0    | 3       | 1\nLEA 0x1(%RDX),%RCX                      | 1     | 0.50 | 0.50 | 0    | 0    | 0  | 0    | 1       | 0.50\nADD $0x50,%RAX                          | 1     | 0.33 | 0.33 | 0    | 0    | 0  | 0.33 | 1       | 0.33\nVMULSD -0x48(%RAX),%XMM2,%XMM0          | 1     | 1    | 0    | 0.50 | 0.50 | 0  | 0    | 5       | 1\nVMOVSD %XMM0,(%R11,%RDX,8)              | 1     | 0    | 0    | 0.50 | 0.50 | 1  | 0    | 3       | 1\nVMULSD -0x40(%RAX),%XMM2,%XMM5          | 1     | 1    | 0    | 0.50 | 0.50 | 0  | 0    | 5       | 1\nVMOVSD %XMM5,(%R10,%RDX,8)              | 1     | 0    | 0    | 0.50 | 0.50 | 1  | 0    | 3       | 1\nVMULSD -0x38(%RAX),%XMM2,%XMM6          | 1     | 1    | 0    | 0.50 | 0.50 | 0  | 0    | 5       | 1\nVMOVSD %XMM6,(%R9,%RDX,8)               | 1     | 0    | 0    | 0.50 | 0.50 | 1  | 0    | 3       | 1\nVMOVSD -0x48(%RAX),%XMM7                | 1     | 0    | 0    | 0.50 | 0.50 | 0  | 0    | 3       | 0.50\nVMOVSD -0x40(%RAX),%XMM8                | 1     | 0    | 0    | 0.50 | 0.50 | 0  | 0    | 3       | 0.50\nVMULSD %XMM7,%XMM7,%XMM10               | 1     | 1    | 0    | 0    | 0    | 0  | 0    | 5       | 1\nVMOVSD -0x38(%RAX),%XMM9                | 1     | 0    | 0    | 0.50 | 0.50 | 0  | 0    | 3       | 0.50\nVMULSD %XMM8,%XMM8,%XMM11               | 1     | 1    | 0    | 0    | 0    | 0  | 0    | 5       | 1\nVMULSD %XMM9,%XMM9,%XMM13               | 1     | 1    | 0    | 0    | 0    | 0  | 0    | 5       | 1\nVADDSD %XMM11,%XMM10,%XMM12             | 1     | 0    | 1    | 0    | 0    | 0  | 0    | 3       | 1\nVADDSD %XMM13,%XMM12,%XMM14             | 1     | 0    | 1    | 0    | 0    | 0  | 0    | 3       | 1\nVMULSD %XMM3,%XMM14,%XMM15              | 1     | 1    | 0    | 0    | 0    | 0  | 0    | 5       | 1\nVMULSD %XMM2,%XMM15,%XMM1               | 1     | 1    | 0    | 0    | 0    | 0  | 0    | 5       | 1\nVMULSD %XMM1,%XMM2,%XMM2                | 1     | 1    | 0    | 0    | 0    | 0  | 0    | 5       | 1\nVMOVSD %XMM1,(%R8,%RDX,8)               | 1     | 0    | 0    | 0.50 | 0.50 | 1  | 0    | 3       | 1\nVMOVSD %XMM2,(%RSI,%RDX,8)              | 1     | 0    | 0    | 0.50 | 0.50 | 1  | 0    | 3       | 1\nVDIVSD -0x28(%RAX),%XMM4,%XMM6          | 1     | 1    | 0    | 0.50 | 0.50 | 0  | 0    | 10-22   | 10-22\nADD $0x2,%RDX                           | 1     | 0.33 | 0.33 | 0    | 0    | 0  | 0.33 | 1       | 0.33\nVMOVSD %XMM6,(%RBX,%RCX,8)              | 1     | 0    | 0    | 0.50 | 0.50 | 1  | 0    | 3       | 1\nVMULSD -0x20(%RAX),%XMM6,%XMM0          | 1     | 1    | 0    | 0.50 | 0.50 | 0  | 0    | 5       | 1\nVMOVSD %XMM0,(%R11,%RCX,8)              | 1     | 0    | 0    | 0.50 | 0.50 | 1  | 0    | 3       | 1\nVMULSD -0x18(%RAX),%XMM6,%XMM5          | 1     | 1    | 0    | 0.50 | 0.50 | 0  | 0    | 5       | 1\nVMOVSD %XMM5,(%R10,%RCX,8)              | 1     | 0    | 0    | 0.50 | 0.50 | 1  | 0    | 3       | 1\nVMULSD -0x10(%RAX),%XMM6,%XMM7          | 1     | 1    | 0    | 0.50 | 0.50 | 0  | 0    | 5       | 1\nVMOVSD %XMM7,(%R9,%RCX,8)               | 1     | 0    | 0    | 0.50 | 0.50 | 1  | 0    | 3       | 1\nVMOVSD -0x20(%RAX),%XMM8                | 1     | 0    | 0    | 0.50 | 0.50 | 0  | 0    | 3       | 0.50\nVMOVSD -0x18(%RAX),%XMM9                | 1     | 0    | 0    | 0.50 | 0.50 | 0  | 0    | 3       | 0.50\nVMULSD %XMM8,%XMM8,%XMM11               | 1     | 1    | 0    | 0    | 0    | 0  | 0    | 5       | 1\nVMOVSD -0x10(%RAX),%XMM10               | 1     | 0    | 0    | 0.50 | 0.50 | 0  | 0    | 3       | 0.50\nVMULSD %XMM9,%XMM9,%XMM12               | 1     | 1    | 0    | 0    | 0    | 0  | 0    | 5       | 1\nVMULSD %XMM10,%XMM10,%XMM14             | 1     | 1    | 0    | 0    | 0    | 0  | 0    | 5       | 1\nVADDSD %XMM12,%XMM11,%XMM13             | 1     | 0    | 1    | 0    | 0    | 0  | 0    | 3       | 1\nVADDSD %XMM14,%XMM13,%XMM15             | 1     | 0    | 1    | 0    | 0    | 0  | 0    | 3       | 1\nVMULSD %XMM3,%XMM15,%XMM1               | 1     | 1    | 0    | 0    | 0    | 0  | 0    | 5       | 1\nVMULSD %XMM6,%XMM1,%XMM2                | 1     | 1    | 0    | 0    | 0    | 0  | 0    | 5       | 1\nVMULSD %XMM2,%XMM6,%XMM6                | 1     | 1    | 0    | 0    | 0    | 0  | 0    | 5       | 1\nVMOVSD %XMM2,(%R8,%RCX,8)               | 1     | 0    | 0    | 0.50 | 0.50 | 1  | 0    | 3       | 1\nVMOVSD %XMM6,(%RSI,%RCX,8)              | 1     | 0    | 0    | 0.50 | 0.50 | 1  | 0    | 3       | 1\nCMP %RCX,%R13                           | 1     | 0.33 | 0.33 | 0    | 0    | 0  | 0.33 | 1       | 0.33\nJNE c800 <compute_rhs_._omp_fn.0+0x4b0> | 1     | 0    | 0    | 0    | 0    | 0  | 1    | 0       | 1-2\n",
        },
      },
      header = {
        "6% of peak computational performance is used (0.55 out of 8.00 FLOP per cycle (GFLOPS @ 1GHz))",
      },
      brief = {
      },
      gain = {
        {
          workaround = " - Try another compiler or update/tune your current one:\n  * recompile with fassociative-math (included in Ofast or ffast-math) to extend loop vectorization to FP reductions.\n - Remove inter-iterations dependences from your loop and make it unit-stride:\n  * If your arrays have 2 or more dimensions, check whether elements are accessed contiguously and, otherwise, try to permute loops accordingly:\nFortran storage order is column-major: do i do j a(i,j) = b(i,j) (slow, non stride 1) => do i do j a(j,i) = b(i,j) (fast, stride 1)\n  * If your loop streams arrays of structures (AoS), try to use structures of arrays instead (SoA):\ndo i a(i)%x = b(i)%x (slow, non stride 1) => do i a%x(i) = b%x(i) (fast, stride 1)\n",
          details = "All SSE/AVX instructions are used in scalar version (process only one data element in vector registers).\nSince your execution units are vector units, only a vectorized loop can use their full power.\n",
          title = "Vectorization",
          txt = "Your loop is not vectorized.\n4 data elements could be processed at once in vector registers.\nBy vectorizing your loop, you can lower the cost of an iteration from 44.00 to 22.00 cycles (2.00x speedup).",
        },
        {
          workaround = " - Reduce the number of division or square root instructions:\n  * If denominator is constant over iterations, use reciprocal (replace x/y with x*(1/y)). Check precision impact. This will be done by your compiler with ffast-math or Ofast\n - Check whether you really need double precision. If not, switch to single precision to speedup execution\n",
          title = "Execution units bottlenecks",
          txt = "Performance is limited by execution of divide and square root operations (the divide/square root unit is a bottleneck).\n\nBy removing all these bottlenecks, you can lower the cost of an iteration from 44.00 to 20.00 cycles (2.20x speedup).\n",
        },
      },
      potential = {
        {
          title = "Expensive FP math instructions/calls",
          txt = "Detected performance impact from expensive FP math instructions/calls.\nBy removing/reexpressing them, you can lower the cost of an iteration from 44.00 to 18.00 cycles (2.44x speedup).",
        },
      },
    },
  },
  AVG = {
      hint = {
        {
          workaround = " - Try to reorganize arrays of structures to structures of arrays\n - Consider to permute loops (see vectorization gain report)\n",
          details = " - Constant non-unit stride: 13 occurrence(s)\nNon-unit stride (uncontiguous) accesses are not efficiently using data caches\n",
          title = "Slow data structures access",
          txt = "Detected data structures (typically arrays) that cannot be efficiently read/written",
        },
        {
          title = "Type of elements and instruction set",
          txt = "24 SSE or AVX instructions are processing arithmetic or math operations on double precision FP elements in scalar mode (one at a time).\n",
        },
        {
          title = "Matching between your loop (in the source code) and the binary loop",
          txt = "The binary loop is composed of 24 FP arithmetical operations:\n - 4: addition or subtraction\n - 18: multiply\n - 2: divide\nThe binary loop is loading 112 bytes (14 double precision FP elements).\nThe binary loop is storing 96 bytes (12 double precision FP elements).",
        },
        {
          title = "Arithmetic intensity",
          txt = "Arithmetic intensity is 0.12 FP operations per loaded or stored byte.",
        },
      },
      expert = {
        {
          title = "General properties",
          txt = "nb instructions    : 47\nnb uops            : 46\nloop length        : 231\nused x86 registers : 10\nused mmx registers : 0\nused xmm registers : 16\nused ymm registers : 0\nused zmm registers : 0\nnb stack references: 0\nADD-SUB / MUL ratio: 0.22\n",
        },
        {
          title = "Front-end",
          txt = "ASSUMED MACRO FUSION\nFIT IN UOP CACHE\nmicro-operation queue: 14.50 cycles\nfront end            : 14.50 cycles\n",
        },
        {
          title = "Back-end",
          txt = "       | P0    | P1   | P2    | P3    | P4    | P5\n----------------------------------------------------\nuops   | 20.00 | 5.00 | 13.00 | 13.00 | 12.00 | 3.00\ncycles | 20.00 | 5.00 | 13.00 | 13.00 | 12.00 | 3.00\n\nCycles executing div or sqrt instructions: 20.00-44.00\nLongest recurrence chain latency (RecMII): 1.00\n",
        },
        {
          title = "Cycles summary",
          txt = "Front-end : 14.50\nDispatch  : 20.00\nDIV/SQRT  : 20.00-44.00\nData deps.: 1.00\nOverall L1: 20.00-44.00\n",
        },
        {
          title = "Vectorization ratios",
          txt = "all     : 0%\nload    : 0%\nstore   : 0%\nmul     : 0%\nadd-sub : 0%\nfma     : NA (no fma vectorizable/vectorized instructions)\ndiv/sqrt: 0%\nother   : NA (no other vectorizable/vectorized instructions)\n",
        },
        {
          title = "Vector efficiency ratios",
          txt = "all     : 25%\nload    : 25%\nstore   : 25%\nmul     : 25%\nadd-sub : 25%\nfma     : NA (no fma vectorizable/vectorized instructions)\ndiv/sqrt: 25%\nother   : NA (no other vectorizable/vectorized instructions)\n",
        },
        {
          title = "Cycles and memory resources usage",
          txt = "Assuming all data fit into the L1 cache, each iteration of the binary loop takes 44.00 cycles. At this rate:\n - 7% of peak load performance is reached (2.55 out of 32.00 bytes loaded per cycle (GB/s @ 1GHz))\n - 13% of peak store performance is reached (2.18 out of 16.00 bytes stored per cycle (GB/s @ 1GHz))\n",
        },
        {
          title = "Front-end bottlenecks",
          txt = "Found no such bottlenecks.",
        },
        {
          title = "ASM code",
          txt = "In the binary file, the address of the loop is: c800\n\nInstruction                             | Nb FU | P0   | P1   | P2   | P3   | P4 | P5   | Latency | Recip. throughput\n---------------------------------------------------------------------------------------------------------------------\nVDIVSD (%RAX),%XMM4,%XMM2               | 1     | 1    | 0    | 0.50 | 0.50 | 0  | 0    | 10-22   | 10-22\nVMOVSD %XMM2,(%RBX,%RDX,8)              | 1     | 0    | 0    | 0.50 | 0.50 | 1  | 0    | 3       | 1\nLEA 0x1(%RDX),%RCX                      | 1     | 0.50 | 0.50 | 0    | 0    | 0  | 0    | 1       | 0.50\nADD $0x50,%RAX                          | 1     | 0.33 | 0.33 | 0    | 0    | 0  | 0.33 | 1       | 0.33\nVMULSD -0x48(%RAX),%XMM2,%XMM0          | 1     | 1    | 0    | 0.50 | 0.50 | 0  | 0    | 5       | 1\nVMOVSD %XMM0,(%R11,%RDX,8)              | 1     | 0    | 0    | 0.50 | 0.50 | 1  | 0    | 3       | 1\nVMULSD -0x40(%RAX),%XMM2,%XMM5          | 1     | 1    | 0    | 0.50 | 0.50 | 0  | 0    | 5       | 1\nVMOVSD %XMM5,(%R10,%RDX,8)              | 1     | 0    | 0    | 0.50 | 0.50 | 1  | 0    | 3       | 1\nVMULSD -0x38(%RAX),%XMM2,%XMM6          | 1     | 1    | 0    | 0.50 | 0.50 | 0  | 0    | 5       | 1\nVMOVSD %XMM6,(%R9,%RDX,8)               | 1     | 0    | 0    | 0.50 | 0.50 | 1  | 0    | 3       | 1\nVMOVSD -0x48(%RAX),%XMM7                | 1     | 0    | 0    | 0.50 | 0.50 | 0  | 0    | 3       | 0.50\nVMOVSD -0x40(%RAX),%XMM8                | 1     | 0    | 0    | 0.50 | 0.50 | 0  | 0    | 3       | 0.50\nVMULSD %XMM7,%XMM7,%XMM10               | 1     | 1    | 0    | 0    | 0    | 0  | 0    | 5       | 1\nVMOVSD -0x38(%RAX),%XMM9                | 1     | 0    | 0    | 0.50 | 0.50 | 0  | 0    | 3       | 0.50\nVMULSD %XMM8,%XMM8,%XMM11               | 1     | 1    | 0    | 0    | 0    | 0  | 0    | 5       | 1\nVMULSD %XMM9,%XMM9,%XMM13               | 1     | 1    | 0    | 0    | 0    | 0  | 0    | 5       | 1\nVADDSD %XMM11,%XMM10,%XMM12             | 1     | 0    | 1    | 0    | 0    | 0  | 0    | 3       | 1\nVADDSD %XMM13,%XMM12,%XMM14             | 1     | 0    | 1    | 0    | 0    | 0  | 0    | 3       | 1\nVMULSD %XMM3,%XMM14,%XMM15              | 1     | 1    | 0    | 0    | 0    | 0  | 0    | 5       | 1\nVMULSD %XMM2,%XMM15,%XMM1               | 1     | 1    | 0    | 0    | 0    | 0  | 0    | 5       | 1\nVMULSD %XMM1,%XMM2,%XMM2                | 1     | 1    | 0    | 0    | 0    | 0  | 0    | 5       | 1\nVMOVSD %XMM1,(%R8,%RDX,8)               | 1     | 0    | 0    | 0.50 | 0.50 | 1  | 0    | 3       | 1\nVMOVSD %XMM2,(%RSI,%RDX,8)              | 1     | 0    | 0    | 0.50 | 0.50 | 1  | 0    | 3       | 1\nVDIVSD -0x28(%RAX),%XMM4,%XMM6          | 1     | 1    | 0    | 0.50 | 0.50 | 0  | 0    | 10-22   | 10-22\nADD $0x2,%RDX                           | 1     | 0.33 | 0.33 | 0    | 0    | 0  | 0.33 | 1       | 0.33\nVMOVSD %XMM6,(%RBX,%RCX,8)              | 1     | 0    | 0    | 0.50 | 0.50 | 1  | 0    | 3       | 1\nVMULSD -0x20(%RAX),%XMM6,%XMM0          | 1     | 1    | 0    | 0.50 | 0.50 | 0  | 0    | 5       | 1\nVMOVSD %XMM0,(%R11,%RCX,8)              | 1     | 0    | 0    | 0.50 | 0.50 | 1  | 0    | 3       | 1\nVMULSD -0x18(%RAX),%XMM6,%XMM5          | 1     | 1    | 0    | 0.50 | 0.50 | 0  | 0    | 5       | 1\nVMOVSD %XMM5,(%R10,%RCX,8)              | 1     | 0    | 0    | 0.50 | 0.50 | 1  | 0    | 3       | 1\nVMULSD -0x10(%RAX),%XMM6,%XMM7          | 1     | 1    | 0    | 0.50 | 0.50 | 0  | 0    | 5       | 1\nVMOVSD %XMM7,(%R9,%RCX,8)               | 1     | 0    | 0    | 0.50 | 0.50 | 1  | 0    | 3       | 1\nVMOVSD -0x20(%RAX),%XMM8                | 1     | 0    | 0    | 0.50 | 0.50 | 0  | 0    | 3       | 0.50\nVMOVSD -0x18(%RAX),%XMM9                | 1     | 0    | 0    | 0.50 | 0.50 | 0  | 0    | 3       | 0.50\nVMULSD %XMM8,%XMM8,%XMM11               | 1     | 1    | 0    | 0    | 0    | 0  | 0    | 5       | 1\nVMOVSD -0x10(%RAX),%XMM10               | 1     | 0    | 0    | 0.50 | 0.50 | 0  | 0    | 3       | 0.50\nVMULSD %XMM9,%XMM9,%XMM12               | 1     | 1    | 0    | 0    | 0    | 0  | 0    | 5       | 1\nVMULSD %XMM10,%XMM10,%XMM14             | 1     | 1    | 0    | 0    | 0    | 0  | 0    | 5       | 1\nVADDSD %XMM12,%XMM11,%XMM13             | 1     | 0    | 1    | 0    | 0    | 0  | 0    | 3       | 1\nVADDSD %XMM14,%XMM13,%XMM15             | 1     | 0    | 1    | 0    | 0    | 0  | 0    | 3       | 1\nVMULSD %XMM3,%XMM15,%XMM1               | 1     | 1    | 0    | 0    | 0    | 0  | 0    | 5       | 1\nVMULSD %XMM6,%XMM1,%XMM2                | 1     | 1    | 0    | 0    | 0    | 0  | 0    | 5       | 1\nVMULSD %XMM2,%XMM6,%XMM6                | 1     | 1    | 0    | 0    | 0    | 0  | 0    | 5       | 1\nVMOVSD %XMM2,(%R8,%RCX,8)               | 1     | 0    | 0    | 0.50 | 0.50 | 1  | 0    | 3       | 1\nVMOVSD %XMM6,(%RSI,%RCX,8)              | 1     | 0    | 0    | 0.50 | 0.50 | 1  | 0    | 3       | 1\nCMP %RCX,%R13                           | 1     | 0.33 | 0.33 | 0    | 0    | 0  | 0.33 | 1       | 0.33\nJNE c800 <compute_rhs_._omp_fn.0+0x4b0> | 1     | 0    | 0    | 0    | 0    | 0  | 1    | 0       | 1-2\n",
        },
      },
      header = {
        "6% of peak computational performance is used (0.55 out of 8.00 FLOP per cycle (GFLOPS @ 1GHz))",
      },
      brief = {
      },
      gain = {
        {
          workaround = " - Try another compiler or update/tune your current one:\n  * recompile with fassociative-math (included in Ofast or ffast-math) to extend loop vectorization to FP reductions.\n - Remove inter-iterations dependences from your loop and make it unit-stride:\n  * If your arrays have 2 or more dimensions, check whether elements are accessed contiguously and, otherwise, try to permute loops accordingly:\nFortran storage order is column-major: do i do j a(i,j) = b(i,j) (slow, non stride 1) => do i do j a(j,i) = b(i,j) (fast, stride 1)\n  * If your loop streams arrays of structures (AoS), try to use structures of arrays instead (SoA):\ndo i a(i)%x = b(i)%x (slow, non stride 1) => do i a%x(i) = b%x(i) (fast, stride 1)\n",
          details = "All SSE/AVX instructions are used in scalar version (process only one data element in vector registers).\nSince your execution units are vector units, only a vectorized loop can use their full power.\n",
          title = "Vectorization",
          txt = "Your loop is not vectorized.\n4 data elements could be processed at once in vector registers.\nBy vectorizing your loop, you can lower the cost of an iteration from 44.00 to 22.00 cycles (2.00x speedup).",
        },
        {
          workaround = " - Reduce the number of division or square root instructions:\n  * If denominator is constant over iterations, use reciprocal (replace x/y with x*(1/y)). Check precision impact. This will be done by your compiler with ffast-math or Ofast\n - Check whether you really need double precision. If not, switch to single precision to speedup execution\n",
          title = "Execution units bottlenecks",
          txt = "Performance is limited by execution of divide and square root operations (the divide/square root unit is a bottleneck).\n\nBy removing all these bottlenecks, you can lower the cost of an iteration from 44.00 to 20.00 cycles (2.20x speedup).\n",
        },
      },
      potential = {
        {
          title = "Expensive FP math instructions/calls",
          txt = "Detected performance impact from expensive FP math instructions/calls.\nBy removing/reexpressing them, you can lower the cost of an iteration from 44.00 to 18.00 cycles (2.44x speedup).",
        },
      },
    },
  common = {
    header = {
      "The loop is defined in /users/user2210/NPB3.4-MZ-MPI/BT-MZ/rhs.f90:37-47.\n",
      "The related source loop is not unrolled or unrolled with no peel/tail loop.",
    },
    nb_paths = 1,
  },
}
