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
          details = "These instructions generate more than one micro-operation and only one of them can be decoded during a cycle and the extra micro-operations increase pressure on execution units.\n - DIV: 1 occurrences\n - RET: 1 occurrences\n",
          title = "Complex instructions",
          txt = "Detected COMPLEX INSTRUCTIONS.\n",
        },
        {
          title = "Type of elements and instruction set",
          txt = "No instructions are processing arithmetic or math operations on FP elements. This function is probably writing/copying data or processing integer elements.",
        },
        {
          title = "Matching between your function (in the source code) and the binary function",
          txt = "The binary function does not contain any FP arithmetical operations.\nThe binary function is loading 196 bytes.\nThe binary function is storing 204 bytes.",
        },
      },
      expert = {
        {
          title = "General properties",
          txt = "nb instructions    : 117\nnb uops            : 130\nloop length        : 599\nused x86 registers : 16\nused mmx registers : 0\nused xmm registers : 1\nused ymm registers : 0\nused zmm registers : 0\nnb stack references: 30\n",
        },
        {
          title = "Front-end",
          txt = "MACRO FUSION NOT POSSIBLE\nFIT IN UOP CACHE\nmicro-operation queue: 32.50 cycles\nfront end            : 32.50 cycles\n",
        },
        {
          title = "Back-end",
          txt = "       | P0    | P1    | P2    | P3    | P4    | P5\n------------------------------------------------------\nuops   | 14.00 | 14.00 | 35.50 | 35.50 | 38.00 | 14.00\ncycles | 14.00 | 14.00 | 35.50 | 35.50 | 38.00 | 14.00\n\nCycles executing div or sqrt instructions: 11.00-18.00\n",
        },
        {
          title = "Cycles summary",
          txt = "Front-end : 32.50\nDispatch  : 38.00\nDIV/SQRT  : 11.00-18.00\nOverall L1: 38.00\n",
        },
        {
          title = "Vectorization ratios",
          txt = "all     : 0%\nload    : 0%\nstore   : 0%\nmul     : NA (no mul vectorizable/vectorized instructions)\nadd-sub : 0%\nfma     : NA (no fma vectorizable/vectorized instructions)\ndiv/sqrt: 0%\nother   : 0%\n",
        },
        {
          title = "Vector efficiency ratios",
          txt = "all     : 40%\nload    : 42%\nstore   : 42%\nmul     : NA (no mul vectorizable/vectorized instructions)\nadd-sub : 25%\nfma     : NA (no fma vectorizable/vectorized instructions)\ndiv/sqrt: 25%\nother   : 30%\n",
        },
        {
          title = "Cycles and memory resources usage",
          txt = "Assuming all data fit into the L1 cache, each call to the function takes 38.00 cycles. At this rate:\n - 16% of peak load performance is reached (5.16 out of 32.00 bytes loaded per cycle (GB/s @ 1GHz))\n - 33% of peak store performance is reached (5.37 out of 16.00 bytes stored per cycle (GB/s @ 1GHz))\n",
        },
        {
          title = "Front-end bottlenecks",
          txt = "Found no such bottlenecks.",
        },
        {
          title = "ASM code",
          txt = "In the binary file, the address of the function is: 15620\n\nInstruction                           | Nb FU | P0   | P1   | P2   | P3   | P4 | P5   | Latency | Recip. throughput\n-------------------------------------------------------------------------------------------------------------------\nPUSH %R15                             | 1     | 0    | 0    | 0.50 | 0.50 | 1  | 0    | 3       | 1\nPUSH %R14                             | 1     | 0    | 0    | 0.50 | 0.50 | 1  | 0    | 3       | 1\nPUSH %R13                             | 1     | 0    | 0    | 0.50 | 0.50 | 1  | 0    | 3       | 1\nPUSH %R12                             | 1     | 0    | 0    | 0.50 | 0.50 | 1  | 0    | 3       | 1\nPUSH %RBP                             | 1     | 0    | 0    | 0.50 | 0.50 | 1  | 0    | 3       | 1\nPUSH %RBX                             | 1     | 0    | 0    | 0.50 | 0.50 | 1  | 0    | 3       | 1\nSUB $0x588,%RSP                       | 1     | 0.33 | 0.33 | 0    | 0    | 0  | 0.33 | 1       | 0.33\nMOV 0xa8(%RDI),%RDX                   | 1     | 0    | 0    | 0.50 | 0.50 | 0  | 0    | 2       | 0.50\nMOV 0x98(%RDI),%RCX                   | 1     | 0    | 0    | 0.50 | 0.50 | 0  | 0    | 2       | 0.50\nMOV 0x90(%RDI),%RBX                   | 1     | 0    | 0    | 0.50 | 0.50 | 0  | 0    | 2       | 0.50\nMOV 0x80(%RDI),%RSI                   | 1     | 0    | 0    | 0.50 | 0.50 | 0  | 0    | 2       | 0.50\nMOV 0x78(%RDI),%RBP                   | 1     | 0    | 0    | 0.50 | 0.50 | 0  | 0    | 2       | 0.50\nMOV %RDX,0x510(%RSP)                  | 1     | 0    | 0    | 0.50 | 0.50 | 1  | 0    | 3       | 1\nMOV 0x70(%RDI),%R8                    | 1     | 0    | 0    | 0.50 | 0.50 | 0  | 0    | 2       | 0.50\nMOV %RCX,0x518(%RSP)                  | 1     | 0    | 0    | 0.50 | 0.50 | 1  | 0    | 3       | 1\nMOV 0x48(%RDI),%R15                   | 1     | 0    | 0    | 0.50 | 0.50 | 0  | 0    | 2       | 0.50\nMOV %RBX,0x520(%RSP)                  | 1     | 0    | 0    | 0.50 | 0.50 | 1  | 0    | 3       | 1\nMOV 0xb0(%RDI),%RAX                   | 1     | 0    | 0    | 0.50 | 0.50 | 0  | 0    | 2       | 0.50\nMOV %RSI,0x4e0(%RSP)                  | 1     | 0    | 0    | 0.50 | 0.50 | 1  | 0    | 3       | 1\nMOV 0x68(%RDI),%R9                    | 1     | 0    | 0    | 0.50 | 0.50 | 0  | 0    | 2       | 0.50\nMOV %RBP,0x4e8(%RSP)                  | 1     | 0    | 0    | 0.50 | 0.50 | 1  | 0    | 3       | 1\nMOV 0x60(%RDI),%R10                   | 1     | 0    | 0    | 0.50 | 0.50 | 0  | 0    | 2       | 0.50\nMOV %R8,0x4d0(%RSP)                   | 1     | 0    | 0    | 0.50 | 0.50 | 1  | 0    | 3       | 1\nMOV 0x50(%RDI),%R11                   | 1     | 0    | 0    | 0.50 | 0.50 | 0  | 0    | 2       | 0.50\nMOV %R15,0x540(%RSP)                  | 1     | 0    | 0    | 0.50 | 0.50 | 1  | 0    | 3       | 1\nMOV 0xa0(%RDI),%R14                   | 1     | 0    | 0    | 0.50 | 0.50 | 0  | 0    | 2       | 0.50\nMOV %RAX,0x508(%RSP)                  | 1     | 0    | 0    | 0.50 | 0.50 | 1  | 0    | 3       | 1\nMOV 0x88(%RDI),%R13                   | 1     | 0    | 0    | 0.50 | 0.50 | 0  | 0    | 2       | 0.50\nMOV %R9,0x528(%RSP)                   | 1     | 0    | 0    | 0.50 | 0.50 | 1  | 0    | 3       | 1\nMOV 0x58(%RDI),%R12                   | 1     | 0    | 0    | 0.50 | 0.50 | 0  | 0    | 2       | 0.50\nMOV %R10,0x530(%RSP)                  | 1     | 0    | 0    | 0.50 | 0.50 | 1  | 0    | 3       | 1\nMOV %R11,0x538(%RSP)                  | 1     | 0    | 0    | 0.50 | 0.50 | 1  | 0    | 3       | 1\nMOV 0x40(%RDI),%RAX                   | 1     | 0    | 0    | 0.50 | 0.50 | 0  | 0    | 2       | 0.50\nMOV 0x30(%RDI),%RDX                   | 1     | 0    | 0    | 0.50 | 0.50 | 0  | 0    | 2       | 0.50\nMOV 0x38(%RDI),%RBX                   | 1     | 0    | 0    | 0.50 | 0.50 | 0  | 0    | 2       | 0.50\nMOV 0x28(%RDI),%R8                    | 1     | 0    | 0    | 0.50 | 0.50 | 0  | 0    | 2       | 0.50\nMOV %RAX,(%RSP)                       | 1     | 0    | 0    | 0.50 | 0.50 | 1  | 0    | 3       | 1\nMOV (%RDX),%ECX                       | 1     | 0    | 0    | 0.50 | 0.50 | 0  | 0    | 2       | 0.50\nMOV (%RBX),%ESI                       | 1     | 0    | 0    | 0.50 | 0.50 | 0  | 0    | 2       | 0.50\nMOV (%R8),%R15D                       | 1     | 0    | 0    | 0.50 | 0.50 | 0  | 0    | 2       | 0.50\nSUB $0x1,%ECX                         | 1     | 0.33 | 0.33 | 0    | 0    | 0  | 0.33 | 1       | 0.33\nLEA -0x2(%RSI),%EBP                   | 1     | 0.50 | 0.50 | 0    | 0    | 0  | 0    | 1       | 0.50\nMOV %ECX,0x4c0(%RSP)                  | 1     | 0    | 0    | 0.50 | 0.50 | 1  | 0    | 3       | 1\nMOV %ECX,0x57c(%RSP)                  | 1     | 0    | 0    | 0.50 | 0.50 | 1  | 0    | 3       | 1\nMOV %EBP,0x10(%RSP)                   | 1     | 0    | 0    | 0.50 | 0.50 | 1  | 0    | 3       | 1\nCMP $0x2,%ESI                         | 1     | 0.33 | 0.33 | 0    | 0    | 0  | 0.33 | 1       | 0.33\nJLE 17a7c <y_solve_._omp_fn.0+0x245c> | 1     | 0    | 0    | 0    | 0    | 0  | 1    | 0       | 1-2\nCMP $0x2,%R15D                        | 1     | 0.33 | 0.33 | 0    | 0    | 0  | 0.33 | 1       | 0.33\nJLE 17a7c <y_solve_._omp_fn.0+0x245c> | 1     | 0    | 0    | 0    | 0    | 0  | 1    | 0       | 1-2\nLEA -0x2(%R15),%EBX                   | 1     | 0.50 | 0.50 | 0    | 0    | 0  | 0    | 1       | 0.50\nMOV %RDI,%RBP                         | 1     | 0.33 | 0.33 | 0    | 0    | 0  | 0.33 | 1       | 0.33\nCALL 2300 <@plt_start@+0x2e0>         | 3     | 0    | 0    | 0.50 | 0.50 | 1  | 1    | 0       | 2\nMOV %EAX,0x8(%RSP)                    | 1     | 0    | 0    | 0.50 | 0.50 | 1  | 0    | 3       | 1\nCALL 22a0 <@plt_start@+0x280>         | 3     | 0    | 0    | 0.50 | 0.50 | 1  | 1    | 0       | 2\nXOR %EDX,%EDX                         | 1     | 0    | 0    | 0    | 0    | 0  | 0    | 0       | 0.25\nMOV %EAX,%EDI                         | 1     | 0.33 | 0.33 | 0    | 0    | 0  | 0.33 | 1       | 0.33\nMOV 0x10(%RSP),%EAX                   | 1     | 0    | 0    | 0.50 | 0.50 | 0  | 0    | 2       | 0.50\nIMUL %EBX,%EAX                        | 1     | 0    | 1    | 0    | 0    | 0  | 0    | 3       | 1\nDIVL 0x8(%RSP)\nMOV %EAX,%R9D                         | 1     | 0.33 | 0.33 | 0    | 0    | 0  | 0.33 | 1       | 0.33\nCMP %EDX,%EDI                         | 1     | 0.33 | 0.33 | 0    | 0    | 0  | 0.33 | 1       | 0.33\nJB 17adb <y_solve_._omp_fn.0+0x24bb>  | 1     | 0    | 0    | 0    | 0    | 0  | 1    | 0       | 1-2\nMOV %EDI,%EAX                         | 1     | 0.33 | 0.33 | 0    | 0    | 0  | 0.33 | 1       | 0.33\nIMUL %R9D,%EAX                        | 1     | 0    | 1    | 0    | 0    | 0  | 0    | 3       | 1\nADD %EDX,%EAX                         | 1     | 0.33 | 0.33 | 0    | 0    | 0  | 0.33 | 1       | 0.33\nLEA (%R9,%RAX,1),%R10D                | 1     | 0.50 | 0.50 | 0    | 0    | 0  | 0    | 1       | 0.50\nCMP %R10D,%EAX                        | 1     | 0.33 | 0.33 | 0    | 0    | 0  | 0.33 | 1       | 0.33\nJAE 17a7c <y_solve_._omp_fn.0+0x245c> | 1     | 0    | 0    | 0    | 0    | 0  | 1    | 0       | 1-2\nLEA -0x1(%R15),%R11D                  | 1     | 0.50 | 0.50 | 0    | 0    | 0  | 0    | 1       | 0.50\nXOR %EDX,%EDX                         | 1     | 0    | 0    | 0    | 0    | 0  | 0    | 0       | 0.25\nMOV (%RSP),%R15                       | 1     | 0    | 0    | 0.50 | 0.50 | 0  | 0    | 2       | 0.50\nMOVL $0,0x4f0(%RSP)                   | 1     | 0    | 0    | 0.50 | 0.50 | 1  | 0    | 3       | 1\nDIV %EBX                              | 10    | 0    | 0    | 0    | 0    | 0  | 0    | 20-28   | 11-18\nVMOVQ 0x12d41(%RIP),%XMM12            | 1     | 0    | 0    | 0.50 | 0.50 | 0  | 0    | 3       | 0.50\nMOV %R11D,0x54c(%RSP)                 | 1     | 0    | 0    | 0.50 | 0.50 | 1  | 0    | 3       | 1\nSAL $0x3,%R15                         | 1     | 0.50 | 0    | 0    | 0    | 0  | 0.50 | 1       | 0.50\nLEA (,%R12,8),%R12                    | 1     | 0.50 | 0.50 | 0    | 0    | 0  | 0    | 1       | 0.50\nMOV %R15,0x560(%RSP)                  | 1     | 0    | 0    | 0.50 | 0.50 | 1  | 0    | 3       | 1\nMOV %R12,0x550(%RSP)                  | 1     | 0    | 0    | 0.50 | 0.50 | 1  | 0    | 3       | 1\nMOV 0x4d0(%RSP),%R12                  | 1     | 0    | 0    | 0.50 | 0.50 | 0  | 0    | 2       | 0.50\nLEA -0x1(%R9),%R8D                    | 1     | 0.50 | 0.50 | 0    | 0    | 0  | 0    | 1       | 0.50\nLEA (,%R14,8),%R14                    | 1     | 0.50 | 0.50 | 0    | 0    | 0  | 0    | 1       | 0.50\nMOV %R8D,0x4f4(%RSP)                  | 1     | 0    | 0    | 0.50 | 0.50 | 1  | 0    | 3       | 1\nLEA (,%R13,8),%R13                    | 1     | 0.50 | 0.50 | 0    | 0    | 0  | 0    | 1       | 0.50\nMOV %R14,0x558(%RSP)                  | 1     | 0    | 0    | 0.50 | 0.50 | 1  | 0    | 3       | 1\nLEA 0x57c(%RSP),%R9                   | 1     | 0.50 | 0.50 | 0    | 0    | 0  | 0    | 1       | 0.50\nMOV %R13,0x568(%RSP)                  | 1     | 0    | 0    | 0.50 | 0.50 | 1  | 0    | 3       | 1\nLEA (,%R12,8),%RBX                    | 1     | 0.50 | 0.50 | 0    | 0    | 0  | 0    | 1       | 0.50\nNEG %R12                              | 1     | 0.33 | 0.33 | 0    | 0    | 0  | 0.33 | 1       | 0.33\nMOV %R9,0x4f8(%RSP)                   | 1     | 0    | 0    | 0.50 | 0.50 | 1  | 0    | 3       | 1\nMOV %RBX,0x4a8(%RSP)                  | 1     | 0    | 0    | 0.50 | 0.50 | 1  | 0    | 3       | 1\nSAL $0x3,%R12                         | 1     | 0.50 | 0    | 0    | 0    | 0  | 0.50 | 1       | 0.50\nLEA 0x1(%RAX),%ESI                    | 1     | 0.50 | 0.50 | 0    | 0    | 0  | 0    | 1       | 0.50\nMOV $-0xc390,%RAX                     | 1     | 0.33 | 0.33 | 0    | 0    | 0  | 0.33 | 1       | 0.33\nADD %FS:,%RAX                         | 1     | 0.33 | 0.33 | 0.50 | 0.50 | 0  | 0.33 | 1       | 0.50\nLEA 0x1(%RDX),%ECX                    | 1     | 0.50 | 0.50 | 0    | 0    | 0  | 0    | 1       | 0.50\nMOVSXD %ESI,%RDI                      | 1     | 0.33 | 0.33 | 0    | 0    | 0  | 0.33 | 1       | 0.33\nMOV %ESI,0x548(%RSP)                  | 1     | 0    | 0    | 0.50 | 0.50 | 1  | 0    | 3       | 1\nMOV %ECX,0x4c4(%RSP)                  | 1     | 0    | 0    | 0.50 | 0.50 | 1  | 0    | 3       | 1\nMOV %RDI,0x4d8(%RSP)                  | 1     | 0    | 0    | 0.50 | 0.50 | 1  | 0    | 3       | 1\nMOV %RAX,0x4b8(%RSP)                  | 1     | 0    | 0    | 0.50 | 0.50 | 1  | 0    | 3       | 1\nADD $0x190,%RAX                       | 1     | 0.33 | 0.33 | 0    | 0    | 0  | 0.33 | 1       | 0.33\nMOV %RAX,0x500(%RSP)                  | 1     | 0    | 0    | 0.50 | 0.50 | 1  | 0    | 3       | 1\nNOPL (%RAX,%RAX,1)                    | 1     | 0    | 0    | 0    | 0    | 0  | 0    | 0       | 0.25\nNOPL (%RAX,%RAX,1)                    | 1     | 0    | 0    | 0    | 0    | 0  | 0    | 0       | 0.25\nADD $0x588,%RSP                       | 1     | 0.33 | 0.33 | 0    | 0    | 0  | 0.33 | 1       | 0.33\nPOP %RBX                              | 1     | 0    | 0    | 0.50 | 0.50 | 0  | 0    | 2       | 0.50\nPOP %RBP                              | 1     | 0    | 0    | 0.50 | 0.50 | 0  | 0    | 2       | 0.50\nPOP %R12                              | 1     | 0    | 0    | 0.50 | 0.50 | 0  | 0    | 2       | 0.50\nPOP %R13                              | 1     | 0    | 0    | 0.50 | 0.50 | 0  | 0    | 2       | 0.50\nPOP %R14                              | 1     | 0    | 0    | 0.50 | 0.50 | 0  | 0    | 2       | 0.50\nPOP %R15                              | 1     | 0    | 0    | 0.50 | 0.50 | 0  | 0    | 2       | 0.50\nRET                                   | 2     | 0    | 0    | 0.50 | 0.50 | 0  | 1    | 0       | 2\nADD $0x1,%R9D                         | 1     | 0.33 | 0.33 | 0    | 0    | 0  | 0.33 | 1       | 0.33\nXOR %EDX,%EDX                         | 1     | 0    | 0    | 0    | 0    | 0  | 0    | 0       | 0.25\nJMP 1574b <y_solve_._omp_fn.0+0x12b>  | 1     | 0    | 0    | 0    | 0    | 0  | 1    | 0       | 2\nNOPW %CS:(%RAX,%RAX,1)                | 1     | 0    | 0    | 0    | 0    | 0  | 0    | 0       | 0.25\n",
        },
      },
      header = {
        "Warnings:\n - The number of fused uops of the instruction [DIVL	0x8(%RSP)] is unknown\n - Detected a function call instruction: ignoring called function instructions.\nRerun with --follow-calls=append to include them to analysis  or with --follow-calls=inline to simulate inlining.\n",
        "0% of peak computational performance is used (0.00 out of 2.00 FLOP per cycle (GFLOPS @ 1GHz))",
      },
      brief = {
      },
      gain = {
        {
          workaround = " - Try to reorganize arrays of structures to structures of arrays\n - Consider to permute loops (see vectorization gain report)\n - To reference allocatable arrays, use \"allocatable\" instead of \"pointer\" pointers or qualify them with the \"contiguous\" attribute (Fortran 2008)\n - For structures, limit to one indirection. For example, use a_b%c instead of a%b%c with a_b set to a%b before this function\n",
          title = "Code clean check",
          txt = "Detected a slowdown caused by scalar integer instructions (typically used for address computation).\nBy removing them, you can lower the cost of an iteration from 38.00 to 4.00 cycles (9.50x speedup).",
        },
        {
          workaround = " - Try another compiler or update/tune your current one\n - Make array accesses unit-stride:\n  * If your function streams arrays of structures (AoS), try to use structures of arrays instead (SoA):\ndo i a(i)%x = b(i)%x (slow, non stride 1) => do i a%x(i) = b%x(i) (fast, stride 1)\n",
          details = "All SSE/AVX instructions are used in scalar version (process only one data element in vector registers).\nSince your execution units are vector units, only a vectorized function can use their full power.\n",
          title = "Vectorization",
          txt = "Your function is not vectorized.\nOnly 40% of vector register length is used (average across all SSE/AVX instructions).\nBy vectorizing your function, you can lower the cost of an iteration from 38.00 to 14.75 cycles (2.58x speedup).",
        },
        {
          workaround = "Write less array elements",
          title = "Execution units bottlenecks",
          txt = "Performance is limited by writing data to caches/RAM (the store unit is a bottleneck).\n\nBy removing all these bottlenecks, you can lower the cost of an iteration from 38.00 to 35.50 cycles (1.07x speedup).\n",
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
          details = "These instructions generate more than one micro-operation and only one of them can be decoded during a cycle and the extra micro-operations increase pressure on execution units.\n - DIV: 1 occurrences\n - RET: 1 occurrences\n",
          title = "Complex instructions",
          txt = "Detected COMPLEX INSTRUCTIONS.\n",
        },
        {
          title = "Type of elements and instruction set",
          txt = "No instructions are processing arithmetic or math operations on FP elements. This function is probably writing/copying data or processing integer elements.",
        },
        {
          title = "Matching between your function (in the source code) and the binary function",
          txt = "The binary function does not contain any FP arithmetical operations.\nThe binary function is loading 196 bytes.\nThe binary function is storing 204 bytes.",
        },
      },
      expert = {
        {
          title = "General properties",
          txt = "nb instructions    : 117\nnb uops            : 130\nloop length        : 599\nused x86 registers : 16\nused mmx registers : 0\nused xmm registers : 1\nused ymm registers : 0\nused zmm registers : 0\nnb stack references: 30\n",
        },
        {
          title = "Front-end",
          txt = "MACRO FUSION NOT POSSIBLE\nFIT IN UOP CACHE\nmicro-operation queue: 32.50 cycles\nfront end            : 32.50 cycles\n",
        },
        {
          title = "Back-end",
          txt = "       | P0    | P1    | P2    | P3    | P4    | P5\n------------------------------------------------------\nuops   | 14.00 | 14.00 | 35.50 | 35.50 | 38.00 | 14.00\ncycles | 14.00 | 14.00 | 35.50 | 35.50 | 38.00 | 14.00\n\nCycles executing div or sqrt instructions: 11.00-18.00\n",
        },
        {
          title = "Cycles summary",
          txt = "Front-end : 32.50\nDispatch  : 38.00\nDIV/SQRT  : 11.00-18.00\nOverall L1: 38.00\n",
        },
        {
          title = "Vectorization ratios",
          txt = "all     : 0%\nload    : 0%\nstore   : 0%\nmul     : NA (no mul vectorizable/vectorized instructions)\nadd-sub : 0%\nfma     : NA (no fma vectorizable/vectorized instructions)\ndiv/sqrt: 0%\nother   : 0%\n",
        },
        {
          title = "Vector efficiency ratios",
          txt = "all     : 40%\nload    : 42%\nstore   : 42%\nmul     : NA (no mul vectorizable/vectorized instructions)\nadd-sub : 25%\nfma     : NA (no fma vectorizable/vectorized instructions)\ndiv/sqrt: 25%\nother   : 30%\n",
        },
        {
          title = "Cycles and memory resources usage",
          txt = "Assuming all data fit into the L1 cache, each call to the function takes 38.00 cycles. At this rate:\n - 16% of peak load performance is reached (5.16 out of 32.00 bytes loaded per cycle (GB/s @ 1GHz))\n - 33% of peak store performance is reached (5.37 out of 16.00 bytes stored per cycle (GB/s @ 1GHz))\n",
        },
        {
          title = "Front-end bottlenecks",
          txt = "Found no such bottlenecks.",
        },
        {
          title = "ASM code",
          txt = "In the binary file, the address of the function is: 15620\n\nInstruction                           | Nb FU | P0   | P1   | P2   | P3   | P4 | P5   | Latency | Recip. throughput\n-------------------------------------------------------------------------------------------------------------------\nPUSH %R15                             | 1     | 0    | 0    | 0.50 | 0.50 | 1  | 0    | 3       | 1\nPUSH %R14                             | 1     | 0    | 0    | 0.50 | 0.50 | 1  | 0    | 3       | 1\nPUSH %R13                             | 1     | 0    | 0    | 0.50 | 0.50 | 1  | 0    | 3       | 1\nPUSH %R12                             | 1     | 0    | 0    | 0.50 | 0.50 | 1  | 0    | 3       | 1\nPUSH %RBP                             | 1     | 0    | 0    | 0.50 | 0.50 | 1  | 0    | 3       | 1\nPUSH %RBX                             | 1     | 0    | 0    | 0.50 | 0.50 | 1  | 0    | 3       | 1\nSUB $0x588,%RSP                       | 1     | 0.33 | 0.33 | 0    | 0    | 0  | 0.33 | 1       | 0.33\nMOV 0xa8(%RDI),%RDX                   | 1     | 0    | 0    | 0.50 | 0.50 | 0  | 0    | 2       | 0.50\nMOV 0x98(%RDI),%RCX                   | 1     | 0    | 0    | 0.50 | 0.50 | 0  | 0    | 2       | 0.50\nMOV 0x90(%RDI),%RBX                   | 1     | 0    | 0    | 0.50 | 0.50 | 0  | 0    | 2       | 0.50\nMOV 0x80(%RDI),%RSI                   | 1     | 0    | 0    | 0.50 | 0.50 | 0  | 0    | 2       | 0.50\nMOV 0x78(%RDI),%RBP                   | 1     | 0    | 0    | 0.50 | 0.50 | 0  | 0    | 2       | 0.50\nMOV %RDX,0x510(%RSP)                  | 1     | 0    | 0    | 0.50 | 0.50 | 1  | 0    | 3       | 1\nMOV 0x70(%RDI),%R8                    | 1     | 0    | 0    | 0.50 | 0.50 | 0  | 0    | 2       | 0.50\nMOV %RCX,0x518(%RSP)                  | 1     | 0    | 0    | 0.50 | 0.50 | 1  | 0    | 3       | 1\nMOV 0x48(%RDI),%R15                   | 1     | 0    | 0    | 0.50 | 0.50 | 0  | 0    | 2       | 0.50\nMOV %RBX,0x520(%RSP)                  | 1     | 0    | 0    | 0.50 | 0.50 | 1  | 0    | 3       | 1\nMOV 0xb0(%RDI),%RAX                   | 1     | 0    | 0    | 0.50 | 0.50 | 0  | 0    | 2       | 0.50\nMOV %RSI,0x4e0(%RSP)                  | 1     | 0    | 0    | 0.50 | 0.50 | 1  | 0    | 3       | 1\nMOV 0x68(%RDI),%R9                    | 1     | 0    | 0    | 0.50 | 0.50 | 0  | 0    | 2       | 0.50\nMOV %RBP,0x4e8(%RSP)                  | 1     | 0    | 0    | 0.50 | 0.50 | 1  | 0    | 3       | 1\nMOV 0x60(%RDI),%R10                   | 1     | 0    | 0    | 0.50 | 0.50 | 0  | 0    | 2       | 0.50\nMOV %R8,0x4d0(%RSP)                   | 1     | 0    | 0    | 0.50 | 0.50 | 1  | 0    | 3       | 1\nMOV 0x50(%RDI),%R11                   | 1     | 0    | 0    | 0.50 | 0.50 | 0  | 0    | 2       | 0.50\nMOV %R15,0x540(%RSP)                  | 1     | 0    | 0    | 0.50 | 0.50 | 1  | 0    | 3       | 1\nMOV 0xa0(%RDI),%R14                   | 1     | 0    | 0    | 0.50 | 0.50 | 0  | 0    | 2       | 0.50\nMOV %RAX,0x508(%RSP)                  | 1     | 0    | 0    | 0.50 | 0.50 | 1  | 0    | 3       | 1\nMOV 0x88(%RDI),%R13                   | 1     | 0    | 0    | 0.50 | 0.50 | 0  | 0    | 2       | 0.50\nMOV %R9,0x528(%RSP)                   | 1     | 0    | 0    | 0.50 | 0.50 | 1  | 0    | 3       | 1\nMOV 0x58(%RDI),%R12                   | 1     | 0    | 0    | 0.50 | 0.50 | 0  | 0    | 2       | 0.50\nMOV %R10,0x530(%RSP)                  | 1     | 0    | 0    | 0.50 | 0.50 | 1  | 0    | 3       | 1\nMOV %R11,0x538(%RSP)                  | 1     | 0    | 0    | 0.50 | 0.50 | 1  | 0    | 3       | 1\nMOV 0x40(%RDI),%RAX                   | 1     | 0    | 0    | 0.50 | 0.50 | 0  | 0    | 2       | 0.50\nMOV 0x30(%RDI),%RDX                   | 1     | 0    | 0    | 0.50 | 0.50 | 0  | 0    | 2       | 0.50\nMOV 0x38(%RDI),%RBX                   | 1     | 0    | 0    | 0.50 | 0.50 | 0  | 0    | 2       | 0.50\nMOV 0x28(%RDI),%R8                    | 1     | 0    | 0    | 0.50 | 0.50 | 0  | 0    | 2       | 0.50\nMOV %RAX,(%RSP)                       | 1     | 0    | 0    | 0.50 | 0.50 | 1  | 0    | 3       | 1\nMOV (%RDX),%ECX                       | 1     | 0    | 0    | 0.50 | 0.50 | 0  | 0    | 2       | 0.50\nMOV (%RBX),%ESI                       | 1     | 0    | 0    | 0.50 | 0.50 | 0  | 0    | 2       | 0.50\nMOV (%R8),%R15D                       | 1     | 0    | 0    | 0.50 | 0.50 | 0  | 0    | 2       | 0.50\nSUB $0x1,%ECX                         | 1     | 0.33 | 0.33 | 0    | 0    | 0  | 0.33 | 1       | 0.33\nLEA -0x2(%RSI),%EBP                   | 1     | 0.50 | 0.50 | 0    | 0    | 0  | 0    | 1       | 0.50\nMOV %ECX,0x4c0(%RSP)                  | 1     | 0    | 0    | 0.50 | 0.50 | 1  | 0    | 3       | 1\nMOV %ECX,0x57c(%RSP)                  | 1     | 0    | 0    | 0.50 | 0.50 | 1  | 0    | 3       | 1\nMOV %EBP,0x10(%RSP)                   | 1     | 0    | 0    | 0.50 | 0.50 | 1  | 0    | 3       | 1\nCMP $0x2,%ESI                         | 1     | 0.33 | 0.33 | 0    | 0    | 0  | 0.33 | 1       | 0.33\nJLE 17a7c <y_solve_._omp_fn.0+0x245c> | 1     | 0    | 0    | 0    | 0    | 0  | 1    | 0       | 1-2\nCMP $0x2,%R15D                        | 1     | 0.33 | 0.33 | 0    | 0    | 0  | 0.33 | 1       | 0.33\nJLE 17a7c <y_solve_._omp_fn.0+0x245c> | 1     | 0    | 0    | 0    | 0    | 0  | 1    | 0       | 1-2\nLEA -0x2(%R15),%EBX                   | 1     | 0.50 | 0.50 | 0    | 0    | 0  | 0    | 1       | 0.50\nMOV %RDI,%RBP                         | 1     | 0.33 | 0.33 | 0    | 0    | 0  | 0.33 | 1       | 0.33\nCALL 2300 <@plt_start@+0x2e0>         | 3     | 0    | 0    | 0.50 | 0.50 | 1  | 1    | 0       | 2\nMOV %EAX,0x8(%RSP)                    | 1     | 0    | 0    | 0.50 | 0.50 | 1  | 0    | 3       | 1\nCALL 22a0 <@plt_start@+0x280>         | 3     | 0    | 0    | 0.50 | 0.50 | 1  | 1    | 0       | 2\nXOR %EDX,%EDX                         | 1     | 0    | 0    | 0    | 0    | 0  | 0    | 0       | 0.25\nMOV %EAX,%EDI                         | 1     | 0.33 | 0.33 | 0    | 0    | 0  | 0.33 | 1       | 0.33\nMOV 0x10(%RSP),%EAX                   | 1     | 0    | 0    | 0.50 | 0.50 | 0  | 0    | 2       | 0.50\nIMUL %EBX,%EAX                        | 1     | 0    | 1    | 0    | 0    | 0  | 0    | 3       | 1\nDIVL 0x8(%RSP)\nMOV %EAX,%R9D                         | 1     | 0.33 | 0.33 | 0    | 0    | 0  | 0.33 | 1       | 0.33\nCMP %EDX,%EDI                         | 1     | 0.33 | 0.33 | 0    | 0    | 0  | 0.33 | 1       | 0.33\nJB 17adb <y_solve_._omp_fn.0+0x24bb>  | 1     | 0    | 0    | 0    | 0    | 0  | 1    | 0       | 1-2\nMOV %EDI,%EAX                         | 1     | 0.33 | 0.33 | 0    | 0    | 0  | 0.33 | 1       | 0.33\nIMUL %R9D,%EAX                        | 1     | 0    | 1    | 0    | 0    | 0  | 0    | 3       | 1\nADD %EDX,%EAX                         | 1     | 0.33 | 0.33 | 0    | 0    | 0  | 0.33 | 1       | 0.33\nLEA (%R9,%RAX,1),%R10D                | 1     | 0.50 | 0.50 | 0    | 0    | 0  | 0    | 1       | 0.50\nCMP %R10D,%EAX                        | 1     | 0.33 | 0.33 | 0    | 0    | 0  | 0.33 | 1       | 0.33\nJAE 17a7c <y_solve_._omp_fn.0+0x245c> | 1     | 0    | 0    | 0    | 0    | 0  | 1    | 0       | 1-2\nLEA -0x1(%R15),%R11D                  | 1     | 0.50 | 0.50 | 0    | 0    | 0  | 0    | 1       | 0.50\nXOR %EDX,%EDX                         | 1     | 0    | 0    | 0    | 0    | 0  | 0    | 0       | 0.25\nMOV (%RSP),%R15                       | 1     | 0    | 0    | 0.50 | 0.50 | 0  | 0    | 2       | 0.50\nMOVL $0,0x4f0(%RSP)                   | 1     | 0    | 0    | 0.50 | 0.50 | 1  | 0    | 3       | 1\nDIV %EBX                              | 10    | 0    | 0    | 0    | 0    | 0  | 0    | 20-28   | 11-18\nVMOVQ 0x12d41(%RIP),%XMM12            | 1     | 0    | 0    | 0.50 | 0.50 | 0  | 0    | 3       | 0.50\nMOV %R11D,0x54c(%RSP)                 | 1     | 0    | 0    | 0.50 | 0.50 | 1  | 0    | 3       | 1\nSAL $0x3,%R15                         | 1     | 0.50 | 0    | 0    | 0    | 0  | 0.50 | 1       | 0.50\nLEA (,%R12,8),%R12                    | 1     | 0.50 | 0.50 | 0    | 0    | 0  | 0    | 1       | 0.50\nMOV %R15,0x560(%RSP)                  | 1     | 0    | 0    | 0.50 | 0.50 | 1  | 0    | 3       | 1\nMOV %R12,0x550(%RSP)                  | 1     | 0    | 0    | 0.50 | 0.50 | 1  | 0    | 3       | 1\nMOV 0x4d0(%RSP),%R12                  | 1     | 0    | 0    | 0.50 | 0.50 | 0  | 0    | 2       | 0.50\nLEA -0x1(%R9),%R8D                    | 1     | 0.50 | 0.50 | 0    | 0    | 0  | 0    | 1       | 0.50\nLEA (,%R14,8),%R14                    | 1     | 0.50 | 0.50 | 0    | 0    | 0  | 0    | 1       | 0.50\nMOV %R8D,0x4f4(%RSP)                  | 1     | 0    | 0    | 0.50 | 0.50 | 1  | 0    | 3       | 1\nLEA (,%R13,8),%R13                    | 1     | 0.50 | 0.50 | 0    | 0    | 0  | 0    | 1       | 0.50\nMOV %R14,0x558(%RSP)                  | 1     | 0    | 0    | 0.50 | 0.50 | 1  | 0    | 3       | 1\nLEA 0x57c(%RSP),%R9                   | 1     | 0.50 | 0.50 | 0    | 0    | 0  | 0    | 1       | 0.50\nMOV %R13,0x568(%RSP)                  | 1     | 0    | 0    | 0.50 | 0.50 | 1  | 0    | 3       | 1\nLEA (,%R12,8),%RBX                    | 1     | 0.50 | 0.50 | 0    | 0    | 0  | 0    | 1       | 0.50\nNEG %R12                              | 1     | 0.33 | 0.33 | 0    | 0    | 0  | 0.33 | 1       | 0.33\nMOV %R9,0x4f8(%RSP)                   | 1     | 0    | 0    | 0.50 | 0.50 | 1  | 0    | 3       | 1\nMOV %RBX,0x4a8(%RSP)                  | 1     | 0    | 0    | 0.50 | 0.50 | 1  | 0    | 3       | 1\nSAL $0x3,%R12                         | 1     | 0.50 | 0    | 0    | 0    | 0  | 0.50 | 1       | 0.50\nLEA 0x1(%RAX),%ESI                    | 1     | 0.50 | 0.50 | 0    | 0    | 0  | 0    | 1       | 0.50\nMOV $-0xc390,%RAX                     | 1     | 0.33 | 0.33 | 0    | 0    | 0  | 0.33 | 1       | 0.33\nADD %FS:,%RAX                         | 1     | 0.33 | 0.33 | 0.50 | 0.50 | 0  | 0.33 | 1       | 0.50\nLEA 0x1(%RDX),%ECX                    | 1     | 0.50 | 0.50 | 0    | 0    | 0  | 0    | 1       | 0.50\nMOVSXD %ESI,%RDI                      | 1     | 0.33 | 0.33 | 0    | 0    | 0  | 0.33 | 1       | 0.33\nMOV %ESI,0x548(%RSP)                  | 1     | 0    | 0    | 0.50 | 0.50 | 1  | 0    | 3       | 1\nMOV %ECX,0x4c4(%RSP)                  | 1     | 0    | 0    | 0.50 | 0.50 | 1  | 0    | 3       | 1\nMOV %RDI,0x4d8(%RSP)                  | 1     | 0    | 0    | 0.50 | 0.50 | 1  | 0    | 3       | 1\nMOV %RAX,0x4b8(%RSP)                  | 1     | 0    | 0    | 0.50 | 0.50 | 1  | 0    | 3       | 1\nADD $0x190,%RAX                       | 1     | 0.33 | 0.33 | 0    | 0    | 0  | 0.33 | 1       | 0.33\nMOV %RAX,0x500(%RSP)                  | 1     | 0    | 0    | 0.50 | 0.50 | 1  | 0    | 3       | 1\nNOPL (%RAX,%RAX,1)                    | 1     | 0    | 0    | 0    | 0    | 0  | 0    | 0       | 0.25\nNOPL (%RAX,%RAX,1)                    | 1     | 0    | 0    | 0    | 0    | 0  | 0    | 0       | 0.25\nADD $0x588,%RSP                       | 1     | 0.33 | 0.33 | 0    | 0    | 0  | 0.33 | 1       | 0.33\nPOP %RBX                              | 1     | 0    | 0    | 0.50 | 0.50 | 0  | 0    | 2       | 0.50\nPOP %RBP                              | 1     | 0    | 0    | 0.50 | 0.50 | 0  | 0    | 2       | 0.50\nPOP %R12                              | 1     | 0    | 0    | 0.50 | 0.50 | 0  | 0    | 2       | 0.50\nPOP %R13                              | 1     | 0    | 0    | 0.50 | 0.50 | 0  | 0    | 2       | 0.50\nPOP %R14                              | 1     | 0    | 0    | 0.50 | 0.50 | 0  | 0    | 2       | 0.50\nPOP %R15                              | 1     | 0    | 0    | 0.50 | 0.50 | 0  | 0    | 2       | 0.50\nRET                                   | 2     | 0    | 0    | 0.50 | 0.50 | 0  | 1    | 0       | 2\nADD $0x1,%R9D                         | 1     | 0.33 | 0.33 | 0    | 0    | 0  | 0.33 | 1       | 0.33\nXOR %EDX,%EDX                         | 1     | 0    | 0    | 0    | 0    | 0  | 0    | 0       | 0.25\nJMP 1574b <y_solve_._omp_fn.0+0x12b>  | 1     | 0    | 0    | 0    | 0    | 0  | 1    | 0       | 2\nNOPW %CS:(%RAX,%RAX,1)                | 1     | 0    | 0    | 0    | 0    | 0  | 0    | 0       | 0.25\n",
        },
      },
      header = {
        "Warnings:\n - The number of fused uops of the instruction [DIVL	0x8(%RSP)] is unknown\n - Detected a function call instruction: ignoring called function instructions.\nRerun with --follow-calls=append to include them to analysis  or with --follow-calls=inline to simulate inlining.\n",
        "0% of peak computational performance is used (0.00 out of 2.00 FLOP per cycle (GFLOPS @ 1GHz))",
      },
      brief = {
      },
      gain = {
        {
          workaround = " - Try to reorganize arrays of structures to structures of arrays\n - Consider to permute loops (see vectorization gain report)\n - To reference allocatable arrays, use \"allocatable\" instead of \"pointer\" pointers or qualify them with the \"contiguous\" attribute (Fortran 2008)\n - For structures, limit to one indirection. For example, use a_b%c instead of a%b%c with a_b set to a%b before this function\n",
          title = "Code clean check",
          txt = "Detected a slowdown caused by scalar integer instructions (typically used for address computation).\nBy removing them, you can lower the cost of an iteration from 38.00 to 4.00 cycles (9.50x speedup).",
        },
        {
          workaround = " - Try another compiler or update/tune your current one\n - Make array accesses unit-stride:\n  * If your function streams arrays of structures (AoS), try to use structures of arrays instead (SoA):\ndo i a(i)%x = b(i)%x (slow, non stride 1) => do i a%x(i) = b%x(i) (fast, stride 1)\n",
          details = "All SSE/AVX instructions are used in scalar version (process only one data element in vector registers).\nSince your execution units are vector units, only a vectorized function can use their full power.\n",
          title = "Vectorization",
          txt = "Your function is not vectorized.\nOnly 40% of vector register length is used (average across all SSE/AVX instructions).\nBy vectorizing your function, you can lower the cost of an iteration from 38.00 to 14.75 cycles (2.58x speedup).",
        },
        {
          workaround = "Write less array elements",
          title = "Execution units bottlenecks",
          txt = "Performance is limited by writing data to caches/RAM (the store unit is a bottleneck).\n\nBy removing all these bottlenecks, you can lower the cost of an iteration from 38.00 to 35.50 cycles (1.07x speedup).\n",
        },
      },
      potential = {
      },
    },
  common = {
    header = {
      "The function is defined in /users/user2210/NPB3.4-MZ-MPI/BT-MZ/y_solve.f90:44-45,51-123,130-136,143-307,330,336,344,351,359,368,377,383,393-397.\n",
      "Warnings:\nIgnoring paths for analysis",
    },
  },
}