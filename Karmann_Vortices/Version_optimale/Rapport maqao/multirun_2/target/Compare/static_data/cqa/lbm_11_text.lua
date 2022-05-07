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
          txt = "The binary loop does not contain any FP arithmetical operations.\nThe binary loop is loading 20 bytes.",
        },
      },
      expert = {
        {
          title = "General properties",
          txt = "nb instructions    : 12\nloop length        : 51\nused x86 registers : 9\nused mmx registers : 0\nused xmm registers : 0\nused ymm registers : 0\nused zmm registers : 0\nnb stack references: 1\n",
        },
        {
          title = "Front-end",
          txt = "MACRO FUSION NOT POSSIBLE\ninstruction fetch    : 4.00 cycles\ninstruction queue    : 6.00 cycles\ndecoding             : 6.00 cycles\nmicro-operation queue: 6.00 cycles\nfront end            : 6.00 cycles\n",
        },
        {
          title = "Back-end",
          txt = "       | P0   | P1   | P2   | P3   | P4   | P5   | P6\n-------------------------------------------------------\nuops   | 0.00 | 0.00 | 3.00 | 0.00 | 4.00 | 4.00 | 0.00\ncycles | 0.00 | 0.00 | 3.00 | 0.00 | 4.00 | 4.00 | 0.00\n\nCycles executing div or sqrt instructions: NA\nLongest recurrence chain latency (RecMII): 2.00\n",
        },
        {
          title = "Cycles summary",
          txt = "Front-end : 6.00\nDispatch  : 4.00\nData deps.: 2.00\nOverall L1: 6.00\n",
        },
        {
          title = "Vectorization ratios",
          txt = "all     : 0%\nload    : 0%\nstore   : NA (no store vectorizable/vectorized instructions)\nmul     : NA (no mul vectorizable/vectorized instructions)\nadd-sub : NA (no add-sub vectorizable/vectorized instructions)\nfma     : NA (no fma vectorizable/vectorized instructions)\ndiv/sqrt: NA (no div/sqrt vectorizable/vectorized instructions)\nother   : 0%\n",
        },
        {
          title = "Vector efficiency ratios",
          txt = "all     : 10%\nload    : 12%\nstore   : NA (no store vectorizable/vectorized instructions)\nmul     : NA (no mul vectorizable/vectorized instructions)\nadd-sub : NA (no add-sub vectorizable/vectorized instructions)\nfma     : NA (no fma vectorizable/vectorized instructions)\ndiv/sqrt: NA (no div/sqrt vectorizable/vectorized instructions)\nother   : 9%\n",
        },
        {
          title = "Cycles and memory resources usage",
          txt = "Assuming all data fit into the L1 cache, each iteration of the binary loop takes 6.00 cycles. At this rate:\n - 2% of peak load performance is reached (3.33 out of 128.00 bytes loaded per cycle (GB/s @ 1GHz))\n",
        },
        {
          title = "Front-end bottlenecks",
          txt = "Performance is limited by instruction throughput (loading/decoding program instructions to execution core) (front-end is a bottleneck).\n\nBy removing all these bottlenecks, you can lower the cost of an iteration from 6.00 to 4.00 cycles (1.50x speedup).\n",
        },
        {
          title = "ASM code",
          txt = "In the binary file, the address of the loop is: 2a60\n\nInstruction                      | Nb FU | P0 | P1 | P2 | P3 | P4   | P5   | P6 | Latency | Recip. throughput\n-------------------------------------------------------------------------------------------------------------\nTEST %R8D,%R8D                   | 1     | 0  | 0  | 0  | 0  | 0.50 | 0.50 | 0  | 1       | 0.50\nJE 2f80 <setup_init_state+0x5c0> | 1     | 0  | 0  | 0  | 0  | 0    | 1    | 0  | 0       | 1-2\nMOV (%RBX),%RSI                  | 1     | 0  | 0  | 1  | 0  | 0    | 0    | 0  | 4       | 1\nLEA (%RDI),%R11D                 | 1     | 0  | 0  | 0  | 0  | 0.50 | 0.50 | 0  | 1       | 0.50\nMOV (%RBP),%R10                  | 1     | 0  | 0  | 1  | 0  | 0    | 0    | 0  | 4       | 1\nXOR %EAX,%EAX\nNOPW %CS:(%RAX,%RAX,1)           | 1     | 0  | 0  | 0  | 0  | 0.50 | 0.50 | 0  | 0       | 0.50\nMOV 0x8(%RBX),%ECX               | 1     | 0  | 0  | 1  | 0  | 0    | 0    | 0  | 4       | 1\nMOV %RCX,%RSI                    | 1     | 0  | 0  | 0  | 0  | 0.50 | 0.50 | 0  | 0       | 0.50\nLEA 0x1(%RDI),%RDI               | 1     | 0  | 0  | 0  | 0  | 0.50 | 0.50 | 0  | 1       | 0.50\nCMP %RCX,%RDI                    | 1     | 0  | 0  | 0  | 0  | 0.50 | 0.50 | 0  | 1       | 0.50\nJB 2a60 <setup_init_state+0xa0>  | 1     | 0  | 0  | 0  | 0  | 0    | 1    | 0  | 0       | 1-2\n",
        },
      },
      header = {
        "0% of peak computational performance is used (0.00 out of 4.00 FLOP per cycle (GFLOPS @ 1GHz))",
      },
      brief = {
      },
      gain = {
        {
          workaround = " - Try another compiler or update/tune your current one\n - Remove inter-iterations dependences from your loop and make it unit-stride:\n  * If your arrays have 2 or more dimensions, check whether elements are accessed contiguously and, otherwise, try to permute loops accordingly:\nC storage order is row-major: for(i) for(j) a[j][i] = b[j][i]; (slow, non stride 1) => for(i) for(j) a[i][j] = b[i][j]; (fast, stride 1)\n  * If your loop streams arrays of structures (AoS), try to use structures of arrays instead (SoA):\nfor(i) a[i].x = b[i].x; (slow, non stride 1) => for(i) a.x[i] = b.x[i]; (fast, stride 1)\n",
          details = "All SSE/AVX instructions are used in scalar version (process only one data element in vector registers).\nSince your execution units are vector units, only a vectorized loop can use their full power.\n",
          title = "Vectorization",
          txt = "Your loop is not vectorized.\nOnly 10% of vector register length is used (average across all SSE/AVX instructions).\nBy vectorizing your loop, you can lower the cost of an iteration from 6.00 to 0.44 cycles (13.71x speedup).",
        },
        {
          title = "Execution units bottlenecks",
          txt = "Found no such bottlenecks but see expert reports for more complex bottlenecks.",
        },
      },
      potential = {
      },
    },
    {
      hint = {
        {
          title = "Type of elements and instruction set",
          txt = "No instructions are processing arithmetic or math operations on FP elements. This loop is probably writing/copying data or processing integer elements.",
        },
        {
          title = "Matching between your loop (in the source code) and the binary loop",
          txt = "The binary loop does not contain any FP arithmetical operations.\nThe binary loop does not load or store any data.",
        },
      },
      expert = {
        {
          title = "General properties",
          txt = "nb instructions    : 9\nloop length        : 37\nused x86 registers : 4\nused mmx registers : 0\nused xmm registers : 0\nused ymm registers : 0\nused zmm registers : 0\nnb stack references: 0\n",
        },
        {
          title = "Front-end",
          txt = "MACRO FUSION NOT POSSIBLE\ninstruction fetch    : 3.00 cycles\ninstruction queue    : 4.50 cycles\ndecoding             : 4.50 cycles\nmicro-operation queue: 5.00 cycles\nfront end            : 5.00 cycles\n",
        },
        {
          title = "Back-end",
          txt = "       | P0   | P1   | P2   | P3   | P4   | P5   | P6\n-------------------------------------------------------\nuops   | 0.00 | 0.00 | 0.00 | 0.00 | 4.50 | 4.50 | 0.00\ncycles | 0.00 | 0.00 | 0.00 | 0.00 | 4.50 | 4.50 | 0.00\n\nCycles executing div or sqrt instructions: NA\nLongest recurrence chain latency (RecMII): 2.00\n",
        },
        {
          title = "Cycles summary",
          txt = "Front-end : 5.00\nDispatch  : 4.50\nData deps.: 2.00\nOverall L1: 5.00\n",
        },
        {
          title = "Vectorization ratios",
          txt = "all     : 0%\nload    : NA (no load vectorizable/vectorized instructions)\nstore   : NA (no store vectorizable/vectorized instructions)\nmul     : NA (no mul vectorizable/vectorized instructions)\nadd-sub : NA (no add-sub vectorizable/vectorized instructions)\nfma     : NA (no fma vectorizable/vectorized instructions)\ndiv/sqrt: NA (no div/sqrt vectorizable/vectorized instructions)\nother   : 0%\n",
        },
        {
          title = "Vector efficiency ratios",
          txt = "all     : 9%\nload    : NA (no load vectorizable/vectorized instructions)\nstore   : NA (no store vectorizable/vectorized instructions)\nmul     : NA (no mul vectorizable/vectorized instructions)\nadd-sub : NA (no add-sub vectorizable/vectorized instructions)\nfma     : NA (no fma vectorizable/vectorized instructions)\ndiv/sqrt: NA (no div/sqrt vectorizable/vectorized instructions)\nother   : 9%\n",
        },
        {
          title = "Cycles and memory resources usage",
          txt = "Assuming all data fit into the L1 cache, each iteration of the binary loop takes 5.00 cycles. At this rate:\n",
        },
        {
          title = "Front-end bottlenecks",
          txt = "Performance is limited by instruction throughput (loading/decoding program instructions to execution core) (front-end is a bottleneck).\n\nBy removing all these bottlenecks, you can lower the cost of an iteration from 5.00 to 4.50 cycles (1.11x speedup).\n",
        },
        {
          title = "ASM code",
          txt = "In the binary file, the address of the loop is: 2a60\n\nInstruction                      | Nb FU | P0 | P1 | P2 | P3 | P4   | P5   | P6 | Latency | Recip. throughput\n-------------------------------------------------------------------------------------------------------------\nTEST %R8D,%R8D                   | 1     | 0  | 0  | 0  | 0  | 0.50 | 0.50 | 0  | 1       | 0.50\nJE 2f80 <setup_init_state+0x5c0> | 1     | 0  | 0  | 0  | 0  | 0    | 1    | 0  | 0       | 1-2\nLEA 0x1(%RDI),%RDI               | 1     | 0  | 0  | 0  | 0  | 0.50 | 0.50 | 0  | 1       | 0.50\nCMP %RCX,%RDI                    | 1     | 0  | 0  | 0  | 0  | 0.50 | 0.50 | 0  | 1       | 0.50\nJB 2a60 <setup_init_state+0xa0>  | 1     | 0  | 0  | 0  | 0  | 0    | 1    | 0  | 0       | 1-2\nLEA 0x1(%RDI),%RDI               | 1     | 0  | 0  | 0  | 0  | 0.50 | 0.50 | 0  | 1       | 0.50\nLEA (%RSI),%ECX                  | 1     | 0  | 0  | 0  | 0  | 0.50 | 0.50 | 0  | 1       | 0.50\nCMP %RCX,%RDI                    | 1     | 0  | 0  | 0  | 0  | 0.50 | 0.50 | 0  | 1       | 0.50\nJB 2e41 <setup_init_state+0x481> | 1     | 0  | 0  | 0  | 0  | 0    | 1    | 0  | 0       | 1-2\n",
        },
      },
      header = {
        "0% of peak computational performance is used (0.00 out of 4.00 FLOP per cycle (GFLOPS @ 1GHz))",
      },
      brief = {
      },
      gain = {
        {
          workaround = " - Try another compiler or update/tune your current one\n - Remove inter-iterations dependences from your loop and make it unit-stride:\n  * If your arrays have 2 or more dimensions, check whether elements are accessed contiguously and, otherwise, try to permute loops accordingly:\nC storage order is row-major: for(i) for(j) a[j][i] = b[j][i]; (slow, non stride 1) => for(i) for(j) a[i][j] = b[i][j]; (fast, stride 1)\n  * If your loop streams arrays of structures (AoS), try to use structures of arrays instead (SoA):\nfor(i) a[i].x = b[i].x; (slow, non stride 1) => for(i) a.x[i] = b.x[i]; (fast, stride 1)\n",
          details = "All SSE/AVX instructions are used in scalar version (process only one data element in vector registers).\nSince your execution units are vector units, only a vectorized loop can use their full power.\n",
          title = "Vectorization",
          txt = "Your loop is not vectorized.\nOnly 9% of vector register length is used (average across all SSE/AVX instructions).\nBy vectorizing your loop, you can lower the cost of an iteration from 5.00 to 0.35 cycles (14.40x speedup).",
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
          txt = "The binary loop does not contain any FP arithmetical operations.\nThe binary loop is loading 10 bytes.",
        },
      },
      expert = {
        {
          title = "General properties",
          txt = "nb instructions    : 10.50\nloop length        : 44\nused x86 registers : 6.50\nused mmx registers : 0\nused xmm registers : 0\nused ymm registers : 0\nused zmm registers : 0\nnb stack references: 0.50\n",
        },
        {
          title = "Front-end",
          txt = "MACRO FUSION NOT POSSIBLE\ninstruction fetch    : 3.50 cycles\ninstruction queue    : 5.25 cycles\ndecoding             : 5.25 cycles\nmicro-operation queue: 5.50 cycles\nfront end            : 5.50 cycles\n",
        },
        {
          title = "Back-end",
          txt = "       | P0   | P1   | P2   | P3   | P4   | P5   | P6\n-------------------------------------------------------\nuops   | 0.00 | 0.00 | 1.50 | 0.00 | 4.25 | 4.25 | 0.00\ncycles | 0.00 | 0.00 | 1.50 | 0.00 | 4.25 | 4.25 | 0.00\n\nCycles executing div or sqrt instructions: NA\nLongest recurrence chain latency (RecMII): 2.00\n",
        },
        {
          title = "Cycles summary",
          txt = "Front-end : 5.50\nDispatch  : 4.25\nData deps.: 2.00\nOverall L1: 5.50\n",
        },
        {
          title = "Vectorization ratios",
          txt = "all     : 0%\nload    : 0%\nstore   : NA (no store vectorizable/vectorized instructions)\nmul     : NA (no mul vectorizable/vectorized instructions)\nadd-sub : NA (no add-sub vectorizable/vectorized instructions)\nfma     : NA (no fma vectorizable/vectorized instructions)\ndiv/sqrt: NA (no div/sqrt vectorizable/vectorized instructions)\nother   : 0%\n",
        },
        {
          title = "Vector efficiency ratios",
          txt = "all     : 10%\nload    : 12%\nstore   : NA (no store vectorizable/vectorized instructions)\nmul     : NA (no mul vectorizable/vectorized instructions)\nadd-sub : NA (no add-sub vectorizable/vectorized instructions)\nfma     : NA (no fma vectorizable/vectorized instructions)\ndiv/sqrt: NA (no div/sqrt vectorizable/vectorized instructions)\nother   : 9%\n",
        },
        {
          title = "Cycles and memory resources usage",
          txt = "Assuming all data fit into the L1 cache, each iteration of the binary loop takes 5.50 cycles. At this rate:\n - 1% of peak load performance is reached (1.67 out of 128.00 bytes loaded per cycle (GB/s @ 1GHz))\n",
        },
      },
      header = {
        "0% of peak computational performance is used (0.00 out of 4.00 FLOP per cycle (GFLOPS @ 1GHz))",
      },
      brief = {
      },
      gain = {
        {
          workaround = " - Try another compiler or update/tune your current one\n - Remove inter-iterations dependences from your loop and make it unit-stride:\n  * If your arrays have 2 or more dimensions, check whether elements are accessed contiguously and, otherwise, try to permute loops accordingly:\nC storage order is row-major: for(i) for(j) a[j][i] = b[j][i]; (slow, non stride 1) => for(i) for(j) a[i][j] = b[i][j]; (fast, stride 1)\n  * If your loop streams arrays of structures (AoS), try to use structures of arrays instead (SoA):\nfor(i) a[i].x = b[i].x; (slow, non stride 1) => for(i) a.x[i] = b.x[i]; (fast, stride 1)\n",
          details = "All SSE/AVX instructions are used in scalar version (process only one data element in vector registers).\nSince your execution units are vector units, only a vectorized loop can use their full power.\n",
          title = "Vectorization",
          txt = "Your loop is not vectorized.\nOnly 10% of vector register length is used (average across all SSE/AVX instructions).\nBy vectorizing your loop, you can lower the cost of an iteration from 5.50 to 0.39 cycles (14.02x speedup).",
        },
      },
      potential = {
      },
    },
  common = {
    header = {
      "The loop is defined in:\n - /users/user2207/lbm_opt/src/lbm_init.c:50-58\n - /users/user2207/lbm_opt/src/lbm_phys.c:98-100,141-145\n - /users/user2207/lbm_opt/src/../include/lbm_struct.h:130,148\n\n",
      "Warnings:\nNon-innermost loop: analyzing only self part (ignoring child loops).",
      "The structure of this loop is probably <if then [else] end>.\n",
      "The presence of multiple execution paths is typically the main/first bottleneck.\nTry to simplify control inside loop: ideally, try to remove all conditional expressions, for example by (if applicable):\n - hoisting them (moving them outside the loop)\n - turning them into conditional moves, MIN or MAX\n\n",
      "Ex: if (x<0) x=0 => x = (x<0 ? 0 : x) (or MAX(0,x) after defining the corresponding macro)\n",
    },
    nb_paths = 2,
  },
}
