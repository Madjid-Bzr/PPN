_cqa_text_report = {
  paths = {
    {
      hint = {
        {
          details = "Calling (and then returning from) a function prevents many compiler optimizations (like vectorization), breaks control flow (which reduces pipeline performance) and executes extra instructions to save/restore the registers used inside it, which is very expensive (dozens of cycles). Consider to inline small functions.\n - unknown: 1 occurrences\n",
          title = "CALL instructions",
          txt = "Detected function call instructions.\n",
        },
        {
          title = "Type of elements and instruction set",
          txt = "No instructions are processing arithmetic or math operations on FP elements. This function is probably writing/copying data or processing integer elements.",
        },
        {
          title = "Matching between your function (in the source code) and the binary function",
          txt = "The binary function does not contain any FP arithmetical operations.\nThe binary function is loading 40 bytes.\nThe binary function is storing 184 bytes.",
        },
      },
      expert = {
        {
          title = "General properties",
          txt = "nb instructions    : 70\nloop length        : 331\nused x86 registers : 13\nused mmx registers : 0\nused xmm registers : 10\nused ymm registers : 0\nused zmm registers : 0\nnb stack references: 23\n",
        },
        {
          title = "Front-end",
          txt = "MACRO FUSION NOT POSSIBLE\ninstruction fetch    : 21.00 cycles\ninstruction queue    : 35.00 cycles\ndecoding             : 35.00 cycles\nmicro-operation queue: 37.00 cycles\nfront end            : 37.00 cycles\n",
        },
        {
          title = "Back-end",
          txt = "       | P0   | P1   | P2    | P3    | P4    | P5    | P6\n------------------------------------------------------------\nuops   | 5.00 | 4.00 | 13.50 | 13.50 | 17.50 | 17.50 | 21.00\ncycles | 5.00 | 4.00 | 13.50 | 13.50 | 17.50 | 17.50 | 21.00\n\nCycles executing div or sqrt instructions: NA\n",
        },
        {
          title = "Cycles summary",
          txt = "Front-end : 37.00\nDispatch  : 21.00\nOverall L1: 37.00\n",
        },
        {
          title = "Vectorization ratios",
          txt = "all     : 16%\nload    : 0%\nstore   : 27%\nmul     : NA (no mul vectorizable/vectorized instructions)\nadd-sub : NA (no add-sub vectorizable/vectorized instructions)\nfma     : NA (no fma vectorizable/vectorized instructions)\ndiv/sqrt: NA (no div/sqrt vectorizable/vectorized instructions)\nother   : 0%\n",
        },
        {
          title = "Vector efficiency ratios",
          txt = "all     : 14%\nload    : 12%\nstore   : 15%\nmul     : NA (no mul vectorizable/vectorized instructions)\nadd-sub : NA (no add-sub vectorizable/vectorized instructions)\nfma     : NA (no fma vectorizable/vectorized instructions)\ndiv/sqrt: NA (no div/sqrt vectorizable/vectorized instructions)\nother   : 12%\n",
        },
        {
          title = "Cycles and memory resources usage",
          txt = "Assuming all data fit into the L1 cache, each call to the function takes 37.00 cycles. At this rate:\n - 0% of peak load performance is reached (1.08 out of 128.00 bytes loaded per cycle (GB/s @ 1GHz))\n - 7% of peak store performance is reached (4.97 out of 64.00 bytes stored per cycle (GB/s @ 1GHz))\n",
        },
        {
          title = "Front-end bottlenecks",
          txt = "Performance is limited by instruction throughput (loading/decoding program instructions to execution core) (front-end is a bottleneck).\n\nBy removing all these bottlenecks, you can lower the cost of an iteration from 37.00 to 35.00 cycles (1.06x speedup).\n",
        },
        {
          title = "ASM code",
          txt = "In the binary file, the address of the function is: 1e7f0\n\nInstruction                         | Nb FU | P0   | P1   | P2   | P3   | P4   | P5   | P6 | Latency | Recip. throughput\n------------------------------------------------------------------------------------------------------------------------\nPUSH %R12                           | 1     | 0    | 0    | 0    | 0    | 1    | 1    | 0  | 0       | 1\nLEA (%RSI),%R10                     | 1     | 0    | 0    | 0    | 0    | 0.50 | 0.50 | 0  | 1       | 0.50\nLEA (%RCX),%R11                     | 1     | 0    | 0    | 0    | 0    | 0.50 | 0.50 | 0  | 1       | 0.50\nPUSH %RBP                           | 1     | 0    | 0    | 0    | 0    | 1    | 1    | 0  | 0       | 1\nMOV $0,%ECX                         | 1     | 0    | 0    | 0    | 0    | 0.50 | 0.50 | 0  | 1       | 0.50\nLEA (%RDX),%R12                     | 1     | 0    | 0    | 0    | 0    | 0.50 | 0.50 | 0  | 1       | 0.50\nPUSH %RBX                           | 1     | 0    | 0    | 0    | 0    | 1    | 1    | 0  | 0       | 1\nLEA (%RDI),%RBP                     | 1     | 0    | 0    | 0    | 0    | 0.50 | 0.50 | 0  | 1       | 0.50\nVMOVQ %R12,%XMM4                    | 1     | 0.50 | 0.50 | 0    | 0    | 0    | 0    | 0  | 2       | 0.50\nLEA -0xc0(%RSP),%RSP                | 1     | 0    | 0    | 0    | 0    | 0.50 | 0.50 | 0  | 1       | 0.50\nVMOVQ %RBP,%XMM2                    | 1     | 0.50 | 0.50 | 0    | 0    | 0    | 0    | 0  | 2       | 0.50\nMOV 0xe0(%RSP),%RAX                 | 1     | 0    | 0    | 1    | 0    | 0    | 0    | 0  | 4       | 1\nVMOVQ %R8,%XMM6                     | 1     | 0.50 | 0.50 | 0    | 0    | 0    | 0    | 0  | 2       | 0.50\nMOV 0xe8(%RSP),%RBX                 | 1     | 0    | 0    | 1    | 0    | 0    | 0    | 0  | 4       | 1\nVPINSRQ $0x1,%R10,%XMM2,%XMM3       | 1     | 1    | 0    | 0    | 0    | 0    | 0    | 0  | 4       | 6\nVMOVQ 0xe8(%RSP),%XMM8              | 1     | 0    | 0    | 0.50 | 0.50 | 0    | 0    | 0  | 5       | 0.50\nVPINSRQ $0x1,%R11,%XMM4,%XMM5       | 1     | 1    | 0    | 0    | 0    | 0    | 0    | 0  | 4       | 6\nMOVSXD (%RAX),%RSI                  | 1     | 0    | 0    | 1    | 0    | 0    | 0    | 0  | 4       | 1\nVPINSRQ $0x1,0xf0(%RSP),%XMM8,%XMM9 | 1     | 1    | 0    | 0.50 | 0.50 | 0    | 0    | 0  | 4       | 6\nMOVSXD (%RBX),%RDX                  | 1     | 0    | 0    | 1    | 0    | 0    | 0    | 0  | 4       | 1\nMOV $-0x6,%RBX                      | 1     | 0    | 0    | 0    | 0    | 0.50 | 0.50 | 0  | 1       | 0.50\nVMOVDQA %XMM3,(%RSP)                | 1     | 0    | 0    | 0.50 | 0.50 | 0    | 0    | 1  | 2       | 1\nVPINSRQ $0x1,%R9,%XMM6,%XMM7        | 1     | 1    | 0    | 0    | 0    | 0    | 0    | 0  | 4       | 6\nVMOVDQA %XMM5,0x10(%RSP)            | 1     | 0    | 0    | 0.50 | 0.50 | 0    | 0    | 1  | 2       | 1\nLEA (%RSI),%RAX                     | 1     | 0    | 0    | 0    | 0    | 0.50 | 0.50 | 0  | 1       | 0.50\nSAL $0x2,%RAX                       | 1     | 0    | 0    | 0    | 0    | 1    | 0    | 0  | 1       | 1\nVMOVDQA %XMM7,0x20(%RSP)            | 1     | 0    | 0    | 0.50 | 0.50 | 0    | 0    | 1  | 2       | 1\nADD %RSI,%RAX                       | 1     | 0    | 0    | 0    | 0    | 0.50 | 0.50 | 0  | 1       | 0.50\nVMOVDQA %XMM9,0x30(%RSP)            | 1     | 0    | 0    | 0.50 | 0.50 | 0    | 0    | 1  | 2       | 1\nCMOVS %RCX,%RAX                     | 1     | 0    | 0    | 0    | 0    | 0.50 | 0.50 | 0  | 2       | 1\nMOV %RAX,%RDI                       | 1     | 0    | 0    | 0    | 0    | 0.50 | 0.50 | 0  | 0       | 0.50\nVMOVQ %RAX,%XMM1                    | 1     | 0.50 | 0.50 | 0    | 0    | 0    | 0    | 0  | 2       | 0.50\nIMUL %RDX,%RDI                      | 1     | 0    | 0    | 0    | 0    | 1    | 0    | 0  | 5       | 2\nMOV %RAX,0xa0(%RSP)                 | 1     | 0    | 0    | 0.50 | 0.50 | 0    | 0    | 1  | 0       | 1\nMOV %RAX,0x88(%RSP)                 | 1     | 0    | 0    | 0.50 | 0.50 | 0    | 0    | 1  | 0       | 1\nTEST %RDI,%RDI                      | 1     | 0    | 0    | 0    | 0    | 0.50 | 0.50 | 0  | 1       | 0.50\nCMOVS %RCX,%RDI                     | 1     | 0    | 0    | 0    | 0    | 0.50 | 0.50 | 0  | 2       | 1\nSUB %RAX,%RBX                       | 1     | 0    | 0    | 0    | 0    | 0.50 | 0.50 | 0  | 1       | 0.50\nSUB %RDI,%RBX                       | 1     | 0    | 0    | 0    | 0    | 0.50 | 0.50 | 0  | 1       | 0.50\nTEST %RSI,%RSI                      | 1     | 0    | 0    | 0    | 0    | 0.50 | 0.50 | 0  | 1       | 0.50\nMOV %RDI,0xa8(%RSP)                 | 1     | 0    | 0    | 0.50 | 0.50 | 0    | 0    | 1  | 0       | 1\nVPINSRQ $0x1,%RDI,%XMM1,%XMM0       | 1     | 1    | 0    | 0    | 0    | 0    | 0    | 0  | 4       | 6\nMOV %RDI,0x90(%RSP)                 | 1     | 0    | 0    | 0.50 | 0.50 | 0    | 0    | 1  | 0       | 1\nCMOVS %RCX,%RSI                     | 1     | 0    | 0    | 0    | 0    | 0.50 | 0.50 | 0  | 2       | 1\nMOV %RBX,0xb0(%RSP)                 | 1     | 0    | 0    | 0.50 | 0.50 | 0    | 0    | 1  | 0       | 1\nLEA -0x66b9(%RIP),%RDI              | 1     | 0    | 0    | 0    | 0    | 0.50 | 0.50 | 0  | 1       | 0.50\nIMUL %RSI,%RDX                      | 1     | 0    | 0    | 0    | 0    | 1    | 0    | 0  | 5       | 2\nMOV %RSI,0x70(%RSP)                 | 1     | 0    | 0    | 0.50 | 0.50 | 0    | 0    | 1  | 0       | 1\nMOV %RSI,0x58(%RSP)                 | 1     | 0    | 0    | 0.50 | 0.50 | 0    | 0    | 1  | 0       | 1\nMOV %RBX,0x98(%RSP)                 | 1     | 0    | 0    | 0.50 | 0.50 | 0    | 0    | 1  | 0       | 1\nMOV %RBX,0x50(%RSP)                 | 1     | 0    | 0    | 0.50 | 0.50 | 0    | 0    | 1  | 0       | 1\nVMOVDQA %XMM0,0x40(%RSP)            | 1     | 0    | 0    | 0.50 | 0.50 | 0    | 0    | 1  | 2       | 1\nTEST %RDX,%RDX                      | 1     | 0    | 0    | 0    | 0    | 0.50 | 0.50 | 0  | 1       | 0.50\nCMOVS %RCX,%RDX                     | 1     | 0    | 0    | 0    | 0    | 0.50 | 0.50 | 0  | 2       | 1\nLEA (%RSI),%RCX                     | 1     | 0    | 0    | 0    | 0    | 0.50 | 0.50 | 0  | 1       | 0.50\nNOT %RCX                            | 1     | 0    | 0    | 0    | 0    | 0.50 | 0.50 | 0  | 1       | 0.50\nLEA (%RSP),%RSI                     | 1     | 0    | 0    | 0    | 0    | 0.50 | 0.50 | 0  | 1       | 0.50\nMOV %RDX,0x78(%RSP)                 | 1     | 0    | 0    | 0.50 | 0.50 | 0    | 0    | 1  | 0       | 1\nSUB %RDX,%RCX                       | 1     | 0    | 0    | 0    | 0    | 0.50 | 0.50 | 0  | 1       | 0.50\nMOV %RCX,0x80(%RSP)                 | 1     | 0    | 0    | 0.50 | 0.50 | 0    | 0    | 1  | 0       | 1\nMOV %RCX,0x68(%RSP)                 | 1     | 0    | 0    | 0.50 | 0.50 | 0    | 0    | 1  | 0       | 1\nXOR %ECX,%ECX\nMOV %RDX,0x60(%RSP)                 | 1     | 0    | 0    | 0.50 | 0.50 | 0    | 0    | 1  | 0       | 1\nXOR %EDX,%EDX\nCALL 2210 <@plt_start@+0x1f0>       | 1     | 0    | 0    | 0    | 0    | 0.50 | 0.50 | 0  | 0       | 2\nLEA 0xc0(%RSP),%RSP                 | 1     | 0    | 0    | 0    | 0    | 0.50 | 0.50 | 0  | 1       | 0.50\nPOP %RBX                            | 2     | 0    | 0    | 0.50 | 0.50 | 0    | 0    | 1  | 0       | 1\nPOP %RBP                            | 2     | 0    | 0    | 0.50 | 0.50 | 0    | 0    | 1  | 0       | 1\nPOP %R12                            | 2     | 0    | 0    | 0.50 | 0.50 | 0    | 0    | 1  | 0       | 1\nRET\n",
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
          txt = "Detected a slowdown caused by scalar integer instructions (typically used for address computation).\nBy removing them, you can lower the cost of an iteration from 37.00 to 11.00 cycles (3.36x speedup).",
        },
        {
          workaround = " - Try another compiler or update/tune your current one\n - Make array accesses unit-stride:\n  * If your function streams arrays of structures (AoS), try to use structures of arrays instead (SoA):\ndo i a(i)%x = b(i)%x (slow, non stride 1) => do i a%x(i) = b%x(i) (fast, stride 1)\n",
          details = "16% of SSE/AVX instructions are used in vector version (process two or more data elements in vector registers):\n - 0% of SSE/AVX loads are used in vector version.\n - 27% of SSE/AVX stores are used in vector version.\n - 0% of SSE/AVX instructions that are not load, store, addition, subtraction nor multiply instructions are used in vector version.\nSince your execution units are vector units, only a fully vectorized function can use their full power.\n",
          title = "Vectorization",
          txt = "Your function is not vectorized.\nOnly 14% of vector register length is used (average across all SSE/AVX instructions).\nBy fully vectorizing your function, you can lower the cost of an iteration from 37.00 to 4.96 cycles (7.47x speedup).",
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
          details = "Calling (and then returning from) a function prevents many compiler optimizations (like vectorization), breaks control flow (which reduces pipeline performance) and executes extra instructions to save/restore the registers used inside it, which is very expensive (dozens of cycles). Consider to inline small functions.\n - unknown: 1 occurrences\n",
          title = "CALL instructions",
          txt = "Detected function call instructions.\n",
        },
        {
          title = "Type of elements and instruction set",
          txt = "No instructions are processing arithmetic or math operations on FP elements. This function is probably writing/copying data or processing integer elements.",
        },
        {
          title = "Matching between your function (in the source code) and the binary function",
          txt = "The binary function does not contain any FP arithmetical operations.\nThe binary function is loading 40 bytes.\nThe binary function is storing 184 bytes.",
        },
      },
      expert = {
        {
          title = "General properties",
          txt = "nb instructions    : 70\nloop length        : 331\nused x86 registers : 13\nused mmx registers : 0\nused xmm registers : 10\nused ymm registers : 0\nused zmm registers : 0\nnb stack references: 23\n",
        },
        {
          title = "Front-end",
          txt = "MACRO FUSION NOT POSSIBLE\ninstruction fetch    : 21.00 cycles\ninstruction queue    : 35.00 cycles\ndecoding             : 35.00 cycles\nmicro-operation queue: 37.00 cycles\nfront end            : 37.00 cycles\n",
        },
        {
          title = "Back-end",
          txt = "       | P0   | P1   | P2    | P3    | P4    | P5    | P6\n------------------------------------------------------------\nuops   | 5.00 | 4.00 | 13.50 | 13.50 | 17.50 | 17.50 | 21.00\ncycles | 5.00 | 4.00 | 13.50 | 13.50 | 17.50 | 17.50 | 21.00\n\nCycles executing div or sqrt instructions: NA\n",
        },
        {
          title = "Cycles summary",
          txt = "Front-end : 37.00\nDispatch  : 21.00\nOverall L1: 37.00\n",
        },
        {
          title = "Vectorization ratios",
          txt = "all     : 16%\nload    : 0%\nstore   : 27%\nmul     : NA (no mul vectorizable/vectorized instructions)\nadd-sub : NA (no add-sub vectorizable/vectorized instructions)\nfma     : NA (no fma vectorizable/vectorized instructions)\ndiv/sqrt: NA (no div/sqrt vectorizable/vectorized instructions)\nother   : 0%\n",
        },
        {
          title = "Vector efficiency ratios",
          txt = "all     : 14%\nload    : 12%\nstore   : 15%\nmul     : NA (no mul vectorizable/vectorized instructions)\nadd-sub : NA (no add-sub vectorizable/vectorized instructions)\nfma     : NA (no fma vectorizable/vectorized instructions)\ndiv/sqrt: NA (no div/sqrt vectorizable/vectorized instructions)\nother   : 12%\n",
        },
        {
          title = "Cycles and memory resources usage",
          txt = "Assuming all data fit into the L1 cache, each call to the function takes 37.00 cycles. At this rate:\n - 0% of peak load performance is reached (1.08 out of 128.00 bytes loaded per cycle (GB/s @ 1GHz))\n - 7% of peak store performance is reached (4.97 out of 64.00 bytes stored per cycle (GB/s @ 1GHz))\n",
        },
        {
          title = "Front-end bottlenecks",
          txt = "Performance is limited by instruction throughput (loading/decoding program instructions to execution core) (front-end is a bottleneck).\n\nBy removing all these bottlenecks, you can lower the cost of an iteration from 37.00 to 35.00 cycles (1.06x speedup).\n",
        },
        {
          title = "ASM code",
          txt = "In the binary file, the address of the function is: 1e7f0\n\nInstruction                         | Nb FU | P0   | P1   | P2   | P3   | P4   | P5   | P6 | Latency | Recip. throughput\n------------------------------------------------------------------------------------------------------------------------\nPUSH %R12                           | 1     | 0    | 0    | 0    | 0    | 1    | 1    | 0  | 0       | 1\nLEA (%RSI),%R10                     | 1     | 0    | 0    | 0    | 0    | 0.50 | 0.50 | 0  | 1       | 0.50\nLEA (%RCX),%R11                     | 1     | 0    | 0    | 0    | 0    | 0.50 | 0.50 | 0  | 1       | 0.50\nPUSH %RBP                           | 1     | 0    | 0    | 0    | 0    | 1    | 1    | 0  | 0       | 1\nMOV $0,%ECX                         | 1     | 0    | 0    | 0    | 0    | 0.50 | 0.50 | 0  | 1       | 0.50\nLEA (%RDX),%R12                     | 1     | 0    | 0    | 0    | 0    | 0.50 | 0.50 | 0  | 1       | 0.50\nPUSH %RBX                           | 1     | 0    | 0    | 0    | 0    | 1    | 1    | 0  | 0       | 1\nLEA (%RDI),%RBP                     | 1     | 0    | 0    | 0    | 0    | 0.50 | 0.50 | 0  | 1       | 0.50\nVMOVQ %R12,%XMM4                    | 1     | 0.50 | 0.50 | 0    | 0    | 0    | 0    | 0  | 2       | 0.50\nLEA -0xc0(%RSP),%RSP                | 1     | 0    | 0    | 0    | 0    | 0.50 | 0.50 | 0  | 1       | 0.50\nVMOVQ %RBP,%XMM2                    | 1     | 0.50 | 0.50 | 0    | 0    | 0    | 0    | 0  | 2       | 0.50\nMOV 0xe0(%RSP),%RAX                 | 1     | 0    | 0    | 1    | 0    | 0    | 0    | 0  | 4       | 1\nVMOVQ %R8,%XMM6                     | 1     | 0.50 | 0.50 | 0    | 0    | 0    | 0    | 0  | 2       | 0.50\nMOV 0xe8(%RSP),%RBX                 | 1     | 0    | 0    | 1    | 0    | 0    | 0    | 0  | 4       | 1\nVPINSRQ $0x1,%R10,%XMM2,%XMM3       | 1     | 1    | 0    | 0    | 0    | 0    | 0    | 0  | 4       | 6\nVMOVQ 0xe8(%RSP),%XMM8              | 1     | 0    | 0    | 0.50 | 0.50 | 0    | 0    | 0  | 5       | 0.50\nVPINSRQ $0x1,%R11,%XMM4,%XMM5       | 1     | 1    | 0    | 0    | 0    | 0    | 0    | 0  | 4       | 6\nMOVSXD (%RAX),%RSI                  | 1     | 0    | 0    | 1    | 0    | 0    | 0    | 0  | 4       | 1\nVPINSRQ $0x1,0xf0(%RSP),%XMM8,%XMM9 | 1     | 1    | 0    | 0.50 | 0.50 | 0    | 0    | 0  | 4       | 6\nMOVSXD (%RBX),%RDX                  | 1     | 0    | 0    | 1    | 0    | 0    | 0    | 0  | 4       | 1\nMOV $-0x6,%RBX                      | 1     | 0    | 0    | 0    | 0    | 0.50 | 0.50 | 0  | 1       | 0.50\nVMOVDQA %XMM3,(%RSP)                | 1     | 0    | 0    | 0.50 | 0.50 | 0    | 0    | 1  | 2       | 1\nVPINSRQ $0x1,%R9,%XMM6,%XMM7        | 1     | 1    | 0    | 0    | 0    | 0    | 0    | 0  | 4       | 6\nVMOVDQA %XMM5,0x10(%RSP)            | 1     | 0    | 0    | 0.50 | 0.50 | 0    | 0    | 1  | 2       | 1\nLEA (%RSI),%RAX                     | 1     | 0    | 0    | 0    | 0    | 0.50 | 0.50 | 0  | 1       | 0.50\nSAL $0x2,%RAX                       | 1     | 0    | 0    | 0    | 0    | 1    | 0    | 0  | 1       | 1\nVMOVDQA %XMM7,0x20(%RSP)            | 1     | 0    | 0    | 0.50 | 0.50 | 0    | 0    | 1  | 2       | 1\nADD %RSI,%RAX                       | 1     | 0    | 0    | 0    | 0    | 0.50 | 0.50 | 0  | 1       | 0.50\nVMOVDQA %XMM9,0x30(%RSP)            | 1     | 0    | 0    | 0.50 | 0.50 | 0    | 0    | 1  | 2       | 1\nCMOVS %RCX,%RAX                     | 1     | 0    | 0    | 0    | 0    | 0.50 | 0.50 | 0  | 2       | 1\nMOV %RAX,%RDI                       | 1     | 0    | 0    | 0    | 0    | 0.50 | 0.50 | 0  | 0       | 0.50\nVMOVQ %RAX,%XMM1                    | 1     | 0.50 | 0.50 | 0    | 0    | 0    | 0    | 0  | 2       | 0.50\nIMUL %RDX,%RDI                      | 1     | 0    | 0    | 0    | 0    | 1    | 0    | 0  | 5       | 2\nMOV %RAX,0xa0(%RSP)                 | 1     | 0    | 0    | 0.50 | 0.50 | 0    | 0    | 1  | 0       | 1\nMOV %RAX,0x88(%RSP)                 | 1     | 0    | 0    | 0.50 | 0.50 | 0    | 0    | 1  | 0       | 1\nTEST %RDI,%RDI                      | 1     | 0    | 0    | 0    | 0    | 0.50 | 0.50 | 0  | 1       | 0.50\nCMOVS %RCX,%RDI                     | 1     | 0    | 0    | 0    | 0    | 0.50 | 0.50 | 0  | 2       | 1\nSUB %RAX,%RBX                       | 1     | 0    | 0    | 0    | 0    | 0.50 | 0.50 | 0  | 1       | 0.50\nSUB %RDI,%RBX                       | 1     | 0    | 0    | 0    | 0    | 0.50 | 0.50 | 0  | 1       | 0.50\nTEST %RSI,%RSI                      | 1     | 0    | 0    | 0    | 0    | 0.50 | 0.50 | 0  | 1       | 0.50\nMOV %RDI,0xa8(%RSP)                 | 1     | 0    | 0    | 0.50 | 0.50 | 0    | 0    | 1  | 0       | 1\nVPINSRQ $0x1,%RDI,%XMM1,%XMM0       | 1     | 1    | 0    | 0    | 0    | 0    | 0    | 0  | 4       | 6\nMOV %RDI,0x90(%RSP)                 | 1     | 0    | 0    | 0.50 | 0.50 | 0    | 0    | 1  | 0       | 1\nCMOVS %RCX,%RSI                     | 1     | 0    | 0    | 0    | 0    | 0.50 | 0.50 | 0  | 2       | 1\nMOV %RBX,0xb0(%RSP)                 | 1     | 0    | 0    | 0.50 | 0.50 | 0    | 0    | 1  | 0       | 1\nLEA -0x66b9(%RIP),%RDI              | 1     | 0    | 0    | 0    | 0    | 0.50 | 0.50 | 0  | 1       | 0.50\nIMUL %RSI,%RDX                      | 1     | 0    | 0    | 0    | 0    | 1    | 0    | 0  | 5       | 2\nMOV %RSI,0x70(%RSP)                 | 1     | 0    | 0    | 0.50 | 0.50 | 0    | 0    | 1  | 0       | 1\nMOV %RSI,0x58(%RSP)                 | 1     | 0    | 0    | 0.50 | 0.50 | 0    | 0    | 1  | 0       | 1\nMOV %RBX,0x98(%RSP)                 | 1     | 0    | 0    | 0.50 | 0.50 | 0    | 0    | 1  | 0       | 1\nMOV %RBX,0x50(%RSP)                 | 1     | 0    | 0    | 0.50 | 0.50 | 0    | 0    | 1  | 0       | 1\nVMOVDQA %XMM0,0x40(%RSP)            | 1     | 0    | 0    | 0.50 | 0.50 | 0    | 0    | 1  | 2       | 1\nTEST %RDX,%RDX                      | 1     | 0    | 0    | 0    | 0    | 0.50 | 0.50 | 0  | 1       | 0.50\nCMOVS %RCX,%RDX                     | 1     | 0    | 0    | 0    | 0    | 0.50 | 0.50 | 0  | 2       | 1\nLEA (%RSI),%RCX                     | 1     | 0    | 0    | 0    | 0    | 0.50 | 0.50 | 0  | 1       | 0.50\nNOT %RCX                            | 1     | 0    | 0    | 0    | 0    | 0.50 | 0.50 | 0  | 1       | 0.50\nLEA (%RSP),%RSI                     | 1     | 0    | 0    | 0    | 0    | 0.50 | 0.50 | 0  | 1       | 0.50\nMOV %RDX,0x78(%RSP)                 | 1     | 0    | 0    | 0.50 | 0.50 | 0    | 0    | 1  | 0       | 1\nSUB %RDX,%RCX                       | 1     | 0    | 0    | 0    | 0    | 0.50 | 0.50 | 0  | 1       | 0.50\nMOV %RCX,0x80(%RSP)                 | 1     | 0    | 0    | 0.50 | 0.50 | 0    | 0    | 1  | 0       | 1\nMOV %RCX,0x68(%RSP)                 | 1     | 0    | 0    | 0.50 | 0.50 | 0    | 0    | 1  | 0       | 1\nXOR %ECX,%ECX\nMOV %RDX,0x60(%RSP)                 | 1     | 0    | 0    | 0.50 | 0.50 | 0    | 0    | 1  | 0       | 1\nXOR %EDX,%EDX\nCALL 2210 <@plt_start@+0x1f0>       | 1     | 0    | 0    | 0    | 0    | 0.50 | 0.50 | 0  | 0       | 2\nLEA 0xc0(%RSP),%RSP                 | 1     | 0    | 0    | 0    | 0    | 0.50 | 0.50 | 0  | 1       | 0.50\nPOP %RBX                            | 2     | 0    | 0    | 0.50 | 0.50 | 0    | 0    | 1  | 0       | 1\nPOP %RBP                            | 2     | 0    | 0    | 0.50 | 0.50 | 0    | 0    | 1  | 0       | 1\nPOP %R12                            | 2     | 0    | 0    | 0.50 | 0.50 | 0    | 0    | 1  | 0       | 1\nRET\n",
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
          txt = "Detected a slowdown caused by scalar integer instructions (typically used for address computation).\nBy removing them, you can lower the cost of an iteration from 37.00 to 11.00 cycles (3.36x speedup).",
        },
        {
          workaround = " - Try another compiler or update/tune your current one\n - Make array accesses unit-stride:\n  * If your function streams arrays of structures (AoS), try to use structures of arrays instead (SoA):\ndo i a(i)%x = b(i)%x (slow, non stride 1) => do i a%x(i) = b%x(i) (fast, stride 1)\n",
          details = "16% of SSE/AVX instructions are used in vector version (process two or more data elements in vector registers):\n - 0% of SSE/AVX loads are used in vector version.\n - 27% of SSE/AVX stores are used in vector version.\n - 0% of SSE/AVX instructions that are not load, store, addition, subtraction nor multiply instructions are used in vector version.\nSince your execution units are vector units, only a fully vectorized function can use their full power.\n",
          title = "Vectorization",
          txt = "Your function is not vectorized.\nOnly 14% of vector register length is used (average across all SSE/AVX instructions).\nBy fully vectorizing your function, you can lower the cost of an iteration from 37.00 to 4.96 cycles (7.47x speedup).",
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
      "The function is defined in /users/user2222/NPB3.4.1-MZ/NPB3.4-MZ-OMP/LU-MZ/rhs.f90:5,40,465.\n",
    },
    nb_paths = 1,
  },
}
