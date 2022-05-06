_cqa_text_report = {
  paths = {
    {
      hint = {
        {
          title = "Type of elements and instruction set",
          txt = "No instructions are processing arithmetic or math operations on FP elements. This function is probably writing/copying data or processing integer elements.",
        },
        {
          title = "Matching between your function (in the source code) and the binary function",
          txt = "The binary function does not contain any FP arithmetical operations.\nThe binary function is storing 12 bytes.",
        },
      },
      expert = {
        {
          title = "General properties",
          txt = "nb instructions    : 10\nnb uops            : 9\nloop length        : 25\nused x86 registers : 3\nused mmx registers : 0\nused xmm registers : 0\nused ymm registers : 0\nused zmm registers : 0\nnb stack references: 2\n",
        },
        {
          title = "Front-end",
          txt = "MACRO FUSION NOT POSSIBLE\nFIT IN UOP CACHE\nmicro-operation queue: 1.80 cycles\nfront end            : 1.80 cycles\n",
        },
        {
          title = "Back-end",
          txt = "       | P0   | P1   | P2   | P3   | P4   | P5   | P6   | P7   | P8   | P9\n----------------------------------------------------------------------------\nuops   | 0.00 | 0.00 | 0.50 | 0.50 | 1.50 | 0.00 | 2.00 | 2.00 | 2.00 | 1.50\ncycles | 0.00 | 0.00 | 0.50 | 0.50 | 1.50 | 0.00 | 2.00 | 2.00 | 2.00 | 1.50\n\nCycles executing div or sqrt instructions: NA\n",
        },
        {
          title = "Cycles summary",
          txt = "Front-end : 1.80\nDispatch  : 2.00\nOverall L1: 2.00\n",
        },
        {
          title = "Vectorization ratios",
          txt = "all     : 0%\nload    : NA (no load vectorizable/vectorized instructions)\nstore   : 0%\nmul     : NA (no mul vectorizable/vectorized instructions)\nadd-sub : NA (no add-sub vectorizable/vectorized instructions)\nfma     : NA (no fma vectorizable/vectorized instructions)\ndiv/sqrt: NA (no div/sqrt vectorizable/vectorized instructions)\nother   : 0%\n",
        },
        {
          title = "Vector efficiency ratios",
          txt = "all     : 8%\nload    : NA (no load vectorizable/vectorized instructions)\nstore   : 6%\nmul     : NA (no mul vectorizable/vectorized instructions)\nadd-sub : NA (no add-sub vectorizable/vectorized instructions)\nfma     : NA (no fma vectorizable/vectorized instructions)\ndiv/sqrt: NA (no div/sqrt vectorizable/vectorized instructions)\nother   : 12%\n",
        },
        {
          title = "Cycles and memory resources usage",
          txt = "Assuming all data fit into the L1 cache, each call to the function takes 2.00 cycles. At this rate:\n - 9% of peak store performance is reached (6.00 out of 64.00 bytes stored per cycle (GB/s @ 1GHz))\n",
        },
        {
          title = "Front-end bottlenecks",
          txt = "Found no such bottlenecks.",
        },
        {
          title = "ASM code",
          txt = "In the binary file, the address of the function is: 307e\n\nInstruction                  | Nb FU | P0 | P1 | P2   | P3   | P4   | P5 | P6 | P7   | P8   | P9   | Latency | Recip. throughput\n--------------------------------------------------------------------------------------------------------------------------------\nENDBR64\nPUSH %RBP                    | 1     | 0  | 0  | 0    | 0    | 0.50 | 0  | 0  | 0.50 | 0.50 | 0.50 | 3       | 0.50\nMOV %RSP,%RBP                | 1     | 0  | 0  | 0    | 0    | 0    | 0  | 0  | 0    | 0    | 0    | 0       | 0.25\nMOV %EDI,-0x14(%RBP)         | 1     | 0  | 0  | 0    | 0    | 0.50 | 0  | 0  | 0.50 | 0.50 | 0.50 | 3       | 0.50\nMOVQ $0,-0x8(%RBP)           | 1     | 0  | 0  | 0    | 0    | 0.50 | 0  | 0  | 0.50 | 0.50 | 0.50 | 2       | 0.50\nJMP 30ce <init_sbuffer+0x50> | 1     | 0  | 0  | 0    | 0    | 0    | 0  | 1  | 0    | 0    | 0    | 0       | 1-2\nNOP                          | 1     | 0  | 0  | 0    | 0    | 0    | 0  | 0  | 0    | 0    | 0    | 0       | 0.25\nNOP                          | 1     | 0  | 0  | 0    | 0    | 0    | 0  | 0  | 0    | 0    | 0    | 0       | 0.25\nPOP %RBP                     | 1     | 0  | 0  | 0.50 | 0.50 | 0    | 0  | 0  | 0    | 0    | 0    | 2       | 0.50\nRET                          | 1     | 0  | 0  | 0    | 0    | 0    | 0  | 1  | 0.50 | 0.50 | 0    | 0       | 1\n",
        },
      },
      header = {
        "Warnings:\nThe number of fused uops of the instruction [ENDBR64] is unknown",
        "0% of peak computational performance is used (0.00 out of 4.00 FLOP per cycle (GFLOPS @ 1GHz))",
      },
      brief = {
      },
      gain = {
        {
          workaround = " - Try another compiler or update/tune your current one\n - Make array accesses unit-stride:\n  * If your function streams arrays of structures (AoS), try to use structures of arrays instead (SoA)\n",
          details = "All SSE/AVX instructions are used in scalar version (process only one data element in vector registers).\nSince your execution units are vector units, only a vectorized function can use their full power.\n",
          title = "Vectorization",
          txt = "Your function is not vectorized.\nOnly 8% of vector register length is used (average across all SSE/AVX instructions).\nBy vectorizing your function, you can lower the cost of an iteration from 2.00 to 0.12 cycles (16.00x speedup).",
        },
        {
          workaround = "Write less array elements",
          title = "Execution units bottlenecks",
          txt = "Performance is limited by writing data to caches/RAM (the store unit is a bottleneck).\n\nBy removing all these bottlenecks, you can lower the cost of an iteration from 2.00 to 1.80 cycles (1.11x speedup).\n",
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
          txt = "No instructions are processing arithmetic or math operations on FP elements. This function is probably writing/copying data or processing integer elements.",
        },
        {
          title = "Matching between your function (in the source code) and the binary function",
          txt = "The binary function does not contain any FP arithmetical operations.\nThe binary function is storing 12 bytes.",
        },
      },
      expert = {
        {
          title = "General properties",
          txt = "nb instructions    : 10\nnb uops            : 9\nloop length        : 25\nused x86 registers : 3\nused mmx registers : 0\nused xmm registers : 0\nused ymm registers : 0\nused zmm registers : 0\nnb stack references: 2\n",
        },
        {
          title = "Front-end",
          txt = "MACRO FUSION NOT POSSIBLE\nFIT IN UOP CACHE\nmicro-operation queue: 1.80 cycles\nfront end            : 1.80 cycles\n",
        },
        {
          title = "Back-end",
          txt = "       | P0   | P1   | P2   | P3   | P4   | P5   | P6   | P7   | P8   | P9\n----------------------------------------------------------------------------\nuops   | 0.00 | 0.00 | 0.50 | 0.50 | 1.50 | 0.00 | 2.00 | 2.00 | 2.00 | 1.50\ncycles | 0.00 | 0.00 | 0.50 | 0.50 | 1.50 | 0.00 | 2.00 | 2.00 | 2.00 | 1.50\n\nCycles executing div or sqrt instructions: NA\n",
        },
        {
          title = "Cycles summary",
          txt = "Front-end : 1.80\nDispatch  : 2.00\nOverall L1: 2.00\n",
        },
        {
          title = "Vectorization ratios",
          txt = "all     : 0%\nload    : NA (no load vectorizable/vectorized instructions)\nstore   : 0%\nmul     : NA (no mul vectorizable/vectorized instructions)\nadd-sub : NA (no add-sub vectorizable/vectorized instructions)\nfma     : NA (no fma vectorizable/vectorized instructions)\ndiv/sqrt: NA (no div/sqrt vectorizable/vectorized instructions)\nother   : 0%\n",
        },
        {
          title = "Vector efficiency ratios",
          txt = "all     : 8%\nload    : NA (no load vectorizable/vectorized instructions)\nstore   : 6%\nmul     : NA (no mul vectorizable/vectorized instructions)\nadd-sub : NA (no add-sub vectorizable/vectorized instructions)\nfma     : NA (no fma vectorizable/vectorized instructions)\ndiv/sqrt: NA (no div/sqrt vectorizable/vectorized instructions)\nother   : 12%\n",
        },
        {
          title = "Cycles and memory resources usage",
          txt = "Assuming all data fit into the L1 cache, each call to the function takes 2.00 cycles. At this rate:\n - 9% of peak store performance is reached (6.00 out of 64.00 bytes stored per cycle (GB/s @ 1GHz))\n",
        },
        {
          title = "Front-end bottlenecks",
          txt = "Found no such bottlenecks.",
        },
        {
          title = "ASM code",
          txt = "In the binary file, the address of the function is: 307e\n\nInstruction                  | Nb FU | P0 | P1 | P2   | P3   | P4   | P5 | P6 | P7   | P8   | P9   | Latency | Recip. throughput\n--------------------------------------------------------------------------------------------------------------------------------\nENDBR64\nPUSH %RBP                    | 1     | 0  | 0  | 0    | 0    | 0.50 | 0  | 0  | 0.50 | 0.50 | 0.50 | 3       | 0.50\nMOV %RSP,%RBP                | 1     | 0  | 0  | 0    | 0    | 0    | 0  | 0  | 0    | 0    | 0    | 0       | 0.25\nMOV %EDI,-0x14(%RBP)         | 1     | 0  | 0  | 0    | 0    | 0.50 | 0  | 0  | 0.50 | 0.50 | 0.50 | 3       | 0.50\nMOVQ $0,-0x8(%RBP)           | 1     | 0  | 0  | 0    | 0    | 0.50 | 0  | 0  | 0.50 | 0.50 | 0.50 | 2       | 0.50\nJMP 30ce <init_sbuffer+0x50> | 1     | 0  | 0  | 0    | 0    | 0    | 0  | 1  | 0    | 0    | 0    | 0       | 1-2\nNOP                          | 1     | 0  | 0  | 0    | 0    | 0    | 0  | 0  | 0    | 0    | 0    | 0       | 0.25\nNOP                          | 1     | 0  | 0  | 0    | 0    | 0    | 0  | 0  | 0    | 0    | 0    | 0       | 0.25\nPOP %RBP                     | 1     | 0  | 0  | 0.50 | 0.50 | 0    | 0  | 0  | 0    | 0    | 0    | 2       | 0.50\nRET                          | 1     | 0  | 0  | 0    | 0    | 0    | 0  | 1  | 0.50 | 0.50 | 0    | 0       | 1\n",
        },
      },
      header = {
        "Warnings:\nThe number of fused uops of the instruction [ENDBR64] is unknown",
        "0% of peak computational performance is used (0.00 out of 4.00 FLOP per cycle (GFLOPS @ 1GHz))",
      },
      brief = {
      },
      gain = {
        {
          workaround = " - Try another compiler or update/tune your current one\n - Make array accesses unit-stride:\n  * If your function streams arrays of structures (AoS), try to use structures of arrays instead (SoA)\n",
          details = "All SSE/AVX instructions are used in scalar version (process only one data element in vector registers).\nSince your execution units are vector units, only a vectorized function can use their full power.\n",
          title = "Vectorization",
          txt = "Your function is not vectorized.\nOnly 8% of vector register length is used (average across all SSE/AVX instructions).\nBy vectorizing your function, you can lower the cost of an iteration from 2.00 to 0.12 cycles (16.00x speedup).",
        },
        {
          workaround = "Write less array elements",
          title = "Execution units bottlenecks",
          txt = "Performance is limited by writing data to caches/RAM (the store unit is a bottleneck).\n\nBy removing all these bottlenecks, you can lower the cost of an iteration from 2.00 to 1.80 cycles (1.11x speedup).\n",
        },
      },
      potential = {
      },
    },
  common = {
    header = {
      "",
      "Warnings:\nIgnoring paths for analysis",
    },
  },
}
