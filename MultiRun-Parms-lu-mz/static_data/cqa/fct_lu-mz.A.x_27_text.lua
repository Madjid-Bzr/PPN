_cqa_text_report = {
  paths = {
    {
      hint = {
        {
          details = "Calling (and then returning from) a function prevents many compiler optimizations (like vectorization), breaks control flow (which reduces pipeline performance) and executes extra instructions to save/restore the registers used inside it, which is very expensive (dozens of cycles). Consider to inline small functions.\n - rhs: 1 occurrences\n - unknown: 1 occurrences\n",
          title = "CALL instructions",
          txt = "Detected function call instructions.\n",
        },
        {
          workaround = "Avoid mixing data with different types. In particular, check if the type of constants is the same as array elements.",
          details = " - CLTQ: 1 occurrences\n",
          title = "Conversion instructions",
          txt = "Detected expensive conversion instructions.",
        },
        {
          title = "Type of elements and instruction set",
          txt = "No instructions are processing arithmetic or math operations on FP elements. This function is probably writing/copying data or processing integer elements.",
        },
        {
          title = "Matching between your function (in the source code) and the binary function",
          txt = "The binary function does not contain any FP arithmetical operations.\nThe binary function is loading 136 bytes.\nThe binary function is storing 208 bytes.",
        },
      },
      expert = {
        {
          title = "General properties",
          txt = "nb instructions    : 91\nloop length        : 467\nused x86 registers : 16\nused mmx registers : 0\nused xmm registers : 16\nused ymm registers : 0\nused zmm registers : 0\nnb stack references: 33\n",
        },
        {
          title = "Front-end",
          txt = "MACRO FUSION NOT POSSIBLE\ninstruction fetch    : 30.00 cycles\ninstruction queue    : 45.50 cycles\ndecoding             : 45.50 cycles\nmicro-operation queue: 50.00 cycles\nfront end            : 50.00 cycles\n",
        },
        {
          title = "Back-end",
          txt = "       | P0   | P1   | P2    | P3    | P4    | P5    | P6\n------------------------------------------------------------\nuops   | 8.00 | 3.00 | 21.50 | 21.50 | 21.50 | 21.50 | 24.00\ncycles | 8.00 | 3.00 | 21.50 | 21.50 | 21.50 | 21.50 | 24.00\n\nCycles executing div or sqrt instructions: NA\n",
        },
        {
          title = "Cycles summary",
          txt = "Front-end : 50.00\nDispatch  : 24.00\nOverall L1: 50.00\n",
        },
        {
          title = "Vectorization ratios",
          txt = "all     : 18%\nload    : 0%\nstore   : 44%\nmul     : 0%\nadd-sub : NA (no add-sub vectorizable/vectorized instructions)\nfma     : NA (no fma vectorizable/vectorized instructions)\ndiv/sqrt: NA (no div/sqrt vectorizable/vectorized instructions)\nother   : 0%\n",
        },
        {
          title = "Vector efficiency ratios",
          txt = "all     : 14%\nload    : 12%\nstore   : 18%\nmul     : 12%\nadd-sub : NA (no add-sub vectorizable/vectorized instructions)\nfma     : NA (no fma vectorizable/vectorized instructions)\ndiv/sqrt: NA (no div/sqrt vectorizable/vectorized instructions)\nother   : 12%\n",
        },
        {
          title = "Cycles and memory resources usage",
          txt = "Assuming all data fit into the L1 cache, each call to the function takes 50.00 cycles. At this rate:\n - 2% of peak load performance is reached (2.72 out of 128.00 bytes loaded per cycle (GB/s @ 1GHz))\n - 6% of peak store performance is reached (4.16 out of 64.00 bytes stored per cycle (GB/s @ 1GHz))\n",
        },
        {
          title = "Front-end bottlenecks",
          txt = "Performance is limited by instruction throughput (loading/decoding program instructions to execution core) (front-end is a bottleneck).\n\nBy removing all these bottlenecks, you can lower the cost of an iteration from 50.00 to 45.50 cycles (1.10x speedup).\n",
        },
        {
          title = "ASM code",
          txt = "In the binary file, the address of the function is: 18480\n\nInstruction                             | Nb FU | P0   | P1   | P2   | P3   | P4   | P5   | P6 | Latency | Recip. throughput\n----------------------------------------------------------------------------------------------------------------------------\nPUSH %R15                               | 1     | 0    | 0    | 0    | 0    | 1    | 1    | 0  | 0       | 1\nVMOVQ %RDI,%XMM1                        | 1     | 0.50 | 0.50 | 0    | 0    | 0    | 0    | 0  | 2       | 0.50\nVMOVQ %R9,%XMM4                         | 1     | 0.50 | 0.50 | 0    | 0    | 0    | 0    | 0  | 2       | 0.50\nPUSH %R14                               | 1     | 0    | 0    | 0    | 0    | 1    | 1    | 0  | 0       | 1\nLEA (%RDX),%R14                         | 1     | 0    | 0    | 0    | 0    | 0.50 | 0.50 | 0  | 1       | 0.50\nVPINSRQ $0x1,%RSI,%XMM1,%XMM0           | 1     | 1    | 0    | 0    | 0    | 0    | 0    | 0  | 4       | 6\nPUSH %R13                               | 1     | 0    | 0    | 0    | 0    | 1    | 1    | 0  | 0       | 1\nLEA (%RCX),%R13                         | 1     | 0    | 0    | 0    | 0    | 0.50 | 0.50 | 0  | 1       | 0.50\nXOR %ECX,%ECX\nPUSH %R12                               | 1     | 0    | 0    | 0    | 0    | 1    | 1    | 0  | 0       | 1\nVMOVQ %R13,%XMM2                        | 1     | 0.50 | 0.50 | 0    | 0    | 0    | 0    | 0  | 2       | 0.50\nLEA (%RSI),%R15                         | 1     | 0    | 0    | 0    | 0    | 0.50 | 0.50 | 0  | 1       | 0.50\nPUSH %RBP                               | 1     | 0    | 0    | 0    | 0    | 1    | 1    | 0  | 0       | 1\nVPINSRQ $0x1,%R8,%XMM2,%XMM3            | 1     | 1    | 0    | 0    | 0    | 0    | 0    | 0  | 4       | 6\nLEA (%RDI),%RBP                         | 1     | 0    | 0    | 0    | 0    | 0.50 | 0.50 | 0  | 1       | 0.50\nPUSH %RBX                               | 1     | 0    | 0    | 0    | 0    | 1    | 1    | 0  | 0       | 1\nLEA -0x211a(%RIP),%RDI                  | 1     | 0    | 0    | 0    | 0    | 0.50 | 0.50 | 0  | 1       | 0.50\nLEA (%R8),%R12                          | 1     | 0    | 0    | 0    | 0    | 0.50 | 0.50 | 0  | 1       | 0.50\nLEA -0xa0e8(%RSP),%RSP                  | 1     | 0    | 0    | 0    | 0    | 0.50 | 0.50 | 0  | 1       | 0.50\nMOV 0xa160(%RSP),%RBX                   | 1     | 0    | 0    | 1    | 0    | 0    | 0    | 0  | 4       | 1\nVPINSRQ $0x1,0xa120(%RSP),%XMM4,%XMM5   | 1     | 1    | 0    | 0.50 | 0.50 | 0    | 0    | 0  | 4       | 6\nMOV 0xa168(%RSP),%R10                   | 1     | 0    | 0    | 1    | 0    | 0    | 0    | 0  | 4       | 1\nLEA 0xe0(%RSP),%RSI                     | 1     | 0    | 0    | 0    | 0    | 0.50 | 0.50 | 0  | 1       | 0.50\nVMOVQ 0xa128(%RSP),%XMM6                | 1     | 0    | 0    | 0.50 | 0.50 | 0    | 0    | 0  | 5       | 0.50\nMOV (%RBX),%EAX                         | 1     | 0    | 0    | 1    | 0    | 0    | 0    | 0  | 4       | 1\nVPINSRQ $0x1,0xa130(%RSP),%XMM6,%XMM7   | 1     | 1    | 0    | 0.50 | 0.50 | 0    | 0    | 0  | 4       | 6\nMOVSXD (%R10),%R11                      | 1     | 0    | 0    | 1    | 0    | 0    | 0    | 0  | 4       | 1\nVMOVQ 0xa138(%RSP),%XMM8                | 1     | 0    | 0    | 0.50 | 0.50 | 0    | 0    | 0  | 5       | 0.50\nADD $0x2,%EAX                           | 1     | 0    | 0    | 0    | 0    | 0.50 | 0.50 | 0  | 1       | 0.50\nVPINSRQ $0x1,0xa140(%RSP),%XMM8,%XMM9   | 1     | 1    | 0    | 0.50 | 0.50 | 0    | 0    | 0  | 4       | 6\nVMOVQ 0xa148(%RSP),%XMM10               | 1     | 0    | 0    | 0.50 | 0.50 | 0    | 0    | 0  | 5       | 0.50\nCLTQ\nLEA 0xa(%RAX,%RAX,4),%RDX               | 1     | 0    | 0    | 0    | 0    | 1    | 0    | 0  | 1       | 1\nMOV $0x4,%EAX                           | 1     | 0    | 0    | 0    | 0    | 0.50 | 0.50 | 0  | 1       | 0.50\nTEST %RDX,%RDX                          | 1     | 0    | 0    | 0    | 0    | 0.50 | 0.50 | 0  | 1       | 0.50\nVPINSRQ $0x1,0xa150(%RSP),%XMM10,%XMM11 | 1     | 1    | 0    | 0.50 | 0.50 | 0    | 0    | 0  | 4       | 6\nVMOVQ 0xa158(%RSP),%XMM12               | 1     | 0    | 0    | 0.50 | 0.50 | 0    | 0    | 0  | 5       | 0.50\nCMOVS %RCX,%RDX                         | 1     | 0    | 0    | 0    | 0    | 0.50 | 0.50 | 0  | 2       | 1\nVPINSRQ $0x1,%RBX,%XMM12,%XMM13         | 1     | 1    | 0    | 0    | 0    | 0    | 0    | 0  | 4       | 6\nVMOVDQA %XMM0,0x20(%RSP)                | 1     | 0    | 0    | 0.50 | 0.50 | 0    | 0    | 1  | 2       | 1\nIMUL %RDX,%R11                          | 1     | 0    | 0    | 0    | 0    | 1    | 0    | 0  | 5       | 2\nMOV %RDX,0xc0(%RSP)                     | 1     | 0    | 0    | 0.50 | 0.50 | 0    | 0    | 1  | 0       | 1\nMOV %RDX,0xa0(%RSP)                     | 1     | 0    | 0    | 0.50 | 0.50 | 0    | 0    | 1  | 0       | 1\nVMOVDQA %XMM3,0x30(%RSP)                | 1     | 0    | 0    | 0.50 | 0.50 | 0    | 0    | 1  | 2       | 1\nVMOVDQA %XMM5,0x40(%RSP)                | 1     | 0    | 0    | 0.50 | 0.50 | 0    | 0    | 1  | 2       | 1\nVMOVDQA %XMM7,0x50(%RSP)                | 1     | 0    | 0    | 0.50 | 0.50 | 0    | 0    | 1  | 2       | 1\nTEST %R11,%R11                          | 1     | 0    | 0    | 0    | 0    | 0.50 | 0.50 | 0  | 1       | 0.50\nVMOVDQA %XMM9,0x60(%RSP)                | 1     | 0    | 0    | 0.50 | 0.50 | 0    | 0    | 1  | 2       | 1\nVMOVDQA %XMM11,0x70(%RSP)               | 1     | 0    | 0    | 0.50 | 0.50 | 0    | 0    | 1  | 2       | 1\nCMOVS %RCX,%R11                         | 1     | 0    | 0    | 0    | 0    | 0.50 | 0.50 | 0  | 2       | 1\nSUB %RDX,%RAX                           | 1     | 0    | 0    | 0    | 0    | 0.50 | 0.50 | 0  | 1       | 0.50\nXOR %ECX,%ECX\nSUB %R11,%RAX                           | 1     | 0    | 0    | 0    | 0    | 0.50 | 0.50 | 0  | 1       | 0.50\nXOR %EDX,%EDX\nMOV %RAX,0xd0(%RSP)                     | 1     | 0    | 0    | 0.50 | 0.50 | 0    | 0    | 1  | 0       | 1\nMOV %R11,0xc8(%RSP)                     | 1     | 0    | 0    | 0.50 | 0.50 | 0    | 0    | 1  | 0       | 1\nMOV %RAX,0xb0(%RSP)                     | 1     | 0    | 0    | 0.50 | 0.50 | 0    | 0    | 1  | 0       | 1\nMOV %R11,0xa8(%RSP)                     | 1     | 0    | 0    | 0.50 | 0.50 | 0    | 0    | 1  | 0       | 1\nVMOVDQA %XMM13,0x80(%RSP)               | 1     | 0    | 0    | 0.50 | 0.50 | 0    | 0    | 1  | 2       | 1\nVMOVQ 0xa168(%RSP),%XMM14               | 1     | 0    | 0    | 0.50 | 0.50 | 0    | 0    | 0  | 5       | 0.50\nMOV %RSI,0xb8(%RSP)                     | 1     | 0    | 0    | 0.50 | 0.50 | 0    | 0    | 1  | 0       | 1\nVPINSRQ $0x1,0xa170(%RSP),%XMM14,%XMM15 | 1     | 1    | 0    | 0.50 | 0.50 | 0    | 0    | 0  | 4       | 6\nVMOVDQA %XMM15,0x90(%RSP)               | 1     | 0    | 0    | 0.50 | 0.50 | 0    | 0    | 1  | 2       | 1\nLEA 0x20(%RSP),%RSI                     | 1     | 0    | 0    | 0    | 0    | 0.50 | 0.50 | 0  | 1       | 0.50\nCALL 22a0 <@plt_start@+0x280>           | 1     | 0    | 0    | 0    | 0    | 0.50 | 0.50 | 0  | 0       | 2\nMOV 0x24113(%RIP),%EDI                  | 1     | 0    | 0    | 1    | 0    | 0    | 0    | 0  | 4       | 1\nTEST %EDI,%EDI                          | 1     | 0    | 0    | 0    | 0    | 0.50 | 0.50 | 0  | 1       | 0.50\nJNE 18658 <ssor_+0x1d8>                 | 1     | 0    | 0    | 0    | 0    | 0    | 1    | 0  | 0       | 1-2\nMOV 0xa168(%RSP),%R9                    | 1     | 0    | 0    | 1    | 0    | 0    | 0    | 0  | 4       | 1\nLEA (%RBP),%RDI                         | 1     | 0    | 0    | 0    | 0    | 0.50 | 0.50 | 0  | 1       | 0.50\nMOV 0xa170(%RSP),%R8                    | 1     | 0    | 0    | 1    | 0    | 0    | 0    | 0  | 4       | 1\nLEA (%R13),%RCX                         | 1     | 0    | 0    | 0    | 0    | 0.50 | 0.50 | 0  | 1       | 0.50\nMOV %RBX,(%RSP)                         | 1     | 0    | 0    | 0.50 | 0.50 | 0    | 0    | 1  | 0       | 1\nLEA (%R14),%RDX                         | 1     | 0    | 0    | 0    | 0    | 0.50 | 0.50 | 0  | 1       | 0.50\nMOV %R9,0x8(%RSP)                       | 1     | 0    | 0    | 0.50 | 0.50 | 0    | 0    | 1  | 0       | 1\nLEA (%R15),%RSI                         | 1     | 0    | 0    | 0    | 0    | 0.50 | 0.50 | 0  | 1       | 0.50\nMOV 0xa158(%RSP),%R9                    | 1     | 0    | 0    | 1    | 0    | 0    | 0    | 0  | 4       | 1\nMOV %R8,0x10(%RSP)                      | 1     | 0    | 0    | 0.50 | 0.50 | 0    | 0    | 1  | 0       | 1\nLEA (%R12),%R8                          | 1     | 0    | 0    | 0    | 0    | 0.50 | 0.50 | 0  | 1       | 0.50\nCALL 23ed0 <rhs_>                       | 1     | 0    | 0    | 0    | 0    | 0.50 | 0.50 | 0  | 0       | 2\nMOV 0x240cc(%RIP),%EBP                  | 1     | 0    | 0    | 1    | 0    | 0    | 0    | 0  | 4       | 1\nTEST %EBP,%EBP                          | 1     | 0    | 0    | 0    | 0    | 0.50 | 0.50 | 0  | 1       | 0.50\nJNE 18668 <ssor_+0x1e8>                 | 1     | 0    | 0    | 0    | 0    | 0    | 1    | 0  | 0       | 1-2\nLEA 0xa0e8(%RSP),%RSP                   | 1     | 0    | 0    | 0    | 0    | 0.50 | 0.50 | 0  | 1       | 0.50\nPOP %RBX                                | 2     | 0    | 0    | 0.50 | 0.50 | 0    | 0    | 1  | 0       | 1\nPOP %RBP                                | 2     | 0    | 0    | 0.50 | 0.50 | 0    | 0    | 1  | 0       | 1\nPOP %R12                                | 2     | 0    | 0    | 0.50 | 0.50 | 0    | 0    | 1  | 0       | 1\nPOP %R13                                | 2     | 0    | 0    | 0.50 | 0.50 | 0    | 0    | 1  | 0       | 1\nPOP %R14                                | 2     | 0    | 0    | 0.50 | 0.50 | 0    | 0    | 1  | 0       | 1\nPOP %R15                                | 2     | 0    | 0    | 0.50 | 0.50 | 0    | 0    | 1  | 0       | 1\nRET\n",
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
          txt = "Detected a slowdown caused by scalar integer instructions (typically used for address computation).\nBy removing them, you can lower the cost of an iteration from 50.00 to 15.00 cycles (3.33x speedup).",
        },
        {
          workaround = " - Try another compiler or update/tune your current one\n - Make array accesses unit-stride:\n  * If your function streams arrays of structures (AoS), try to use structures of arrays instead (SoA):\ndo i a(i)%x = b(i)%x (slow, non stride 1) => do i a%x(i) = b%x(i) (fast, stride 1)\n",
          details = "18% of SSE/AVX instructions are used in vector version (process two or more data elements in vector registers):\n - 0% of SSE/AVX loads are used in vector version.\n - 44% of SSE/AVX stores are used in vector version.\n - 0% of SSE/AVX multiply instructions are used in vector version.\n - 0% of SSE/AVX instructions that are not load, store, addition, subtraction nor multiply instructions are used in vector version.\nSince your execution units are vector units, only a fully vectorized function can use their full power.\n",
          title = "Vectorization",
          txt = "Your function is not vectorized.\nOnly 14% of vector register length is used (average across all SSE/AVX instructions).\nBy fully vectorizing your function, you can lower the cost of an iteration from 50.00 to 4.98 cycles (10.04x speedup).",
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
          details = "Calling (and then returning from) a function prevents many compiler optimizations (like vectorization), breaks control flow (which reduces pipeline performance) and executes extra instructions to save/restore the registers used inside it, which is very expensive (dozens of cycles). Consider to inline small functions.\n - rhs: 1 occurrences\n - timer_stop: 1 occurrences\n - unknown: 1 occurrences\n",
          title = "CALL instructions",
          txt = "Detected function call instructions.\n",
        },
        {
          workaround = "Avoid mixing data with different types. In particular, check if the type of constants is the same as array elements.",
          details = " - CLTQ: 1 occurrences\n",
          title = "Conversion instructions",
          txt = "Detected expensive conversion instructions.",
        },
        {
          title = "Type of elements and instruction set",
          txt = "No instructions are processing arithmetic or math operations on FP elements. This function is probably writing/copying data or processing integer elements.",
        },
        {
          title = "Matching between your function (in the source code) and the binary function",
          txt = "The binary function does not contain any FP arithmetical operations.\nThe binary function is loading 136 bytes.\nThe binary function is storing 208 bytes.",
        },
      },
      expert = {
        {
          title = "General properties",
          txt = "nb instructions    : 94\nloop length        : 481\nused x86 registers : 16\nused mmx registers : 0\nused xmm registers : 16\nused ymm registers : 0\nused zmm registers : 0\nnb stack references: 33\n",
        },
        {
          title = "Front-end",
          txt = "MACRO FUSION NOT POSSIBLE\ninstruction fetch    : 31.00 cycles\ninstruction queue    : 47.00 cycles\ndecoding             : 47.00 cycles\nmicro-operation queue: 52.00 cycles\nfront end            : 52.00 cycles\n",
        },
        {
          title = "Back-end",
          txt = "       | P0   | P1   | P2    | P3    | P4    | P5    | P6\n------------------------------------------------------------\nuops   | 8.00 | 3.00 | 21.50 | 21.50 | 23.00 | 23.00 | 24.00\ncycles | 8.00 | 3.00 | 21.50 | 21.50 | 23.00 | 23.00 | 24.00\n\nCycles executing div or sqrt instructions: NA\n",
        },
        {
          title = "Cycles summary",
          txt = "Front-end : 52.00\nDispatch  : 24.00\nOverall L1: 52.00\n",
        },
        {
          title = "Vectorization ratios",
          txt = "all     : 18%\nload    : 0%\nstore   : 44%\nmul     : 0%\nadd-sub : NA (no add-sub vectorizable/vectorized instructions)\nfma     : NA (no fma vectorizable/vectorized instructions)\ndiv/sqrt: NA (no div/sqrt vectorizable/vectorized instructions)\nother   : 0%\n",
        },
        {
          title = "Vector efficiency ratios",
          txt = "all     : 14%\nload    : 12%\nstore   : 18%\nmul     : 12%\nadd-sub : NA (no add-sub vectorizable/vectorized instructions)\nfma     : NA (no fma vectorizable/vectorized instructions)\ndiv/sqrt: NA (no div/sqrt vectorizable/vectorized instructions)\nother   : 12%\n",
        },
        {
          title = "Cycles and memory resources usage",
          txt = "Assuming all data fit into the L1 cache, each call to the function takes 52.00 cycles. At this rate:\n - 2% of peak load performance is reached (2.62 out of 128.00 bytes loaded per cycle (GB/s @ 1GHz))\n - 6% of peak store performance is reached (4.00 out of 64.00 bytes stored per cycle (GB/s @ 1GHz))\n",
        },
        {
          title = "Front-end bottlenecks",
          txt = "Performance is limited by instruction throughput (loading/decoding program instructions to execution core) (front-end is a bottleneck).\n\nBy removing all these bottlenecks, you can lower the cost of an iteration from 52.00 to 47.00 cycles (1.11x speedup).\n",
        },
        {
          title = "ASM code",
          txt = "In the binary file, the address of the function is: 18480\n\nInstruction                             | Nb FU | P0   | P1   | P2   | P3   | P4   | P5   | P6 | Latency | Recip. throughput\n----------------------------------------------------------------------------------------------------------------------------\nPUSH %R15                               | 1     | 0    | 0    | 0    | 0    | 1    | 1    | 0  | 0       | 1\nVMOVQ %RDI,%XMM1                        | 1     | 0.50 | 0.50 | 0    | 0    | 0    | 0    | 0  | 2       | 0.50\nVMOVQ %R9,%XMM4                         | 1     | 0.50 | 0.50 | 0    | 0    | 0    | 0    | 0  | 2       | 0.50\nPUSH %R14                               | 1     | 0    | 0    | 0    | 0    | 1    | 1    | 0  | 0       | 1\nLEA (%RDX),%R14                         | 1     | 0    | 0    | 0    | 0    | 0.50 | 0.50 | 0  | 1       | 0.50\nVPINSRQ $0x1,%RSI,%XMM1,%XMM0           | 1     | 1    | 0    | 0    | 0    | 0    | 0    | 0  | 4       | 6\nPUSH %R13                               | 1     | 0    | 0    | 0    | 0    | 1    | 1    | 0  | 0       | 1\nLEA (%RCX),%R13                         | 1     | 0    | 0    | 0    | 0    | 0.50 | 0.50 | 0  | 1       | 0.50\nXOR %ECX,%ECX\nPUSH %R12                               | 1     | 0    | 0    | 0    | 0    | 1    | 1    | 0  | 0       | 1\nVMOVQ %R13,%XMM2                        | 1     | 0.50 | 0.50 | 0    | 0    | 0    | 0    | 0  | 2       | 0.50\nLEA (%RSI),%R15                         | 1     | 0    | 0    | 0    | 0    | 0.50 | 0.50 | 0  | 1       | 0.50\nPUSH %RBP                               | 1     | 0    | 0    | 0    | 0    | 1    | 1    | 0  | 0       | 1\nVPINSRQ $0x1,%R8,%XMM2,%XMM3            | 1     | 1    | 0    | 0    | 0    | 0    | 0    | 0  | 4       | 6\nLEA (%RDI),%RBP                         | 1     | 0    | 0    | 0    | 0    | 0.50 | 0.50 | 0  | 1       | 0.50\nPUSH %RBX                               | 1     | 0    | 0    | 0    | 0    | 1    | 1    | 0  | 0       | 1\nLEA -0x211a(%RIP),%RDI                  | 1     | 0    | 0    | 0    | 0    | 0.50 | 0.50 | 0  | 1       | 0.50\nLEA (%R8),%R12                          | 1     | 0    | 0    | 0    | 0    | 0.50 | 0.50 | 0  | 1       | 0.50\nLEA -0xa0e8(%RSP),%RSP                  | 1     | 0    | 0    | 0    | 0    | 0.50 | 0.50 | 0  | 1       | 0.50\nMOV 0xa160(%RSP),%RBX                   | 1     | 0    | 0    | 1    | 0    | 0    | 0    | 0  | 4       | 1\nVPINSRQ $0x1,0xa120(%RSP),%XMM4,%XMM5   | 1     | 1    | 0    | 0.50 | 0.50 | 0    | 0    | 0  | 4       | 6\nMOV 0xa168(%RSP),%R10                   | 1     | 0    | 0    | 1    | 0    | 0    | 0    | 0  | 4       | 1\nLEA 0xe0(%RSP),%RSI                     | 1     | 0    | 0    | 0    | 0    | 0.50 | 0.50 | 0  | 1       | 0.50\nVMOVQ 0xa128(%RSP),%XMM6                | 1     | 0    | 0    | 0.50 | 0.50 | 0    | 0    | 0  | 5       | 0.50\nMOV (%RBX),%EAX                         | 1     | 0    | 0    | 1    | 0    | 0    | 0    | 0  | 4       | 1\nVPINSRQ $0x1,0xa130(%RSP),%XMM6,%XMM7   | 1     | 1    | 0    | 0.50 | 0.50 | 0    | 0    | 0  | 4       | 6\nMOVSXD (%R10),%R11                      | 1     | 0    | 0    | 1    | 0    | 0    | 0    | 0  | 4       | 1\nVMOVQ 0xa138(%RSP),%XMM8                | 1     | 0    | 0    | 0.50 | 0.50 | 0    | 0    | 0  | 5       | 0.50\nADD $0x2,%EAX                           | 1     | 0    | 0    | 0    | 0    | 0.50 | 0.50 | 0  | 1       | 0.50\nVPINSRQ $0x1,0xa140(%RSP),%XMM8,%XMM9   | 1     | 1    | 0    | 0.50 | 0.50 | 0    | 0    | 0  | 4       | 6\nVMOVQ 0xa148(%RSP),%XMM10               | 1     | 0    | 0    | 0.50 | 0.50 | 0    | 0    | 0  | 5       | 0.50\nCLTQ\nLEA 0xa(%RAX,%RAX,4),%RDX               | 1     | 0    | 0    | 0    | 0    | 1    | 0    | 0  | 1       | 1\nMOV $0x4,%EAX                           | 1     | 0    | 0    | 0    | 0    | 0.50 | 0.50 | 0  | 1       | 0.50\nTEST %RDX,%RDX                          | 1     | 0    | 0    | 0    | 0    | 0.50 | 0.50 | 0  | 1       | 0.50\nVPINSRQ $0x1,0xa150(%RSP),%XMM10,%XMM11 | 1     | 1    | 0    | 0.50 | 0.50 | 0    | 0    | 0  | 4       | 6\nVMOVQ 0xa158(%RSP),%XMM12               | 1     | 0    | 0    | 0.50 | 0.50 | 0    | 0    | 0  | 5       | 0.50\nCMOVS %RCX,%RDX                         | 1     | 0    | 0    | 0    | 0    | 0.50 | 0.50 | 0  | 2       | 1\nVPINSRQ $0x1,%RBX,%XMM12,%XMM13         | 1     | 1    | 0    | 0    | 0    | 0    | 0    | 0  | 4       | 6\nVMOVDQA %XMM0,0x20(%RSP)                | 1     | 0    | 0    | 0.50 | 0.50 | 0    | 0    | 1  | 2       | 1\nIMUL %RDX,%R11                          | 1     | 0    | 0    | 0    | 0    | 1    | 0    | 0  | 5       | 2\nMOV %RDX,0xc0(%RSP)                     | 1     | 0    | 0    | 0.50 | 0.50 | 0    | 0    | 1  | 0       | 1\nMOV %RDX,0xa0(%RSP)                     | 1     | 0    | 0    | 0.50 | 0.50 | 0    | 0    | 1  | 0       | 1\nVMOVDQA %XMM3,0x30(%RSP)                | 1     | 0    | 0    | 0.50 | 0.50 | 0    | 0    | 1  | 2       | 1\nVMOVDQA %XMM5,0x40(%RSP)                | 1     | 0    | 0    | 0.50 | 0.50 | 0    | 0    | 1  | 2       | 1\nVMOVDQA %XMM7,0x50(%RSP)                | 1     | 0    | 0    | 0.50 | 0.50 | 0    | 0    | 1  | 2       | 1\nTEST %R11,%R11                          | 1     | 0    | 0    | 0    | 0    | 0.50 | 0.50 | 0  | 1       | 0.50\nVMOVDQA %XMM9,0x60(%RSP)                | 1     | 0    | 0    | 0.50 | 0.50 | 0    | 0    | 1  | 2       | 1\nVMOVDQA %XMM11,0x70(%RSP)               | 1     | 0    | 0    | 0.50 | 0.50 | 0    | 0    | 1  | 2       | 1\nCMOVS %RCX,%R11                         | 1     | 0    | 0    | 0    | 0    | 0.50 | 0.50 | 0  | 2       | 1\nSUB %RDX,%RAX                           | 1     | 0    | 0    | 0    | 0    | 0.50 | 0.50 | 0  | 1       | 0.50\nXOR %ECX,%ECX\nSUB %R11,%RAX                           | 1     | 0    | 0    | 0    | 0    | 0.50 | 0.50 | 0  | 1       | 0.50\nXOR %EDX,%EDX\nMOV %RAX,0xd0(%RSP)                     | 1     | 0    | 0    | 0.50 | 0.50 | 0    | 0    | 1  | 0       | 1\nMOV %R11,0xc8(%RSP)                     | 1     | 0    | 0    | 0.50 | 0.50 | 0    | 0    | 1  | 0       | 1\nMOV %RAX,0xb0(%RSP)                     | 1     | 0    | 0    | 0.50 | 0.50 | 0    | 0    | 1  | 0       | 1\nMOV %R11,0xa8(%RSP)                     | 1     | 0    | 0    | 0.50 | 0.50 | 0    | 0    | 1  | 0       | 1\nVMOVDQA %XMM13,0x80(%RSP)               | 1     | 0    | 0    | 0.50 | 0.50 | 0    | 0    | 1  | 2       | 1\nVMOVQ 0xa168(%RSP),%XMM14               | 1     | 0    | 0    | 0.50 | 0.50 | 0    | 0    | 0  | 5       | 0.50\nMOV %RSI,0xb8(%RSP)                     | 1     | 0    | 0    | 0.50 | 0.50 | 0    | 0    | 1  | 0       | 1\nVPINSRQ $0x1,0xa170(%RSP),%XMM14,%XMM15 | 1     | 1    | 0    | 0.50 | 0.50 | 0    | 0    | 0  | 4       | 6\nVMOVDQA %XMM15,0x90(%RSP)               | 1     | 0    | 0    | 0.50 | 0.50 | 0    | 0    | 1  | 2       | 1\nLEA 0x20(%RSP),%RSI                     | 1     | 0    | 0    | 0    | 0    | 0.50 | 0.50 | 0  | 1       | 0.50\nCALL 22a0 <@plt_start@+0x280>           | 1     | 0    | 0    | 0    | 0    | 0.50 | 0.50 | 0  | 0       | 2\nMOV 0x24113(%RIP),%EDI                  | 1     | 0    | 0    | 1    | 0    | 0    | 0    | 0  | 4       | 1\nTEST %EDI,%EDI                          | 1     | 0    | 0    | 0    | 0    | 0.50 | 0.50 | 0  | 1       | 0.50\nJNE 18658 <ssor_+0x1d8>                 | 1     | 0    | 0    | 0    | 0    | 0    | 1    | 0  | 0       | 1-2\nMOV 0xa168(%RSP),%R9                    | 1     | 0    | 0    | 1    | 0    | 0    | 0    | 0  | 4       | 1\nLEA (%RBP),%RDI                         | 1     | 0    | 0    | 0    | 0    | 0.50 | 0.50 | 0  | 1       | 0.50\nMOV 0xa170(%RSP),%R8                    | 1     | 0    | 0    | 1    | 0    | 0    | 0    | 0  | 4       | 1\nLEA (%R13),%RCX                         | 1     | 0    | 0    | 0    | 0    | 0.50 | 0.50 | 0  | 1       | 0.50\nMOV %RBX,(%RSP)                         | 1     | 0    | 0    | 0.50 | 0.50 | 0    | 0    | 1  | 0       | 1\nLEA (%R14),%RDX                         | 1     | 0    | 0    | 0    | 0    | 0.50 | 0.50 | 0  | 1       | 0.50\nMOV %R9,0x8(%RSP)                       | 1     | 0    | 0    | 0.50 | 0.50 | 0    | 0    | 1  | 0       | 1\nLEA (%R15),%RSI                         | 1     | 0    | 0    | 0    | 0    | 0.50 | 0.50 | 0  | 1       | 0.50\nMOV 0xa158(%RSP),%R9                    | 1     | 0    | 0    | 1    | 0    | 0    | 0    | 0  | 4       | 1\nMOV %R8,0x10(%RSP)                      | 1     | 0    | 0    | 0.50 | 0.50 | 0    | 0    | 1  | 0       | 1\nLEA (%R12),%R8                          | 1     | 0    | 0    | 0    | 0    | 0.50 | 0.50 | 0  | 1       | 0.50\nCALL 23ed0 <rhs_>                       | 1     | 0    | 0    | 0    | 0    | 0.50 | 0.50 | 0  | 0       | 2\nMOV 0x240cc(%RIP),%EBP                  | 1     | 0    | 0    | 1    | 0    | 0    | 0    | 0  | 4       | 1\nTEST %EBP,%EBP                          | 1     | 0    | 0    | 0    | 0    | 0.50 | 0.50 | 0  | 1       | 0.50\nJNE 18668 <ssor_+0x1e8>                 | 1     | 0    | 0    | 0    | 0    | 0    | 1    | 0  | 0       | 1-2\nLEA 0xa0e8(%RSP),%RSP                   | 1     | 0    | 0    | 0    | 0    | 0.50 | 0.50 | 0  | 1       | 0.50\nPOP %RBX                                | 2     | 0    | 0    | 0.50 | 0.50 | 0    | 0    | 1  | 0       | 1\nPOP %RBP                                | 2     | 0    | 0    | 0.50 | 0.50 | 0    | 0    | 1  | 0       | 1\nPOP %R12                                | 2     | 0    | 0    | 0.50 | 0.50 | 0    | 0    | 1  | 0       | 1\nPOP %R13                                | 2     | 0    | 0    | 0.50 | 0.50 | 0    | 0    | 1  | 0       | 1\nPOP %R14                                | 2     | 0    | 0    | 0.50 | 0.50 | 0    | 0    | 1  | 0       | 1\nPOP %R15                                | 2     | 0    | 0    | 0.50 | 0.50 | 0    | 0    | 1  | 0       | 1\nRET\nLEA 0x1f625(%RIP),%RDI                  | 1     | 0    | 0    | 0    | 0    | 0.50 | 0.50 | 0  | 1       | 0.50\nCALL 369d0 <timer_stop_>                | 1     | 0    | 0    | 0    | 0    | 0.50 | 0.50 | 0  | 0       | 2\nJMP 18640 <ssor_+0x1c0>                 | 1     | 0    | 0    | 0    | 0    | 0    | 1    | 0  | 0       | 2\n",
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
          txt = "Detected a slowdown caused by scalar integer instructions (typically used for address computation).\nBy removing them, you can lower the cost of an iteration from 52.00 to 15.00 cycles (3.47x speedup).",
        },
        {
          workaround = " - Try another compiler or update/tune your current one\n - Make array accesses unit-stride:\n  * If your function streams arrays of structures (AoS), try to use structures of arrays instead (SoA):\ndo i a(i)%x = b(i)%x (slow, non stride 1) => do i a%x(i) = b%x(i) (fast, stride 1)\n",
          details = "18% of SSE/AVX instructions are used in vector version (process two or more data elements in vector registers):\n - 0% of SSE/AVX loads are used in vector version.\n - 44% of SSE/AVX stores are used in vector version.\n - 0% of SSE/AVX multiply instructions are used in vector version.\n - 0% of SSE/AVX instructions that are not load, store, addition, subtraction nor multiply instructions are used in vector version.\nSince your execution units are vector units, only a fully vectorized function can use their full power.\n",
          title = "Vectorization",
          txt = "Your function is not vectorized.\nOnly 14% of vector register length is used (average across all SSE/AVX instructions).\nBy fully vectorizing your function, you can lower the cost of an iteration from 52.00 to 5.12 cycles (10.16x speedup).",
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
          details = "Calling (and then returning from) a function prevents many compiler optimizations (like vectorization), breaks control flow (which reduces pipeline performance) and executes extra instructions to save/restore the registers used inside it, which is very expensive (dozens of cycles). Consider to inline small functions.\n - rhs: 1 occurrences\n - timer_start: 1 occurrences\n - unknown: 1 occurrences\n",
          title = "CALL instructions",
          txt = "Detected function call instructions.\n",
        },
        {
          workaround = "Avoid mixing data with different types. In particular, check if the type of constants is the same as array elements.",
          details = " - CLTQ: 1 occurrences\n",
          title = "Conversion instructions",
          txt = "Detected expensive conversion instructions.",
        },
        {
          title = "Type of elements and instruction set",
          txt = "No instructions are processing arithmetic or math operations on FP elements. This function is probably writing/copying data or processing integer elements.",
        },
        {
          title = "Matching between your function (in the source code) and the binary function",
          txt = "The binary function does not contain any FP arithmetical operations.\nThe binary function is loading 136 bytes.\nThe binary function is storing 208 bytes.",
        },
      },
      expert = {
        {
          title = "General properties",
          txt = "nb instructions    : 94\nloop length        : 481\nused x86 registers : 16\nused mmx registers : 0\nused xmm registers : 16\nused ymm registers : 0\nused zmm registers : 0\nnb stack references: 33\n",
        },
        {
          title = "Front-end",
          txt = "MACRO FUSION NOT POSSIBLE\ninstruction fetch    : 31.00 cycles\ninstruction queue    : 47.00 cycles\ndecoding             : 47.00 cycles\nmicro-operation queue: 52.00 cycles\nfront end            : 52.00 cycles\n",
        },
        {
          title = "Back-end",
          txt = "       | P0   | P1   | P2    | P3    | P4    | P5    | P6\n------------------------------------------------------------\nuops   | 8.00 | 3.00 | 21.50 | 21.50 | 23.00 | 23.00 | 24.00\ncycles | 8.00 | 3.00 | 21.50 | 21.50 | 23.00 | 23.00 | 24.00\n\nCycles executing div or sqrt instructions: NA\n",
        },
        {
          title = "Cycles summary",
          txt = "Front-end : 52.00\nDispatch  : 24.00\nOverall L1: 52.00\n",
        },
        {
          title = "Vectorization ratios",
          txt = "all     : 18%\nload    : 0%\nstore   : 44%\nmul     : 0%\nadd-sub : NA (no add-sub vectorizable/vectorized instructions)\nfma     : NA (no fma vectorizable/vectorized instructions)\ndiv/sqrt: NA (no div/sqrt vectorizable/vectorized instructions)\nother   : 0%\n",
        },
        {
          title = "Vector efficiency ratios",
          txt = "all     : 14%\nload    : 12%\nstore   : 18%\nmul     : 12%\nadd-sub : NA (no add-sub vectorizable/vectorized instructions)\nfma     : NA (no fma vectorizable/vectorized instructions)\ndiv/sqrt: NA (no div/sqrt vectorizable/vectorized instructions)\nother   : 12%\n",
        },
        {
          title = "Cycles and memory resources usage",
          txt = "Assuming all data fit into the L1 cache, each call to the function takes 52.00 cycles. At this rate:\n - 2% of peak load performance is reached (2.62 out of 128.00 bytes loaded per cycle (GB/s @ 1GHz))\n - 6% of peak store performance is reached (4.00 out of 64.00 bytes stored per cycle (GB/s @ 1GHz))\n",
        },
        {
          title = "Front-end bottlenecks",
          txt = "Performance is limited by instruction throughput (loading/decoding program instructions to execution core) (front-end is a bottleneck).\n\nBy removing all these bottlenecks, you can lower the cost of an iteration from 52.00 to 47.00 cycles (1.11x speedup).\n",
        },
        {
          title = "ASM code",
          txt = "In the binary file, the address of the function is: 18480\n\nInstruction                             | Nb FU | P0   | P1   | P2   | P3   | P4   | P5   | P6 | Latency | Recip. throughput\n----------------------------------------------------------------------------------------------------------------------------\nPUSH %R15                               | 1     | 0    | 0    | 0    | 0    | 1    | 1    | 0  | 0       | 1\nVMOVQ %RDI,%XMM1                        | 1     | 0.50 | 0.50 | 0    | 0    | 0    | 0    | 0  | 2       | 0.50\nVMOVQ %R9,%XMM4                         | 1     | 0.50 | 0.50 | 0    | 0    | 0    | 0    | 0  | 2       | 0.50\nPUSH %R14                               | 1     | 0    | 0    | 0    | 0    | 1    | 1    | 0  | 0       | 1\nLEA (%RDX),%R14                         | 1     | 0    | 0    | 0    | 0    | 0.50 | 0.50 | 0  | 1       | 0.50\nVPINSRQ $0x1,%RSI,%XMM1,%XMM0           | 1     | 1    | 0    | 0    | 0    | 0    | 0    | 0  | 4       | 6\nPUSH %R13                               | 1     | 0    | 0    | 0    | 0    | 1    | 1    | 0  | 0       | 1\nLEA (%RCX),%R13                         | 1     | 0    | 0    | 0    | 0    | 0.50 | 0.50 | 0  | 1       | 0.50\nXOR %ECX,%ECX\nPUSH %R12                               | 1     | 0    | 0    | 0    | 0    | 1    | 1    | 0  | 0       | 1\nVMOVQ %R13,%XMM2                        | 1     | 0.50 | 0.50 | 0    | 0    | 0    | 0    | 0  | 2       | 0.50\nLEA (%RSI),%R15                         | 1     | 0    | 0    | 0    | 0    | 0.50 | 0.50 | 0  | 1       | 0.50\nPUSH %RBP                               | 1     | 0    | 0    | 0    | 0    | 1    | 1    | 0  | 0       | 1\nVPINSRQ $0x1,%R8,%XMM2,%XMM3            | 1     | 1    | 0    | 0    | 0    | 0    | 0    | 0  | 4       | 6\nLEA (%RDI),%RBP                         | 1     | 0    | 0    | 0    | 0    | 0.50 | 0.50 | 0  | 1       | 0.50\nPUSH %RBX                               | 1     | 0    | 0    | 0    | 0    | 1    | 1    | 0  | 0       | 1\nLEA -0x211a(%RIP),%RDI                  | 1     | 0    | 0    | 0    | 0    | 0.50 | 0.50 | 0  | 1       | 0.50\nLEA (%R8),%R12                          | 1     | 0    | 0    | 0    | 0    | 0.50 | 0.50 | 0  | 1       | 0.50\nLEA -0xa0e8(%RSP),%RSP                  | 1     | 0    | 0    | 0    | 0    | 0.50 | 0.50 | 0  | 1       | 0.50\nMOV 0xa160(%RSP),%RBX                   | 1     | 0    | 0    | 1    | 0    | 0    | 0    | 0  | 4       | 1\nVPINSRQ $0x1,0xa120(%RSP),%XMM4,%XMM5   | 1     | 1    | 0    | 0.50 | 0.50 | 0    | 0    | 0  | 4       | 6\nMOV 0xa168(%RSP),%R10                   | 1     | 0    | 0    | 1    | 0    | 0    | 0    | 0  | 4       | 1\nLEA 0xe0(%RSP),%RSI                     | 1     | 0    | 0    | 0    | 0    | 0.50 | 0.50 | 0  | 1       | 0.50\nVMOVQ 0xa128(%RSP),%XMM6                | 1     | 0    | 0    | 0.50 | 0.50 | 0    | 0    | 0  | 5       | 0.50\nMOV (%RBX),%EAX                         | 1     | 0    | 0    | 1    | 0    | 0    | 0    | 0  | 4       | 1\nVPINSRQ $0x1,0xa130(%RSP),%XMM6,%XMM7   | 1     | 1    | 0    | 0.50 | 0.50 | 0    | 0    | 0  | 4       | 6\nMOVSXD (%R10),%R11                      | 1     | 0    | 0    | 1    | 0    | 0    | 0    | 0  | 4       | 1\nVMOVQ 0xa138(%RSP),%XMM8                | 1     | 0    | 0    | 0.50 | 0.50 | 0    | 0    | 0  | 5       | 0.50\nADD $0x2,%EAX                           | 1     | 0    | 0    | 0    | 0    | 0.50 | 0.50 | 0  | 1       | 0.50\nVPINSRQ $0x1,0xa140(%RSP),%XMM8,%XMM9   | 1     | 1    | 0    | 0.50 | 0.50 | 0    | 0    | 0  | 4       | 6\nVMOVQ 0xa148(%RSP),%XMM10               | 1     | 0    | 0    | 0.50 | 0.50 | 0    | 0    | 0  | 5       | 0.50\nCLTQ\nLEA 0xa(%RAX,%RAX,4),%RDX               | 1     | 0    | 0    | 0    | 0    | 1    | 0    | 0  | 1       | 1\nMOV $0x4,%EAX                           | 1     | 0    | 0    | 0    | 0    | 0.50 | 0.50 | 0  | 1       | 0.50\nTEST %RDX,%RDX                          | 1     | 0    | 0    | 0    | 0    | 0.50 | 0.50 | 0  | 1       | 0.50\nVPINSRQ $0x1,0xa150(%RSP),%XMM10,%XMM11 | 1     | 1    | 0    | 0.50 | 0.50 | 0    | 0    | 0  | 4       | 6\nVMOVQ 0xa158(%RSP),%XMM12               | 1     | 0    | 0    | 0.50 | 0.50 | 0    | 0    | 0  | 5       | 0.50\nCMOVS %RCX,%RDX                         | 1     | 0    | 0    | 0    | 0    | 0.50 | 0.50 | 0  | 2       | 1\nVPINSRQ $0x1,%RBX,%XMM12,%XMM13         | 1     | 1    | 0    | 0    | 0    | 0    | 0    | 0  | 4       | 6\nVMOVDQA %XMM0,0x20(%RSP)                | 1     | 0    | 0    | 0.50 | 0.50 | 0    | 0    | 1  | 2       | 1\nIMUL %RDX,%R11                          | 1     | 0    | 0    | 0    | 0    | 1    | 0    | 0  | 5       | 2\nMOV %RDX,0xc0(%RSP)                     | 1     | 0    | 0    | 0.50 | 0.50 | 0    | 0    | 1  | 0       | 1\nMOV %RDX,0xa0(%RSP)                     | 1     | 0    | 0    | 0.50 | 0.50 | 0    | 0    | 1  | 0       | 1\nVMOVDQA %XMM3,0x30(%RSP)                | 1     | 0    | 0    | 0.50 | 0.50 | 0    | 0    | 1  | 2       | 1\nVMOVDQA %XMM5,0x40(%RSP)                | 1     | 0    | 0    | 0.50 | 0.50 | 0    | 0    | 1  | 2       | 1\nVMOVDQA %XMM7,0x50(%RSP)                | 1     | 0    | 0    | 0.50 | 0.50 | 0    | 0    | 1  | 2       | 1\nTEST %R11,%R11                          | 1     | 0    | 0    | 0    | 0    | 0.50 | 0.50 | 0  | 1       | 0.50\nVMOVDQA %XMM9,0x60(%RSP)                | 1     | 0    | 0    | 0.50 | 0.50 | 0    | 0    | 1  | 2       | 1\nVMOVDQA %XMM11,0x70(%RSP)               | 1     | 0    | 0    | 0.50 | 0.50 | 0    | 0    | 1  | 2       | 1\nCMOVS %RCX,%R11                         | 1     | 0    | 0    | 0    | 0    | 0.50 | 0.50 | 0  | 2       | 1\nSUB %RDX,%RAX                           | 1     | 0    | 0    | 0    | 0    | 0.50 | 0.50 | 0  | 1       | 0.50\nXOR %ECX,%ECX\nSUB %R11,%RAX                           | 1     | 0    | 0    | 0    | 0    | 0.50 | 0.50 | 0  | 1       | 0.50\nXOR %EDX,%EDX\nMOV %RAX,0xd0(%RSP)                     | 1     | 0    | 0    | 0.50 | 0.50 | 0    | 0    | 1  | 0       | 1\nMOV %R11,0xc8(%RSP)                     | 1     | 0    | 0    | 0.50 | 0.50 | 0    | 0    | 1  | 0       | 1\nMOV %RAX,0xb0(%RSP)                     | 1     | 0    | 0    | 0.50 | 0.50 | 0    | 0    | 1  | 0       | 1\nMOV %R11,0xa8(%RSP)                     | 1     | 0    | 0    | 0.50 | 0.50 | 0    | 0    | 1  | 0       | 1\nVMOVDQA %XMM13,0x80(%RSP)               | 1     | 0    | 0    | 0.50 | 0.50 | 0    | 0    | 1  | 2       | 1\nVMOVQ 0xa168(%RSP),%XMM14               | 1     | 0    | 0    | 0.50 | 0.50 | 0    | 0    | 0  | 5       | 0.50\nMOV %RSI,0xb8(%RSP)                     | 1     | 0    | 0    | 0.50 | 0.50 | 0    | 0    | 1  | 0       | 1\nVPINSRQ $0x1,0xa170(%RSP),%XMM14,%XMM15 | 1     | 1    | 0    | 0.50 | 0.50 | 0    | 0    | 0  | 4       | 6\nVMOVDQA %XMM15,0x90(%RSP)               | 1     | 0    | 0    | 0.50 | 0.50 | 0    | 0    | 1  | 2       | 1\nLEA 0x20(%RSP),%RSI                     | 1     | 0    | 0    | 0    | 0    | 0.50 | 0.50 | 0  | 1       | 0.50\nCALL 22a0 <@plt_start@+0x280>           | 1     | 0    | 0    | 0    | 0    | 0.50 | 0.50 | 0  | 0       | 2\nMOV 0x24113(%RIP),%EDI                  | 1     | 0    | 0    | 1    | 0    | 0    | 0    | 0  | 4       | 1\nTEST %EDI,%EDI                          | 1     | 0    | 0    | 0    | 0    | 0.50 | 0.50 | 0  | 1       | 0.50\nJNE 18658 <ssor_+0x1d8>                 | 1     | 0    | 0    | 0    | 0    | 0    | 1    | 0  | 0       | 1-2\nMOV 0xa168(%RSP),%R9                    | 1     | 0    | 0    | 1    | 0    | 0    | 0    | 0  | 4       | 1\nLEA (%RBP),%RDI                         | 1     | 0    | 0    | 0    | 0    | 0.50 | 0.50 | 0  | 1       | 0.50\nMOV 0xa170(%RSP),%R8                    | 1     | 0    | 0    | 1    | 0    | 0    | 0    | 0  | 4       | 1\nLEA (%R13),%RCX                         | 1     | 0    | 0    | 0    | 0    | 0.50 | 0.50 | 0  | 1       | 0.50\nMOV %RBX,(%RSP)                         | 1     | 0    | 0    | 0.50 | 0.50 | 0    | 0    | 1  | 0       | 1\nLEA (%R14),%RDX                         | 1     | 0    | 0    | 0    | 0    | 0.50 | 0.50 | 0  | 1       | 0.50\nMOV %R9,0x8(%RSP)                       | 1     | 0    | 0    | 0.50 | 0.50 | 0    | 0    | 1  | 0       | 1\nLEA (%R15),%RSI                         | 1     | 0    | 0    | 0    | 0    | 0.50 | 0.50 | 0  | 1       | 0.50\nMOV 0xa158(%RSP),%R9                    | 1     | 0    | 0    | 1    | 0    | 0    | 0    | 0  | 4       | 1\nMOV %R8,0x10(%RSP)                      | 1     | 0    | 0    | 0.50 | 0.50 | 0    | 0    | 1  | 0       | 1\nLEA (%R12),%R8                          | 1     | 0    | 0    | 0    | 0    | 0.50 | 0.50 | 0  | 1       | 0.50\nCALL 23ed0 <rhs_>                       | 1     | 0    | 0    | 0    | 0    | 0.50 | 0.50 | 0  | 0       | 2\nMOV 0x240cc(%RIP),%EBP                  | 1     | 0    | 0    | 1    | 0    | 0    | 0    | 0  | 4       | 1\nTEST %EBP,%EBP                          | 1     | 0    | 0    | 0    | 0    | 0.50 | 0.50 | 0  | 1       | 0.50\nJNE 18668 <ssor_+0x1e8>                 | 1     | 0    | 0    | 0    | 0    | 0    | 1    | 0  | 0       | 1-2\nLEA 0xa0e8(%RSP),%RSP                   | 1     | 0    | 0    | 0    | 0    | 0.50 | 0.50 | 0  | 1       | 0.50\nPOP %RBX                                | 2     | 0    | 0    | 0.50 | 0.50 | 0    | 0    | 1  | 0       | 1\nPOP %RBP                                | 2     | 0    | 0    | 0.50 | 0.50 | 0    | 0    | 1  | 0       | 1\nPOP %R12                                | 2     | 0    | 0    | 0.50 | 0.50 | 0    | 0    | 1  | 0       | 1\nPOP %R13                                | 2     | 0    | 0    | 0.50 | 0.50 | 0    | 0    | 1  | 0       | 1\nPOP %R14                                | 2     | 0    | 0    | 0.50 | 0.50 | 0    | 0    | 1  | 0       | 1\nPOP %R15                                | 2     | 0    | 0    | 0.50 | 0.50 | 0    | 0    | 1  | 0       | 1\nRET\nLEA 0x1f635(%RIP),%RDI                  | 1     | 0    | 0    | 0    | 0    | 0.50 | 0.50 | 0  | 1       | 0.50\nCALL 369b0 <timer_start_>               | 1     | 0    | 0    | 0    | 0    | 0.50 | 0.50 | 0  | 0       | 2\nJMP 185f9 <ssor_+0x179>                 | 1     | 0    | 0    | 0    | 0    | 0    | 1    | 0  | 0       | 2\n",
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
          txt = "Detected a slowdown caused by scalar integer instructions (typically used for address computation).\nBy removing them, you can lower the cost of an iteration from 52.00 to 15.00 cycles (3.47x speedup).",
        },
        {
          workaround = " - Try another compiler or update/tune your current one\n - Make array accesses unit-stride:\n  * If your function streams arrays of structures (AoS), try to use structures of arrays instead (SoA):\ndo i a(i)%x = b(i)%x (slow, non stride 1) => do i a%x(i) = b%x(i) (fast, stride 1)\n",
          details = "18% of SSE/AVX instructions are used in vector version (process two or more data elements in vector registers):\n - 0% of SSE/AVX loads are used in vector version.\n - 44% of SSE/AVX stores are used in vector version.\n - 0% of SSE/AVX multiply instructions are used in vector version.\n - 0% of SSE/AVX instructions that are not load, store, addition, subtraction nor multiply instructions are used in vector version.\nSince your execution units are vector units, only a fully vectorized function can use their full power.\n",
          title = "Vectorization",
          txt = "Your function is not vectorized.\nOnly 14% of vector register length is used (average across all SSE/AVX instructions).\nBy fully vectorizing your function, you can lower the cost of an iteration from 52.00 to 5.12 cycles (10.16x speedup).",
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
          details = "Calling (and then returning from) a function prevents many compiler optimizations (like vectorization), breaks control flow (which reduces pipeline performance) and executes extra instructions to save/restore the registers used inside it, which is very expensive (dozens of cycles). Consider to inline small functions.\n - rhs: 1 occurrences\n - timer_start: 1 occurrences\n - timer_stop: 1 occurrences\n - unknown: 1 occurrences\n",
          title = "CALL instructions",
          txt = "Detected function call instructions.\n",
        },
        {
          workaround = "Avoid mixing data with different types. In particular, check if the type of constants is the same as array elements.",
          details = " - CLTQ: 1 occurrences\n",
          title = "Conversion instructions",
          txt = "Detected expensive conversion instructions.",
        },
        {
          title = "Type of elements and instruction set",
          txt = "No instructions are processing arithmetic or math operations on FP elements. This function is probably writing/copying data or processing integer elements.",
        },
        {
          title = "Matching between your function (in the source code) and the binary function",
          txt = "The binary function does not contain any FP arithmetical operations.\nThe binary function is loading 136 bytes.\nThe binary function is storing 208 bytes.",
        },
      },
      expert = {
        {
          title = "General properties",
          txt = "nb instructions    : 97\nloop length        : 495\nused x86 registers : 16\nused mmx registers : 0\nused xmm registers : 16\nused ymm registers : 0\nused zmm registers : 0\nnb stack references: 33\n",
        },
        {
          title = "Front-end",
          txt = "MACRO FUSION NOT POSSIBLE\ninstruction fetch    : 31.00 cycles\ninstruction queue    : 48.50 cycles\ndecoding             : 48.50 cycles\nmicro-operation queue: 54.00 cycles\nfront end            : 54.00 cycles\n",
        },
        {
          title = "Back-end",
          txt = "       | P0   | P1   | P2    | P3    | P4    | P5    | P6\n------------------------------------------------------------\nuops   | 8.00 | 3.00 | 21.50 | 21.50 | 24.50 | 24.50 | 24.00\ncycles | 8.00 | 3.00 | 21.50 | 21.50 | 24.50 | 24.50 | 24.00\n\nCycles executing div or sqrt instructions: NA\n",
        },
        {
          title = "Cycles summary",
          txt = "Front-end : 54.00\nDispatch  : 24.50\nOverall L1: 54.00\n",
        },
        {
          title = "Vectorization ratios",
          txt = "all     : 18%\nload    : 0%\nstore   : 44%\nmul     : 0%\nadd-sub : NA (no add-sub vectorizable/vectorized instructions)\nfma     : NA (no fma vectorizable/vectorized instructions)\ndiv/sqrt: NA (no div/sqrt vectorizable/vectorized instructions)\nother   : 0%\n",
        },
        {
          title = "Vector efficiency ratios",
          txt = "all     : 14%\nload    : 12%\nstore   : 18%\nmul     : 12%\nadd-sub : NA (no add-sub vectorizable/vectorized instructions)\nfma     : NA (no fma vectorizable/vectorized instructions)\ndiv/sqrt: NA (no div/sqrt vectorizable/vectorized instructions)\nother   : 12%\n",
        },
        {
          title = "Cycles and memory resources usage",
          txt = "Assuming all data fit into the L1 cache, each call to the function takes 54.00 cycles. At this rate:\n - 1% of peak load performance is reached (2.52 out of 128.00 bytes loaded per cycle (GB/s @ 1GHz))\n - 6% of peak store performance is reached (3.85 out of 64.00 bytes stored per cycle (GB/s @ 1GHz))\n",
        },
        {
          title = "Front-end bottlenecks",
          txt = "Performance is limited by instruction throughput (loading/decoding program instructions to execution core) (front-end is a bottleneck).\n\nBy removing all these bottlenecks, you can lower the cost of an iteration from 54.00 to 48.50 cycles (1.11x speedup).\n",
        },
        {
          title = "ASM code",
          txt = "In the binary file, the address of the function is: 18480\n\nInstruction                             | Nb FU | P0   | P1   | P2   | P3   | P4   | P5   | P6 | Latency | Recip. throughput\n----------------------------------------------------------------------------------------------------------------------------\nPUSH %R15                               | 1     | 0    | 0    | 0    | 0    | 1    | 1    | 0  | 0       | 1\nVMOVQ %RDI,%XMM1                        | 1     | 0.50 | 0.50 | 0    | 0    | 0    | 0    | 0  | 2       | 0.50\nVMOVQ %R9,%XMM4                         | 1     | 0.50 | 0.50 | 0    | 0    | 0    | 0    | 0  | 2       | 0.50\nPUSH %R14                               | 1     | 0    | 0    | 0    | 0    | 1    | 1    | 0  | 0       | 1\nLEA (%RDX),%R14                         | 1     | 0    | 0    | 0    | 0    | 0.50 | 0.50 | 0  | 1       | 0.50\nVPINSRQ $0x1,%RSI,%XMM1,%XMM0           | 1     | 1    | 0    | 0    | 0    | 0    | 0    | 0  | 4       | 6\nPUSH %R13                               | 1     | 0    | 0    | 0    | 0    | 1    | 1    | 0  | 0       | 1\nLEA (%RCX),%R13                         | 1     | 0    | 0    | 0    | 0    | 0.50 | 0.50 | 0  | 1       | 0.50\nXOR %ECX,%ECX\nPUSH %R12                               | 1     | 0    | 0    | 0    | 0    | 1    | 1    | 0  | 0       | 1\nVMOVQ %R13,%XMM2                        | 1     | 0.50 | 0.50 | 0    | 0    | 0    | 0    | 0  | 2       | 0.50\nLEA (%RSI),%R15                         | 1     | 0    | 0    | 0    | 0    | 0.50 | 0.50 | 0  | 1       | 0.50\nPUSH %RBP                               | 1     | 0    | 0    | 0    | 0    | 1    | 1    | 0  | 0       | 1\nVPINSRQ $0x1,%R8,%XMM2,%XMM3            | 1     | 1    | 0    | 0    | 0    | 0    | 0    | 0  | 4       | 6\nLEA (%RDI),%RBP                         | 1     | 0    | 0    | 0    | 0    | 0.50 | 0.50 | 0  | 1       | 0.50\nPUSH %RBX                               | 1     | 0    | 0    | 0    | 0    | 1    | 1    | 0  | 0       | 1\nLEA -0x211a(%RIP),%RDI                  | 1     | 0    | 0    | 0    | 0    | 0.50 | 0.50 | 0  | 1       | 0.50\nLEA (%R8),%R12                          | 1     | 0    | 0    | 0    | 0    | 0.50 | 0.50 | 0  | 1       | 0.50\nLEA -0xa0e8(%RSP),%RSP                  | 1     | 0    | 0    | 0    | 0    | 0.50 | 0.50 | 0  | 1       | 0.50\nMOV 0xa160(%RSP),%RBX                   | 1     | 0    | 0    | 1    | 0    | 0    | 0    | 0  | 4       | 1\nVPINSRQ $0x1,0xa120(%RSP),%XMM4,%XMM5   | 1     | 1    | 0    | 0.50 | 0.50 | 0    | 0    | 0  | 4       | 6\nMOV 0xa168(%RSP),%R10                   | 1     | 0    | 0    | 1    | 0    | 0    | 0    | 0  | 4       | 1\nLEA 0xe0(%RSP),%RSI                     | 1     | 0    | 0    | 0    | 0    | 0.50 | 0.50 | 0  | 1       | 0.50\nVMOVQ 0xa128(%RSP),%XMM6                | 1     | 0    | 0    | 0.50 | 0.50 | 0    | 0    | 0  | 5       | 0.50\nMOV (%RBX),%EAX                         | 1     | 0    | 0    | 1    | 0    | 0    | 0    | 0  | 4       | 1\nVPINSRQ $0x1,0xa130(%RSP),%XMM6,%XMM7   | 1     | 1    | 0    | 0.50 | 0.50 | 0    | 0    | 0  | 4       | 6\nMOVSXD (%R10),%R11                      | 1     | 0    | 0    | 1    | 0    | 0    | 0    | 0  | 4       | 1\nVMOVQ 0xa138(%RSP),%XMM8                | 1     | 0    | 0    | 0.50 | 0.50 | 0    | 0    | 0  | 5       | 0.50\nADD $0x2,%EAX                           | 1     | 0    | 0    | 0    | 0    | 0.50 | 0.50 | 0  | 1       | 0.50\nVPINSRQ $0x1,0xa140(%RSP),%XMM8,%XMM9   | 1     | 1    | 0    | 0.50 | 0.50 | 0    | 0    | 0  | 4       | 6\nVMOVQ 0xa148(%RSP),%XMM10               | 1     | 0    | 0    | 0.50 | 0.50 | 0    | 0    | 0  | 5       | 0.50\nCLTQ\nLEA 0xa(%RAX,%RAX,4),%RDX               | 1     | 0    | 0    | 0    | 0    | 1    | 0    | 0  | 1       | 1\nMOV $0x4,%EAX                           | 1     | 0    | 0    | 0    | 0    | 0.50 | 0.50 | 0  | 1       | 0.50\nTEST %RDX,%RDX                          | 1     | 0    | 0    | 0    | 0    | 0.50 | 0.50 | 0  | 1       | 0.50\nVPINSRQ $0x1,0xa150(%RSP),%XMM10,%XMM11 | 1     | 1    | 0    | 0.50 | 0.50 | 0    | 0    | 0  | 4       | 6\nVMOVQ 0xa158(%RSP),%XMM12               | 1     | 0    | 0    | 0.50 | 0.50 | 0    | 0    | 0  | 5       | 0.50\nCMOVS %RCX,%RDX                         | 1     | 0    | 0    | 0    | 0    | 0.50 | 0.50 | 0  | 2       | 1\nVPINSRQ $0x1,%RBX,%XMM12,%XMM13         | 1     | 1    | 0    | 0    | 0    | 0    | 0    | 0  | 4       | 6\nVMOVDQA %XMM0,0x20(%RSP)                | 1     | 0    | 0    | 0.50 | 0.50 | 0    | 0    | 1  | 2       | 1\nIMUL %RDX,%R11                          | 1     | 0    | 0    | 0    | 0    | 1    | 0    | 0  | 5       | 2\nMOV %RDX,0xc0(%RSP)                     | 1     | 0    | 0    | 0.50 | 0.50 | 0    | 0    | 1  | 0       | 1\nMOV %RDX,0xa0(%RSP)                     | 1     | 0    | 0    | 0.50 | 0.50 | 0    | 0    | 1  | 0       | 1\nVMOVDQA %XMM3,0x30(%RSP)                | 1     | 0    | 0    | 0.50 | 0.50 | 0    | 0    | 1  | 2       | 1\nVMOVDQA %XMM5,0x40(%RSP)                | 1     | 0    | 0    | 0.50 | 0.50 | 0    | 0    | 1  | 2       | 1\nVMOVDQA %XMM7,0x50(%RSP)                | 1     | 0    | 0    | 0.50 | 0.50 | 0    | 0    | 1  | 2       | 1\nTEST %R11,%R11                          | 1     | 0    | 0    | 0    | 0    | 0.50 | 0.50 | 0  | 1       | 0.50\nVMOVDQA %XMM9,0x60(%RSP)                | 1     | 0    | 0    | 0.50 | 0.50 | 0    | 0    | 1  | 2       | 1\nVMOVDQA %XMM11,0x70(%RSP)               | 1     | 0    | 0    | 0.50 | 0.50 | 0    | 0    | 1  | 2       | 1\nCMOVS %RCX,%R11                         | 1     | 0    | 0    | 0    | 0    | 0.50 | 0.50 | 0  | 2       | 1\nSUB %RDX,%RAX                           | 1     | 0    | 0    | 0    | 0    | 0.50 | 0.50 | 0  | 1       | 0.50\nXOR %ECX,%ECX\nSUB %R11,%RAX                           | 1     | 0    | 0    | 0    | 0    | 0.50 | 0.50 | 0  | 1       | 0.50\nXOR %EDX,%EDX\nMOV %RAX,0xd0(%RSP)                     | 1     | 0    | 0    | 0.50 | 0.50 | 0    | 0    | 1  | 0       | 1\nMOV %R11,0xc8(%RSP)                     | 1     | 0    | 0    | 0.50 | 0.50 | 0    | 0    | 1  | 0       | 1\nMOV %RAX,0xb0(%RSP)                     | 1     | 0    | 0    | 0.50 | 0.50 | 0    | 0    | 1  | 0       | 1\nMOV %R11,0xa8(%RSP)                     | 1     | 0    | 0    | 0.50 | 0.50 | 0    | 0    | 1  | 0       | 1\nVMOVDQA %XMM13,0x80(%RSP)               | 1     | 0    | 0    | 0.50 | 0.50 | 0    | 0    | 1  | 2       | 1\nVMOVQ 0xa168(%RSP),%XMM14               | 1     | 0    | 0    | 0.50 | 0.50 | 0    | 0    | 0  | 5       | 0.50\nMOV %RSI,0xb8(%RSP)                     | 1     | 0    | 0    | 0.50 | 0.50 | 0    | 0    | 1  | 0       | 1\nVPINSRQ $0x1,0xa170(%RSP),%XMM14,%XMM15 | 1     | 1    | 0    | 0.50 | 0.50 | 0    | 0    | 0  | 4       | 6\nVMOVDQA %XMM15,0x90(%RSP)               | 1     | 0    | 0    | 0.50 | 0.50 | 0    | 0    | 1  | 2       | 1\nLEA 0x20(%RSP),%RSI                     | 1     | 0    | 0    | 0    | 0    | 0.50 | 0.50 | 0  | 1       | 0.50\nCALL 22a0 <@plt_start@+0x280>           | 1     | 0    | 0    | 0    | 0    | 0.50 | 0.50 | 0  | 0       | 2\nMOV 0x24113(%RIP),%EDI                  | 1     | 0    | 0    | 1    | 0    | 0    | 0    | 0  | 4       | 1\nTEST %EDI,%EDI                          | 1     | 0    | 0    | 0    | 0    | 0.50 | 0.50 | 0  | 1       | 0.50\nJNE 18658 <ssor_+0x1d8>                 | 1     | 0    | 0    | 0    | 0    | 0    | 1    | 0  | 0       | 1-2\nMOV 0xa168(%RSP),%R9                    | 1     | 0    | 0    | 1    | 0    | 0    | 0    | 0  | 4       | 1\nLEA (%RBP),%RDI                         | 1     | 0    | 0    | 0    | 0    | 0.50 | 0.50 | 0  | 1       | 0.50\nMOV 0xa170(%RSP),%R8                    | 1     | 0    | 0    | 1    | 0    | 0    | 0    | 0  | 4       | 1\nLEA (%R13),%RCX                         | 1     | 0    | 0    | 0    | 0    | 0.50 | 0.50 | 0  | 1       | 0.50\nMOV %RBX,(%RSP)                         | 1     | 0    | 0    | 0.50 | 0.50 | 0    | 0    | 1  | 0       | 1\nLEA (%R14),%RDX                         | 1     | 0    | 0    | 0    | 0    | 0.50 | 0.50 | 0  | 1       | 0.50\nMOV %R9,0x8(%RSP)                       | 1     | 0    | 0    | 0.50 | 0.50 | 0    | 0    | 1  | 0       | 1\nLEA (%R15),%RSI                         | 1     | 0    | 0    | 0    | 0    | 0.50 | 0.50 | 0  | 1       | 0.50\nMOV 0xa158(%RSP),%R9                    | 1     | 0    | 0    | 1    | 0    | 0    | 0    | 0  | 4       | 1\nMOV %R8,0x10(%RSP)                      | 1     | 0    | 0    | 0.50 | 0.50 | 0    | 0    | 1  | 0       | 1\nLEA (%R12),%R8                          | 1     | 0    | 0    | 0    | 0    | 0.50 | 0.50 | 0  | 1       | 0.50\nCALL 23ed0 <rhs_>                       | 1     | 0    | 0    | 0    | 0    | 0.50 | 0.50 | 0  | 0       | 2\nMOV 0x240cc(%RIP),%EBP                  | 1     | 0    | 0    | 1    | 0    | 0    | 0    | 0  | 4       | 1\nTEST %EBP,%EBP                          | 1     | 0    | 0    | 0    | 0    | 0.50 | 0.50 | 0  | 1       | 0.50\nJNE 18668 <ssor_+0x1e8>                 | 1     | 0    | 0    | 0    | 0    | 0    | 1    | 0  | 0       | 1-2\nLEA 0xa0e8(%RSP),%RSP                   | 1     | 0    | 0    | 0    | 0    | 0.50 | 0.50 | 0  | 1       | 0.50\nPOP %RBX                                | 2     | 0    | 0    | 0.50 | 0.50 | 0    | 0    | 1  | 0       | 1\nPOP %RBP                                | 2     | 0    | 0    | 0.50 | 0.50 | 0    | 0    | 1  | 0       | 1\nPOP %R12                                | 2     | 0    | 0    | 0.50 | 0.50 | 0    | 0    | 1  | 0       | 1\nPOP %R13                                | 2     | 0    | 0    | 0.50 | 0.50 | 0    | 0    | 1  | 0       | 1\nPOP %R14                                | 2     | 0    | 0    | 0.50 | 0.50 | 0    | 0    | 1  | 0       | 1\nPOP %R15                                | 2     | 0    | 0    | 0.50 | 0.50 | 0    | 0    | 1  | 0       | 1\nRET\nLEA 0x1f635(%RIP),%RDI                  | 1     | 0    | 0    | 0    | 0    | 0.50 | 0.50 | 0  | 1       | 0.50\nCALL 369b0 <timer_start_>               | 1     | 0    | 0    | 0    | 0    | 0.50 | 0.50 | 0  | 0       | 2\nJMP 185f9 <ssor_+0x179>                 | 1     | 0    | 0    | 0    | 0    | 0    | 1    | 0  | 0       | 2\nLEA 0x1f625(%RIP),%RDI                  | 1     | 0    | 0    | 0    | 0    | 0.50 | 0.50 | 0  | 1       | 0.50\nCALL 369d0 <timer_stop_>                | 1     | 0    | 0    | 0    | 0    | 0.50 | 0.50 | 0  | 0       | 2\nJMP 18640 <ssor_+0x1c0>                 | 1     | 0    | 0    | 0    | 0    | 0    | 1    | 0  | 0       | 2\n",
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
          txt = "Detected a slowdown caused by scalar integer instructions (typically used for address computation).\nBy removing them, you can lower the cost of an iteration from 54.00 to 15.00 cycles (3.60x speedup).",
        },
        {
          workaround = " - Try another compiler or update/tune your current one\n - Make array accesses unit-stride:\n  * If your function streams arrays of structures (AoS), try to use structures of arrays instead (SoA):\ndo i a(i)%x = b(i)%x (slow, non stride 1) => do i a%x(i) = b%x(i) (fast, stride 1)\n",
          details = "18% of SSE/AVX instructions are used in vector version (process two or more data elements in vector registers):\n - 0% of SSE/AVX loads are used in vector version.\n - 44% of SSE/AVX stores are used in vector version.\n - 0% of SSE/AVX multiply instructions are used in vector version.\n - 0% of SSE/AVX instructions that are not load, store, addition, subtraction nor multiply instructions are used in vector version.\nSince your execution units are vector units, only a fully vectorized function can use their full power.\n",
          title = "Vectorization",
          txt = "Your function is not vectorized.\nOnly 14% of vector register length is used (average across all SSE/AVX instructions).\nBy fully vectorizing your function, you can lower the cost of an iteration from 54.00 to 5.25 cycles (10.28x speedup).",
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
          details = "Calling (and then returning from) a function prevents many compiler optimizations (like vectorization), breaks control flow (which reduces pipeline performance) and executes extra instructions to save/restore the registers used inside it, which is very expensive (dozens of cycles). Consider to inline small functions.\n - rhs: 1 occurrences\n - unknown: 1 occurrences\n",
          title = "CALL instructions",
          txt = "Detected function call instructions.\n",
        },
        {
          workaround = "Avoid mixing data with different types. In particular, check if the type of constants is the same as array elements.",
          details = " - CLTQ: 1 occurrences\n",
          title = "Conversion instructions",
          txt = "Detected expensive conversion instructions.",
        },
        {
          title = "Type of elements and instruction set",
          txt = "No instructions are processing arithmetic or math operations on FP elements. This function is probably writing/copying data or processing integer elements.",
        },
        {
          title = "Matching between your function (in the source code) and the binary function",
          txt = "The binary function does not contain any FP arithmetical operations.\nThe binary function is loading 136 bytes.\nThe binary function is storing 208 bytes.",
        },
      },
      expert = {
        {
          title = "General properties",
          txt = "nb instructions    : 94\nloop length        : 481\nused x86 registers : 16\nused mmx registers : 0\nused xmm registers : 16\nused ymm registers : 0\nused zmm registers : 0\nnb stack references: 33\n",
        },
        {
          title = "Front-end",
          txt = "MACRO FUSION NOT POSSIBLE\ninstruction fetch    : 30.75 cycles\ninstruction queue    : 47.00 cycles\ndecoding             : 47.00 cycles\nmicro-operation queue: 52.00 cycles\nfront end            : 52.00 cycles\n",
        },
        {
          title = "Back-end",
          txt = "       | P0   | P1   | P2    | P3    | P4    | P5    | P6\n------------------------------------------------------------\nuops   | 8.00 | 3.00 | 21.50 | 21.50 | 23.00 | 23.00 | 24.00\ncycles | 8.00 | 3.00 | 21.50 | 21.50 | 23.00 | 23.00 | 24.00\n\nCycles executing div or sqrt instructions: NA\n",
        },
        {
          title = "Cycles summary",
          txt = "Front-end : 52.00\nDispatch  : 24.13\nOverall L1: 52.00\n",
        },
        {
          title = "Vectorization ratios",
          txt = "all     : 18%\nload    : 0%\nstore   : 44%\nmul     : 0%\nadd-sub : NA (no add-sub vectorizable/vectorized instructions)\nfma     : NA (no fma vectorizable/vectorized instructions)\ndiv/sqrt: NA (no div/sqrt vectorizable/vectorized instructions)\nother   : 0%\n",
        },
        {
          title = "Vector efficiency ratios",
          txt = "all     : 14%\nload    : 12%\nstore   : 18%\nmul     : 12%\nadd-sub : NA (no add-sub vectorizable/vectorized instructions)\nfma     : NA (no fma vectorizable/vectorized instructions)\ndiv/sqrt: NA (no div/sqrt vectorizable/vectorized instructions)\nother   : 12%\n",
        },
        {
          title = "Cycles and memory resources usage",
          txt = "Assuming all data fit into the L1 cache, each call to the function takes 52.00 cycles. At this rate:\n - 2% of peak load performance is reached (2.62 out of 128.00 bytes loaded per cycle (GB/s @ 1GHz))\n - 6% of peak store performance is reached (4.00 out of 64.00 bytes stored per cycle (GB/s @ 1GHz))\n",
        },
      },
      header = {
        "0% of peak computational performance is used (0.00 out of 4.00 FLOP per cycle (GFLOPS @ 1GHz))",
      },
      brief = {
      },
      gain = {
        {
          workaround = " - Try another compiler or update/tune your current one\n - Make array accesses unit-stride:\n  * If your function streams arrays of structures (AoS), try to use structures of arrays instead (SoA):\ndo i a(i)%x = b(i)%x (slow, non stride 1) => do i a%x(i) = b%x(i) (fast, stride 1)\n",
          details = "18% of SSE/AVX instructions are used in vector version (process two or more data elements in vector registers):\n - 0% of SSE/AVX loads are used in vector version.\n - 44% of SSE/AVX stores are used in vector version.\n - 0% of SSE/AVX multiply instructions are used in vector version.\n - 0% of SSE/AVX instructions that are not load, store, addition, subtraction nor multiply instructions are used in vector version.\nSince your execution units are vector units, only a fully vectorized function can use their full power.\n",
          title = "Vectorization",
          txt = "Your function is not vectorized.\nOnly 14% of vector register length is used (average across all SSE/AVX instructions).\nBy fully vectorizing your function, you can lower the cost of an iteration from 52.00 to 5.12 cycles (10.16x speedup).",
        },
      },
      potential = {
      },
    },
  common = {
    header = {
      "The function is defined in /users/user2210/NPB3.4-MZ-MPI/LU-MZ/ssor.f90:4,39,177-182.\n",
      "This function has 4 execution paths.\n",
      "The presence of multiple execution paths is typically the main/first bottleneck.\nTry to simplify control inside function: ideally, try to remove all conditional expressions, for example by (if applicable):\n - hoisting them (moving them outside the function)\n - turning them into conditional moves, MIN or MAX\n\n",
      "Ex: if (x<0) x=0 => x = max(0,x) (Fortran instrinsic procedure)\n",
    },
    nb_paths = 4,
  },
}
