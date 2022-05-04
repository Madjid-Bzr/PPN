_cqa_text_report = {
  paths = {
    {
      hint = {
        {
          title = "Type of elements and instruction set",
          txt = "No instructions are processing arithmetic or math operations on FP elements. This loop is probably writing/copying data or processing integer elements.",
        },
        {
          title = "Matching between your loop (in the source code) and the binary loop",
          txt = "The binary loop does not contain any FP arithmetical operations.\nThe binary loop is loading 4 bytes.",
        },
        {
          workaround = "Unroll your loop if trip count is significantly higher than target unroll factor. This can be done manually. Or by recompiling with -funroll-loops and/or -floop-unroll-and-jam.",
          title = "Unroll opportunity",
          txt = "Loop body is too small to efficiently use resources.",
        },
      },
      expert = {
        {
          title = "General properties",
          txt = "nb instructions    : 3\nloop length        : 8\nused x86 registers : 3\nused mmx registers : 0\nused xmm registers : 0\nused ymm registers : 0\nused zmm registers : 0\nnb stack references: 0\n",
        },
        {
          title = "Front-end",
          txt = "MACRO FUSION NOT POSSIBLE\ninstruction fetch    : 1.00 cycles\ninstruction queue    : 1.50 cycles\ndecoding             : 1.50 cycles\nmicro-operation queue: 2.00 cycles\nfront end            : 2.00 cycles\n",
        },
        {
          title = "Back-end",
          txt = "       | P0   | P1   | P2   | P3   | P4   | P5   | P6\n-------------------------------------------------------\nuops   | 0.00 | 0.00 | 1.00 | 0.00 | 1.00 | 1.00 | 0.00\ncycles | 0.00 | 0.00 | 1.00 | 0.00 | 1.00 | 1.00 | 0.00\n\nCycles executing div or sqrt instructions: NA\nLongest recurrence chain latency (RecMII): 0.00\n",
        },
        {
          title = "Cycles summary",
          txt = "Front-end : 2.00\nDispatch  : 1.00\nData deps.: 0.00\nOverall L1: 2.00\n",
        },
        {
          title = "Vectorization ratios",
          txt = "No vectorizable/vectorized instructions\n",
        },
        {
          title = "Vector efficiency ratios",
          txt = "No vectorizable/vectorized instructions\n",
        },
        {
          title = "Cycles and memory resources usage",
          txt = "Assuming all data fit into the L1 cache, each iteration of the binary loop takes 2.00 cycles. At this rate:\n - 1% of peak load performance is reached (2.00 out of 128.00 bytes loaded per cycle (GB/s @ 1GHz))\n",
        },
        {
          title = "Front-end bottlenecks",
          txt = "Performance is limited by instruction throughput (loading/decoding program instructions to execution core) (front-end is a bottleneck).\n\nBy removing all these bottlenecks, you can lower the cost of an iteration from 2.00 to 1.50 cycles (1.33x speedup).\n",
        },
        {
          title = "ASM code",
          txt = "In the binary file, the address of the loop is: 2cd20\n\nInstruction                 | Nb FU | P0 | P1 | P2 | P3 | P4   | P5   | P6 | Latency | Recip. throughput\n--------------------------------------------------------------------------------------------------------\nMOV (%RCX,%RDX,4),%EAX      | 1     | 0  | 0  | 1  | 0  | 0    | 0    | 0  | 4       | 1\nCMP $0x1,%EAX               | 1     | 0  | 0  | 0  | 0  | 0.50 | 0.50 | 0  | 1       | 0.50\nJE 2cd20 <sync_right_+0x30> | 1     | 0  | 0  | 0  | 0  | 0    | 1    | 0  | 0       | 1-2\n",
        },
      },
      header = {
        "0% of peak computational performance is used (0.00 out of 4.00 FLOP per cycle (GFLOPS @ 1GHz))",
      },
      brief = {
      },
      gain = {
        {
          details = "No SSE/AVX instruction: only general purpose registers are used and data elements are processed one at a time.\n",
          title = "Vectorization",
          txt = "Your loop is not vectorized.\n",
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
          txt = "The binary loop does not contain any FP arithmetical operations.\nThe binary loop is loading 4 bytes.",
        },
        {
          workaround = "Unroll your loop if trip count is significantly higher than target unroll factor. This can be done manually. Or by recompiling with -funroll-loops and/or -floop-unroll-and-jam.",
          title = "Unroll opportunity",
          txt = "Loop body is too small to efficiently use resources.",
        },
      },
      expert = {
        {
          title = "General properties",
          txt = "nb instructions    : 3\nloop length        : 8\nused x86 registers : 3\nused mmx registers : 0\nused xmm registers : 0\nused ymm registers : 0\nused zmm registers : 0\nnb stack references: 0\n",
        },
        {
          title = "Front-end",
          txt = "MACRO FUSION NOT POSSIBLE\ninstruction fetch    : 1.00 cycles\ninstruction queue    : 1.50 cycles\ndecoding             : 1.50 cycles\nmicro-operation queue: 2.00 cycles\nfront end            : 2.00 cycles\n",
        },
        {
          title = "Back-end",
          txt = "       | P0   | P1   | P2   | P3   | P4   | P5   | P6\n-------------------------------------------------------\nuops   | 0.00 | 0.00 | 1.00 | 0.00 | 1.00 | 1.00 | 0.00\ncycles | 0.00 | 0.00 | 1.00 | 0.00 | 1.00 | 1.00 | 0.00\n\nCycles executing div or sqrt instructions: NA\nLongest recurrence chain latency (RecMII): 0.00\n",
        },
        {
          title = "Cycles summary",
          txt = "Front-end : 2.00\nDispatch  : 1.00\nData deps.: 0.00\nOverall L1: 2.00\n",
        },
        {
          title = "Vectorization ratios",
          txt = "No vectorizable/vectorized instructions\n",
        },
        {
          title = "Vector efficiency ratios",
          txt = "No vectorizable/vectorized instructions\n",
        },
        {
          title = "Cycles and memory resources usage",
          txt = "Assuming all data fit into the L1 cache, each iteration of the binary loop takes 2.00 cycles. At this rate:\n - 1% of peak load performance is reached (2.00 out of 128.00 bytes loaded per cycle (GB/s @ 1GHz))\n",
        },
        {
          title = "Front-end bottlenecks",
          txt = "Performance is limited by instruction throughput (loading/decoding program instructions to execution core) (front-end is a bottleneck).\n\nBy removing all these bottlenecks, you can lower the cost of an iteration from 2.00 to 1.50 cycles (1.33x speedup).\n",
        },
        {
          title = "ASM code",
          txt = "In the binary file, the address of the loop is: 2cd20\n\nInstruction                 | Nb FU | P0 | P1 | P2 | P3 | P4   | P5   | P6 | Latency | Recip. throughput\n--------------------------------------------------------------------------------------------------------\nMOV (%RCX,%RDX,4),%EAX      | 1     | 0  | 0  | 1  | 0  | 0    | 0    | 0  | 4       | 1\nCMP $0x1,%EAX               | 1     | 0  | 0  | 0  | 0  | 0.50 | 0.50 | 0  | 1       | 0.50\nJE 2cd20 <sync_right_+0x30> | 1     | 0  | 0  | 0  | 0  | 0    | 1    | 0  | 0       | 1-2\n",
        },
      },
      header = {
        "0% of peak computational performance is used (0.00 out of 4.00 FLOP per cycle (GFLOPS @ 1GHz))",
      },
      brief = {
      },
      gain = {
        {
          details = "No SSE/AVX instruction: only general purpose registers are used and data elements are processed one at a time.\n",
          title = "Vectorization",
          txt = "Your loop is not vectorized.\n",
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
      "The loop is defined in /users/user2222/NPB3.4.1-MZ/NPB3.4-MZ-MPI/LU-MZ/syncs.f90:113-115.\n",
      "The related source loop is not unrolled or unrolled with no peel/tail loop.",
    },
    nb_paths = 1,
  },
}
