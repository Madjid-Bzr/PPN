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
          txt = "The binary function does not contain any FP arithmetical operations.\nThe binary function is loading 48 bytes.\nThe binary function is storing 32 bytes.",
        },
      },
      expert = {
        {
          title = "General properties",
          txt = "nb instructions    : 32\nloop length        : 103\nused x86 registers : 11\nused mmx registers : 0\nused xmm registers : 0\nused ymm registers : 0\nused zmm registers : 0\nnb stack references: 10\n",
        },
        {
          title = "Front-end",
          txt = "MACRO FUSION NOT POSSIBLE\ninstruction fetch    : 7.00 cycles\ninstruction queue    : 16.00 cycles\ndecoding             : 16.00 cycles\nmicro-operation queue: 19.00 cycles\nfront end            : 19.00 cycles\n",
        },
        {
          title = "Back-end",
          txt = "       | P0   | P1   | P2   | P3   | P4   | P5   | P6\n--------------------------------------------------------\nuops   | 0.00 | 0.00 | 8.00 | 8.00 | 9.50 | 9.50 | 10.00\ncycles | 0.00 | 0.00 | 8.00 | 8.00 | 9.50 | 9.50 | 10.00\n\nCycles executing div or sqrt instructions: NA\n",
        },
        {
          title = "Cycles summary",
          txt = "Front-end : 19.00\nDispatch  : 10.00\nOverall L1: 19.00\n",
        },
        {
          title = "Vectorization ratios",
          txt = "all     : 0%\nload    : 0%\nstore   : 0%\nmul     : NA (no mul vectorizable/vectorized instructions)\nadd-sub : NA (no add-sub vectorizable/vectorized instructions)\nfma     : NA (no fma vectorizable/vectorized instructions)\ndiv/sqrt: NA (no div/sqrt vectorizable/vectorized instructions)\nother   : 0%\n",
        },
        {
          title = "Vector efficiency ratios",
          txt = "all     : 11%\nload    : 12%\nstore   : 12%\nmul     : NA (no mul vectorizable/vectorized instructions)\nadd-sub : NA (no add-sub vectorizable/vectorized instructions)\nfma     : NA (no fma vectorizable/vectorized instructions)\ndiv/sqrt: NA (no div/sqrt vectorizable/vectorized instructions)\nother   : 9%\n",
        },
        {
          title = "Cycles and memory resources usage",
          txt = "Assuming all data fit into the L1 cache, each call to the function takes 19.00 cycles. At this rate:\n - 1% of peak load performance is reached (2.53 out of 128.00 bytes loaded per cycle (GB/s @ 1GHz))\n - 2% of peak store performance is reached (1.68 out of 64.00 bytes stored per cycle (GB/s @ 1GHz))\n",
        },
        {
          title = "Front-end bottlenecks",
          txt = "Performance is limited by instruction throughput (loading/decoding program instructions to execution core) (front-end is a bottleneck).\n\nBy removing all these bottlenecks, you can lower the cost of an iteration from 19.00 to 16.00 cycles (1.19x speedup).\n",
        },
        {
          title = "ASM code",
          txt = "In the binary file, the address of the function is: 2cb0\n\nInstruction          | Nb FU | P0 | P1 | P2   | P3   | P4   | P5   | P6 | Latency | Recip. throughput\n-----------------------------------------------------------------------------------------------------\nENDBR64\nPUSH %RBP            | 1     | 0  | 0  | 0    | 0    | 1    | 1    | 0  | 0       | 1\nMOV %RSP,%RBP        | 1     | 0  | 0  | 0    | 0    | 0.50 | 0.50 | 0  | 0       | 0.50\nPUSH %R15            | 1     | 0  | 0  | 0    | 0    | 1    | 1    | 0  | 0       | 1\nPUSH %R14            | 1     | 0  | 0  | 0    | 0    | 1    | 1    | 0  | 0       | 1\nPUSH %R13            | 1     | 0  | 0  | 0    | 0    | 1    | 1    | 0  | 0       | 1\nPUSH %R12            | 1     | 0  | 0  | 0    | 0    | 1    | 1    | 0  | 0       | 1\nPUSH %RBX            | 1     | 0  | 0  | 0    | 0    | 1    | 1    | 0  | 0       | 1\nSUB $0x38,%RSP       | 1     | 0  | 0  | 0    | 0    | 0.50 | 0.50 | 0  | 1       | 0.50\nMOV %RDI,-0x40(%RBP) | 1     | 0  | 0  | 0.50 | 0.50 | 0    | 0    | 1  | 0       | 1\nTEST %RDI,%RDI       | 1     | 0  | 0  | 0    | 0    | 0.50 | 0.50 | 0  | 1       | 0.50\nJE 2dd9 <init+0x129> | 1     | 0  | 0  | 0    | 0    | 0    | 1    | 0  | 0       | 1-2\nMOV 0x28(%RBP),%RAX  | 1     | 0  | 0  | 1    | 0    | 0    | 0    | 0  | 4       | 1\nMOV 0x30(%RBP),%RDX  | 1     | 0  | 0  | 1    | 0    | 0    | 0    | 0  | 4       | 1\nXOR %EBX,%EBX\nMOV 0x38(%RBP),%RCX  | 1     | 0  | 0  | 1    | 0    | 0    | 0    | 0  | 4       | 1\nMOV 0x10(%RBP),%R15  | 1     | 0  | 0  | 1    | 0    | 0    | 0    | 0  | 4       | 1\nMOV 0x18(%RBP),%R14  | 1     | 0  | 0  | 1    | 0    | 0    | 0    | 0  | 4       | 1\nMOV 0x20(%RBP),%R13  | 1     | 0  | 0  | 1    | 0    | 0    | 0    | 0  | 4       | 1\nMOV %RAX,-0x48(%RBP) | 1     | 0  | 0  | 0.50 | 0.50 | 0    | 0    | 1  | 0       | 1\nMOV %RDX,-0x50(%RBP) | 1     | 0  | 0  | 0.50 | 0.50 | 0    | 0    | 1  | 0       | 1\nMOV %RCX,-0x58(%RBP) | 1     | 0  | 0  | 0.50 | 0.50 | 0    | 0    | 1  | 0       | 1\nNOPL (%RAX,%RAX,1)   | 1     | 0  | 0  | 0    | 0    | 0.50 | 0.50 | 0  | 0       | 0.50\nADD $0x38,%RSP       | 1     | 0  | 0  | 0    | 0    | 0.50 | 0.50 | 0  | 1       | 0.50\nPOP %RBX             | 2     | 0  | 0  | 0.50 | 0.50 | 0    | 0    | 1  | 0       | 1\nPOP %R12             | 2     | 0  | 0  | 0.50 | 0.50 | 0    | 0    | 1  | 0       | 1\nPOP %R13             | 2     | 0  | 0  | 0.50 | 0.50 | 0    | 0    | 1  | 0       | 1\nPOP %R14             | 2     | 0  | 0  | 0.50 | 0.50 | 0    | 0    | 1  | 0       | 1\nPOP %R15             | 2     | 0  | 0  | 0.50 | 0.50 | 0    | 0    | 1  | 0       | 1\nPOP %RBP             | 2     | 0  | 0  | 0.50 | 0.50 | 0    | 0    | 1  | 0       | 1\nRET\nNOPL (%RAX,%RAX,1)   | 1     | 0  | 0  | 0    | 0    | 0.50 | 0.50 | 0  | 0       | 0.50\n",
        },
      },
      header = {
        "0% of peak computational performance is used (0.00 out of 4.00 FLOP per cycle (GFLOPS @ 1GHz))",
      },
      brief = {
      },
      gain = {
        {
          workaround = " - Try another compiler or update/tune your current one\n - Make array accesses unit-stride:\n  * If your function streams arrays of structures (AoS), try to use structures of arrays instead (SoA):\nfor(i) a[i].x = b[i].x; (slow, non stride 1) => for(i) a.x[i] = b.x[i]; (fast, stride 1)\n",
          details = "All SSE/AVX instructions are used in scalar version (process only one data element in vector registers).\nSince your execution units are vector units, only a vectorized function can use their full power.\n",
          title = "Vectorization",
          txt = "Your function is not vectorized.\nOnly 11% of vector register length is used (average across all SSE/AVX instructions).\nBy vectorizing your function, you can lower the cost of an iteration from 19.00 to 1.56 cycles (12.19x speedup).",
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
          txt = "No instructions are processing arithmetic or math operations on FP elements. This function is probably writing/copying data or processing integer elements.",
        },
        {
          title = "Matching between your function (in the source code) and the binary function",
          txt = "The binary function does not contain any FP arithmetical operations.\nThe binary function is loading 48 bytes.\nThe binary function is storing 32 bytes.",
        },
      },
      expert = {
        {
          title = "General properties",
          txt = "nb instructions    : 32\nloop length        : 103\nused x86 registers : 11\nused mmx registers : 0\nused xmm registers : 0\nused ymm registers : 0\nused zmm registers : 0\nnb stack references: 10\n",
        },
        {
          title = "Front-end",
          txt = "MACRO FUSION NOT POSSIBLE\ninstruction fetch    : 7.00 cycles\ninstruction queue    : 16.00 cycles\ndecoding             : 16.00 cycles\nmicro-operation queue: 19.00 cycles\nfront end            : 19.00 cycles\n",
        },
        {
          title = "Back-end",
          txt = "       | P0   | P1   | P2   | P3   | P4   | P5   | P6\n--------------------------------------------------------\nuops   | 0.00 | 0.00 | 8.00 | 8.00 | 9.50 | 9.50 | 10.00\ncycles | 0.00 | 0.00 | 8.00 | 8.00 | 9.50 | 9.50 | 10.00\n\nCycles executing div or sqrt instructions: NA\n",
        },
        {
          title = "Cycles summary",
          txt = "Front-end : 19.00\nDispatch  : 10.00\nOverall L1: 19.00\n",
        },
        {
          title = "Vectorization ratios",
          txt = "all     : 0%\nload    : 0%\nstore   : 0%\nmul     : NA (no mul vectorizable/vectorized instructions)\nadd-sub : NA (no add-sub vectorizable/vectorized instructions)\nfma     : NA (no fma vectorizable/vectorized instructions)\ndiv/sqrt: NA (no div/sqrt vectorizable/vectorized instructions)\nother   : 0%\n",
        },
        {
          title = "Vector efficiency ratios",
          txt = "all     : 11%\nload    : 12%\nstore   : 12%\nmul     : NA (no mul vectorizable/vectorized instructions)\nadd-sub : NA (no add-sub vectorizable/vectorized instructions)\nfma     : NA (no fma vectorizable/vectorized instructions)\ndiv/sqrt: NA (no div/sqrt vectorizable/vectorized instructions)\nother   : 9%\n",
        },
        {
          title = "Cycles and memory resources usage",
          txt = "Assuming all data fit into the L1 cache, each call to the function takes 19.00 cycles. At this rate:\n - 1% of peak load performance is reached (2.53 out of 128.00 bytes loaded per cycle (GB/s @ 1GHz))\n - 2% of peak store performance is reached (1.68 out of 64.00 bytes stored per cycle (GB/s @ 1GHz))\n",
        },
        {
          title = "Front-end bottlenecks",
          txt = "Performance is limited by instruction throughput (loading/decoding program instructions to execution core) (front-end is a bottleneck).\n\nBy removing all these bottlenecks, you can lower the cost of an iteration from 19.00 to 16.00 cycles (1.19x speedup).\n",
        },
        {
          title = "ASM code",
          txt = "In the binary file, the address of the function is: 2cb0\n\nInstruction          | Nb FU | P0 | P1 | P2   | P3   | P4   | P5   | P6 | Latency | Recip. throughput\n-----------------------------------------------------------------------------------------------------\nENDBR64\nPUSH %RBP            | 1     | 0  | 0  | 0    | 0    | 1    | 1    | 0  | 0       | 1\nMOV %RSP,%RBP        | 1     | 0  | 0  | 0    | 0    | 0.50 | 0.50 | 0  | 0       | 0.50\nPUSH %R15            | 1     | 0  | 0  | 0    | 0    | 1    | 1    | 0  | 0       | 1\nPUSH %R14            | 1     | 0  | 0  | 0    | 0    | 1    | 1    | 0  | 0       | 1\nPUSH %R13            | 1     | 0  | 0  | 0    | 0    | 1    | 1    | 0  | 0       | 1\nPUSH %R12            | 1     | 0  | 0  | 0    | 0    | 1    | 1    | 0  | 0       | 1\nPUSH %RBX            | 1     | 0  | 0  | 0    | 0    | 1    | 1    | 0  | 0       | 1\nSUB $0x38,%RSP       | 1     | 0  | 0  | 0    | 0    | 0.50 | 0.50 | 0  | 1       | 0.50\nMOV %RDI,-0x40(%RBP) | 1     | 0  | 0  | 0.50 | 0.50 | 0    | 0    | 1  | 0       | 1\nTEST %RDI,%RDI       | 1     | 0  | 0  | 0    | 0    | 0.50 | 0.50 | 0  | 1       | 0.50\nJE 2dd9 <init+0x129> | 1     | 0  | 0  | 0    | 0    | 0    | 1    | 0  | 0       | 1-2\nMOV 0x28(%RBP),%RAX  | 1     | 0  | 0  | 1    | 0    | 0    | 0    | 0  | 4       | 1\nMOV 0x30(%RBP),%RDX  | 1     | 0  | 0  | 1    | 0    | 0    | 0    | 0  | 4       | 1\nXOR %EBX,%EBX\nMOV 0x38(%RBP),%RCX  | 1     | 0  | 0  | 1    | 0    | 0    | 0    | 0  | 4       | 1\nMOV 0x10(%RBP),%R15  | 1     | 0  | 0  | 1    | 0    | 0    | 0    | 0  | 4       | 1\nMOV 0x18(%RBP),%R14  | 1     | 0  | 0  | 1    | 0    | 0    | 0    | 0  | 4       | 1\nMOV 0x20(%RBP),%R13  | 1     | 0  | 0  | 1    | 0    | 0    | 0    | 0  | 4       | 1\nMOV %RAX,-0x48(%RBP) | 1     | 0  | 0  | 0.50 | 0.50 | 0    | 0    | 1  | 0       | 1\nMOV %RDX,-0x50(%RBP) | 1     | 0  | 0  | 0.50 | 0.50 | 0    | 0    | 1  | 0       | 1\nMOV %RCX,-0x58(%RBP) | 1     | 0  | 0  | 0.50 | 0.50 | 0    | 0    | 1  | 0       | 1\nNOPL (%RAX,%RAX,1)   | 1     | 0  | 0  | 0    | 0    | 0.50 | 0.50 | 0  | 0       | 0.50\nADD $0x38,%RSP       | 1     | 0  | 0  | 0    | 0    | 0.50 | 0.50 | 0  | 1       | 0.50\nPOP %RBX             | 2     | 0  | 0  | 0.50 | 0.50 | 0    | 0    | 1  | 0       | 1\nPOP %R12             | 2     | 0  | 0  | 0.50 | 0.50 | 0    | 0    | 1  | 0       | 1\nPOP %R13             | 2     | 0  | 0  | 0.50 | 0.50 | 0    | 0    | 1  | 0       | 1\nPOP %R14             | 2     | 0  | 0  | 0.50 | 0.50 | 0    | 0    | 1  | 0       | 1\nPOP %R15             | 2     | 0  | 0  | 0.50 | 0.50 | 0    | 0    | 1  | 0       | 1\nPOP %RBP             | 2     | 0  | 0  | 0.50 | 0.50 | 0    | 0    | 1  | 0       | 1\nRET\nNOPL (%RAX,%RAX,1)   | 1     | 0  | 0  | 0    | 0    | 0.50 | 0.50 | 0  | 0       | 0.50\n",
        },
      },
      header = {
        "0% of peak computational performance is used (0.00 out of 4.00 FLOP per cycle (GFLOPS @ 1GHz))",
      },
      brief = {
      },
      gain = {
        {
          workaround = " - Try another compiler or update/tune your current one\n - Make array accesses unit-stride:\n  * If your function streams arrays of structures (AoS), try to use structures of arrays instead (SoA):\nfor(i) a[i].x = b[i].x; (slow, non stride 1) => for(i) a.x[i] = b.x[i]; (fast, stride 1)\n",
          details = "All SSE/AVX instructions are used in scalar version (process only one data element in vector registers).\nSince your execution units are vector units, only a vectorized function can use their full power.\n",
          title = "Vectorization",
          txt = "Your function is not vectorized.\nOnly 11% of vector register length is used (average across all SSE/AVX instructions).\nBy vectorizing your function, you can lower the cost of an iteration from 19.00 to 1.56 cycles (12.19x speedup).",
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
      "The function is defined in /users/user2234/Code_Nbody3D/nbody_omp.c:23-45.\n",
      "Warnings:\nget_cqa_results:\n - Ignoring paths for analysis\n",
    },
  },
}
