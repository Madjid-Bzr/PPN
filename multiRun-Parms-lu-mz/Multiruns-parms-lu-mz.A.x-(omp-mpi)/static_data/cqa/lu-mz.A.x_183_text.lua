_cqa_text_report = {
  paths = {
    {
      hint = {
        {
          workaround = " - Try to reorganize arrays of structures to structures of arrays\n - Consider to permute loops (see vectorization gain report)\n",
          details = " - Constant unknown stride: 4 occurrence(s)\n - Constant non-unit stride: 4 occurrence(s)\nNon-unit stride (uncontiguous) accesses are not efficiently using data caches\n",
          title = "Slow data structures access",
          txt = "Detected data structures (typically arrays) that cannot be efficiently read/written",
        },
        {
          title = "Type of elements and instruction set",
          txt = "No instructions are processing arithmetic or math operations on FP elements. This loop is probably writing/copying data or processing integer elements.",
        },
        {
          title = "Matching between your loop (in the source code) and the binary loop",
          txt = "The binary loop does not contain any FP arithmetical operations.\nThe binary loop is loading 84 bytes.",
        },
      },
      expert = {
        {
          title = "General properties",
          txt = "nb instructions    : 26\nloop length        : 124\nused x86 registers : 14\nused mmx registers : 0\nused xmm registers : 0\nused ymm registers : 0\nused zmm registers : 0\nnb stack references: 11\n",
        },
        {
          title = "Front-end",
          txt = "MACRO FUSION NOT POSSIBLE\ninstruction fetch    : 8.00 cycles\ninstruction queue    : 13.00 cycles\ndecoding             : 13.00 cycles\nmicro-operation queue: 13.00 cycles\nfront end            : 13.00 cycles\n",
        },
        {
          title = "Back-end",
          txt = "       | P0   | P1   | P2    | P3   | P4   | P5   | P6\n--------------------------------------------------------\nuops   | 0.00 | 0.00 | 11.00 | 0.00 | 9.00 | 9.00 | 0.00\ncycles | 0.00 | 0.00 | 11.00 | 0.00 | 9.00 | 9.00 | 0.00\n\nCycles executing div or sqrt instructions: NA\nLongest recurrence chain latency (RecMII): 1.00\n",
        },
        {
          title = "Cycles summary",
          txt = "Front-end : 13.00\nDispatch  : 11.00\nData deps.: 1.00\nOverall L1: 13.00\n",
        },
        {
          title = "Vectorization ratios",
          txt = "all     : 0%\nload    : 0%\nstore   : NA (no store vectorizable/vectorized instructions)\nmul     : NA (no mul vectorizable/vectorized instructions)\nadd-sub : 0%\nfma     : NA (no fma vectorizable/vectorized instructions)\ndiv/sqrt: NA (no div/sqrt vectorizable/vectorized instructions)\nother   : NA (no other vectorizable/vectorized instructions)\n",
        },
        {
          title = "Vector efficiency ratios",
          txt = "all     : 12%\nload    : 12%\nstore   : NA (no store vectorizable/vectorized instructions)\nmul     : NA (no mul vectorizable/vectorized instructions)\nadd-sub : 12%\nfma     : NA (no fma vectorizable/vectorized instructions)\ndiv/sqrt: NA (no div/sqrt vectorizable/vectorized instructions)\nother   : NA (no other vectorizable/vectorized instructions)\n",
        },
        {
          title = "Cycles and memory resources usage",
          txt = "Assuming all data fit into the L1 cache, each iteration of the binary loop takes 13.00 cycles. At this rate:\n - 5% of peak load performance is reached (6.46 out of 128.00 bytes loaded per cycle (GB/s @ 1GHz))\n",
        },
        {
          title = "Front-end bottlenecks",
          txt = "Performance is limited by instruction throughput (loading/decoding program instructions to execution core) (front-end is a bottleneck).\n\nBy removing all these bottlenecks, you can lower the cost of an iteration from 13.00 to 11.00 cycles (1.18x speedup).\n",
        },
        {
          title = "ASM code",
          txt = "In the binary file, the address of the loop is: 25f70\n\nInstruction                 | Nb FU | P0 | P1 | P2 | P3 | P4   | P5   | P6 | Latency | Recip. throughput\n--------------------------------------------------------------------------------------------------------\nMOV 0x50(%RSP),%RAX         | 1     | 0  | 0  | 1  | 0  | 0    | 0    | 0  | 4       | 1\nMOV 0x48(%RSP),%RSI         | 1     | 0  | 0  | 1  | 0  | 0    | 0    | 0  | 4       | 1\nMOV 0x40(%RSP),%R8          | 1     | 0  | 0  | 1  | 0  | 0    | 0    | 0  | 4       | 1\nLEA (%RAX,%R12,1),%R15      | 1     | 0  | 0  | 0  | 0  | 0.50 | 0.50 | 0  | 1       | 0.50\nMOV 0x58(%RSP),%RAX         | 1     | 0  | 0  | 1  | 0  | 0    | 0    | 0  | 4       | 1\nADD %R12,%R8                | 1     | 0  | 0  | 0  | 0  | 0.50 | 0.50 | 0  | 1       | 0.50\nLEA (%R15,%RSI,1),%R14      | 1     | 0  | 0  | 0  | 0  | 0.50 | 0.50 | 0  | 1       | 0.50\nMOV 0x68(%RSP),%RSI         | 1     | 0  | 0  | 1  | 0  | 0    | 0    | 0  | 4       | 1\nLEA (%RAX,%R12,1),%RDI      | 1     | 0  | 0  | 0  | 0  | 0.50 | 0.50 | 0  | 1       | 0.50\nMOV 0x80(%RSP),%RAX         | 1     | 0  | 0  | 1  | 0  | 0    | 0    | 0  | 4       | 1\nSUB %R14,%R8                | 1     | 0  | 0  | 0  | 0  | 0.50 | 0.50 | 0  | 1       | 0.50\nLEA (%RSI,%R14,1),%RDX      | 1     | 0  | 0  | 0  | 0  | 0.50 | 0.50 | 0  | 1       | 0.50\nMOV 0x70(%RSP),%RSI         | 1     | 0  | 0  | 1  | 0  | 0    | 0    | 0  | 4       | 1\nSUB %R15,%RDI               | 1     | 0  | 0  | 0  | 0  | 0.50 | 0.50 | 0  | 1       | 0.50\nADD %R10,%RAX               | 1     | 0  | 0  | 0  | 0  | 0.50 | 0.50 | 0  | 1       | 0.50\nLEA -0x20(%R13,%RDX,8),%RCX | 1     | 0  | 0  | 0  | 0  | 1    | 0    | 0  | 1       | 1\nLEA (%RSI,%R10,1),%RDX      | 1     | 0  | 0  | 0  | 0  | 0.50 | 0.50 | 0  | 1       | 0.50\nMOV 0x78(%RSP),%RSI         | 1     | 0  | 0  | 1  | 0  | 0    | 0    | 0  | 4       | 1\nLEA (%RSI,%R10,1),%R9       | 1     | 0  | 0  | 0  | 0  | 0.50 | 0.50 | 0  | 1       | 0.50\nMOV %R10,%RSI               | 1     | 0  | 0  | 0  | 0  | 0.50 | 0.50 | 0  | 0       | 0.50\nNOPW (%RAX,%RAX,1)          | 1     | 0  | 0  | 0  | 0  | 0.50 | 0.50 | 0  | 0       | 0.50\nADD $0x1,%R11D              | 1     | 0  | 0  | 0  | 0  | 0.50 | 0.50 | 0  | 1       | 0.50\nADD 0x60(%RSP),%R10         | 1     | 0  | 0  | 1  | 0  | 0.50 | 0.50 | 0  | 1       | 1\nADD 0x38(%RSP),%R12         | 1     | 0  | 0  | 1  | 0  | 0.50 | 0.50 | 0  | 1       | 1\nCMP 0x8c(%RSP),%R11D        | 1     | 0  | 0  | 1  | 0  | 0.50 | 0.50 | 0  | 1       | 1\nJNE 25f70 <blts_+0x4d0>     | 1     | 0  | 0  | 0  | 0  | 0    | 1    | 0  | 0       | 1-2\n",
        },
      },
      header = {
        "0% of peak computational performance is used (0.00 out of 4.00 FLOP per cycle (GFLOPS @ 1GHz))",
      },
      brief = {
      },
      gain = {
        {
          workaround = " - Try another compiler or update/tune your current one:\n  * recompile with fassociative-math (included in Ofast or ffast-math) to extend loop vectorization to FP reductions.\n - Remove inter-iterations dependences from your loop and make it unit-stride:\n  * If your arrays have 2 or more dimensions, check whether elements are accessed contiguously and, otherwise, try to permute loops accordingly:\nFortran storage order is column-major: do i do j a(i,j) = b(i,j) (slow, non stride 1) => do i do j a(j,i) = b(i,j) (fast, stride 1)\n  * If your loop streams arrays of structures (AoS), try to use structures of arrays instead (SoA):\ndo i a(i)%x = b(i)%x (slow, non stride 1) => do i a%x(i) = b%x(i) (fast, stride 1)\n",
          details = "All SSE/AVX instructions are used in scalar version (process only one data element in vector registers).\nSince your execution units are vector units, only a vectorized loop can use their full power.\n",
          title = "Vectorization",
          txt = "Your loop is not vectorized.\n8 data elements could be processed at once in vector registers.\nBy vectorizing your loop, you can lower the cost of an iteration from 13.00 to 1.62 cycles (8.00x speedup).",
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
          workaround = " - Try to reorganize arrays of structures to structures of arrays\n - Consider to permute loops (see vectorization gain report)\n",
          details = " - Constant unknown stride: 4 occurrence(s)\n - Constant non-unit stride: 4 occurrence(s)\nNon-unit stride (uncontiguous) accesses are not efficiently using data caches\n",
          title = "Slow data structures access",
          txt = "Detected data structures (typically arrays) that cannot be efficiently read/written",
        },
        {
          title = "Type of elements and instruction set",
          txt = "No instructions are processing arithmetic or math operations on FP elements. This loop is probably writing/copying data or processing integer elements.",
        },
        {
          title = "Matching between your loop (in the source code) and the binary loop",
          txt = "The binary loop does not contain any FP arithmetical operations.\nThe binary loop is loading 84 bytes.",
        },
      },
      expert = {
        {
          title = "General properties",
          txt = "nb instructions    : 26\nloop length        : 124\nused x86 registers : 14\nused mmx registers : 0\nused xmm registers : 0\nused ymm registers : 0\nused zmm registers : 0\nnb stack references: 11\n",
        },
        {
          title = "Front-end",
          txt = "MACRO FUSION NOT POSSIBLE\ninstruction fetch    : 8.00 cycles\ninstruction queue    : 13.00 cycles\ndecoding             : 13.00 cycles\nmicro-operation queue: 13.00 cycles\nfront end            : 13.00 cycles\n",
        },
        {
          title = "Back-end",
          txt = "       | P0   | P1   | P2    | P3   | P4   | P5   | P6\n--------------------------------------------------------\nuops   | 0.00 | 0.00 | 11.00 | 0.00 | 9.00 | 9.00 | 0.00\ncycles | 0.00 | 0.00 | 11.00 | 0.00 | 9.00 | 9.00 | 0.00\n\nCycles executing div or sqrt instructions: NA\nLongest recurrence chain latency (RecMII): 1.00\n",
        },
        {
          title = "Cycles summary",
          txt = "Front-end : 13.00\nDispatch  : 11.00\nData deps.: 1.00\nOverall L1: 13.00\n",
        },
        {
          title = "Vectorization ratios",
          txt = "all     : 0%\nload    : 0%\nstore   : NA (no store vectorizable/vectorized instructions)\nmul     : NA (no mul vectorizable/vectorized instructions)\nadd-sub : 0%\nfma     : NA (no fma vectorizable/vectorized instructions)\ndiv/sqrt: NA (no div/sqrt vectorizable/vectorized instructions)\nother   : NA (no other vectorizable/vectorized instructions)\n",
        },
        {
          title = "Vector efficiency ratios",
          txt = "all     : 12%\nload    : 12%\nstore   : NA (no store vectorizable/vectorized instructions)\nmul     : NA (no mul vectorizable/vectorized instructions)\nadd-sub : 12%\nfma     : NA (no fma vectorizable/vectorized instructions)\ndiv/sqrt: NA (no div/sqrt vectorizable/vectorized instructions)\nother   : NA (no other vectorizable/vectorized instructions)\n",
        },
        {
          title = "Cycles and memory resources usage",
          txt = "Assuming all data fit into the L1 cache, each iteration of the binary loop takes 13.00 cycles. At this rate:\n - 5% of peak load performance is reached (6.46 out of 128.00 bytes loaded per cycle (GB/s @ 1GHz))\n",
        },
        {
          title = "Front-end bottlenecks",
          txt = "Performance is limited by instruction throughput (loading/decoding program instructions to execution core) (front-end is a bottleneck).\n\nBy removing all these bottlenecks, you can lower the cost of an iteration from 13.00 to 11.00 cycles (1.18x speedup).\n",
        },
        {
          title = "ASM code",
          txt = "In the binary file, the address of the loop is: 25f70\n\nInstruction                 | Nb FU | P0 | P1 | P2 | P3 | P4   | P5   | P6 | Latency | Recip. throughput\n--------------------------------------------------------------------------------------------------------\nMOV 0x50(%RSP),%RAX         | 1     | 0  | 0  | 1  | 0  | 0    | 0    | 0  | 4       | 1\nMOV 0x48(%RSP),%RSI         | 1     | 0  | 0  | 1  | 0  | 0    | 0    | 0  | 4       | 1\nMOV 0x40(%RSP),%R8          | 1     | 0  | 0  | 1  | 0  | 0    | 0    | 0  | 4       | 1\nLEA (%RAX,%R12,1),%R15      | 1     | 0  | 0  | 0  | 0  | 0.50 | 0.50 | 0  | 1       | 0.50\nMOV 0x58(%RSP),%RAX         | 1     | 0  | 0  | 1  | 0  | 0    | 0    | 0  | 4       | 1\nADD %R12,%R8                | 1     | 0  | 0  | 0  | 0  | 0.50 | 0.50 | 0  | 1       | 0.50\nLEA (%R15,%RSI,1),%R14      | 1     | 0  | 0  | 0  | 0  | 0.50 | 0.50 | 0  | 1       | 0.50\nMOV 0x68(%RSP),%RSI         | 1     | 0  | 0  | 1  | 0  | 0    | 0    | 0  | 4       | 1\nLEA (%RAX,%R12,1),%RDI      | 1     | 0  | 0  | 0  | 0  | 0.50 | 0.50 | 0  | 1       | 0.50\nMOV 0x80(%RSP),%RAX         | 1     | 0  | 0  | 1  | 0  | 0    | 0    | 0  | 4       | 1\nSUB %R14,%R8                | 1     | 0  | 0  | 0  | 0  | 0.50 | 0.50 | 0  | 1       | 0.50\nLEA (%RSI,%R14,1),%RDX      | 1     | 0  | 0  | 0  | 0  | 0.50 | 0.50 | 0  | 1       | 0.50\nMOV 0x70(%RSP),%RSI         | 1     | 0  | 0  | 1  | 0  | 0    | 0    | 0  | 4       | 1\nSUB %R15,%RDI               | 1     | 0  | 0  | 0  | 0  | 0.50 | 0.50 | 0  | 1       | 0.50\nADD %R10,%RAX               | 1     | 0  | 0  | 0  | 0  | 0.50 | 0.50 | 0  | 1       | 0.50\nLEA -0x20(%R13,%RDX,8),%RCX | 1     | 0  | 0  | 0  | 0  | 1    | 0    | 0  | 1       | 1\nLEA (%RSI,%R10,1),%RDX      | 1     | 0  | 0  | 0  | 0  | 0.50 | 0.50 | 0  | 1       | 0.50\nMOV 0x78(%RSP),%RSI         | 1     | 0  | 0  | 1  | 0  | 0    | 0    | 0  | 4       | 1\nLEA (%RSI,%R10,1),%R9       | 1     | 0  | 0  | 0  | 0  | 0.50 | 0.50 | 0  | 1       | 0.50\nMOV %R10,%RSI               | 1     | 0  | 0  | 0  | 0  | 0.50 | 0.50 | 0  | 0       | 0.50\nNOPW (%RAX,%RAX,1)          | 1     | 0  | 0  | 0  | 0  | 0.50 | 0.50 | 0  | 0       | 0.50\nADD $0x1,%R11D              | 1     | 0  | 0  | 0  | 0  | 0.50 | 0.50 | 0  | 1       | 0.50\nADD 0x60(%RSP),%R10         | 1     | 0  | 0  | 1  | 0  | 0.50 | 0.50 | 0  | 1       | 1\nADD 0x38(%RSP),%R12         | 1     | 0  | 0  | 1  | 0  | 0.50 | 0.50 | 0  | 1       | 1\nCMP 0x8c(%RSP),%R11D        | 1     | 0  | 0  | 1  | 0  | 0.50 | 0.50 | 0  | 1       | 1\nJNE 25f70 <blts_+0x4d0>     | 1     | 0  | 0  | 0  | 0  | 0    | 1    | 0  | 0       | 1-2\n",
        },
      },
      header = {
        "0% of peak computational performance is used (0.00 out of 4.00 FLOP per cycle (GFLOPS @ 1GHz))",
      },
      brief = {
      },
      gain = {
        {
          workaround = " - Try another compiler or update/tune your current one:\n  * recompile with fassociative-math (included in Ofast or ffast-math) to extend loop vectorization to FP reductions.\n - Remove inter-iterations dependences from your loop and make it unit-stride:\n  * If your arrays have 2 or more dimensions, check whether elements are accessed contiguously and, otherwise, try to permute loops accordingly:\nFortran storage order is column-major: do i do j a(i,j) = b(i,j) (slow, non stride 1) => do i do j a(j,i) = b(i,j) (fast, stride 1)\n  * If your loop streams arrays of structures (AoS), try to use structures of arrays instead (SoA):\ndo i a(i)%x = b(i)%x (slow, non stride 1) => do i a%x(i) = b%x(i) (fast, stride 1)\n",
          details = "All SSE/AVX instructions are used in scalar version (process only one data element in vector registers).\nSince your execution units are vector units, only a vectorized loop can use their full power.\n",
          title = "Vectorization",
          txt = "Your loop is not vectorized.\n8 data elements could be processed at once in vector registers.\nBy vectorizing your loop, you can lower the cost of an iteration from 13.00 to 1.62 cycles (8.00x speedup).",
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
      "The loop is defined in /home/arezki/Téléchargements/NPB3.4.1-MZ/NPB3.4-MZ-MPI/LU-MZ/blts.f90:57,70,87-195,201-219,225-227.\n",
      "Warnings:\nget_cqa_results:\n - Non-innermost loop: analyzing only self part (ignoring child loops).\n",
    },
    nb_paths = 1,
  },
}
