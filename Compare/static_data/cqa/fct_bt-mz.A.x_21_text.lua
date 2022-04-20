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
          details = "These instructions generate more than one micro-operation and only one of them can be decoded during a cycle and the extra micro-operations increase pressure on execution units.\n - DIV: 2 occurrences\n - RET: 1 occurrences\n",
          title = "Complex instructions",
          txt = "Detected COMPLEX INSTRUCTIONS.\n",
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
          txt = "The binary function does not contain any FP arithmetical operations.\nThe binary function is loading 172 bytes.\nThe binary function is storing 180 bytes.",
        },
      },
      expert = {
        {
          title = "General properties",
          txt = "nb instructions    : 104\nnb uops            : 127\nloop length        : 520\nused x86 registers : 16\nused mmx registers : 0\nused xmm registers : 1\nused ymm registers : 0\nused zmm registers : 0\nnb stack references: 27\n",
        },
        {
          title = "Front-end",
          txt = "MACRO FUSION NOT POSSIBLE\nFIT IN UOP CACHE\nmicro-operation queue: 31.75 cycles\nfront end            : 31.75 cycles\n",
        },
        {
          title = "Back-end",
          txt = "       | P0    | P1    | P2    | P3    | P4    | P5\n------------------------------------------------------\nuops   | 12.00 | 12.00 | 32.00 | 32.00 | 34.00 | 12.00\ncycles | 12.00 | 12.00 | 32.00 | 32.00 | 34.00 | 12.00\n\nCycles executing div or sqrt instructions: 22.00-36.00\n",
        },
        {
          title = "Cycles summary",
          txt = "Front-end : 31.75\nDispatch  : 34.00\nDIV/SQRT  : 22.00-36.00\nOverall L1: 34.00-36.00\n",
        },
        {
          title = "Vectorization ratios",
          txt = "all     : 0%\nload    : 0%\nstore   : 0%\nmul     : NA (no mul vectorizable/vectorized instructions)\nadd-sub : 0%\nfma     : NA (no fma vectorizable/vectorized instructions)\ndiv/sqrt: 0%\nother   : 0%\n",
        },
        {
          title = "Vector efficiency ratios",
          txt = "all     : 40%\nload    : 47%\nstore   : 43%\nmul     : NA (no mul vectorizable/vectorized instructions)\nadd-sub : 25%\nfma     : NA (no fma vectorizable/vectorized instructions)\ndiv/sqrt: 25%\nother   : 29%\n",
        },
        {
          title = "Cycles and memory resources usage",
          txt = "Assuming all data fit into the L1 cache, each call to the function takes 36.00 cycles. At this rate:\n - 14% of peak load performance is reached (4.78 out of 32.00 bytes loaded per cycle (GB/s @ 1GHz))\n - 31% of peak store performance is reached (5.00 out of 16.00 bytes stored per cycle (GB/s @ 1GHz))\n",
        },
        {
          title = "Front-end bottlenecks",
          txt = "Found no such bottlenecks.",
        },
        {
          title = "ASM code",
          txt = "In the binary file, the address of the function is: 13080\n\nInstruction                           | Nb FU | P0   | P1   | P2   | P3   | P4 | P5   | Latency | Recip. throughput\n-------------------------------------------------------------------------------------------------------------------\nPUSH %R15                             | 1     | 0    | 0    | 0.50 | 0.50 | 1  | 0    | 3       | 1\nPUSH %R14                             | 1     | 0    | 0    | 0.50 | 0.50 | 1  | 0    | 3       | 1\nPUSH %R13                             | 1     | 0    | 0    | 0.50 | 0.50 | 1  | 0    | 3       | 1\nPUSH %R12                             | 1     | 0    | 0    | 0.50 | 0.50 | 1  | 0    | 3       | 1\nPUSH %RBP                             | 1     | 0    | 0    | 0.50 | 0.50 | 1  | 0    | 3       | 1\nPUSH %RBX                             | 1     | 0    | 0    | 0.50 | 0.50 | 1  | 0    | 3       | 1\nSUB $0x578,%RSP                       | 1     | 0.33 | 0.33 | 0    | 0    | 0  | 0.33 | 1       | 0.33\nMOV 0xb0(%RDI),%RAX                   | 1     | 0    | 0    | 0.50 | 0.50 | 0  | 0    | 2       | 0.50\nMOV 0xa8(%RDI),%RDX                   | 1     | 0    | 0    | 0.50 | 0.50 | 0  | 0    | 2       | 0.50\nMOV 0xa0(%RDI),%RCX                   | 1     | 0    | 0    | 0.50 | 0.50 | 0  | 0    | 2       | 0.50\nMOV 0x98(%RDI),%RBX                   | 1     | 0    | 0    | 0.50 | 0.50 | 0  | 0    | 2       | 0.50\nMOV 0x90(%RDI),%RSI                   | 1     | 0    | 0    | 0.50 | 0.50 | 0  | 0    | 2       | 0.50\nMOV %RAX,0x4f8(%RSP)                  | 1     | 0    | 0    | 0.50 | 0.50 | 1  | 0    | 3       | 1\nMOV 0x88(%RDI),%RBP                   | 1     | 0    | 0    | 0.50 | 0.50 | 0  | 0    | 2       | 0.50\nMOV %RDX,0x500(%RSP)                  | 1     | 0    | 0    | 0.50 | 0.50 | 1  | 0    | 3       | 1\nMOV 0x60(%RDI),%R12                   | 1     | 0    | 0    | 0.50 | 0.50 | 0  | 0    | 2       | 0.50\nMOV %RCX,0x508(%RSP)                  | 1     | 0    | 0    | 0.50 | 0.50 | 1  | 0    | 3       | 1\nMOV 0x80(%RDI),%R8                    | 1     | 0    | 0    | 0.50 | 0.50 | 0  | 0    | 2       | 0.50\nMOV %RBX,0x510(%RSP)                  | 1     | 0    | 0    | 0.50 | 0.50 | 1  | 0    | 3       | 1\nMOV 0x78(%RDI),%R9                    | 1     | 0    | 0    | 0.50 | 0.50 | 0  | 0    | 2       | 0.50\nMOV %RSI,0x518(%RSP)                  | 1     | 0    | 0    | 0.50 | 0.50 | 1  | 0    | 3       | 1\nMOV 0x70(%RDI),%R10                   | 1     | 0    | 0    | 0.50 | 0.50 | 0  | 0    | 2       | 0.50\nMOV %RBP,0x520(%RSP)                  | 1     | 0    | 0    | 0.50 | 0.50 | 1  | 0    | 3       | 1\nMOV 0x68(%RDI),%R11                   | 1     | 0    | 0    | 0.50 | 0.50 | 0  | 0    | 2       | 0.50\nMOV %R12,0x530(%RSP)                  | 1     | 0    | 0    | 0.50 | 0.50 | 1  | 0    | 3       | 1\nMOV 0x58(%RDI),%R13                   | 1     | 0    | 0    | 0.50 | 0.50 | 0  | 0    | 2       | 0.50\nMOV %R8,0x4c8(%RSP)                   | 1     | 0    | 0    | 0.50 | 0.50 | 1  | 0    | 3       | 1\nMOV 0x50(%RDI),%R14                   | 1     | 0    | 0    | 0.50 | 0.50 | 0  | 0    | 2       | 0.50\nMOV %R9,0x4d0(%RSP)                   | 1     | 0    | 0    | 0.50 | 0.50 | 1  | 0    | 3       | 1\nMOV %R10,0x4d8(%RSP)                  | 1     | 0    | 0    | 0.50 | 0.50 | 1  | 0    | 3       | 1\nMOV %R11,0x528(%RSP)                  | 1     | 0    | 0    | 0.50 | 0.50 | 1  | 0    | 3       | 1\nMOV %R13,0x538(%RSP)                  | 1     | 0    | 0    | 0.50 | 0.50 | 1  | 0    | 3       | 1\nMOV %R14,0x540(%RSP)                  | 1     | 0    | 0    | 0.50 | 0.50 | 1  | 0    | 3       | 1\nMOV 0x28(%RDI),%RDX                   | 1     | 0    | 0    | 0.50 | 0.50 | 0  | 0    | 2       | 0.50\nMOV 0x38(%RDI),%RBX                   | 1     | 0    | 0    | 0.50 | 0.50 | 0  | 0    | 2       | 0.50\nMOV 0x48(%RDI),%R15                   | 1     | 0    | 0    | 0.50 | 0.50 | 0  | 0    | 2       | 0.50\nMOV 0x40(%RDI),%RAX                   | 1     | 0    | 0    | 0.50 | 0.50 | 0  | 0    | 2       | 0.50\nMOV (%RDX),%ECX                       | 1     | 0    | 0    | 0.50 | 0.50 | 0  | 0    | 2       | 0.50\nMOV 0x30(%RDI),%RBP                   | 1     | 0    | 0    | 0.50 | 0.50 | 0  | 0    | 2       | 0.50\nMOV (%RBX),%ESI                       | 1     | 0    | 0    | 0.50 | 0.50 | 0  | 0    | 2       | 0.50\nMOV %R15,0x548(%RSP)                  | 1     | 0    | 0    | 0.50 | 0.50 | 1  | 0    | 3       | 1\nMOV %RAX,0x550(%RSP)                  | 1     | 0    | 0    | 0.50 | 0.50 | 1  | 0    | 3       | 1\nSUB $0x1,%ECX                         | 1     | 0.33 | 0.33 | 0    | 0    | 0  | 0.33 | 1       | 0.33\nMOV (%RBP),%R12D                      | 1     | 0    | 0    | 0.50 | 0.50 | 0  | 0    | 2       | 0.50\nMOV %ECX,0x4b0(%RSP)                  | 1     | 0    | 0    | 0.50 | 0.50 | 1  | 0    | 3       | 1\nMOV %ECX,0x56c(%RSP)                  | 1     | 0    | 0    | 0.50 | 0.50 | 1  | 0    | 3       | 1\nCMP $0x2,%ESI                         | 1     | 0.33 | 0.33 | 0    | 0    | 0  | 0.33 | 1       | 0.33\nJLE 153bf <x_solve_._omp_fn.0+0x233f> | 1     | 0    | 0    | 0    | 0    | 0  | 1    | 0       | 1-2\nCMP $0x2,%R12D                        | 1     | 0.33 | 0.33 | 0    | 0    | 0  | 0.33 | 1       | 0.33\nJLE 153bf <x_solve_._omp_fn.0+0x233f> | 1     | 0    | 0    | 0    | 0    | 0  | 1    | 0       | 1-2\nLEA -0x2(%RSI),%R14D                  | 1     | 0.50 | 0.50 | 0    | 0    | 0  | 0    | 1       | 0.50\nMOV %RDI,%RBP                         | 1     | 0.33 | 0.33 | 0    | 0    | 0  | 0.33 | 1       | 0.33\nCALL 2300 <@plt_start@+0x2e0>         | 3     | 0    | 0    | 0.50 | 0.50 | 1  | 1    | 0       | 2\nLEA -0x2(%R12),%R13D                  | 1     | 0.50 | 0.50 | 0    | 0    | 0  | 0    | 1       | 0.50\nMOV %EAX,%R15D                        | 1     | 0.33 | 0.33 | 0    | 0    | 0  | 0.33 | 1       | 0.33\nCALL 22a0 <@plt_start@+0x280>         | 3     | 0    | 0    | 0.50 | 0.50 | 1  | 1    | 0       | 2\nXOR %EDX,%EDX                         | 1     | 0    | 0    | 0    | 0    | 0  | 0    | 0       | 0.25\nMOV %EAX,%EDI                         | 1     | 0.33 | 0.33 | 0    | 0    | 0  | 0.33 | 1       | 0.33\nMOV %R14D,%EAX                        | 1     | 0.33 | 0.33 | 0    | 0    | 0  | 0.33 | 1       | 0.33\nIMUL %R13D,%EAX                       | 1     | 0    | 1    | 0    | 0    | 0  | 0    | 3       | 1\nDIV %R15D                             | 10    | 0    | 0    | 0    | 0    | 0  | 0    | 20-28   | 11-18\nMOV %EAX,%R8D                         | 1     | 0.33 | 0.33 | 0    | 0    | 0  | 0.33 | 1       | 0.33\nCMP %EDX,%EDI                         | 1     | 0.33 | 0.33 | 0    | 0    | 0  | 0.33 | 1       | 0.33\nJB 1541e <x_solve_._omp_fn.0+0x239e>  | 1     | 0    | 0    | 0    | 0    | 0  | 1    | 0       | 1-2\nMOV %EDI,%EAX                         | 1     | 0.33 | 0.33 | 0    | 0    | 0  | 0.33 | 1       | 0.33\nIMUL %R8D,%EAX                        | 1     | 0    | 1    | 0    | 0    | 0  | 0    | 3       | 1\nADD %EDX,%EAX                         | 1     | 0.33 | 0.33 | 0    | 0    | 0  | 0.33 | 1       | 0.33\nLEA (%R8,%RAX,1),%R9D                 | 1     | 0.50 | 0.50 | 0    | 0    | 0  | 0    | 1       | 0.50\nCMP %R9D,%EAX                         | 1     | 0.33 | 0.33 | 0    | 0    | 0  | 0.33 | 1       | 0.33\nJAE 153bf <x_solve_._omp_fn.0+0x233f> | 1     | 0    | 0    | 0    | 0    | 0  | 1    | 0       | 1-2\nMOV $-0xc390,%RSI                     | 1     | 0.33 | 0.33 | 0    | 0    | 0  | 0.33 | 1       | 0.33\nLEA -0x1(%R12),%R10D                  | 1     | 0.50 | 0.50 | 0    | 0    | 0  | 0    | 1       | 0.50\nXOR %EDX,%EDX                         | 1     | 0    | 0    | 0    | 0    | 0  | 0    | 0       | 0.25\nMOVL $0,0x4e0(%RSP)                   | 1     | 0    | 0    | 0.50 | 0.50 | 1  | 0    | 3       | 1\nDIV %R13D                             | 10    | 0    | 0    | 0    | 0    | 0  | 0    | 20-28   | 11-18\nVMOVQ 0x152c3(%RIP),%XMM12            | 1     | 0    | 0    | 0.50 | 0.50 | 0  | 0    | 3       | 0.50\nMOV %R10D,0x55c(%RSP)                 | 1     | 0    | 0    | 0.50 | 0.50 | 1  | 0    | 3       | 1\nADD %FS:,%RSI                         | 1     | 0.33 | 0.33 | 0.50 | 0.50 | 0  | 0.33 | 1       | 0.50\nLEA -0x1(%R8),%ECX                    | 1     | 0.50 | 0.50 | 0    | 0    | 0  | 0    | 1       | 0.50\nLEA 0x56c(%RSP),%RBX                  | 1     | 0.50 | 0.50 | 0    | 0    | 0  | 0    | 1       | 0.50\nMOV %ECX,0x4e4(%RSP)                  | 1     | 0    | 0    | 0.50 | 0.50 | 1  | 0    | 3       | 1\nLEA 0x190(%RSI),%R12                  | 1     | 0.50 | 0.50 | 0    | 0    | 0  | 0    | 1       | 0.50\nMOV %RBX,0x4e8(%RSP)                  | 1     | 0    | 0    | 0.50 | 0.50 | 1  | 0    | 3       | 1\nMOV %RSI,0x4a8(%RSP)                  | 1     | 0    | 0    | 0.50 | 0.50 | 1  | 0    | 3       | 1\nMOV %R12,0x4f0(%RSP)                  | 1     | 0    | 0    | 0.50 | 0.50 | 1  | 0    | 3       | 1\nLEA 0x1(%RDX),%R11D                   | 1     | 0.50 | 0.50 | 0    | 0    | 0  | 0    | 1       | 0.50\nADD $0x1,%EAX                         | 1     | 0.33 | 0.33 | 0    | 0    | 0  | 0.33 | 1       | 0.33\nMOV %EAX,0x558(%RSP)                  | 1     | 0    | 0    | 0.50 | 0.50 | 1  | 0    | 3       | 1\nCLTQ                                  | 1     | 0    | 0    | 0    | 0    | 0  | 0    | 1       | 0.50\nMOV %R11D,0x4b4(%RSP)                 | 1     | 0    | 0    | 0.50 | 0.50 | 1  | 0    | 3       | 1\nMOV %RAX,0x4b8(%RSP)                  | 1     | 0    | 0    | 0.50 | 0.50 | 1  | 0    | 3       | 1\nNOPL (%RAX)                           | 1     | 0    | 0    | 0    | 0    | 0  | 0    | 0       | 0.25\nADD $0x578,%RSP                       | 1     | 0.33 | 0.33 | 0    | 0    | 0  | 0.33 | 1       | 0.33\nPOP %RBX                              | 1     | 0    | 0    | 0.50 | 0.50 | 0  | 0    | 2       | 0.50\nPOP %RBP                              | 1     | 0    | 0    | 0.50 | 0.50 | 0  | 0    | 2       | 0.50\nPOP %R12                              | 1     | 0    | 0    | 0.50 | 0.50 | 0  | 0    | 2       | 0.50\nPOP %R13                              | 1     | 0    | 0    | 0.50 | 0.50 | 0  | 0    | 2       | 0.50\nPOP %R14                              | 1     | 0    | 0    | 0.50 | 0.50 | 0  | 0    | 2       | 0.50\nPOP %R15                              | 1     | 0    | 0    | 0.50 | 0.50 | 0  | 0    | 2       | 0.50\nRET                                   | 2     | 0    | 0    | 0.50 | 0.50 | 0  | 1    | 0       | 2\nADD $0x1,%R8D                         | 1     | 0.33 | 0.33 | 0    | 0    | 0  | 0.33 | 1       | 0.33\nXOR %EDX,%EDX                         | 1     | 0    | 0    | 0    | 0    | 0  | 0    | 0       | 0.25\nJMP 131c4 <x_solve_._omp_fn.0+0x144>  | 1     | 0    | 0    | 0    | 0    | 0  | 1    | 0       | 2\nNOPL (%RAX)                           | 1     | 0    | 0    | 0    | 0    | 0  | 0    | 0       | 0.25\n",
        },
      },
      header = {
        "Warnings:\nDetected a function call instruction: ignoring called function instructions.\nRerun with --follow-calls=append to include them to analysis  or with --follow-calls=inline to simulate inlining.",
        "0% of peak computational performance is used (0.00 out of 2.00 FLOP per cycle (GFLOPS @ 1GHz))",
      },
      brief = {
      },
      gain = {
        {
          workaround = " - Try to reorganize arrays of structures to structures of arrays\n - Consider to permute loops (see vectorization gain report)\n - To reference allocatable arrays, use \"allocatable\" instead of \"pointer\" pointers or qualify them with the \"contiguous\" attribute (Fortran 2008)\n - For structures, limit to one indirection. For example, use a_b%c instead of a%b%c with a_b set to a%b before this function\n",
          title = "Code clean check",
          txt = "Detected a slowdown caused by scalar integer instructions (typically used for address computation).\nBy removing them, you can lower the cost of an iteration from 36.00 to 4.00 cycles (9.00x speedup).",
        },
        {
          workaround = " - Try another compiler or update/tune your current one\n - Make array accesses unit-stride:\n  * If your function streams arrays of structures (AoS), try to use structures of arrays instead (SoA):\ndo i a(i)%x = b(i)%x (slow, non stride 1) => do i a%x(i) = b%x(i) (fast, stride 1)\n",
          details = "All SSE/AVX instructions are used in scalar version (process only one data element in vector registers).\nSince your execution units are vector units, only a vectorized function can use their full power.\n",
          title = "Vectorization",
          txt = "Your function is not vectorized.\nOnly 40% of vector register length is used (average across all SSE/AVX instructions).\nBy vectorizing your function, you can lower the cost of an iteration from 36.00 to 13.25 cycles (2.72x speedup).",
        },
        {
          workaround = "Reduce the number of division or square root instructions:\n - If denominator is constant over iterations, use reciprocal (replace x/y with x*(1/y)). Check precision impact. This will be done by your compiler with ffast-math or Ofast\n",
          title = "Execution units bottlenecks",
          txt = "Performance is limited by execution of divide and square root operations (the divide/square root unit is a bottleneck).\n\nBy removing all these bottlenecks, you can lower the cost of an iteration from 36.00 to 34.00 cycles (1.06x speedup).\n",
        },
      },
      potential = {
        {
          title = "Expensive FP math instructions/calls",
          txt = "Detected performance impact from expensive FP math instructions/calls.\nBy removing/reexpressing them, you can lower the cost of an iteration from 36.00 to 34.00 cycles (1.06x speedup).",
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
          details = "These instructions generate more than one micro-operation and only one of them can be decoded during a cycle and the extra micro-operations increase pressure on execution units.\n - DIV: 2 occurrences\n - RET: 1 occurrences\n",
          title = "Complex instructions",
          txt = "Detected COMPLEX INSTRUCTIONS.\n",
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
          txt = "The binary function does not contain any FP arithmetical operations.\nThe binary function is loading 172 bytes.\nThe binary function is storing 180 bytes.",
        },
      },
      expert = {
        {
          title = "General properties",
          txt = "nb instructions    : 104\nnb uops            : 127\nloop length        : 520\nused x86 registers : 16\nused mmx registers : 0\nused xmm registers : 1\nused ymm registers : 0\nused zmm registers : 0\nnb stack references: 27\n",
        },
        {
          title = "Front-end",
          txt = "MACRO FUSION NOT POSSIBLE\nFIT IN UOP CACHE\nmicro-operation queue: 31.75 cycles\nfront end            : 31.75 cycles\n",
        },
        {
          title = "Back-end",
          txt = "       | P0    | P1    | P2    | P3    | P4    | P5\n------------------------------------------------------\nuops   | 12.00 | 12.00 | 32.00 | 32.00 | 34.00 | 12.00\ncycles | 12.00 | 12.00 | 32.00 | 32.00 | 34.00 | 12.00\n\nCycles executing div or sqrt instructions: 22.00-36.00\n",
        },
        {
          title = "Cycles summary",
          txt = "Front-end : 31.75\nDispatch  : 34.00\nDIV/SQRT  : 22.00-36.00\nOverall L1: 34.00-36.00\n",
        },
        {
          title = "Vectorization ratios",
          txt = "all     : 0%\nload    : 0%\nstore   : 0%\nmul     : NA (no mul vectorizable/vectorized instructions)\nadd-sub : 0%\nfma     : NA (no fma vectorizable/vectorized instructions)\ndiv/sqrt: 0%\nother   : 0%\n",
        },
        {
          title = "Vector efficiency ratios",
          txt = "all     : 40%\nload    : 47%\nstore   : 43%\nmul     : NA (no mul vectorizable/vectorized instructions)\nadd-sub : 25%\nfma     : NA (no fma vectorizable/vectorized instructions)\ndiv/sqrt: 25%\nother   : 29%\n",
        },
        {
          title = "Cycles and memory resources usage",
          txt = "Assuming all data fit into the L1 cache, each call to the function takes 36.00 cycles. At this rate:\n - 14% of peak load performance is reached (4.78 out of 32.00 bytes loaded per cycle (GB/s @ 1GHz))\n - 31% of peak store performance is reached (5.00 out of 16.00 bytes stored per cycle (GB/s @ 1GHz))\n",
        },
        {
          title = "Front-end bottlenecks",
          txt = "Found no such bottlenecks.",
        },
        {
          title = "ASM code",
          txt = "In the binary file, the address of the function is: 13080\n\nInstruction                           | Nb FU | P0   | P1   | P2   | P3   | P4 | P5   | Latency | Recip. throughput\n-------------------------------------------------------------------------------------------------------------------\nPUSH %R15                             | 1     | 0    | 0    | 0.50 | 0.50 | 1  | 0    | 3       | 1\nPUSH %R14                             | 1     | 0    | 0    | 0.50 | 0.50 | 1  | 0    | 3       | 1\nPUSH %R13                             | 1     | 0    | 0    | 0.50 | 0.50 | 1  | 0    | 3       | 1\nPUSH %R12                             | 1     | 0    | 0    | 0.50 | 0.50 | 1  | 0    | 3       | 1\nPUSH %RBP                             | 1     | 0    | 0    | 0.50 | 0.50 | 1  | 0    | 3       | 1\nPUSH %RBX                             | 1     | 0    | 0    | 0.50 | 0.50 | 1  | 0    | 3       | 1\nSUB $0x578,%RSP                       | 1     | 0.33 | 0.33 | 0    | 0    | 0  | 0.33 | 1       | 0.33\nMOV 0xb0(%RDI),%RAX                   | 1     | 0    | 0    | 0.50 | 0.50 | 0  | 0    | 2       | 0.50\nMOV 0xa8(%RDI),%RDX                   | 1     | 0    | 0    | 0.50 | 0.50 | 0  | 0    | 2       | 0.50\nMOV 0xa0(%RDI),%RCX                   | 1     | 0    | 0    | 0.50 | 0.50 | 0  | 0    | 2       | 0.50\nMOV 0x98(%RDI),%RBX                   | 1     | 0    | 0    | 0.50 | 0.50 | 0  | 0    | 2       | 0.50\nMOV 0x90(%RDI),%RSI                   | 1     | 0    | 0    | 0.50 | 0.50 | 0  | 0    | 2       | 0.50\nMOV %RAX,0x4f8(%RSP)                  | 1     | 0    | 0    | 0.50 | 0.50 | 1  | 0    | 3       | 1\nMOV 0x88(%RDI),%RBP                   | 1     | 0    | 0    | 0.50 | 0.50 | 0  | 0    | 2       | 0.50\nMOV %RDX,0x500(%RSP)                  | 1     | 0    | 0    | 0.50 | 0.50 | 1  | 0    | 3       | 1\nMOV 0x60(%RDI),%R12                   | 1     | 0    | 0    | 0.50 | 0.50 | 0  | 0    | 2       | 0.50\nMOV %RCX,0x508(%RSP)                  | 1     | 0    | 0    | 0.50 | 0.50 | 1  | 0    | 3       | 1\nMOV 0x80(%RDI),%R8                    | 1     | 0    | 0    | 0.50 | 0.50 | 0  | 0    | 2       | 0.50\nMOV %RBX,0x510(%RSP)                  | 1     | 0    | 0    | 0.50 | 0.50 | 1  | 0    | 3       | 1\nMOV 0x78(%RDI),%R9                    | 1     | 0    | 0    | 0.50 | 0.50 | 0  | 0    | 2       | 0.50\nMOV %RSI,0x518(%RSP)                  | 1     | 0    | 0    | 0.50 | 0.50 | 1  | 0    | 3       | 1\nMOV 0x70(%RDI),%R10                   | 1     | 0    | 0    | 0.50 | 0.50 | 0  | 0    | 2       | 0.50\nMOV %RBP,0x520(%RSP)                  | 1     | 0    | 0    | 0.50 | 0.50 | 1  | 0    | 3       | 1\nMOV 0x68(%RDI),%R11                   | 1     | 0    | 0    | 0.50 | 0.50 | 0  | 0    | 2       | 0.50\nMOV %R12,0x530(%RSP)                  | 1     | 0    | 0    | 0.50 | 0.50 | 1  | 0    | 3       | 1\nMOV 0x58(%RDI),%R13                   | 1     | 0    | 0    | 0.50 | 0.50 | 0  | 0    | 2       | 0.50\nMOV %R8,0x4c8(%RSP)                   | 1     | 0    | 0    | 0.50 | 0.50 | 1  | 0    | 3       | 1\nMOV 0x50(%RDI),%R14                   | 1     | 0    | 0    | 0.50 | 0.50 | 0  | 0    | 2       | 0.50\nMOV %R9,0x4d0(%RSP)                   | 1     | 0    | 0    | 0.50 | 0.50 | 1  | 0    | 3       | 1\nMOV %R10,0x4d8(%RSP)                  | 1     | 0    | 0    | 0.50 | 0.50 | 1  | 0    | 3       | 1\nMOV %R11,0x528(%RSP)                  | 1     | 0    | 0    | 0.50 | 0.50 | 1  | 0    | 3       | 1\nMOV %R13,0x538(%RSP)                  | 1     | 0    | 0    | 0.50 | 0.50 | 1  | 0    | 3       | 1\nMOV %R14,0x540(%RSP)                  | 1     | 0    | 0    | 0.50 | 0.50 | 1  | 0    | 3       | 1\nMOV 0x28(%RDI),%RDX                   | 1     | 0    | 0    | 0.50 | 0.50 | 0  | 0    | 2       | 0.50\nMOV 0x38(%RDI),%RBX                   | 1     | 0    | 0    | 0.50 | 0.50 | 0  | 0    | 2       | 0.50\nMOV 0x48(%RDI),%R15                   | 1     | 0    | 0    | 0.50 | 0.50 | 0  | 0    | 2       | 0.50\nMOV 0x40(%RDI),%RAX                   | 1     | 0    | 0    | 0.50 | 0.50 | 0  | 0    | 2       | 0.50\nMOV (%RDX),%ECX                       | 1     | 0    | 0    | 0.50 | 0.50 | 0  | 0    | 2       | 0.50\nMOV 0x30(%RDI),%RBP                   | 1     | 0    | 0    | 0.50 | 0.50 | 0  | 0    | 2       | 0.50\nMOV (%RBX),%ESI                       | 1     | 0    | 0    | 0.50 | 0.50 | 0  | 0    | 2       | 0.50\nMOV %R15,0x548(%RSP)                  | 1     | 0    | 0    | 0.50 | 0.50 | 1  | 0    | 3       | 1\nMOV %RAX,0x550(%RSP)                  | 1     | 0    | 0    | 0.50 | 0.50 | 1  | 0    | 3       | 1\nSUB $0x1,%ECX                         | 1     | 0.33 | 0.33 | 0    | 0    | 0  | 0.33 | 1       | 0.33\nMOV (%RBP),%R12D                      | 1     | 0    | 0    | 0.50 | 0.50 | 0  | 0    | 2       | 0.50\nMOV %ECX,0x4b0(%RSP)                  | 1     | 0    | 0    | 0.50 | 0.50 | 1  | 0    | 3       | 1\nMOV %ECX,0x56c(%RSP)                  | 1     | 0    | 0    | 0.50 | 0.50 | 1  | 0    | 3       | 1\nCMP $0x2,%ESI                         | 1     | 0.33 | 0.33 | 0    | 0    | 0  | 0.33 | 1       | 0.33\nJLE 153bf <x_solve_._omp_fn.0+0x233f> | 1     | 0    | 0    | 0    | 0    | 0  | 1    | 0       | 1-2\nCMP $0x2,%R12D                        | 1     | 0.33 | 0.33 | 0    | 0    | 0  | 0.33 | 1       | 0.33\nJLE 153bf <x_solve_._omp_fn.0+0x233f> | 1     | 0    | 0    | 0    | 0    | 0  | 1    | 0       | 1-2\nLEA -0x2(%RSI),%R14D                  | 1     | 0.50 | 0.50 | 0    | 0    | 0  | 0    | 1       | 0.50\nMOV %RDI,%RBP                         | 1     | 0.33 | 0.33 | 0    | 0    | 0  | 0.33 | 1       | 0.33\nCALL 2300 <@plt_start@+0x2e0>         | 3     | 0    | 0    | 0.50 | 0.50 | 1  | 1    | 0       | 2\nLEA -0x2(%R12),%R13D                  | 1     | 0.50 | 0.50 | 0    | 0    | 0  | 0    | 1       | 0.50\nMOV %EAX,%R15D                        | 1     | 0.33 | 0.33 | 0    | 0    | 0  | 0.33 | 1       | 0.33\nCALL 22a0 <@plt_start@+0x280>         | 3     | 0    | 0    | 0.50 | 0.50 | 1  | 1    | 0       | 2\nXOR %EDX,%EDX                         | 1     | 0    | 0    | 0    | 0    | 0  | 0    | 0       | 0.25\nMOV %EAX,%EDI                         | 1     | 0.33 | 0.33 | 0    | 0    | 0  | 0.33 | 1       | 0.33\nMOV %R14D,%EAX                        | 1     | 0.33 | 0.33 | 0    | 0    | 0  | 0.33 | 1       | 0.33\nIMUL %R13D,%EAX                       | 1     | 0    | 1    | 0    | 0    | 0  | 0    | 3       | 1\nDIV %R15D                             | 10    | 0    | 0    | 0    | 0    | 0  | 0    | 20-28   | 11-18\nMOV %EAX,%R8D                         | 1     | 0.33 | 0.33 | 0    | 0    | 0  | 0.33 | 1       | 0.33\nCMP %EDX,%EDI                         | 1     | 0.33 | 0.33 | 0    | 0    | 0  | 0.33 | 1       | 0.33\nJB 1541e <x_solve_._omp_fn.0+0x239e>  | 1     | 0    | 0    | 0    | 0    | 0  | 1    | 0       | 1-2\nMOV %EDI,%EAX                         | 1     | 0.33 | 0.33 | 0    | 0    | 0  | 0.33 | 1       | 0.33\nIMUL %R8D,%EAX                        | 1     | 0    | 1    | 0    | 0    | 0  | 0    | 3       | 1\nADD %EDX,%EAX                         | 1     | 0.33 | 0.33 | 0    | 0    | 0  | 0.33 | 1       | 0.33\nLEA (%R8,%RAX,1),%R9D                 | 1     | 0.50 | 0.50 | 0    | 0    | 0  | 0    | 1       | 0.50\nCMP %R9D,%EAX                         | 1     | 0.33 | 0.33 | 0    | 0    | 0  | 0.33 | 1       | 0.33\nJAE 153bf <x_solve_._omp_fn.0+0x233f> | 1     | 0    | 0    | 0    | 0    | 0  | 1    | 0       | 1-2\nMOV $-0xc390,%RSI                     | 1     | 0.33 | 0.33 | 0    | 0    | 0  | 0.33 | 1       | 0.33\nLEA -0x1(%R12),%R10D                  | 1     | 0.50 | 0.50 | 0    | 0    | 0  | 0    | 1       | 0.50\nXOR %EDX,%EDX                         | 1     | 0    | 0    | 0    | 0    | 0  | 0    | 0       | 0.25\nMOVL $0,0x4e0(%RSP)                   | 1     | 0    | 0    | 0.50 | 0.50 | 1  | 0    | 3       | 1\nDIV %R13D                             | 10    | 0    | 0    | 0    | 0    | 0  | 0    | 20-28   | 11-18\nVMOVQ 0x152c3(%RIP),%XMM12            | 1     | 0    | 0    | 0.50 | 0.50 | 0  | 0    | 3       | 0.50\nMOV %R10D,0x55c(%RSP)                 | 1     | 0    | 0    | 0.50 | 0.50 | 1  | 0    | 3       | 1\nADD %FS:,%RSI                         | 1     | 0.33 | 0.33 | 0.50 | 0.50 | 0  | 0.33 | 1       | 0.50\nLEA -0x1(%R8),%ECX                    | 1     | 0.50 | 0.50 | 0    | 0    | 0  | 0    | 1       | 0.50\nLEA 0x56c(%RSP),%RBX                  | 1     | 0.50 | 0.50 | 0    | 0    | 0  | 0    | 1       | 0.50\nMOV %ECX,0x4e4(%RSP)                  | 1     | 0    | 0    | 0.50 | 0.50 | 1  | 0    | 3       | 1\nLEA 0x190(%RSI),%R12                  | 1     | 0.50 | 0.50 | 0    | 0    | 0  | 0    | 1       | 0.50\nMOV %RBX,0x4e8(%RSP)                  | 1     | 0    | 0    | 0.50 | 0.50 | 1  | 0    | 3       | 1\nMOV %RSI,0x4a8(%RSP)                  | 1     | 0    | 0    | 0.50 | 0.50 | 1  | 0    | 3       | 1\nMOV %R12,0x4f0(%RSP)                  | 1     | 0    | 0    | 0.50 | 0.50 | 1  | 0    | 3       | 1\nLEA 0x1(%RDX),%R11D                   | 1     | 0.50 | 0.50 | 0    | 0    | 0  | 0    | 1       | 0.50\nADD $0x1,%EAX                         | 1     | 0.33 | 0.33 | 0    | 0    | 0  | 0.33 | 1       | 0.33\nMOV %EAX,0x558(%RSP)                  | 1     | 0    | 0    | 0.50 | 0.50 | 1  | 0    | 3       | 1\nCLTQ                                  | 1     | 0    | 0    | 0    | 0    | 0  | 0    | 1       | 0.50\nMOV %R11D,0x4b4(%RSP)                 | 1     | 0    | 0    | 0.50 | 0.50 | 1  | 0    | 3       | 1\nMOV %RAX,0x4b8(%RSP)                  | 1     | 0    | 0    | 0.50 | 0.50 | 1  | 0    | 3       | 1\nNOPL (%RAX)                           | 1     | 0    | 0    | 0    | 0    | 0  | 0    | 0       | 0.25\nADD $0x578,%RSP                       | 1     | 0.33 | 0.33 | 0    | 0    | 0  | 0.33 | 1       | 0.33\nPOP %RBX                              | 1     | 0    | 0    | 0.50 | 0.50 | 0  | 0    | 2       | 0.50\nPOP %RBP                              | 1     | 0    | 0    | 0.50 | 0.50 | 0  | 0    | 2       | 0.50\nPOP %R12                              | 1     | 0    | 0    | 0.50 | 0.50 | 0  | 0    | 2       | 0.50\nPOP %R13                              | 1     | 0    | 0    | 0.50 | 0.50 | 0  | 0    | 2       | 0.50\nPOP %R14                              | 1     | 0    | 0    | 0.50 | 0.50 | 0  | 0    | 2       | 0.50\nPOP %R15                              | 1     | 0    | 0    | 0.50 | 0.50 | 0  | 0    | 2       | 0.50\nRET                                   | 2     | 0    | 0    | 0.50 | 0.50 | 0  | 1    | 0       | 2\nADD $0x1,%R8D                         | 1     | 0.33 | 0.33 | 0    | 0    | 0  | 0.33 | 1       | 0.33\nXOR %EDX,%EDX                         | 1     | 0    | 0    | 0    | 0    | 0  | 0    | 0       | 0.25\nJMP 131c4 <x_solve_._omp_fn.0+0x144>  | 1     | 0    | 0    | 0    | 0    | 0  | 1    | 0       | 2\nNOPL (%RAX)                           | 1     | 0    | 0    | 0    | 0    | 0  | 0    | 0       | 0.25\n",
        },
      },
      header = {
        "Warnings:\nDetected a function call instruction: ignoring called function instructions.\nRerun with --follow-calls=append to include them to analysis  or with --follow-calls=inline to simulate inlining.",
        "0% of peak computational performance is used (0.00 out of 2.00 FLOP per cycle (GFLOPS @ 1GHz))",
      },
      brief = {
      },
      gain = {
        {
          workaround = " - Try to reorganize arrays of structures to structures of arrays\n - Consider to permute loops (see vectorization gain report)\n - To reference allocatable arrays, use \"allocatable\" instead of \"pointer\" pointers or qualify them with the \"contiguous\" attribute (Fortran 2008)\n - For structures, limit to one indirection. For example, use a_b%c instead of a%b%c with a_b set to a%b before this function\n",
          title = "Code clean check",
          txt = "Detected a slowdown caused by scalar integer instructions (typically used for address computation).\nBy removing them, you can lower the cost of an iteration from 36.00 to 4.00 cycles (9.00x speedup).",
        },
        {
          workaround = " - Try another compiler or update/tune your current one\n - Make array accesses unit-stride:\n  * If your function streams arrays of structures (AoS), try to use structures of arrays instead (SoA):\ndo i a(i)%x = b(i)%x (slow, non stride 1) => do i a%x(i) = b%x(i) (fast, stride 1)\n",
          details = "All SSE/AVX instructions are used in scalar version (process only one data element in vector registers).\nSince your execution units are vector units, only a vectorized function can use their full power.\n",
          title = "Vectorization",
          txt = "Your function is not vectorized.\nOnly 40% of vector register length is used (average across all SSE/AVX instructions).\nBy vectorizing your function, you can lower the cost of an iteration from 36.00 to 13.25 cycles (2.72x speedup).",
        },
        {
          workaround = "Reduce the number of division or square root instructions:\n - If denominator is constant over iterations, use reciprocal (replace x/y with x*(1/y)). Check precision impact. This will be done by your compiler with ffast-math or Ofast\n",
          title = "Execution units bottlenecks",
          txt = "Performance is limited by execution of divide and square root operations (the divide/square root unit is a bottleneck).\n\nBy removing all these bottlenecks, you can lower the cost of an iteration from 36.00 to 34.00 cycles (1.06x speedup).\n",
        },
      },
      potential = {
        {
          title = "Expensive FP math instructions/calls",
          txt = "Detected performance impact from expensive FP math instructions/calls.\nBy removing/reexpressing them, you can lower the cost of an iteration from 36.00 to 34.00 cycles (1.06x speedup).",
        },
      },
    },
  common = {
    header = {
      "The function is defined in /users/user2210/NPB3.4-MZ-MPI/BT-MZ/x_solve.f90:47-126,132-138,144-308,335,341,347,354,363,371,378,384,394-398.\n",
      "Warnings:\nIgnoring paths for analysis",
    },
  },
}
