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
          txt = "The binary function does not contain any FP arithmetical operations.\nThe binary function is loading 160 bytes.\nThe binary function is storing 56 bytes.",
        },
      },
      expert = {
        {
          title = "General properties",
          txt = "nb instructions    : 49\nloop length        : 210\nused x86 registers : 16\nused mmx registers : 0\nused xmm registers : 4\nused ymm registers : 0\nused zmm registers : 1\nnb stack references: 7\n",
        },
        {
          title = "Front-end",
          txt = "MACRO FUSION NOT POSSIBLE\ninstruction fetch    : 14.00 cycles\ninstruction queue    : 24.50 cycles\ndecoding             : 24.50 cycles\nmicro-operation queue: 28.00 cycles\nfront end            : 28.00 cycles\n",
        },
        {
          title = "Back-end",
          txt = "       | P0   | P1   | P2    | P3    | P4    | P5    | P6\n-----------------------------------------------------------\nuops   | 0.00 | 0.00 | 10.50 | 10.50 | 16.00 | 16.00 | 7.00\ncycles | 0.00 | 0.00 | 10.50 | 10.50 | 16.00 | 16.00 | 7.00\n\nCycles executing div or sqrt instructions: NA\n",
        },
        {
          title = "Cycles summary",
          txt = "Front-end : 28.00\nDispatch  : 16.00\nOverall L1: 28.00\n",
        },
        {
          title = "Vectorization ratios",
          txt = "INT\nall    : 0%\nload   : 0%\nstore  : 0%\nmul    : NA (no mul vectorizable/vectorized instructions)\nadd-sub: NA (no add-sub vectorizable/vectorized instructions)\nfma    : NA (no fma vectorizable/vectorized instructions)\nother  : 0%\nFP\nall     : 40%\nload    : 25%\nstore   : NA (no store vectorizable/vectorized instructions)\nmul     : NA (no mul vectorizable/vectorized instructions)\nadd-sub : NA (no add-sub vectorizable/vectorized instructions)\nfma     : NA (no fma vectorizable/vectorized instructions)\ndiv/sqrt: NA (no div/sqrt vectorizable/vectorized instructions)\nother   : 100%\nINT+FP\nall     : 11%\nload    : 14%\nstore   : 0%\nmul     : NA (no mul vectorizable/vectorized instructions)\nadd-sub : NA (no add-sub vectorizable/vectorized instructions)\nfma     : NA (no fma vectorizable/vectorized instructions)\ndiv/sqrt: NA (no div/sqrt vectorizable/vectorized instructions)\nother   : 25%\n",
        },
        {
          title = "Vector efficiency ratios",
          txt = "INT\nall    : 12%\nload   : 12%\nstore  : 12%\nmul    : NA (no mul vectorizable/vectorized instructions)\nadd-sub: NA (no add-sub vectorizable/vectorized instructions)\nfma    : NA (no fma vectorizable/vectorized instructions)\nother  : 12%\nFP\nall     : 30%\nload    : 31%\nstore   : NA (no store vectorizable/vectorized instructions)\nmul     : NA (no mul vectorizable/vectorized instructions)\nadd-sub : NA (no add-sub vectorizable/vectorized instructions)\nfma     : NA (no fma vectorizable/vectorized instructions)\ndiv/sqrt: NA (no div/sqrt vectorizable/vectorized instructions)\nother   : 25%\nINT+FP\nall     : 17%\nload    : 23%\nstore   : 12%\nmul     : NA (no mul vectorizable/vectorized instructions)\nadd-sub : NA (no add-sub vectorizable/vectorized instructions)\nfma     : NA (no fma vectorizable/vectorized instructions)\ndiv/sqrt: NA (no div/sqrt vectorizable/vectorized instructions)\nother   : 15%\n",
        },
        {
          title = "Cycles and memory resources usage",
          txt = "Assuming all data fit into the L1 cache, each call to the function takes 28.00 cycles. At this rate:\n - 4% of peak load performance is reached (5.71 out of 128.00 bytes loaded per cycle (GB/s @ 1GHz))\n - 3% of peak store performance is reached (2.00 out of 64.00 bytes stored per cycle (GB/s @ 1GHz))\n",
        },
        {
          title = "Front-end bottlenecks",
          txt = "Performance is limited by instruction throughput (loading/decoding program instructions to execution core) (front-end is a bottleneck).\n\nBy removing all these bottlenecks, you can lower the cost of an iteration from 28.00 to 24.50 cycles (1.14x speedup).\n",
        },
        {
          title = "ASM code",
          txt = "In the binary file, the address of the function is: 2400\n\nInstruction                     | Nb FU | P0 | P1 | P2   | P3   | P4   | P5   | P6 | Latency | Recip. throughput\n----------------------------------------------------------------------------------------------------------------\nENDBR64\nPUSH %RBP                       | 1     | 0  | 0  | 0    | 0    | 1    | 1    | 0  | 0       | 1\nMOV %RSP,%RBP                   | 1     | 0  | 0  | 0    | 0    | 0.50 | 0.50 | 0  | 0       | 0.50\nPUSH %R15                       | 1     | 0  | 0  | 0    | 0    | 1    | 1    | 0  | 0       | 1\nPUSH %R14                       | 1     | 0  | 0  | 0    | 0    | 1    | 1    | 0  | 0       | 1\nPUSH %R13                       | 1     | 0  | 0  | 0    | 0    | 1    | 1    | 0  | 0       | 1\nPUSH %R12                       | 1     | 0  | 0  | 0    | 0    | 1    | 1    | 0  | 0       | 1\nPUSH %RBX                       | 1     | 0  | 0  | 0    | 0    | 1    | 1    | 0  | 0       | 1\nAND $-0x40,%RSP                 | 1     | 0  | 0  | 0    | 0    | 0.50 | 0.50 | 0  | 1       | 0.50\nSUB $0x40,%RSP                  | 1     | 0  | 0  | 0    | 0    | 0.50 | 0.50 | 0  | 1       | 0.50\nMOV 0x10(%RDI),%RAX             | 1     | 0  | 0  | 1    | 0    | 0    | 0    | 0  | 4       | 1\nMOV 0x8(%RDI),%R8               | 1     | 0  | 0  | 1    | 0    | 0    | 0    | 0  | 4       | 1\nMOV %RAX,0x30(%RSP)             | 1     | 0  | 0  | 0.50 | 0.50 | 0    | 0    | 1  | 0       | 1\nADD %R8,%RAX                    | 1     | 0  | 0  | 0    | 0    | 0.50 | 0.50 | 0  | 1       | 0.50\nMOV %RAX,0x10(%RSP)             | 1     | 0  | 0  | 0.50 | 0.50 | 0    | 0    | 1  | 0       | 1\nCMP %RAX,%R8                    | 1     | 0  | 0  | 0    | 0    | 0.50 | 0.50 | 0  | 1       | 0.50\nJAE 2da7 <move_particles+0x9a7> | 1     | 0  | 0  | 0    | 0    | 0    | 1    | 0  | 0       | 1-2\nMOV 0x30(%RSP),%RBX             | 1     | 0  | 0  | 1    | 0    | 0    | 0    | 0  | 4       | 1\nMOV (%RDI),%RDX                 | 1     | 0  | 0  | 1    | 0    | 0    | 0    | 0  | 4       | 1\nMOV %RAX,%R15                   | 1     | 0  | 0  | 0    | 0    | 0.50 | 0.50 | 0  | 0       | 0.50\nMOV %R8,0x8(%RSP)               | 1     | 0  | 0  | 0.50 | 0.50 | 0    | 0    | 1  | 0       | 1\nVMOVSD 0xdf1(%RIP),%XMM5        | 1     | 0  | 0  | 0.50 | 0.50 | 0    | 0    | 0  | 5       | 0.50\nVXORPS %XMM3,%XMM3,%XMM3\nVMOVAPS 0xd63(%RIP),%ZMM11      | 1     | 0  | 0  | 0.50 | 0.50 | 0    | 0    | 0  | 5       | 0.50\nLEA -0x1(%RBX),%RCX             | 1     | 0  | 0  | 0    | 0    | 0.50 | 0.50 | 0  | 1       | 0.50\nMOV %RBX,%RDI                   | 1     | 0  | 0  | 0    | 0    | 0.50 | 0.50 | 0  | 0       | 0.50\nAND $-0x10,%RBX                 | 1     | 0  | 0  | 0    | 0    | 0.50 | 0.50 | 0  | 1       | 0.50\nMOV (%RDX),%R11                 | 1     | 0  | 0  | 1    | 0    | 0    | 0    | 0  | 4       | 1\nLEA (%R8,%RBX,1),%RAX           | 1     | 0  | 0  | 0    | 0    | 0.50 | 0.50 | 0  | 1       | 0.50\nMOV 0x8(%RDX),%R10              | 1     | 0  | 0  | 1    | 0    | 0    | 0    | 0  | 4       | 1\nMOV 0x10(%RDX),%R9              | 1     | 0  | 0  | 1    | 0    | 0    | 0    | 0  | 4       | 1\nSHR $0x4,%RDI                   | 1     | 0  | 0  | 0    | 0    | 1    | 0    | 0  | 1       | 1\nMOV %RBX,0x20(%RSP)             | 1     | 0  | 0  | 0.50 | 0.50 | 0    | 0    | 1  | 0       | 1\nSAL $0x6,%RDI                   | 1     | 0  | 0  | 0    | 0    | 1    | 0    | 0  | 1       | 1\nMOV 0x18(%RDX),%R12             | 1     | 0  | 0  | 1    | 0    | 0    | 0    | 0  | 4       | 1\nMOV 0x20(%RDX),%R13             | 1     | 0  | 0  | 1    | 0    | 0    | 0    | 0  | 4       | 1\nMOV %RAX,0x18(%RSP)             | 1     | 0  | 0  | 0.50 | 0.50 | 0    | 0    | 1  | 0       | 1\nMOV 0x28(%RDX),%R14             | 1     | 0  | 0  | 1    | 0    | 0    | 0    | 0  | 4       | 1\nLEA (,%R8,4),%RDX               | 1     | 0  | 0  | 0    | 0    | 0.50 | 0.50 | 0  | 1       | 0.50\nMOV %RCX,0x28(%RSP)             | 1     | 0  | 0  | 0.50 | 0.50 | 0    | 0    | 1  | 0       | 1\nMOV %RDI,0x38(%RSP)             | 1     | 0  | 0  | 0.50 | 0.50 | 0    | 0    | 1  | 0       | 1\nLEA (%R11,%RDX,1),%RSI          | 1     | 0  | 0  | 0    | 0    | 0.50 | 0.50 | 0  | 1       | 0.50\nLEA (%R10,%RDX,1),%RCX          | 1     | 0  | 0  | 0    | 0    | 0.50 | 0.50 | 0  | 1       | 0.50\nMOV %R8,%RDI                    | 1     | 0  | 0  | 0    | 0    | 0.50 | 0.50 | 0  | 0       | 0.50\nVMOVSS 0xcca(%RIP),%XMM10       | 1     | 0  | 0  | 0.50 | 0.50 | 0    | 0    | 0  | 5       | 0.50\nADD %R9,%RDX                    | 1     | 0  | 0  | 0    | 0    | 0.50 | 0.50 | 0  | 1       | 0.50\nVMOVSS 0xcc3(%RIP),%XMM9        | 1     | 0  | 0  | 0.50 | 0.50 | 0    | 0    | 0  | 5       | 0.50\nNOPL (%RAX)                     | 1     | 0  | 0  | 0    | 0    | 0.50 | 0.50 | 0  | 0       | 0.50\nNOPW %CS:(%RAX,%RAX,1)          | 1     | 0  | 0  | 0    | 0    | 0.50 | 0.50 | 0  | 0       | 0.50\n",
        },
      },
      header = {
        "0% of peak computational performance is used (0.00 out of 4.00 FLOP per cycle (GFLOPS @ 1GHz))",
      },
      brief = {
      },
      gain = {
        {
          workaround = " - Try to reorganize arrays of structures to structures of arrays\n - Consider to permute loops (see vectorization gain report)\n",
          title = "Code clean check",
          txt = "Detected a slowdown caused by scalar integer instructions (typically used for address computation).\nBy removing them, you can lower the cost of an iteration from 28.00 to 5.00 cycles (5.60x speedup).",
        },
        {
          workaround = " - Try another compiler or update/tune your current one\n - Make array accesses unit-stride:\n  * If your function streams arrays of structures (AoS), try to use structures of arrays instead (SoA):\nfor(i) a[i].x = b[i].x; (slow, non stride 1) => for(i) a.x[i] = b.x[i]; (fast, stride 1)\n",
          details = "Store and arithmetical SSE/AVX instructions are used in scalar version (process only one data element in vector registers).\nSince your execution units are vector units, only a vectorized function can use their full power.\n",
          title = "Vectorization",
          txt = "Your function is probably not vectorized.\nOnly 17% of vector register length is used (average across all SSE/AVX instructions).\nBy vectorizing your function, you can lower the cost of an iteration from 28.00 to 20.93 cycles (1.34x speedup).",
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
          txt = "The binary function does not contain any FP arithmetical operations.\nThe binary function is loading 160 bytes.\nThe binary function is storing 56 bytes.",
        },
      },
      expert = {
        {
          title = "General properties",
          txt = "nb instructions    : 49\nloop length        : 210\nused x86 registers : 16\nused mmx registers : 0\nused xmm registers : 4\nused ymm registers : 0\nused zmm registers : 1\nnb stack references: 7\n",
        },
        {
          title = "Front-end",
          txt = "MACRO FUSION NOT POSSIBLE\ninstruction fetch    : 14.00 cycles\ninstruction queue    : 24.50 cycles\ndecoding             : 24.50 cycles\nmicro-operation queue: 28.00 cycles\nfront end            : 28.00 cycles\n",
        },
        {
          title = "Back-end",
          txt = "       | P0   | P1   | P2    | P3    | P4    | P5    | P6\n-----------------------------------------------------------\nuops   | 0.00 | 0.00 | 10.50 | 10.50 | 16.00 | 16.00 | 7.00\ncycles | 0.00 | 0.00 | 10.50 | 10.50 | 16.00 | 16.00 | 7.00\n\nCycles executing div or sqrt instructions: NA\n",
        },
        {
          title = "Cycles summary",
          txt = "Front-end : 28.00\nDispatch  : 16.00\nOverall L1: 28.00\n",
        },
        {
          title = "Vectorization ratios",
          txt = "INT\nall    : 0%\nload   : 0%\nstore  : 0%\nmul    : NA (no mul vectorizable/vectorized instructions)\nadd-sub: NA (no add-sub vectorizable/vectorized instructions)\nfma    : NA (no fma vectorizable/vectorized instructions)\nother  : 0%\nFP\nall     : 40%\nload    : 25%\nstore   : NA (no store vectorizable/vectorized instructions)\nmul     : NA (no mul vectorizable/vectorized instructions)\nadd-sub : NA (no add-sub vectorizable/vectorized instructions)\nfma     : NA (no fma vectorizable/vectorized instructions)\ndiv/sqrt: NA (no div/sqrt vectorizable/vectorized instructions)\nother   : 100%\nINT+FP\nall     : 11%\nload    : 14%\nstore   : 0%\nmul     : NA (no mul vectorizable/vectorized instructions)\nadd-sub : NA (no add-sub vectorizable/vectorized instructions)\nfma     : NA (no fma vectorizable/vectorized instructions)\ndiv/sqrt: NA (no div/sqrt vectorizable/vectorized instructions)\nother   : 25%\n",
        },
        {
          title = "Vector efficiency ratios",
          txt = "INT\nall    : 12%\nload   : 12%\nstore  : 12%\nmul    : NA (no mul vectorizable/vectorized instructions)\nadd-sub: NA (no add-sub vectorizable/vectorized instructions)\nfma    : NA (no fma vectorizable/vectorized instructions)\nother  : 12%\nFP\nall     : 30%\nload    : 31%\nstore   : NA (no store vectorizable/vectorized instructions)\nmul     : NA (no mul vectorizable/vectorized instructions)\nadd-sub : NA (no add-sub vectorizable/vectorized instructions)\nfma     : NA (no fma vectorizable/vectorized instructions)\ndiv/sqrt: NA (no div/sqrt vectorizable/vectorized instructions)\nother   : 25%\nINT+FP\nall     : 17%\nload    : 23%\nstore   : 12%\nmul     : NA (no mul vectorizable/vectorized instructions)\nadd-sub : NA (no add-sub vectorizable/vectorized instructions)\nfma     : NA (no fma vectorizable/vectorized instructions)\ndiv/sqrt: NA (no div/sqrt vectorizable/vectorized instructions)\nother   : 15%\n",
        },
        {
          title = "Cycles and memory resources usage",
          txt = "Assuming all data fit into the L1 cache, each call to the function takes 28.00 cycles. At this rate:\n - 4% of peak load performance is reached (5.71 out of 128.00 bytes loaded per cycle (GB/s @ 1GHz))\n - 3% of peak store performance is reached (2.00 out of 64.00 bytes stored per cycle (GB/s @ 1GHz))\n",
        },
        {
          title = "Front-end bottlenecks",
          txt = "Performance is limited by instruction throughput (loading/decoding program instructions to execution core) (front-end is a bottleneck).\n\nBy removing all these bottlenecks, you can lower the cost of an iteration from 28.00 to 24.50 cycles (1.14x speedup).\n",
        },
        {
          title = "ASM code",
          txt = "In the binary file, the address of the function is: 2400\n\nInstruction                     | Nb FU | P0 | P1 | P2   | P3   | P4   | P5   | P6 | Latency | Recip. throughput\n----------------------------------------------------------------------------------------------------------------\nENDBR64\nPUSH %RBP                       | 1     | 0  | 0  | 0    | 0    | 1    | 1    | 0  | 0       | 1\nMOV %RSP,%RBP                   | 1     | 0  | 0  | 0    | 0    | 0.50 | 0.50 | 0  | 0       | 0.50\nPUSH %R15                       | 1     | 0  | 0  | 0    | 0    | 1    | 1    | 0  | 0       | 1\nPUSH %R14                       | 1     | 0  | 0  | 0    | 0    | 1    | 1    | 0  | 0       | 1\nPUSH %R13                       | 1     | 0  | 0  | 0    | 0    | 1    | 1    | 0  | 0       | 1\nPUSH %R12                       | 1     | 0  | 0  | 0    | 0    | 1    | 1    | 0  | 0       | 1\nPUSH %RBX                       | 1     | 0  | 0  | 0    | 0    | 1    | 1    | 0  | 0       | 1\nAND $-0x40,%RSP                 | 1     | 0  | 0  | 0    | 0    | 0.50 | 0.50 | 0  | 1       | 0.50\nSUB $0x40,%RSP                  | 1     | 0  | 0  | 0    | 0    | 0.50 | 0.50 | 0  | 1       | 0.50\nMOV 0x10(%RDI),%RAX             | 1     | 0  | 0  | 1    | 0    | 0    | 0    | 0  | 4       | 1\nMOV 0x8(%RDI),%R8               | 1     | 0  | 0  | 1    | 0    | 0    | 0    | 0  | 4       | 1\nMOV %RAX,0x30(%RSP)             | 1     | 0  | 0  | 0.50 | 0.50 | 0    | 0    | 1  | 0       | 1\nADD %R8,%RAX                    | 1     | 0  | 0  | 0    | 0    | 0.50 | 0.50 | 0  | 1       | 0.50\nMOV %RAX,0x10(%RSP)             | 1     | 0  | 0  | 0.50 | 0.50 | 0    | 0    | 1  | 0       | 1\nCMP %RAX,%R8                    | 1     | 0  | 0  | 0    | 0    | 0.50 | 0.50 | 0  | 1       | 0.50\nJAE 2da7 <move_particles+0x9a7> | 1     | 0  | 0  | 0    | 0    | 0    | 1    | 0  | 0       | 1-2\nMOV 0x30(%RSP),%RBX             | 1     | 0  | 0  | 1    | 0    | 0    | 0    | 0  | 4       | 1\nMOV (%RDI),%RDX                 | 1     | 0  | 0  | 1    | 0    | 0    | 0    | 0  | 4       | 1\nMOV %RAX,%R15                   | 1     | 0  | 0  | 0    | 0    | 0.50 | 0.50 | 0  | 0       | 0.50\nMOV %R8,0x8(%RSP)               | 1     | 0  | 0  | 0.50 | 0.50 | 0    | 0    | 1  | 0       | 1\nVMOVSD 0xdf1(%RIP),%XMM5        | 1     | 0  | 0  | 0.50 | 0.50 | 0    | 0    | 0  | 5       | 0.50\nVXORPS %XMM3,%XMM3,%XMM3\nVMOVAPS 0xd63(%RIP),%ZMM11      | 1     | 0  | 0  | 0.50 | 0.50 | 0    | 0    | 0  | 5       | 0.50\nLEA -0x1(%RBX),%RCX             | 1     | 0  | 0  | 0    | 0    | 0.50 | 0.50 | 0  | 1       | 0.50\nMOV %RBX,%RDI                   | 1     | 0  | 0  | 0    | 0    | 0.50 | 0.50 | 0  | 0       | 0.50\nAND $-0x10,%RBX                 | 1     | 0  | 0  | 0    | 0    | 0.50 | 0.50 | 0  | 1       | 0.50\nMOV (%RDX),%R11                 | 1     | 0  | 0  | 1    | 0    | 0    | 0    | 0  | 4       | 1\nLEA (%R8,%RBX,1),%RAX           | 1     | 0  | 0  | 0    | 0    | 0.50 | 0.50 | 0  | 1       | 0.50\nMOV 0x8(%RDX),%R10              | 1     | 0  | 0  | 1    | 0    | 0    | 0    | 0  | 4       | 1\nMOV 0x10(%RDX),%R9              | 1     | 0  | 0  | 1    | 0    | 0    | 0    | 0  | 4       | 1\nSHR $0x4,%RDI                   | 1     | 0  | 0  | 0    | 0    | 1    | 0    | 0  | 1       | 1\nMOV %RBX,0x20(%RSP)             | 1     | 0  | 0  | 0.50 | 0.50 | 0    | 0    | 1  | 0       | 1\nSAL $0x6,%RDI                   | 1     | 0  | 0  | 0    | 0    | 1    | 0    | 0  | 1       | 1\nMOV 0x18(%RDX),%R12             | 1     | 0  | 0  | 1    | 0    | 0    | 0    | 0  | 4       | 1\nMOV 0x20(%RDX),%R13             | 1     | 0  | 0  | 1    | 0    | 0    | 0    | 0  | 4       | 1\nMOV %RAX,0x18(%RSP)             | 1     | 0  | 0  | 0.50 | 0.50 | 0    | 0    | 1  | 0       | 1\nMOV 0x28(%RDX),%R14             | 1     | 0  | 0  | 1    | 0    | 0    | 0    | 0  | 4       | 1\nLEA (,%R8,4),%RDX               | 1     | 0  | 0  | 0    | 0    | 0.50 | 0.50 | 0  | 1       | 0.50\nMOV %RCX,0x28(%RSP)             | 1     | 0  | 0  | 0.50 | 0.50 | 0    | 0    | 1  | 0       | 1\nMOV %RDI,0x38(%RSP)             | 1     | 0  | 0  | 0.50 | 0.50 | 0    | 0    | 1  | 0       | 1\nLEA (%R11,%RDX,1),%RSI          | 1     | 0  | 0  | 0    | 0    | 0.50 | 0.50 | 0  | 1       | 0.50\nLEA (%R10,%RDX,1),%RCX          | 1     | 0  | 0  | 0    | 0    | 0.50 | 0.50 | 0  | 1       | 0.50\nMOV %R8,%RDI                    | 1     | 0  | 0  | 0    | 0    | 0.50 | 0.50 | 0  | 0       | 0.50\nVMOVSS 0xcca(%RIP),%XMM10       | 1     | 0  | 0  | 0.50 | 0.50 | 0    | 0    | 0  | 5       | 0.50\nADD %R9,%RDX                    | 1     | 0  | 0  | 0    | 0    | 0.50 | 0.50 | 0  | 1       | 0.50\nVMOVSS 0xcc3(%RIP),%XMM9        | 1     | 0  | 0  | 0.50 | 0.50 | 0    | 0    | 0  | 5       | 0.50\nNOPL (%RAX)                     | 1     | 0  | 0  | 0    | 0    | 0.50 | 0.50 | 0  | 0       | 0.50\nNOPW %CS:(%RAX,%RAX,1)          | 1     | 0  | 0  | 0    | 0    | 0.50 | 0.50 | 0  | 0       | 0.50\n",
        },
      },
      header = {
        "0% of peak computational performance is used (0.00 out of 4.00 FLOP per cycle (GFLOPS @ 1GHz))",
      },
      brief = {
      },
      gain = {
        {
          workaround = " - Try to reorganize arrays of structures to structures of arrays\n - Consider to permute loops (see vectorization gain report)\n",
          title = "Code clean check",
          txt = "Detected a slowdown caused by scalar integer instructions (typically used for address computation).\nBy removing them, you can lower the cost of an iteration from 28.00 to 5.00 cycles (5.60x speedup).",
        },
        {
          workaround = " - Try another compiler or update/tune your current one\n - Make array accesses unit-stride:\n  * If your function streams arrays of structures (AoS), try to use structures of arrays instead (SoA):\nfor(i) a[i].x = b[i].x; (slow, non stride 1) => for(i) a.x[i] = b.x[i]; (fast, stride 1)\n",
          details = "Store and arithmetical SSE/AVX instructions are used in scalar version (process only one data element in vector registers).\nSince your execution units are vector units, only a vectorized function can use their full power.\n",
          title = "Vectorization",
          txt = "Your function is probably not vectorized.\nOnly 17% of vector register length is used (average across all SSE/AVX instructions).\nBy vectorizing your function, you can lower the cost of an iteration from 28.00 to 20.93 cycles (1.34x speedup).",
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
      "The function is defined in /users/user2234/VersionFinaleNbody3DOptimisé/nbody4.c:87,93-145.\n",
      "Warnings:\nIgnoring paths for analysis",
    },
  },
}
