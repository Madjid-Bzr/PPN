_cqa_text_report = {
  paths = {
    {
      hint = {
        {
          workaround = " - Try to reorganize arrays of structures to structures of arrays\n - Consider to permute loops (see vectorization gain report)\n",
          details = " - Constant unknown stride: 8 occurrence(s)\nNon-unit stride (uncontiguous) accesses are not efficiently using data caches\n",
          title = "Slow data structures access",
          txt = "Detected data structures (typically arrays) that cannot be efficiently read/written",
        },
        {
          title = "Type of elements and instruction set",
          txt = "No instructions are processing arithmetic or math operations on FP elements. This loop is probably writing/copying data or processing integer elements.",
        },
        {
          title = "Matching between your loop (in the source code) and the binary loop",
          txt = "The binary loop does not contain any FP arithmetical operations.\nThe binary loop is loading 100 bytes.",
        },
      },
      expert = {
        {
          title = "General properties",
          txt = "nb instructions    : 37\nloop length        : 153\nused x86 registers : 13\nused mmx registers : 0\nused xmm registers : 0\nused ymm registers : 0\nused zmm registers : 0\nnb stack references: 13\n",
        },
        {
          title = "Front-end",
          txt = "MACRO FUSION NOT POSSIBLE\ninstruction fetch    : 10.00 cycles\ninstruction queue    : 18.50 cycles\ndecoding             : 18.50 cycles\nmicro-operation queue: 19.00 cycles\nfront end            : 19.00 cycles\n",
        },
        {
          title = "Back-end",
          txt = "       | P0   | P1   | P2    | P3   | P4    | P5    | P6\n----------------------------------------------------------\nuops   | 0.00 | 0.00 | 13.00 | 0.00 | 14.00 | 14.00 | 0.00\ncycles | 0.00 | 0.00 | 13.00 | 0.00 | 14.00 | 14.00 | 0.00\n\nCycles executing div or sqrt instructions: NA\nLongest recurrence chain latency (RecMII): 1.00\n",
        },
        {
          title = "Cycles summary",
          txt = "Front-end : 19.00\nDispatch  : 14.00\nData deps.: 1.00\nOverall L1: 19.00\n",
        },
        {
          title = "Vectorization ratios",
          txt = "all     : 0%\nload    : 0%\nstore   : NA (no store vectorizable/vectorized instructions)\nmul     : NA (no mul vectorizable/vectorized instructions)\nadd-sub : 0%\nfma     : NA (no fma vectorizable/vectorized instructions)\ndiv/sqrt: NA (no div/sqrt vectorizable/vectorized instructions)\nother   : 0%\n",
        },
        {
          title = "Vector efficiency ratios",
          txt = "all     : 12%\nload    : 12%\nstore   : NA (no store vectorizable/vectorized instructions)\nmul     : NA (no mul vectorizable/vectorized instructions)\nadd-sub : 12%\nfma     : NA (no fma vectorizable/vectorized instructions)\ndiv/sqrt: NA (no div/sqrt vectorizable/vectorized instructions)\nother   : 12%\n",
        },
        {
          title = "Cycles and memory resources usage",
          txt = "Assuming all data fit into the L1 cache, each iteration of the binary loop takes 19.00 cycles. At this rate:\n - 4% of peak load performance is reached (5.26 out of 128.00 bytes loaded per cycle (GB/s @ 1GHz))\n",
        },
        {
          title = "Front-end bottlenecks",
          txt = "Performance is limited by instruction throughput (loading/decoding program instructions to execution core) (front-end is a bottleneck).\n",
        },
        {
          title = "ASM code",
          txt = "In the binary file, the address of the loop is: 25f30\n\nInstruction             | Nb FU | P0 | P1 | P2 | P3 | P4   | P5   | P6 | Latency | Recip. throughput\n----------------------------------------------------------------------------------------------------\nMOV 0x20(%RSP),%RDX     | 1     | 0  | 0  | 1  | 0  | 0    | 0    | 0  | 4       | 1\nMOV 0x48(%RSP),%RAX     | 1     | 0  | 0  | 1  | 0  | 0    | 0    | 0  | 4       | 1\nMOV 0x60(%RSP),%RDI     | 1     | 0  | 0  | 1  | 0  | 0    | 0    | 0  | 4       | 1\nMOV 0x50(%RSP),%R14     | 1     | 0  | 0  | 1  | 0  | 0    | 0    | 0  | 4       | 1\nMOV %RDX,%R9            | 1     | 0  | 0  | 0  | 0  | 0.50 | 0.50 | 0  | 0       | 0.50\nMOV 0x38(%RSP),%RDX     | 1     | 0  | 0  | 1  | 0  | 0    | 0    | 0  | 4       | 1\nADD %R12,%RAX           | 1     | 0  | 0  | 0  | 0  | 0.50 | 0.50 | 0  | 1       | 0.50\nMOV 0x18(%RSP),%R10     | 1     | 0  | 0  | 1  | 0  | 0    | 0    | 0  | 4       | 1\nADD %RDI,%RAX           | 1     | 0  | 0  | 0  | 0  | 0.50 | 0.50 | 0  | 1       | 0.50\nADD %RAX,%R9            | 1     | 0  | 0  | 0  | 0  | 0.50 | 0.50 | 0  | 1       | 0.50\nADD %R12,%R14           | 1     | 0  | 0  | 0  | 0  | 0.50 | 0.50 | 0  | 1       | 0.50\nADD 0x30(%RSP),%RAX     | 1     | 0  | 0  | 1  | 0  | 0.50 | 0.50 | 0  | 1       | 1\nADD %RDI,%R14           | 1     | 0  | 0  | 0  | 0  | 0.50 | 0.50 | 0  | 1       | 0.50\nMOV 0x28(%RSP),%RSI     | 1     | 0  | 0  | 1  | 0  | 0    | 0    | 0  | 4       | 1\nLEA (%RDX),%R11         | 1     | 0  | 0  | 0  | 0  | 0.50 | 0.50 | 0  | 1       | 0.50\nMOV 0x40(%RSP),%RDI     | 1     | 0  | 0  | 1  | 0  | 0    | 0    | 0  | 4       | 1\nADD %R14,%R11           | 1     | 0  | 0  | 0  | 0  | 0.50 | 0.50 | 0  | 1       | 0.50\nSAL $0x3,%R9            | 1     | 0  | 0  | 0  | 0  | 1    | 0    | 0  | 1       | 1\nMOV %R11,%RDX           | 1     | 0  | 0  | 0  | 0  | 0.50 | 0.50 | 0  | 0       | 0.50\nLEA (%RAX),%R11         | 1     | 0  | 0  | 0  | 0  | 0.50 | 0.50 | 0  | 1       | 0.50\nADD %R8,%R9             | 1     | 0  | 0  | 0  | 0  | 0.50 | 0.50 | 0  | 1       | 0.50\nSAL $0x3,%R11           | 1     | 0  | 0  | 0  | 0  | 1    | 0    | 0  | 1       | 1\nADD %R13,%RDI           | 1     | 0  | 0  | 0  | 0  | 0.50 | 0.50 | 0  | 1       | 0.50\nADD %R10,%R11           | 1     | 0  | 0  | 0  | 0  | 0.50 | 0.50 | 0  | 1       | 0.50\nADD %R13,%RSI           | 1     | 0  | 0  | 0  | 0  | 0.50 | 0.50 | 0  | 1       | 0.50\nMOV 0x68(%RSP),%R10     | 1     | 0  | 0  | 1  | 0  | 0    | 0    | 0  | 4       | 1\nLEA (%R13),%RAX         | 1     | 0  | 0  | 0  | 0  | 0.50 | 0.50 | 0  | 1       | 0.50\nSAL $0x3,%RDX           | 1     | 0  | 0  | 0  | 0  | 1    | 0    | 0  | 1       | 1\nADD %R8,%RDX            | 1     | 0  | 0  | 0  | 0  | 0.50 | 0.50 | 0  | 1       | 0.50\nADD %R12,%R10           | 1     | 0  | 0  | 0  | 0  | 0.50 | 0.50 | 0  | 1       | 0.50\nSUB %R14,%R10           | 1     | 0  | 0  | 0  | 0  | 0.50 | 0.50 | 0  | 1       | 0.50\nNOPW %CS:(%RAX,%RAX,1)  | 1     | 0  | 0  | 0  | 0  | 0.50 | 0.50 | 0  | 0       | 0.50\nLEA 0x1(%R15),%R15D     | 1     | 0  | 0  | 0  | 0  | 0.50 | 0.50 | 0  | 1       | 0.50\nADD 0x58(%RSP),%R13     | 1     | 0  | 0  | 1  | 0  | 0.50 | 0.50 | 0  | 1       | 1\nADD 0x78(%RSP),%R12     | 1     | 0  | 0  | 1  | 0  | 0.50 | 0.50 | 0  | 1       | 1\nCMP 0x74(%RSP),%R15D    | 1     | 0  | 0  | 1  | 0  | 0.50 | 0.50 | 0  | 1       | 1\nJNE 25f30 <blts_+0x480> | 1     | 0  | 0  | 0  | 0  | 0    | 1    | 0  | 0       | 1-2\n",
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
          txt = "Your loop is not vectorized.\n8 data elements could be processed at once in vector registers.\nBy vectorizing your loop, you can lower the cost of an iteration from 19.00 to 2.37 cycles (8.00x speedup).",
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
          details = " - Constant unknown stride: 8 occurrence(s)\nNon-unit stride (uncontiguous) accesses are not efficiently using data caches\n",
          title = "Slow data structures access",
          txt = "Detected data structures (typically arrays) that cannot be efficiently read/written",
        },
        {
          title = "Type of elements and instruction set",
          txt = "No instructions are processing arithmetic or math operations on FP elements. This loop is probably writing/copying data or processing integer elements.",
        },
        {
          title = "Matching between your loop (in the source code) and the binary loop",
          txt = "The binary loop does not contain any FP arithmetical operations.\nThe binary loop is loading 100 bytes.",
        },
      },
      expert = {
        {
          title = "General properties",
          txt = "nb instructions    : 37\nloop length        : 153\nused x86 registers : 13\nused mmx registers : 0\nused xmm registers : 0\nused ymm registers : 0\nused zmm registers : 0\nnb stack references: 13\n",
        },
        {
          title = "Front-end",
          txt = "MACRO FUSION NOT POSSIBLE\ninstruction fetch    : 10.00 cycles\ninstruction queue    : 18.50 cycles\ndecoding             : 18.50 cycles\nmicro-operation queue: 19.00 cycles\nfront end            : 19.00 cycles\n",
        },
        {
          title = "Back-end",
          txt = "       | P0   | P1   | P2    | P3   | P4    | P5    | P6\n----------------------------------------------------------\nuops   | 0.00 | 0.00 | 13.00 | 0.00 | 14.00 | 14.00 | 0.00\ncycles | 0.00 | 0.00 | 13.00 | 0.00 | 14.00 | 14.00 | 0.00\n\nCycles executing div or sqrt instructions: NA\nLongest recurrence chain latency (RecMII): 1.00\n",
        },
        {
          title = "Cycles summary",
          txt = "Front-end : 19.00\nDispatch  : 14.00\nData deps.: 1.00\nOverall L1: 19.00\n",
        },
        {
          title = "Vectorization ratios",
          txt = "all     : 0%\nload    : 0%\nstore   : NA (no store vectorizable/vectorized instructions)\nmul     : NA (no mul vectorizable/vectorized instructions)\nadd-sub : 0%\nfma     : NA (no fma vectorizable/vectorized instructions)\ndiv/sqrt: NA (no div/sqrt vectorizable/vectorized instructions)\nother   : 0%\n",
        },
        {
          title = "Vector efficiency ratios",
          txt = "all     : 12%\nload    : 12%\nstore   : NA (no store vectorizable/vectorized instructions)\nmul     : NA (no mul vectorizable/vectorized instructions)\nadd-sub : 12%\nfma     : NA (no fma vectorizable/vectorized instructions)\ndiv/sqrt: NA (no div/sqrt vectorizable/vectorized instructions)\nother   : 12%\n",
        },
        {
          title = "Cycles and memory resources usage",
          txt = "Assuming all data fit into the L1 cache, each iteration of the binary loop takes 19.00 cycles. At this rate:\n - 4% of peak load performance is reached (5.26 out of 128.00 bytes loaded per cycle (GB/s @ 1GHz))\n",
        },
        {
          title = "Front-end bottlenecks",
          txt = "Performance is limited by instruction throughput (loading/decoding program instructions to execution core) (front-end is a bottleneck).\n",
        },
        {
          title = "ASM code",
          txt = "In the binary file, the address of the loop is: 25f30\n\nInstruction             | Nb FU | P0 | P1 | P2 | P3 | P4   | P5   | P6 | Latency | Recip. throughput\n----------------------------------------------------------------------------------------------------\nMOV 0x20(%RSP),%RDX     | 1     | 0  | 0  | 1  | 0  | 0    | 0    | 0  | 4       | 1\nMOV 0x48(%RSP),%RAX     | 1     | 0  | 0  | 1  | 0  | 0    | 0    | 0  | 4       | 1\nMOV 0x60(%RSP),%RDI     | 1     | 0  | 0  | 1  | 0  | 0    | 0    | 0  | 4       | 1\nMOV 0x50(%RSP),%R14     | 1     | 0  | 0  | 1  | 0  | 0    | 0    | 0  | 4       | 1\nMOV %RDX,%R9            | 1     | 0  | 0  | 0  | 0  | 0.50 | 0.50 | 0  | 0       | 0.50\nMOV 0x38(%RSP),%RDX     | 1     | 0  | 0  | 1  | 0  | 0    | 0    | 0  | 4       | 1\nADD %R12,%RAX           | 1     | 0  | 0  | 0  | 0  | 0.50 | 0.50 | 0  | 1       | 0.50\nMOV 0x18(%RSP),%R10     | 1     | 0  | 0  | 1  | 0  | 0    | 0    | 0  | 4       | 1\nADD %RDI,%RAX           | 1     | 0  | 0  | 0  | 0  | 0.50 | 0.50 | 0  | 1       | 0.50\nADD %RAX,%R9            | 1     | 0  | 0  | 0  | 0  | 0.50 | 0.50 | 0  | 1       | 0.50\nADD %R12,%R14           | 1     | 0  | 0  | 0  | 0  | 0.50 | 0.50 | 0  | 1       | 0.50\nADD 0x30(%RSP),%RAX     | 1     | 0  | 0  | 1  | 0  | 0.50 | 0.50 | 0  | 1       | 1\nADD %RDI,%R14           | 1     | 0  | 0  | 0  | 0  | 0.50 | 0.50 | 0  | 1       | 0.50\nMOV 0x28(%RSP),%RSI     | 1     | 0  | 0  | 1  | 0  | 0    | 0    | 0  | 4       | 1\nLEA (%RDX),%R11         | 1     | 0  | 0  | 0  | 0  | 0.50 | 0.50 | 0  | 1       | 0.50\nMOV 0x40(%RSP),%RDI     | 1     | 0  | 0  | 1  | 0  | 0    | 0    | 0  | 4       | 1\nADD %R14,%R11           | 1     | 0  | 0  | 0  | 0  | 0.50 | 0.50 | 0  | 1       | 0.50\nSAL $0x3,%R9            | 1     | 0  | 0  | 0  | 0  | 1    | 0    | 0  | 1       | 1\nMOV %R11,%RDX           | 1     | 0  | 0  | 0  | 0  | 0.50 | 0.50 | 0  | 0       | 0.50\nLEA (%RAX),%R11         | 1     | 0  | 0  | 0  | 0  | 0.50 | 0.50 | 0  | 1       | 0.50\nADD %R8,%R9             | 1     | 0  | 0  | 0  | 0  | 0.50 | 0.50 | 0  | 1       | 0.50\nSAL $0x3,%R11           | 1     | 0  | 0  | 0  | 0  | 1    | 0    | 0  | 1       | 1\nADD %R13,%RDI           | 1     | 0  | 0  | 0  | 0  | 0.50 | 0.50 | 0  | 1       | 0.50\nADD %R10,%R11           | 1     | 0  | 0  | 0  | 0  | 0.50 | 0.50 | 0  | 1       | 0.50\nADD %R13,%RSI           | 1     | 0  | 0  | 0  | 0  | 0.50 | 0.50 | 0  | 1       | 0.50\nMOV 0x68(%RSP),%R10     | 1     | 0  | 0  | 1  | 0  | 0    | 0    | 0  | 4       | 1\nLEA (%R13),%RAX         | 1     | 0  | 0  | 0  | 0  | 0.50 | 0.50 | 0  | 1       | 0.50\nSAL $0x3,%RDX           | 1     | 0  | 0  | 0  | 0  | 1    | 0    | 0  | 1       | 1\nADD %R8,%RDX            | 1     | 0  | 0  | 0  | 0  | 0.50 | 0.50 | 0  | 1       | 0.50\nADD %R12,%R10           | 1     | 0  | 0  | 0  | 0  | 0.50 | 0.50 | 0  | 1       | 0.50\nSUB %R14,%R10           | 1     | 0  | 0  | 0  | 0  | 0.50 | 0.50 | 0  | 1       | 0.50\nNOPW %CS:(%RAX,%RAX,1)  | 1     | 0  | 0  | 0  | 0  | 0.50 | 0.50 | 0  | 0       | 0.50\nLEA 0x1(%R15),%R15D     | 1     | 0  | 0  | 0  | 0  | 0.50 | 0.50 | 0  | 1       | 0.50\nADD 0x58(%RSP),%R13     | 1     | 0  | 0  | 1  | 0  | 0.50 | 0.50 | 0  | 1       | 1\nADD 0x78(%RSP),%R12     | 1     | 0  | 0  | 1  | 0  | 0.50 | 0.50 | 0  | 1       | 1\nCMP 0x74(%RSP),%R15D    | 1     | 0  | 0  | 1  | 0  | 0.50 | 0.50 | 0  | 1       | 1\nJNE 25f30 <blts_+0x480> | 1     | 0  | 0  | 0  | 0  | 0    | 1    | 0  | 0       | 1-2\n",
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
          txt = "Your loop is not vectorized.\n8 data elements could be processed at once in vector registers.\nBy vectorizing your loop, you can lower the cost of an iteration from 19.00 to 2.37 cycles (8.00x speedup).",
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
      "The loop is defined in /users/user2210/NPB3.4-MZ-MPI/LU-MZ/blts.f90:57,70,80-195,201-219,225-227.\n",
      "Warnings:\nNon-innermost loop: analyzing only self part (ignoring child loops).",
    },
    nb_paths = 1,
  },
}
