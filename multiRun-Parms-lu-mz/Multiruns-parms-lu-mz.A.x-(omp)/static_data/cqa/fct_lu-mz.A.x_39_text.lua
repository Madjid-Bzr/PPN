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
          workaround = "Avoid mixing data with different types. In particular, check if the type of constants is the same as array elements.",
          details = " - CLTD: 1 occurrences\n",
          title = "Conversion instructions",
          txt = "Detected expensive conversion instructions.",
        },
        {
          title = "Type of elements and instruction set",
          txt = "No instructions are processing arithmetic or math operations on FP elements. This function is probably writing/copying data or processing integer elements.",
        },
        {
          title = "Matching between your function (in the source code) and the binary function",
          txt = "The binary function does not contain any FP arithmetical operations.\nThe binary function is loading 64 bytes.\nThe binary function is storing 104 bytes.",
        },
      },
      expert = {
        {
          title = "General properties",
          txt = "nb instructions    : 79\nloop length        : 280\nused x86 registers : 15\nused mmx registers : 0\nused xmm registers : 6\nused ymm registers : 0\nused zmm registers : 0\nnb stack references: 8\n",
        },
        {
          title = "Front-end",
          txt = "MACRO FUSION NOT POSSIBLE\ninstruction fetch    : 18.00 cycles\ninstruction queue    : 39.50 cycles\ndecoding             : 39.50 cycles\nmicro-operation queue: 44.00 cycles\nfront end            : 44.00 cycles\n",
        },
        {
          title = "Back-end",
          txt = "       | P0    | P1   | P2    | P3    | P4    | P5    | P6\n-------------------------------------------------------------\nuops   | 22.00 | 0.00 | 13.00 | 13.00 | 27.50 | 27.50 | 17.00\ncycles | 22.00 | 0.00 | 13.00 | 13.00 | 27.50 | 27.50 | 17.00\n\nCycles executing div or sqrt instructions: 22.00-26.00\n",
        },
        {
          title = "Cycles summary",
          txt = "Front-end : 44.00\nDispatch  : 27.50\nDIV/SQRT  : 22.00-26.00\nOverall L1: 44.00\n",
        },
        {
          title = "Vectorization ratios",
          txt = "INT\nall    : 27%\nload   : 0%\nstore  : 0%\nmul    : NA (no mul vectorizable/vectorized instructions)\nadd-sub: 0%\nfma    : NA (no fma vectorizable/vectorized instructions)\nother  : 42%\nFP\nall     : 28%\nload    : NA (no load vectorizable/vectorized instructions)\nstore   : 28%\nmul     : NA (no mul vectorizable/vectorized instructions)\nadd-sub : NA (no add-sub vectorizable/vectorized instructions)\nfma     : NA (no fma vectorizable/vectorized instructions)\ndiv/sqrt: NA (no div/sqrt vectorizable/vectorized instructions)\nother   : NA (no other vectorizable/vectorized instructions)\nINT+FP\nall     : 27%\nload    : 0%\nstore   : 18%\nmul     : NA (no mul vectorizable/vectorized instructions)\nadd-sub : 0%\nfma     : NA (no fma vectorizable/vectorized instructions)\ndiv/sqrt: 0%\nother   : 46%\n",
        },
        {
          title = "Vector efficiency ratios",
          txt = "INT\nall    : 13%\nload   : 10%\nstore  : 10%\nmul    : NA (no mul vectorizable/vectorized instructions)\nadd-sub: 12%\nfma    : NA (no fma vectorizable/vectorized instructions)\nother  : 14%\nFP\nall     : 16%\nload    : NA (no load vectorizable/vectorized instructions)\nstore   : 16%\nmul     : NA (no mul vectorizable/vectorized instructions)\nadd-sub : NA (no add-sub vectorizable/vectorized instructions)\nfma     : NA (no fma vectorizable/vectorized instructions)\ndiv/sqrt: NA (no div/sqrt vectorizable/vectorized instructions)\nother   : NA (no other vectorizable/vectorized instructions)\nINT+FP\nall     : 13%\nload    : 10%\nstore   : 14%\nmul     : NA (no mul vectorizable/vectorized instructions)\nadd-sub : 12%\nfma     : NA (no fma vectorizable/vectorized instructions)\ndiv/sqrt: 6%\nother   : 14%\n",
        },
        {
          title = "Cycles and memory resources usage",
          txt = "Assuming all data fit into the L1 cache, each call to the function takes 44.00 cycles. At this rate:\n - 1% of peak load performance is reached (1.45 out of 128.00 bytes loaded per cycle (GB/s @ 1GHz))\n - 3% of peak store performance is reached (2.36 out of 64.00 bytes stored per cycle (GB/s @ 1GHz))\n",
        },
        {
          title = "Front-end bottlenecks",
          txt = "Performance is limited by instruction throughput (loading/decoding program instructions to execution core) (front-end is a bottleneck).\n\nBy removing all these bottlenecks, you can lower the cost of an iteration from 44.00 to 39.50 cycles (1.11x speedup).\n",
        },
        {
          title = "ASM code",
          txt = "In the binary file, the address of the function is: 1e940\n\nInstruction                         | Nb FU | P0    | P1 | P2   | P3   | P4    | P5   | P6 | Latency | Recip. throughput\n------------------------------------------------------------------------------------------------------------------------\nPUSH %R15                           | 1     | 0     | 0  | 0    | 0    | 1     | 1    | 0  | 0       | 1\nPUSH %R14                           | 1     | 0     | 0  | 0    | 0    | 1     | 1    | 0  | 0       | 1\nPUSH %R13                           | 1     | 0     | 0  | 0    | 0    | 1     | 1    | 0  | 0       | 1\nPUSH %R12                           | 1     | 0     | 0  | 0    | 0    | 1     | 1    | 0  | 0       | 1\nMOV %RDI,%R12                       | 1     | 0     | 0  | 0    | 0    | 0.50  | 0.50 | 0  | 0       | 0.50\nPUSH %RBP                           | 1     | 0     | 0  | 0    | 0    | 1     | 1    | 0  | 0       | 1\nPUSH %RBX                           | 1     | 0     | 0  | 0    | 0    | 1     | 1    | 0  | 0       | 1\nPXOR %XMM0,%XMM0\nSUB $0x58,%RSP                      | 1     | 0     | 0  | 0    | 0    | 0.50  | 0.50 | 0  | 1       | 0.50\nMOV 0x20(%RDI),%RAX                 | 1     | 0     | 0  | 1    | 0    | 0     | 0    | 0  | 4       | 1\nMOV 0x38(%RDI),%R15                 | 1     | 0     | 0  | 1    | 0    | 0     | 0    | 0  | 4       | 1\nMOV 0x30(%RDI),%R13                 | 1     | 0     | 0  | 1    | 0    | 0     | 0    | 0  | 4       | 1\nMOV 0x28(%RDI),%RBP                 | 1     | 0     | 0  | 1    | 0    | 0     | 0    | 0  | 4       | 1\nMOVAPS %XMM0,0x20(%RSP)             | 1     | 0     | 0  | 0.50 | 0.50 | 0     | 0    | 1  | 2       | 1\nMOV (%RAX),%R14D                    | 1     | 0     | 0  | 1    | 0    | 0     | 0    | 0  | 4       | 1\nMOVQ $0,0x40(%RSP)                  | 1     | 0     | 0  | 0.50 | 0.50 | 0     | 0    | 1  | 1       | 1\nMOVAPS %XMM0,0x30(%RSP)             | 1     | 0     | 0  | 0.50 | 0.50 | 0     | 0    | 1  | 2       | 1\nCMP $0x2,%R14D                      | 1     | 0     | 0  | 0    | 0    | 0.50  | 0.50 | 0  | 1       | 0.50\nJLE 1eadb <l2norm_._omp_fn.0+0x19b> | 1     | 0     | 0  | 0    | 0    | 0     | 1    | 0  | 0       | 1-2\nCALL 2060 <@plt_start@+0x40>        | 1     | 0     | 0  | 0    | 0    | 0.50  | 0.50 | 0  | 0       | 2\nMOV %EAX,%EBX                       | 1     | 0     | 0  | 0    | 0    | 0.50  | 0.50 | 0  | 0       | 0.50\nCALL 2120 <@plt_start@+0x100>       | 1     | 0     | 0  | 0    | 0    | 0.50  | 0.50 | 0  | 0       | 2\nMOV %EAX,%ECX                       | 1     | 0     | 0  | 0    | 0    | 0.50  | 0.50 | 0  | 0       | 0.50\nMOV 0x18(%R12),%RAX                 | 1     | 0     | 0  | 1    | 0    | 0     | 0    | 0  | 4       | 1\nLEA (%R15,%R13,2),%R10              | 1     | 0     | 0  | 0    | 0    | 0.50  | 0.50 | 0  | 1       | 0.50\nLEA (,%RBP,8),%R11                  | 1     | 0     | 0  | 0    | 0    | 0.50  | 0.50 | 0  | 1       | 0.50\nPXOR %XMM1,%XMM1\nPXOR %XMM4,%XMM4\nMOV (%RAX),%EAX                     | 1     | 0     | 0  | 1    | 0    | 0     | 0    | 0  | 4       | 1\nPXOR %XMM3,%XMM3\nPXOR %XMM2,%XMM2\nPXOR %XMM5,%XMM5\nSUB $0x2,%EAX                       | 1     | 0     | 0  | 0    | 0    | 0.50  | 0.50 | 0  | 1       | 0.50\nCLTD\nIDIV %EBX                           | 29    | 14.50 | 0  | 0    | 0    | 14.50 | 0    | 0  | 37-49   | 22-26\nMOV 0x10(%R12),%RBX                 | 1     | 0     | 0  | 1    | 0    | 0     | 0    | 0  | 4       | 1\nMOV %RBX,0x8(%RSP)                  | 1     | 0     | 0  | 0.50 | 0.50 | 0     | 0    | 1  | 0       | 1\nLEA 0x1(%RAX),%R8D                  | 1     | 0     | 0  | 0    | 0    | 0.50  | 0.50 | 0  | 1       | 0.50\nCMP %EDX,%ECX                       | 1     | 0     | 0  | 0    | 0    | 0.50  | 0.50 | 0  | 1       | 0.50\nCMOVL %R8D,%EAX                     | 1     | 0     | 0  | 0    | 0    | 0.50  | 0.50 | 0  | 2       | 1\nMOV %EAX,%EDI                       | 1     | 0     | 0  | 0    | 0    | 0.50  | 0.50 | 0  | 0       | 0.50\nIMUL %ECX,%EDI                      | 1     | 0     | 0  | 0    | 0    | 1     | 0    | 0  | 3       | 1\nCMP %EDX,%ECX                       | 1     | 0     | 0  | 0    | 0    | 0.50  | 0.50 | 0  | 1       | 0.50\nMOV (%R12),%RCX                     | 1     | 0     | 0  | 1    | 0    | 0     | 0    | 0  | 4       | 1\nLEA (%RDX,%RDI,1),%ESI              | 1     | 0     | 0  | 0    | 0    | 0.50  | 0.50 | 0  | 1       | 0.50\nCMOVGE %ESI,%EDI                    | 1     | 0     | 0  | 0    | 0    | 0.50  | 0.50 | 0  | 2       | 1\nSUB $-0x80,%RCX                     | 1     | 0     | 0  | 0    | 0    | 0.50  | 0.50 | 0  | 1       | 0.50\nMOV $0x2,%ESI                       | 1     | 0     | 0  | 0    | 0    | 0.50  | 0.50 | 0  | 1       | 0.50\nLEA 0x2(%RDI),%R15D                 | 1     | 0     | 0  | 0    | 0    | 0.50  | 0.50 | 0  | 1       | 0.50\nLEA (%RAX,%RDI,1),%R8D              | 1     | 0     | 0  | 0    | 0    | 0.50  | 0.50 | 0  | 1       | 0.50\nMOV %RCX,0x18(%RSP)                 | 1     | 0     | 0  | 0.50 | 0.50 | 0     | 0    | 1  | 0       | 1\nMOVSXD %R15D,%RAX                   | 1     | 0     | 0  | 0    | 0    | 1     | 0    | 0  | 1       | 1\nLEA 0x2(%R8),%EBX                   | 1     | 0     | 0  | 0    | 0    | 0.50  | 0.50 | 0  | 1       | 0.50\nIMUL %RBP,%RAX                      | 1     | 0     | 0  | 0    | 0    | 1     | 0    | 0  | 5       | 2\nMOV %RAX,0x10(%RSP)                 | 1     | 0     | 0  | 0.50 | 0.50 | 0     | 0    | 1  | 0       | 1\nXOR %EAX,%EAX\nJMP 1ea1f <l2norm_._omp_fn.0+0xdf>  | 1     | 0     | 0  | 0    | 0    | 0     | 1    | 0  | 0       | 2\nNOP                                 | 1     | 0     | 0  | 0    | 0    | 0.50  | 0.50 | 0  | 0       | 0.50\nTEST %AL,%AL                        | 1     | 0     | 0  | 0    | 0    | 0.50  | 0.50 | 0  | 1       | 0.50\nJNE 1eb35 <l2norm_._omp_fn.0+0x1f5> | 1     | 0     | 0  | 0    | 0    | 0     | 1    | 0  | 0       | 1-2\nLEA 0x20(%RSP),%R8                  | 1     | 0     | 0  | 0    | 0    | 0.50  | 0.50 | 0  | 1       | 0.50\nXOR %EDI,%EDI\nNOPL (%RAX)                         | 1     | 0     | 0  | 0    | 0    | 0.50  | 0.50 | 0  | 0       | 0.50\nADD $0x58,%RSP                      | 1     | 0     | 0  | 0    | 0    | 0.50  | 0.50 | 0  | 1       | 0.50\nPOP %RBX                            | 2     | 0     | 0  | 0.50 | 0.50 | 0     | 0    | 1  | 0       | 1\nPOP %RBP                            | 2     | 0     | 0  | 0.50 | 0.50 | 0     | 0    | 1  | 0       | 1\nPOP %R12                            | 2     | 0     | 0  | 0.50 | 0.50 | 0     | 0    | 1  | 0       | 1\nPOP %R13                            | 2     | 0     | 0  | 0.50 | 0.50 | 0     | 0    | 1  | 0       | 1\nPOP %R14                            | 2     | 0     | 0  | 0.50 | 0.50 | 0     | 0    | 1  | 0       | 1\nPOP %R15                            | 2     | 0     | 0  | 0.50 | 0.50 | 0     | 0    | 1  | 0       | 1\nRET\nMOVSD %XMM5,0x20(%RSP)              | 1     | 0     | 0  | 0.50 | 0.50 | 0     | 0    | 1  | 2       | 1\nMOVSD %XMM2,0x28(%RSP)              | 1     | 0     | 0  | 0.50 | 0.50 | 0     | 0    | 1  | 2       | 1\nMOVSD %XMM3,0x30(%RSP)              | 1     | 0     | 0  | 0.50 | 0.50 | 0     | 0    | 1  | 2       | 1\nMOVSD %XMM4,0x38(%RSP)              | 1     | 0     | 0  | 0.50 | 0.50 | 0     | 0    | 1  | 2       | 1\nMOVSD %XMM1,0x40(%RSP)              | 1     | 0     | 0  | 0.50 | 0.50 | 0     | 0    | 1  | 2       | 1\nJMP 1eadb <l2norm_._omp_fn.0+0x19b> | 1     | 0     | 0  | 0    | 0    | 0     | 1    | 0  | 0       | 2\nNOP                                 | 1     | 0     | 0  | 0    | 0    | 0.50  | 0.50 | 0  | 0       | 0.50\nNOPW %CS:(%RAX,%RAX,1)              | 1     | 0     | 0  | 0    | 0    | 0.50  | 0.50 | 0  | 0       | 0.50\n",
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
          workaround = " - Try to reorganize arrays of structures to structures of arrays\n - Consider to permute loops (see vectorization gain report)\n - To reference allocatable arrays, use \"allocatable\" instead of \"pointer\" pointers or qualify them with the \"contiguous\" attribute (Fortran 2008)\n - For structures, limit to one indirection. For example, use a_b%c instead of a%b%c with a_b set to a%b before this function\n",
          title = "Code clean check",
          txt = "Detected a slowdown caused by scalar integer instructions (typically used for address computation).\nBy removing them, you can lower the cost of an iteration from 44.00 to 9.00 cycles (4.89x speedup).",
        },
        {
          workaround = " - Try another compiler or update/tune your current one\n - Make array accesses unit-stride:\n  * If your function streams arrays of structures (AoS), try to use structures of arrays instead (SoA):\ndo i a(i)%x = b(i)%x (slow, non stride 1) => do i a%x(i) = b%x(i) (fast, stride 1)\n",
          details = "27% of SSE/AVX instructions are used in vector version (process two or more data elements in vector registers):\n - 0% of SSE/AVX loads are used in vector version.\n - 18% of SSE/AVX stores are used in vector version.\n - 0% of SSE/AVX addition or subtraction instructions are used in vector version.\n - 0% of SSE/AVX nil are used in vector version.\n - 46% of SSE/AVX instructions that are not load, store, addition, subtraction nor multiply instructions are used in vector version.\nSince your execution units are vector units, only a fully vectorized function can use their full power.\n",
          title = "Vectorization",
          txt = "Your function is poorly vectorized.\nOnly 13% of vector register length is used (average across all SSE/AVX instructions).\nBy fully vectorizing your function, you can lower the cost of an iteration from 44.00 to 3.34 cycles (13.17x speedup).",
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
          details = "Calling (and then returning from) a function prevents many compiler optimizations (like vectorization), breaks control flow (which reduces pipeline performance) and executes extra instructions to save/restore the registers used inside it, which is very expensive (dozens of cycles). Consider to inline small functions.\n - unknown: 2 occurrences\n",
          title = "CALL instructions",
          txt = "Detected function call instructions.\n",
        },
        {
          workaround = "Avoid mixing data with different types. In particular, check if the type of constants is the same as array elements.",
          details = " - CLTD: 1 occurrences\n",
          title = "Conversion instructions",
          txt = "Detected expensive conversion instructions.",
        },
        {
          title = "Type of elements and instruction set",
          txt = "No instructions are processing arithmetic or math operations on FP elements. This function is probably writing/copying data or processing integer elements.",
        },
        {
          title = "Matching between your function (in the source code) and the binary function",
          txt = "The binary function does not contain any FP arithmetical operations.\nThe binary function is loading 64 bytes.\nThe binary function is storing 104 bytes.",
        },
      },
      expert = {
        {
          title = "General properties",
          txt = "nb instructions    : 79\nloop length        : 280\nused x86 registers : 15\nused mmx registers : 0\nused xmm registers : 6\nused ymm registers : 0\nused zmm registers : 0\nnb stack references: 8\n",
        },
        {
          title = "Front-end",
          txt = "MACRO FUSION NOT POSSIBLE\ninstruction fetch    : 18.00 cycles\ninstruction queue    : 39.50 cycles\ndecoding             : 39.50 cycles\nmicro-operation queue: 44.00 cycles\nfront end            : 44.00 cycles\n",
        },
        {
          title = "Back-end",
          txt = "       | P0    | P1   | P2    | P3    | P4    | P5    | P6\n-------------------------------------------------------------\nuops   | 22.00 | 0.00 | 13.00 | 13.00 | 27.50 | 27.50 | 17.00\ncycles | 22.00 | 0.00 | 13.00 | 13.00 | 27.50 | 27.50 | 17.00\n\nCycles executing div or sqrt instructions: 22.00-26.00\n",
        },
        {
          title = "Cycles summary",
          txt = "Front-end : 44.00\nDispatch  : 27.50\nDIV/SQRT  : 22.00-26.00\nOverall L1: 44.00\n",
        },
        {
          title = "Vectorization ratios",
          txt = "INT\nall    : 27%\nload   : 0%\nstore  : 0%\nmul    : NA (no mul vectorizable/vectorized instructions)\nadd-sub: 0%\nfma    : NA (no fma vectorizable/vectorized instructions)\nother  : 42%\nFP\nall     : 28%\nload    : NA (no load vectorizable/vectorized instructions)\nstore   : 28%\nmul     : NA (no mul vectorizable/vectorized instructions)\nadd-sub : NA (no add-sub vectorizable/vectorized instructions)\nfma     : NA (no fma vectorizable/vectorized instructions)\ndiv/sqrt: NA (no div/sqrt vectorizable/vectorized instructions)\nother   : NA (no other vectorizable/vectorized instructions)\nINT+FP\nall     : 27%\nload    : 0%\nstore   : 18%\nmul     : NA (no mul vectorizable/vectorized instructions)\nadd-sub : 0%\nfma     : NA (no fma vectorizable/vectorized instructions)\ndiv/sqrt: 0%\nother   : 46%\n",
        },
        {
          title = "Vector efficiency ratios",
          txt = "INT\nall    : 13%\nload   : 10%\nstore  : 10%\nmul    : NA (no mul vectorizable/vectorized instructions)\nadd-sub: 12%\nfma    : NA (no fma vectorizable/vectorized instructions)\nother  : 14%\nFP\nall     : 16%\nload    : NA (no load vectorizable/vectorized instructions)\nstore   : 16%\nmul     : NA (no mul vectorizable/vectorized instructions)\nadd-sub : NA (no add-sub vectorizable/vectorized instructions)\nfma     : NA (no fma vectorizable/vectorized instructions)\ndiv/sqrt: NA (no div/sqrt vectorizable/vectorized instructions)\nother   : NA (no other vectorizable/vectorized instructions)\nINT+FP\nall     : 13%\nload    : 10%\nstore   : 14%\nmul     : NA (no mul vectorizable/vectorized instructions)\nadd-sub : 12%\nfma     : NA (no fma vectorizable/vectorized instructions)\ndiv/sqrt: 6%\nother   : 14%\n",
        },
        {
          title = "Cycles and memory resources usage",
          txt = "Assuming all data fit into the L1 cache, each call to the function takes 44.00 cycles. At this rate:\n - 1% of peak load performance is reached (1.45 out of 128.00 bytes loaded per cycle (GB/s @ 1GHz))\n - 3% of peak store performance is reached (2.36 out of 64.00 bytes stored per cycle (GB/s @ 1GHz))\n",
        },
        {
          title = "Front-end bottlenecks",
          txt = "Performance is limited by instruction throughput (loading/decoding program instructions to execution core) (front-end is a bottleneck).\n\nBy removing all these bottlenecks, you can lower the cost of an iteration from 44.00 to 39.50 cycles (1.11x speedup).\n",
        },
        {
          title = "ASM code",
          txt = "In the binary file, the address of the function is: 1e940\n\nInstruction                         | Nb FU | P0    | P1 | P2   | P3   | P4    | P5   | P6 | Latency | Recip. throughput\n------------------------------------------------------------------------------------------------------------------------\nPUSH %R15                           | 1     | 0     | 0  | 0    | 0    | 1     | 1    | 0  | 0       | 1\nPUSH %R14                           | 1     | 0     | 0  | 0    | 0    | 1     | 1    | 0  | 0       | 1\nPUSH %R13                           | 1     | 0     | 0  | 0    | 0    | 1     | 1    | 0  | 0       | 1\nPUSH %R12                           | 1     | 0     | 0  | 0    | 0    | 1     | 1    | 0  | 0       | 1\nMOV %RDI,%R12                       | 1     | 0     | 0  | 0    | 0    | 0.50  | 0.50 | 0  | 0       | 0.50\nPUSH %RBP                           | 1     | 0     | 0  | 0    | 0    | 1     | 1    | 0  | 0       | 1\nPUSH %RBX                           | 1     | 0     | 0  | 0    | 0    | 1     | 1    | 0  | 0       | 1\nPXOR %XMM0,%XMM0\nSUB $0x58,%RSP                      | 1     | 0     | 0  | 0    | 0    | 0.50  | 0.50 | 0  | 1       | 0.50\nMOV 0x20(%RDI),%RAX                 | 1     | 0     | 0  | 1    | 0    | 0     | 0    | 0  | 4       | 1\nMOV 0x38(%RDI),%R15                 | 1     | 0     | 0  | 1    | 0    | 0     | 0    | 0  | 4       | 1\nMOV 0x30(%RDI),%R13                 | 1     | 0     | 0  | 1    | 0    | 0     | 0    | 0  | 4       | 1\nMOV 0x28(%RDI),%RBP                 | 1     | 0     | 0  | 1    | 0    | 0     | 0    | 0  | 4       | 1\nMOVAPS %XMM0,0x20(%RSP)             | 1     | 0     | 0  | 0.50 | 0.50 | 0     | 0    | 1  | 2       | 1\nMOV (%RAX),%R14D                    | 1     | 0     | 0  | 1    | 0    | 0     | 0    | 0  | 4       | 1\nMOVQ $0,0x40(%RSP)                  | 1     | 0     | 0  | 0.50 | 0.50 | 0     | 0    | 1  | 1       | 1\nMOVAPS %XMM0,0x30(%RSP)             | 1     | 0     | 0  | 0.50 | 0.50 | 0     | 0    | 1  | 2       | 1\nCMP $0x2,%R14D                      | 1     | 0     | 0  | 0    | 0    | 0.50  | 0.50 | 0  | 1       | 0.50\nJLE 1eadb <l2norm_._omp_fn.0+0x19b> | 1     | 0     | 0  | 0    | 0    | 0     | 1    | 0  | 0       | 1-2\nCALL 2060 <@plt_start@+0x40>        | 1     | 0     | 0  | 0    | 0    | 0.50  | 0.50 | 0  | 0       | 2\nMOV %EAX,%EBX                       | 1     | 0     | 0  | 0    | 0    | 0.50  | 0.50 | 0  | 0       | 0.50\nCALL 2120 <@plt_start@+0x100>       | 1     | 0     | 0  | 0    | 0    | 0.50  | 0.50 | 0  | 0       | 2\nMOV %EAX,%ECX                       | 1     | 0     | 0  | 0    | 0    | 0.50  | 0.50 | 0  | 0       | 0.50\nMOV 0x18(%R12),%RAX                 | 1     | 0     | 0  | 1    | 0    | 0     | 0    | 0  | 4       | 1\nLEA (%R15,%R13,2),%R10              | 1     | 0     | 0  | 0    | 0    | 0.50  | 0.50 | 0  | 1       | 0.50\nLEA (,%RBP,8),%R11                  | 1     | 0     | 0  | 0    | 0    | 0.50  | 0.50 | 0  | 1       | 0.50\nPXOR %XMM1,%XMM1\nPXOR %XMM4,%XMM4\nMOV (%RAX),%EAX                     | 1     | 0     | 0  | 1    | 0    | 0     | 0    | 0  | 4       | 1\nPXOR %XMM3,%XMM3\nPXOR %XMM2,%XMM2\nPXOR %XMM5,%XMM5\nSUB $0x2,%EAX                       | 1     | 0     | 0  | 0    | 0    | 0.50  | 0.50 | 0  | 1       | 0.50\nCLTD\nIDIV %EBX                           | 29    | 14.50 | 0  | 0    | 0    | 14.50 | 0    | 0  | 37-49   | 22-26\nMOV 0x10(%R12),%RBX                 | 1     | 0     | 0  | 1    | 0    | 0     | 0    | 0  | 4       | 1\nMOV %RBX,0x8(%RSP)                  | 1     | 0     | 0  | 0.50 | 0.50 | 0     | 0    | 1  | 0       | 1\nLEA 0x1(%RAX),%R8D                  | 1     | 0     | 0  | 0    | 0    | 0.50  | 0.50 | 0  | 1       | 0.50\nCMP %EDX,%ECX                       | 1     | 0     | 0  | 0    | 0    | 0.50  | 0.50 | 0  | 1       | 0.50\nCMOVL %R8D,%EAX                     | 1     | 0     | 0  | 0    | 0    | 0.50  | 0.50 | 0  | 2       | 1\nMOV %EAX,%EDI                       | 1     | 0     | 0  | 0    | 0    | 0.50  | 0.50 | 0  | 0       | 0.50\nIMUL %ECX,%EDI                      | 1     | 0     | 0  | 0    | 0    | 1     | 0    | 0  | 3       | 1\nCMP %EDX,%ECX                       | 1     | 0     | 0  | 0    | 0    | 0.50  | 0.50 | 0  | 1       | 0.50\nMOV (%R12),%RCX                     | 1     | 0     | 0  | 1    | 0    | 0     | 0    | 0  | 4       | 1\nLEA (%RDX,%RDI,1),%ESI              | 1     | 0     | 0  | 0    | 0    | 0.50  | 0.50 | 0  | 1       | 0.50\nCMOVGE %ESI,%EDI                    | 1     | 0     | 0  | 0    | 0    | 0.50  | 0.50 | 0  | 2       | 1\nSUB $-0x80,%RCX                     | 1     | 0     | 0  | 0    | 0    | 0.50  | 0.50 | 0  | 1       | 0.50\nMOV $0x2,%ESI                       | 1     | 0     | 0  | 0    | 0    | 0.50  | 0.50 | 0  | 1       | 0.50\nLEA 0x2(%RDI),%R15D                 | 1     | 0     | 0  | 0    | 0    | 0.50  | 0.50 | 0  | 1       | 0.50\nLEA (%RAX,%RDI,1),%R8D              | 1     | 0     | 0  | 0    | 0    | 0.50  | 0.50 | 0  | 1       | 0.50\nMOV %RCX,0x18(%RSP)                 | 1     | 0     | 0  | 0.50 | 0.50 | 0     | 0    | 1  | 0       | 1\nMOVSXD %R15D,%RAX                   | 1     | 0     | 0  | 0    | 0    | 1     | 0    | 0  | 1       | 1\nLEA 0x2(%R8),%EBX                   | 1     | 0     | 0  | 0    | 0    | 0.50  | 0.50 | 0  | 1       | 0.50\nIMUL %RBP,%RAX                      | 1     | 0     | 0  | 0    | 0    | 1     | 0    | 0  | 5       | 2\nMOV %RAX,0x10(%RSP)                 | 1     | 0     | 0  | 0.50 | 0.50 | 0     | 0    | 1  | 0       | 1\nXOR %EAX,%EAX\nJMP 1ea1f <l2norm_._omp_fn.0+0xdf>  | 1     | 0     | 0  | 0    | 0    | 0     | 1    | 0  | 0       | 2\nNOP                                 | 1     | 0     | 0  | 0    | 0    | 0.50  | 0.50 | 0  | 0       | 0.50\nTEST %AL,%AL                        | 1     | 0     | 0  | 0    | 0    | 0.50  | 0.50 | 0  | 1       | 0.50\nJNE 1eb35 <l2norm_._omp_fn.0+0x1f5> | 1     | 0     | 0  | 0    | 0    | 0     | 1    | 0  | 0       | 1-2\nLEA 0x20(%RSP),%R8                  | 1     | 0     | 0  | 0    | 0    | 0.50  | 0.50 | 0  | 1       | 0.50\nXOR %EDI,%EDI\nNOPL (%RAX)                         | 1     | 0     | 0  | 0    | 0    | 0.50  | 0.50 | 0  | 0       | 0.50\nADD $0x58,%RSP                      | 1     | 0     | 0  | 0    | 0    | 0.50  | 0.50 | 0  | 1       | 0.50\nPOP %RBX                            | 2     | 0     | 0  | 0.50 | 0.50 | 0     | 0    | 1  | 0       | 1\nPOP %RBP                            | 2     | 0     | 0  | 0.50 | 0.50 | 0     | 0    | 1  | 0       | 1\nPOP %R12                            | 2     | 0     | 0  | 0.50 | 0.50 | 0     | 0    | 1  | 0       | 1\nPOP %R13                            | 2     | 0     | 0  | 0.50 | 0.50 | 0     | 0    | 1  | 0       | 1\nPOP %R14                            | 2     | 0     | 0  | 0.50 | 0.50 | 0     | 0    | 1  | 0       | 1\nPOP %R15                            | 2     | 0     | 0  | 0.50 | 0.50 | 0     | 0    | 1  | 0       | 1\nRET\nMOVSD %XMM5,0x20(%RSP)              | 1     | 0     | 0  | 0.50 | 0.50 | 0     | 0    | 1  | 2       | 1\nMOVSD %XMM2,0x28(%RSP)              | 1     | 0     | 0  | 0.50 | 0.50 | 0     | 0    | 1  | 2       | 1\nMOVSD %XMM3,0x30(%RSP)              | 1     | 0     | 0  | 0.50 | 0.50 | 0     | 0    | 1  | 2       | 1\nMOVSD %XMM4,0x38(%RSP)              | 1     | 0     | 0  | 0.50 | 0.50 | 0     | 0    | 1  | 2       | 1\nMOVSD %XMM1,0x40(%RSP)              | 1     | 0     | 0  | 0.50 | 0.50 | 0     | 0    | 1  | 2       | 1\nJMP 1eadb <l2norm_._omp_fn.0+0x19b> | 1     | 0     | 0  | 0    | 0    | 0     | 1    | 0  | 0       | 2\nNOP                                 | 1     | 0     | 0  | 0    | 0    | 0.50  | 0.50 | 0  | 0       | 0.50\nNOPW %CS:(%RAX,%RAX,1)              | 1     | 0     | 0  | 0    | 0    | 0.50  | 0.50 | 0  | 0       | 0.50\n",
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
          workaround = " - Try to reorganize arrays of structures to structures of arrays\n - Consider to permute loops (see vectorization gain report)\n - To reference allocatable arrays, use \"allocatable\" instead of \"pointer\" pointers or qualify them with the \"contiguous\" attribute (Fortran 2008)\n - For structures, limit to one indirection. For example, use a_b%c instead of a%b%c with a_b set to a%b before this function\n",
          title = "Code clean check",
          txt = "Detected a slowdown caused by scalar integer instructions (typically used for address computation).\nBy removing them, you can lower the cost of an iteration from 44.00 to 9.00 cycles (4.89x speedup).",
        },
        {
          workaround = " - Try another compiler or update/tune your current one\n - Make array accesses unit-stride:\n  * If your function streams arrays of structures (AoS), try to use structures of arrays instead (SoA):\ndo i a(i)%x = b(i)%x (slow, non stride 1) => do i a%x(i) = b%x(i) (fast, stride 1)\n",
          details = "27% of SSE/AVX instructions are used in vector version (process two or more data elements in vector registers):\n - 0% of SSE/AVX loads are used in vector version.\n - 18% of SSE/AVX stores are used in vector version.\n - 0% of SSE/AVX addition or subtraction instructions are used in vector version.\n - 0% of SSE/AVX nil are used in vector version.\n - 46% of SSE/AVX instructions that are not load, store, addition, subtraction nor multiply instructions are used in vector version.\nSince your execution units are vector units, only a fully vectorized function can use their full power.\n",
          title = "Vectorization",
          txt = "Your function is poorly vectorized.\nOnly 13% of vector register length is used (average across all SSE/AVX instructions).\nBy fully vectorizing your function, you can lower the cost of an iteration from 44.00 to 3.34 cycles (13.17x speedup).",
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
      "The function is defined in /home/arezki/Téléchargements/NPB3.4.1-MZ/NPB3.4-MZ-OMP/LU-MZ/l2norm.f90:31-40,46-47.\n",
      "Warnings:\nIgnoring paths for analysis",
    },
  },
}
