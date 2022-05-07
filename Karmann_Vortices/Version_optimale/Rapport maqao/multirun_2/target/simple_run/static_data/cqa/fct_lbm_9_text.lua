_cqa_text_report = {
  paths = {
    {
      hint = {
        {
          details = "Calling (and then returning from) a function prevents many compiler optimizations (like vectorization), breaks control flow (which reduces pipeline performance) and executes extra instructions to save/restore the registers used inside it, which is very expensive (dozens of cycles). Consider to inline small functions.\n - unknown: 2 occurrences\n",
          title = "CALL instructions",
          txt = "Detected function call instructions.\n",
        },
        {
          title = "Type of elements and instruction set",
          txt = "No instructions are processing arithmetic or math operations on FP elements. This function is probably writing/copying data or processing integer elements.",
        },
        {
          title = "Matching between your function (in the source code) and the binary function",
          txt = "The binary function does not contain any FP arithmetical operations.\nThe binary function is loading 24 bytes.",
        },
      },
      expert = {
        {
          title = "General properties",
          txt = "nb instructions    : 48\nloop length        : 169\nused x86 registers : 15\nused mmx registers : 0\nused xmm registers : 0\nused ymm registers : 0\nused zmm registers : 0\nnb stack references: 4\n",
        },
        {
          title = "Front-end",
          txt = "MACRO FUSION NOT POSSIBLE\ninstruction fetch    : 11.00 cycles\ninstruction queue    : 24.00 cycles\ndecoding             : 24.00 cycles\nmicro-operation queue: 28.00 cycles\nfront end            : 28.00 cycles\n",
        },
        {
          title = "Back-end",
          txt = "       | P0    | P1   | P2   | P3   | P4    | P5    | P6\n----------------------------------------------------------\nuops   | 18.00 | 0.00 | 5.00 | 5.00 | 22.00 | 22.00 | 6.00\ncycles | 18.00 | 0.00 | 5.00 | 5.00 | 22.00 | 22.00 | 6.00\n\nCycles executing div or sqrt instructions: 22.00-95.00\n",
        },
        {
          title = "Cycles summary",
          txt = "Front-end : 28.00\nDispatch  : 22.00\nDIV/SQRT  : 22.00-95.00\nOverall L1: 28.00-95.00\n",
        },
        {
          title = "Vectorization ratios",
          txt = "all     : 0%\nload    : 0%\nstore   : NA (no store vectorizable/vectorized instructions)\nmul     : 0%\nadd-sub : 0%\nfma     : NA (no fma vectorizable/vectorized instructions)\ndiv/sqrt: 0%\nother   : 0%\n",
        },
        {
          title = "Vector efficiency ratios",
          txt = "all     : 10%\nload    : 9%\nstore   : NA (no store vectorizable/vectorized instructions)\nmul     : 12%\nadd-sub : 12%\nfma     : NA (no fma vectorizable/vectorized instructions)\ndiv/sqrt: 12%\nother   : 10%\n",
        },
        {
          title = "Cycles and memory resources usage",
          txt = "Assuming all data fit into the L1 cache, each call to the function takes 95.00 cycles. At this rate:\n - 0% of peak load performance is reached (0.25 out of 128.00 bytes loaded per cycle (GB/s @ 1GHz))\n",
        },
        {
          title = "Front-end bottlenecks",
          txt = "Found no such bottlenecks.",
        },
        {
          title = "ASM code",
          txt = "In the binary file, the address of the function is: 3370\n\nInstruction                            | Nb FU | P0    | P1 | P2   | P3   | P4    | P5   | P6 | Latency | Recip. throughput\n---------------------------------------------------------------------------------------------------------------------------\nENDBR64\nPUSH %R15                              | 1     | 0     | 0  | 0    | 0    | 1     | 1    | 0  | 0       | 1\nPUSH %R14                              | 1     | 0     | 0  | 0    | 0    | 1     | 1    | 0  | 0       | 1\nPUSH %R13                              | 1     | 0     | 0  | 0    | 0    | 1     | 1    | 0  | 0       | 1\nPUSH %R12                              | 1     | 0     | 0  | 0    | 0    | 1     | 1    | 0  | 0       | 1\nPUSH %RBP                              | 1     | 0     | 0  | 0    | 0    | 1     | 1    | 0  | 0       | 1\nPUSH %RBX                              | 1     | 0     | 0  | 0    | 0    | 1     | 1    | 0  | 0       | 1\nLEA -0x8(%RSP),%RSP                    | 1     | 0     | 0  | 0    | 0    | 0.50  | 0.50 | 0  | 1       | 0.50\nMOV (%RDI),%RBP                        | 1     | 0     | 0  | 1    | 0    | 0     | 0    | 0  | 4       | 1\nMOV 0x8(%RBP),%EBX                     | 1     | 0     | 0  | 1    | 0    | 0     | 0    | 0  | 4       | 1\nTEST %EBX,%EBX                         | 1     | 0     | 0  | 0    | 0    | 0.50  | 0.50 | 0  | 1       | 0.50\nJE 398d <propagation._omp_fn.0+0x61d>  | 1     | 0     | 0  | 0    | 0    | 0     | 1    | 0  | 0       | 1-2\nLEA (%RDI),%R13                        | 1     | 0     | 0  | 0    | 0    | 0.50  | 0.50 | 0  | 1       | 0.50\nCALL 1210 <.plt.sec@start+0x20>        | 1     | 0     | 0  | 0    | 0    | 0.50  | 0.50 | 0  | 0       | 2\nLEA (%RAX),%R12D                       | 1     | 0     | 0  | 0    | 0    | 0.50  | 0.50 | 0  | 1       | 0.50\nCALL 12b0 <.plt.sec@start+0xc0>        | 1     | 0     | 0  | 0    | 0    | 0.50  | 0.50 | 0  | 0       | 2\nMOVSXD %EAX,%R10                       | 1     | 0     | 0  | 0    | 0    | 1     | 0    | 0  | 1       | 1\nXOR %EDX,%EDX\nMOVSXD %R12D,%RCX                      | 1     | 0     | 0  | 0    | 0    | 1     | 0    | 0  | 1       | 1\nLEA (%RBX),%RAX                        | 1     | 0     | 0  | 0    | 0    | 0.50  | 0.50 | 0  | 1       | 0.50\nDIV %RCX                               | 23    | 11.50 | 0  | 0    | 0    | 11.50 | 0    | 0  | 39-95   | 22-95\nCMP %RDX,%R10                          | 1     | 0     | 0  | 0    | 0    | 0.50  | 0.50 | 0  | 1       | 0.50\nJB 399d <propagation._omp_fn.0+0x62d>  | 1     | 0     | 0  | 0    | 0    | 0     | 1    | 0  | 0       | 1-2\nIMUL %RAX,%R10                         | 1     | 0     | 0  | 0    | 0    | 1     | 0    | 0  | 5       | 2\nMOV %RAX,%R12                          | 1     | 0     | 0  | 0    | 0    | 0.50  | 0.50 | 0  | 0       | 0.50\nADD %RDX,%R10                          | 1     | 0     | 0  | 0    | 0    | 0.50  | 0.50 | 0  | 1       | 0.50\nADD %R10,%R12                          | 1     | 0     | 0  | 0    | 0    | 0.50  | 0.50 | 0  | 1       | 0.50\nCMP %R12,%R10                          | 1     | 0     | 0  | 0    | 0    | 0.50  | 0.50 | 0  | 1       | 0.50\nJAE 398d <propagation._omp_fn.0+0x61d> | 1     | 0     | 0  | 0    | 0    | 0     | 1    | 0  | 0       | 1-2\nMOV 0xc(%RBP),%ECX                     | 1     | 0     | 0  | 1    | 0    | 0     | 0    | 0  | 4       | 1\nLEA 0x21a8(%RIP),%R8                   | 1     | 0     | 0  | 0    | 0    | 0.50  | 0.50 | 0  | 1       | 0.50\nMOV 0x8(%R13),%R11                     | 1     | 0     | 0  | 1    | 0    | 0     | 0    | 0  | 4       | 1\nLEA 0x213d(%RIP),%RDI                  | 1     | 0     | 0  | 0    | 0    | 0.50  | 0.50 | 0  | 1       | 0.50\nMOV %RCX,%R9                           | 1     | 0     | 0  | 0    | 0    | 0.50  | 0.50 | 0  | 0       | 0.50\nNOPW %CS:(%RAX,%RAX,1)                 | 1     | 0     | 0  | 0    | 0    | 0.50  | 0.50 | 0  | 0       | 0.50\nNOPW (%RAX,%RAX,1)                     | 1     | 0     | 0  | 0    | 0    | 0.50  | 0.50 | 0  | 0       | 0.50\nLEA 0x8(%RSP),%RSP                     | 1     | 0     | 0  | 0    | 0    | 0.50  | 0.50 | 0  | 1       | 0.50\nPOP %RBX                               | 2     | 0     | 0  | 0.50 | 0.50 | 0     | 0    | 1  | 0       | 1\nPOP %RBP                               | 2     | 0     | 0  | 0.50 | 0.50 | 0     | 0    | 1  | 0       | 1\nPOP %R12                               | 2     | 0     | 0  | 0.50 | 0.50 | 0     | 0    | 1  | 0       | 1\nPOP %R13                               | 2     | 0     | 0  | 0.50 | 0.50 | 0     | 0    | 1  | 0       | 1\nPOP %R14                               | 2     | 0     | 0  | 0.50 | 0.50 | 0     | 0    | 1  | 0       | 1\nPOP %R15                               | 2     | 0     | 0  | 0.50 | 0.50 | 0     | 0    | 1  | 0       | 1\nRET\nADD $0x1,%RAX                          | 1     | 0     | 0  | 0    | 0    | 0.50  | 0.50 | 0  | 1       | 0.50\nXOR %EDX,%EDX\nJMP 33b8 <propagation._omp_fn.0+0x48>  | 1     | 0     | 0  | 0    | 0    | 0     | 1    | 0  | 0       | 2\nNOPL (%RAX,%RAX,1)                     | 1     | 0     | 0  | 0    | 0    | 0.50  | 0.50 | 0  | 0       | 0.50\n",
        },
      },
      header = {
        "Warnings:\nDetected a function call instruction: ignoring called function instructions.\nRerun with --follow-calls=append to include them to analysis  or with --follow-calls=inline to simulate inlining.",
        "0% of peak computational performance is used (0.00 out of 4.00 FLOP per cycle (GFLOPS @ 1GHz))",
      },
      brief = {
      },
      gain = {
        {
          workaround = " - Try another compiler or update/tune your current one\n - Make array accesses unit-stride:\n  * If your function streams arrays of structures (AoS), try to use structures of arrays instead (SoA):\nfor(i) a[i].x = b[i].x; (slow, non stride 1) => for(i) a.x[i] = b.x[i]; (fast, stride 1)\n",
          details = "All SSE/AVX instructions are used in scalar version (process only one data element in vector registers).\nSince your execution units are vector units, only a vectorized function can use their full power.\n",
          title = "Vectorization",
          txt = "Your function is not vectorized.\nOnly 10% of vector register length is used (average across all SSE/AVX instructions).\nBy vectorizing your function, you can lower the cost of an iteration from 95.00 to 11.87 cycles (8.00x speedup).",
        },
        {
          workaround = "Reduce the number of division or square root instructions:\n - If denominator is constant over iterations, use reciprocal (replace x/y with x*(1/y)). Check precision impact. This will be done by your compiler with ffast-math or Ofast\n",
          title = "Execution units bottlenecks",
          txt = "Performance is limited by execution of divide and square root operations (the divide/square root unit is a bottleneck).\n\nBy removing all these bottlenecks, you can lower the cost of an iteration from 95.00 to 28.00 cycles (3.39x speedup).\n",
        },
      },
      potential = {
        {
          title = "Expensive FP math instructions/calls",
          txt = "Detected performance impact from expensive FP math instructions/calls.\nBy removing/reexpressing them, you can lower the cost of an iteration from 95.00 to 28.00 cycles (3.39x speedup).",
        },
      },
    },
  },
  AVG = {
      hint = {
        {
          details = "Calling (and then returning from) a function prevents many compiler optimizations (like vectorization), breaks control flow (which reduces pipeline performance) and executes extra instructions to save/restore the registers used inside it, which is very expensive (dozens of cycles). Consider to inline small functions.\n - unknown: 2 occurrences\n",
          title = "CALL instructions",
          txt = "Detected function call instructions.\n",
        },
        {
          title = "Type of elements and instruction set",
          txt = "No instructions are processing arithmetic or math operations on FP elements. This function is probably writing/copying data or processing integer elements.",
        },
        {
          title = "Matching between your function (in the source code) and the binary function",
          txt = "The binary function does not contain any FP arithmetical operations.\nThe binary function is loading 24 bytes.",
        },
      },
      expert = {
        {
          title = "General properties",
          txt = "nb instructions    : 48\nloop length        : 169\nused x86 registers : 15\nused mmx registers : 0\nused xmm registers : 0\nused ymm registers : 0\nused zmm registers : 0\nnb stack references: 4\n",
        },
        {
          title = "Front-end",
          txt = "MACRO FUSION NOT POSSIBLE\ninstruction fetch    : 11.00 cycles\ninstruction queue    : 24.00 cycles\ndecoding             : 24.00 cycles\nmicro-operation queue: 28.00 cycles\nfront end            : 28.00 cycles\n",
        },
        {
          title = "Back-end",
          txt = "       | P0    | P1   | P2   | P3   | P4    | P5    | P6\n----------------------------------------------------------\nuops   | 18.00 | 0.00 | 5.00 | 5.00 | 22.00 | 22.00 | 6.00\ncycles | 18.00 | 0.00 | 5.00 | 5.00 | 22.00 | 22.00 | 6.00\n\nCycles executing div or sqrt instructions: 22.00-95.00\n",
        },
        {
          title = "Cycles summary",
          txt = "Front-end : 28.00\nDispatch  : 22.00\nDIV/SQRT  : 22.00-95.00\nOverall L1: 28.00-95.00\n",
        },
        {
          title = "Vectorization ratios",
          txt = "all     : 0%\nload    : 0%\nstore   : NA (no store vectorizable/vectorized instructions)\nmul     : 0%\nadd-sub : 0%\nfma     : NA (no fma vectorizable/vectorized instructions)\ndiv/sqrt: 0%\nother   : 0%\n",
        },
        {
          title = "Vector efficiency ratios",
          txt = "all     : 10%\nload    : 9%\nstore   : NA (no store vectorizable/vectorized instructions)\nmul     : 12%\nadd-sub : 12%\nfma     : NA (no fma vectorizable/vectorized instructions)\ndiv/sqrt: 12%\nother   : 10%\n",
        },
        {
          title = "Cycles and memory resources usage",
          txt = "Assuming all data fit into the L1 cache, each call to the function takes 95.00 cycles. At this rate:\n - 0% of peak load performance is reached (0.25 out of 128.00 bytes loaded per cycle (GB/s @ 1GHz))\n",
        },
        {
          title = "Front-end bottlenecks",
          txt = "Found no such bottlenecks.",
        },
        {
          title = "ASM code",
          txt = "In the binary file, the address of the function is: 3370\n\nInstruction                            | Nb FU | P0    | P1 | P2   | P3   | P4    | P5   | P6 | Latency | Recip. throughput\n---------------------------------------------------------------------------------------------------------------------------\nENDBR64\nPUSH %R15                              | 1     | 0     | 0  | 0    | 0    | 1     | 1    | 0  | 0       | 1\nPUSH %R14                              | 1     | 0     | 0  | 0    | 0    | 1     | 1    | 0  | 0       | 1\nPUSH %R13                              | 1     | 0     | 0  | 0    | 0    | 1     | 1    | 0  | 0       | 1\nPUSH %R12                              | 1     | 0     | 0  | 0    | 0    | 1     | 1    | 0  | 0       | 1\nPUSH %RBP                              | 1     | 0     | 0  | 0    | 0    | 1     | 1    | 0  | 0       | 1\nPUSH %RBX                              | 1     | 0     | 0  | 0    | 0    | 1     | 1    | 0  | 0       | 1\nLEA -0x8(%RSP),%RSP                    | 1     | 0     | 0  | 0    | 0    | 0.50  | 0.50 | 0  | 1       | 0.50\nMOV (%RDI),%RBP                        | 1     | 0     | 0  | 1    | 0    | 0     | 0    | 0  | 4       | 1\nMOV 0x8(%RBP),%EBX                     | 1     | 0     | 0  | 1    | 0    | 0     | 0    | 0  | 4       | 1\nTEST %EBX,%EBX                         | 1     | 0     | 0  | 0    | 0    | 0.50  | 0.50 | 0  | 1       | 0.50\nJE 398d <propagation._omp_fn.0+0x61d>  | 1     | 0     | 0  | 0    | 0    | 0     | 1    | 0  | 0       | 1-2\nLEA (%RDI),%R13                        | 1     | 0     | 0  | 0    | 0    | 0.50  | 0.50 | 0  | 1       | 0.50\nCALL 1210 <.plt.sec@start+0x20>        | 1     | 0     | 0  | 0    | 0    | 0.50  | 0.50 | 0  | 0       | 2\nLEA (%RAX),%R12D                       | 1     | 0     | 0  | 0    | 0    | 0.50  | 0.50 | 0  | 1       | 0.50\nCALL 12b0 <.plt.sec@start+0xc0>        | 1     | 0     | 0  | 0    | 0    | 0.50  | 0.50 | 0  | 0       | 2\nMOVSXD %EAX,%R10                       | 1     | 0     | 0  | 0    | 0    | 1     | 0    | 0  | 1       | 1\nXOR %EDX,%EDX\nMOVSXD %R12D,%RCX                      | 1     | 0     | 0  | 0    | 0    | 1     | 0    | 0  | 1       | 1\nLEA (%RBX),%RAX                        | 1     | 0     | 0  | 0    | 0    | 0.50  | 0.50 | 0  | 1       | 0.50\nDIV %RCX                               | 23    | 11.50 | 0  | 0    | 0    | 11.50 | 0    | 0  | 39-95   | 22-95\nCMP %RDX,%R10                          | 1     | 0     | 0  | 0    | 0    | 0.50  | 0.50 | 0  | 1       | 0.50\nJB 399d <propagation._omp_fn.0+0x62d>  | 1     | 0     | 0  | 0    | 0    | 0     | 1    | 0  | 0       | 1-2\nIMUL %RAX,%R10                         | 1     | 0     | 0  | 0    | 0    | 1     | 0    | 0  | 5       | 2\nMOV %RAX,%R12                          | 1     | 0     | 0  | 0    | 0    | 0.50  | 0.50 | 0  | 0       | 0.50\nADD %RDX,%R10                          | 1     | 0     | 0  | 0    | 0    | 0.50  | 0.50 | 0  | 1       | 0.50\nADD %R10,%R12                          | 1     | 0     | 0  | 0    | 0    | 0.50  | 0.50 | 0  | 1       | 0.50\nCMP %R12,%R10                          | 1     | 0     | 0  | 0    | 0    | 0.50  | 0.50 | 0  | 1       | 0.50\nJAE 398d <propagation._omp_fn.0+0x61d> | 1     | 0     | 0  | 0    | 0    | 0     | 1    | 0  | 0       | 1-2\nMOV 0xc(%RBP),%ECX                     | 1     | 0     | 0  | 1    | 0    | 0     | 0    | 0  | 4       | 1\nLEA 0x21a8(%RIP),%R8                   | 1     | 0     | 0  | 0    | 0    | 0.50  | 0.50 | 0  | 1       | 0.50\nMOV 0x8(%R13),%R11                     | 1     | 0     | 0  | 1    | 0    | 0     | 0    | 0  | 4       | 1\nLEA 0x213d(%RIP),%RDI                  | 1     | 0     | 0  | 0    | 0    | 0.50  | 0.50 | 0  | 1       | 0.50\nMOV %RCX,%R9                           | 1     | 0     | 0  | 0    | 0    | 0.50  | 0.50 | 0  | 0       | 0.50\nNOPW %CS:(%RAX,%RAX,1)                 | 1     | 0     | 0  | 0    | 0    | 0.50  | 0.50 | 0  | 0       | 0.50\nNOPW (%RAX,%RAX,1)                     | 1     | 0     | 0  | 0    | 0    | 0.50  | 0.50 | 0  | 0       | 0.50\nLEA 0x8(%RSP),%RSP                     | 1     | 0     | 0  | 0    | 0    | 0.50  | 0.50 | 0  | 1       | 0.50\nPOP %RBX                               | 2     | 0     | 0  | 0.50 | 0.50 | 0     | 0    | 1  | 0       | 1\nPOP %RBP                               | 2     | 0     | 0  | 0.50 | 0.50 | 0     | 0    | 1  | 0       | 1\nPOP %R12                               | 2     | 0     | 0  | 0.50 | 0.50 | 0     | 0    | 1  | 0       | 1\nPOP %R13                               | 2     | 0     | 0  | 0.50 | 0.50 | 0     | 0    | 1  | 0       | 1\nPOP %R14                               | 2     | 0     | 0  | 0.50 | 0.50 | 0     | 0    | 1  | 0       | 1\nPOP %R15                               | 2     | 0     | 0  | 0.50 | 0.50 | 0     | 0    | 1  | 0       | 1\nRET\nADD $0x1,%RAX                          | 1     | 0     | 0  | 0    | 0    | 0.50  | 0.50 | 0  | 1       | 0.50\nXOR %EDX,%EDX\nJMP 33b8 <propagation._omp_fn.0+0x48>  | 1     | 0     | 0  | 0    | 0    | 0     | 1    | 0  | 0       | 2\nNOPL (%RAX,%RAX,1)                     | 1     | 0     | 0  | 0    | 0    | 0.50  | 0.50 | 0  | 0       | 0.50\n",
        },
      },
      header = {
        "Warnings:\nDetected a function call instruction: ignoring called function instructions.\nRerun with --follow-calls=append to include them to analysis  or with --follow-calls=inline to simulate inlining.",
        "0% of peak computational performance is used (0.00 out of 4.00 FLOP per cycle (GFLOPS @ 1GHz))",
      },
      brief = {
      },
      gain = {
        {
          workaround = " - Try another compiler or update/tune your current one\n - Make array accesses unit-stride:\n  * If your function streams arrays of structures (AoS), try to use structures of arrays instead (SoA):\nfor(i) a[i].x = b[i].x; (slow, non stride 1) => for(i) a.x[i] = b.x[i]; (fast, stride 1)\n",
          details = "All SSE/AVX instructions are used in scalar version (process only one data element in vector registers).\nSince your execution units are vector units, only a vectorized function can use their full power.\n",
          title = "Vectorization",
          txt = "Your function is not vectorized.\nOnly 10% of vector register length is used (average across all SSE/AVX instructions).\nBy vectorizing your function, you can lower the cost of an iteration from 95.00 to 11.87 cycles (8.00x speedup).",
        },
        {
          workaround = "Reduce the number of division or square root instructions:\n - If denominator is constant over iterations, use reciprocal (replace x/y with x*(1/y)). Check precision impact. This will be done by your compiler with ffast-math or Ofast\n",
          title = "Execution units bottlenecks",
          txt = "Performance is limited by execution of divide and square root operations (the divide/square root unit is a bottleneck).\n\nBy removing all these bottlenecks, you can lower the cost of an iteration from 95.00 to 28.00 cycles (3.39x speedup).\n",
        },
      },
      potential = {
        {
          title = "Expensive FP math instructions/calls",
          txt = "Detected performance impact from expensive FP math instructions/calls.\nBy removing/reexpressing them, you can lower the cost of an iteration from 95.00 to 28.00 cycles (3.39x speedup).",
        },
      },
    },
  common = {
    header = {
      "The function is defined in:\n - /users/user2207/lbm_opt/include/lbm_struct.h:130\n - /users/user2207/lbm_opt/src/lbm_phys.c:229-242\n\n",
      "Warnings:\nIgnoring paths for analysis",
    },
  },
}
