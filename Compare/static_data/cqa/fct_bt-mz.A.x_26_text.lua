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
          title = "Type of elements and instruction set",
          txt = "No instructions are processing arithmetic or math operations on FP elements. This function is probably writing/copying data or processing integer elements.",
        },
        {
          title = "Matching between your function (in the source code) and the binary function",
          txt = "The binary function does not contain any FP arithmetical operations.\nThe binary function is loading 124 bytes.\nThe binary function is storing 44 bytes.",
        },
      },
      expert = {
        {
          title = "General properties",
          txt = "nb instructions    : 99\nnb uops            : 122\nloop length        : 354\nused x86 registers : 16\nused mmx registers : 0\nused xmm registers : 5\nused ymm registers : 0\nused zmm registers : 0\nnb stack references: 1\n",
        },
        {
          title = "Front-end",
          txt = "MACRO FUSION NOT POSSIBLE\nFIT IN UOP CACHE\nmicro-operation queue: 30.50 cycles\nfront end            : 30.50 cycles\n",
        },
        {
          title = "Back-end",
          txt = "       | P0    | P1    | P2    | P3    | P4    | P5\n------------------------------------------------------\nuops   | 18.67 | 18.67 | 19.00 | 19.00 | 14.00 | 18.67\ncycles | 18.67 | 18.67 | 19.00 | 19.00 | 14.00 | 18.67\n\nCycles executing div or sqrt instructions: 22.00-36.00\n",
        },
        {
          title = "Cycles summary",
          txt = "Front-end : 30.50\nDispatch  : 19.00\nDIV/SQRT  : 22.00-36.00\nOverall L1: 30.50-36.00\n",
        },
        {
          title = "Vectorization ratios",
          txt = "INT\nall    : 0%\nload   : 0%\nstore  : 0%\nmul    : 0%\nadd-sub: NA (no add-sub vectorizable/vectorized instructions)\nfma    : NA (no fma vectorizable/vectorized instructions)\nother  : 0%\nFP\nall     : 0%\nload    : 0%\nstore   : 0%\nmul     : NA (no mul vectorizable/vectorized instructions)\nadd-sub : NA (no add-sub vectorizable/vectorized instructions)\nfma     : NA (no fma vectorizable/vectorized instructions)\ndiv/sqrt: NA (no div/sqrt vectorizable/vectorized instructions)\nother   : NA (no other vectorizable/vectorized instructions)\nINT+FP\nall     : 0%\nload    : 0%\nstore   : 0%\nmul     : 0%\nadd-sub : NA (no add-sub vectorizable/vectorized instructions)\nfma     : NA (no fma vectorizable/vectorized instructions)\ndiv/sqrt: 0%\nother   : 0%\n",
        },
        {
          title = "Vector efficiency ratios",
          txt = "INT\nall    : 35%\nload   : 50%\nstore  : 25%\nmul    : 50%\nadd-sub: NA (no add-sub vectorizable/vectorized instructions)\nfma    : NA (no fma vectorizable/vectorized instructions)\nother  : 25%\nFP\nall     : 25%\nload    : 25%\nstore   : 25%\nmul     : NA (no mul vectorizable/vectorized instructions)\nadd-sub : NA (no add-sub vectorizable/vectorized instructions)\nfma     : NA (no fma vectorizable/vectorized instructions)\ndiv/sqrt: NA (no div/sqrt vectorizable/vectorized instructions)\nother   : NA (no other vectorizable/vectorized instructions)\nINT+FP\nall     : 31%\nload    : 38%\nstore   : 25%\nmul     : 50%\nadd-sub : NA (no add-sub vectorizable/vectorized instructions)\nfma     : NA (no fma vectorizable/vectorized instructions)\ndiv/sqrt: 25%\nother   : 25%\n",
        },
        {
          title = "Cycles and memory resources usage",
          txt = "Assuming all data fit into the L1 cache, each call to the function takes 36.00 cycles. At this rate:\n - 10% of peak load performance is reached (3.44 out of 32.00 bytes loaded per cycle (GB/s @ 1GHz))\n - 7% of peak store performance is reached (1.22 out of 16.00 bytes stored per cycle (GB/s @ 1GHz))\n",
        },
        {
          title = "Front-end bottlenecks",
          txt = "Found no such bottlenecks.",
        },
        {
          title = "ASM code",
          txt = "In the binary file, the address of the function is: 17f50\n\nInstruction                              | Nb FU | P0   | P1   | P2   | P3   | P4 | P5   | Latency | Recip. throughput\n----------------------------------------------------------------------------------------------------------------------\nPUSH %R15                                | 1     | 0    | 0    | 0.50 | 0.50 | 1  | 0    | 3       | 1\nPUSH %R14                                | 1     | 0    | 0    | 0.50 | 0.50 | 1  | 0    | 3       | 1\nPUSH %R13                                | 1     | 0    | 0    | 0.50 | 0.50 | 1  | 0    | 3       | 1\nPUSH %R12                                | 1     | 0    | 0    | 0.50 | 0.50 | 1  | 0    | 3       | 1\nPUSH %RBP                                | 1     | 0    | 0    | 0.50 | 0.50 | 1  | 0    | 3       | 1\nPUSH %RBX                                | 1     | 0    | 0    | 0.50 | 0.50 | 1  | 0    | 3       | 1\nSUB $0x18,%RSP                           | 1     | 0.33 | 0.33 | 0    | 0    | 0  | 0.33 | 1       | 0.33\nMOV 0x18(%RDI),%RAX                      | 1     | 0    | 0    | 0.50 | 0.50 | 0  | 0    | 2       | 0.50\nMOV 0x10(%RDI),%RDX                      | 1     | 0    | 0    | 0.50 | 0.50 | 0  | 0    | 2       | 0.50\nMOV (%RAX),%ECX                          | 1     | 0    | 0    | 0.50 | 0.50 | 0  | 0    | 2       | 0.50\nMOV (%RDX),%R15D                         | 1     | 0    | 0    | 0.50 | 0.50 | 0  | 0    | 2       | 0.50\nCMP $0x2,%ECX                            | 1     | 0.33 | 0.33 | 0    | 0    | 0  | 0.33 | 1       | 0.33\nJLE 18180 <copy_y_face_._omp_fn.1+0x230> | 1     | 0    | 0    | 0    | 0    | 0  | 1    | 0       | 1-2\nCMP $0x2,%R15D                           | 1     | 0.33 | 0.33 | 0    | 0    | 0  | 0.33 | 1       | 0.33\nJLE 18180 <copy_y_face_._omp_fn.1+0x230> | 1     | 0    | 0    | 0    | 0    | 0  | 1    | 0       | 1-2\nLEA -0x2(%RCX),%R14D                     | 1     | 0.50 | 0.50 | 0    | 0    | 0  | 0    | 1       | 0.50\nMOV %RDI,%R13                            | 1     | 0.33 | 0.33 | 0    | 0    | 0  | 0.33 | 1       | 0.33\nCALL 2300 <@plt_start@+0x2e0>            | 3     | 0    | 0    | 0.50 | 0.50 | 1  | 1    | 0       | 2\nLEA -0x2(%R15),%R12D                     | 1     | 0.50 | 0.50 | 0    | 0    | 0  | 0    | 1       | 0.50\nIMUL %R12D,%R14D                         | 1     | 0    | 1    | 0    | 0    | 0  | 0    | 3       | 1\nMOV %EAX,%EBX                            | 1     | 0.33 | 0.33 | 0    | 0    | 0  | 0.33 | 1       | 0.33\nCALL 22a0 <@plt_start@+0x280>            | 3     | 0    | 0    | 0.50 | 0.50 | 1  | 1    | 0       | 2\nXOR %EDX,%EDX                            | 1     | 0    | 0    | 0    | 0    | 0  | 0    | 0       | 0.25\nMOV %EAX,%ESI                            | 1     | 0.33 | 0.33 | 0    | 0    | 0  | 0.33 | 1       | 0.33\nMOV %R14D,%EAX                           | 1     | 0.33 | 0.33 | 0    | 0    | 0  | 0.33 | 1       | 0.33\nDIV %EBX                                 | 10    | 0    | 0    | 0    | 0    | 0  | 0    | 20-28   | 11-18\nMOV %EAX,%R14D                           | 1     | 0.33 | 0.33 | 0    | 0    | 0  | 0.33 | 1       | 0.33\nCMP %EDX,%ESI                            | 1     | 0.33 | 0.33 | 0    | 0    | 0  | 0.33 | 1       | 0.33\nJB 181a0 <copy_y_face_._omp_fn.1+0x250>  | 1     | 0    | 0    | 0    | 0    | 0  | 1    | 0       | 1-2\nIMUL %R14D,%ESI                          | 1     | 0    | 1    | 0    | 0    | 0  | 0    | 3       | 1\nLEA (%RSI,%RDX,1),%EAX                   | 1     | 0.50 | 0.50 | 0    | 0    | 0  | 0    | 1       | 0.50\nLEA (%R14,%RAX,1),%EDI                   | 1     | 0.50 | 0.50 | 0    | 0    | 0  | 0    | 1       | 0.50\nCMP %EDI,%EAX                            | 1     | 0.33 | 0.33 | 0    | 0    | 0  | 0.33 | 1       | 0.33\nJAE 18180 <copy_y_face_._omp_fn.1+0x230> | 1     | 0    | 0    | 0    | 0    | 0  | 1    | 0       | 1-2\nLEA -0x1(%R14),%ESI                      | 1     | 0.50 | 0.50 | 0    | 0    | 0  | 0    | 1       | 0.50\nXOR %EDX,%EDX                            | 1     | 0    | 0    | 0    | 0    | 0  | 0    | 0       | 0.25\nMOVSXD 0x48(%R13),%R9                    | 1     | 0    | 0    | 0.50 | 0.50 | 0  | 0    | 1       | 0.50\nDIV %R12D                                | 10    | 0    | 0    | 0    | 0    | 0  | 0    | 20-28   | 11-18\nMOV %ESI,0xc(%RSP)                       | 1     | 0    | 0    | 0.50 | 0.50 | 1  | 0    | 3       | 1\nXOR %ESI,%ESI                            | 1     | 0    | 0    | 0    | 0    | 0  | 0    | 0       | 0.25\nMOV 0x40(%R13),%R10                      | 1     | 0    | 0    | 0.50 | 0.50 | 0  | 0    | 2       | 0.50\nMOV 0x38(%R13),%R11                      | 1     | 0    | 0    | 0.50 | 0.50 | 0  | 0    | 2       | 0.50\nMOV 0x28(%R13),%RBX                      | 1     | 0    | 0    | 0.50 | 0.50 | 0  | 0    | 2       | 0.50\nMOV 0x20(%R13),%RBP                      | 1     | 0    | 0    | 0.50 | 0.50 | 0  | 0    | 2       | 0.50\nIMUL 0x30(%R13),%R9                      | 1     | 0    | 1    | 0.50 | 0.50 | 0  | 0    | 3       | 1\nAND $0x1,%R14D                           | 1     | 0.33 | 0.33 | 0    | 0    | 0  | 0.33 | 1       | 0.33\nLEA -0x1(%R15),%R8D                      | 1     | 0.50 | 0.50 | 0    | 0    | 0  | 0    | 1       | 0.50\nMOV (%R13),%R12                          | 1     | 0    | 0    | 0.50 | 0.50 | 0  | 0    | 2       | 0.50\nMOV 0x8(%R13),%R13                       | 1     | 0    | 0    | 0.50 | 0.50 | 0  | 0    | 2       | 0.50\nLEA 0x1(%RAX),%R15D                      | 1     | 0.50 | 0.50 | 0    | 0    | 0  | 0    | 1       | 0.50\nLEA 0x1(%RDX),%ECX                       | 1     | 0.50 | 0.50 | 0    | 0    | 0  | 0    | 1       | 0.50\nMOVSXD %R15D,%RDI                        | 1     | 0.33 | 0.33 | 0    | 0    | 0  | 0.33 | 1       | 0.33\nJNE 180f6 <copy_y_face_._omp_fn.1+0x1a6> | 1     | 0    | 0    | 0    | 0    | 0  | 1    | 0       | 1-2\nMOV %R11,%RSI                            | 1     | 0.33 | 0.33 | 0    | 0    | 0  | 0.33 | 1       | 0.33\nMOVSXD %ECX,%RCX                         | 1     | 0.33 | 0.33 | 0    | 0    | 0  | 0.33 | 1       | 0.33\nIMUL %RDI,%RSI                           | 1     | 0    | 1    | 0    | 0    | 0  | 0    | 3       | 1\nLEA (%RCX,%RCX,4),%R14                   | 1     | 0.50 | 0.50 | 0    | 0    | 0  | 0    | 1       | 0.50\nADD %R10,%RSI                            | 1     | 0.33 | 0.33 | 0    | 0    | 0  | 0.33 | 1       | 0.33\nADD %R9,%RSI                             | 1     | 0.33 | 0.33 | 0    | 0    | 0  | 0.33 | 1       | 0.33\nADD %R14,%RSI                            | 1     | 0.33 | 0.33 | 0    | 0    | 0  | 0.33 | 1       | 0.33\nLEA (%R12,%RSI,8),%RCX                   | 1     | 0.50 | 0.50 | 0    | 0    | 0  | 0    | 1       | 0.50\nMOV %RBP,%RSI                            | 1     | 0.33 | 0.33 | 0    | 0    | 0  | 0.33 | 1       | 0.33\nIMUL %RDI,%RSI                           | 1     | 0    | 1    | 0    | 0    | 0  | 0    | 3       | 1\nVMOVSD 0x8(%RCX),%XMM0                   | 1     | 0    | 0    | 0.50 | 0.50 | 0  | 0    | 3       | 0.50\nADD %RBX,%RSI                            | 1     | 0.33 | 0.33 | 0    | 0    | 0  | 0.33 | 1       | 0.33\nADD %R14,%RSI                            | 1     | 0.33 | 0.33 | 0    | 0    | 0  | 0.33 | 1       | 0.33\nLEA (%R13,%RSI,8),%R14                   | 1     | 0.50 | 0.50 | 0    | 0    | 0  | 0    | 1       | 0.50\nVMOVSD %XMM0,0x8(%R14)                   | 1     | 0    | 0    | 0.50 | 0.50 | 1  | 0    | 3       | 1\nVMOVSD 0x10(%RCX),%XMM1                  | 1     | 0    | 0    | 0.50 | 0.50 | 0  | 0    | 3       | 0.50\nVMOVSD %XMM1,0x10(%R14)                  | 1     | 0    | 0    | 0.50 | 0.50 | 1  | 0    | 3       | 1\nVMOVSD 0x18(%RCX),%XMM2                  | 1     | 0    | 0    | 0.50 | 0.50 | 0  | 0    | 3       | 0.50\nVMOVSD %XMM2,0x18(%R14)                  | 1     | 0    | 0    | 0.50 | 0.50 | 1  | 0    | 3       | 1\nVMOVSD 0x20(%RCX),%XMM3                  | 1     | 0    | 0    | 0.50 | 0.50 | 0  | 0    | 3       | 0.50\nVMOVSD %XMM3,0x20(%R14)                  | 1     | 0    | 0    | 0.50 | 0.50 | 1  | 0    | 3       | 1\nVMOVSD 0x28(%RCX),%XMM4                  | 1     | 0    | 0    | 0.50 | 0.50 | 0  | 0    | 3       | 0.50\nLEA 0x2(%RDX),%ECX                       | 1     | 0.50 | 0.50 | 0    | 0    | 0  | 0    | 1       | 0.50\nVMOVSD %XMM4,0x28(%R14)                  | 1     | 0    | 0    | 0.50 | 0.50 | 1  | 0    | 3       | 1\nCMP %ECX,%R8D                            | 1     | 0.33 | 0.33 | 0    | 0    | 0  | 0.33 | 1       | 0.33\nJLE 181ab <copy_y_face_._omp_fn.1+0x25b> | 1     | 0    | 0    | 0    | 0    | 0  | 1    | 0       | 1-2\nMOV $0x1,%ESI                            | 1     | 0.33 | 0.33 | 0    | 0    | 0  | 0.33 | 1       | 0.33\nJMP 180f6 <copy_y_face_._omp_fn.1+0x1a6> | 1     | 0    | 0    | 0    | 0    | 0  | 1    | 0       | 2\nNOP                                      | 1     | 0    | 0    | 0    | 0    | 0  | 0    | 0       | 0.25\nNOPL (%RAX)                              | 1     | 0    | 0    | 0    | 0    | 0  | 0    | 0       | 0.25\nADD $0x18,%RSP                           | 1     | 0.33 | 0.33 | 0    | 0    | 0  | 0.33 | 1       | 0.33\nPOP %RBX                                 | 1     | 0    | 0    | 0.50 | 0.50 | 0  | 0    | 2       | 0.50\nPOP %RBP                                 | 1     | 0    | 0    | 0.50 | 0.50 | 0  | 0    | 2       | 0.50\nPOP %R12                                 | 1     | 0    | 0    | 0.50 | 0.50 | 0  | 0    | 2       | 0.50\nPOP %R13                                 | 1     | 0    | 0    | 0.50 | 0.50 | 0  | 0    | 2       | 0.50\nPOP %R14                                 | 1     | 0    | 0    | 0.50 | 0.50 | 0  | 0    | 2       | 0.50\nPOP %R15                                 | 1     | 0    | 0    | 0.50 | 0.50 | 0  | 0    | 2       | 0.50\nRET                                      | 2     | 0    | 0    | 0.50 | 0.50 | 0  | 1    | 0       | 2\nADD $0x1,%R14D                           | 1     | 0.33 | 0.33 | 0    | 0    | 0  | 0.33 | 1       | 0.33\nXOR %EDX,%EDX                            | 1     | 0    | 0    | 0    | 0    | 0  | 0    | 0       | 0.25\nJMP 17fad <copy_y_face_._omp_fn.1+0x5d>  | 1     | 0    | 0    | 0    | 0    | 0  | 1    | 0       | 2\nLEA 0x2(%RAX),%R15D                      | 1     | 0.50 | 0.50 | 0    | 0    | 0  | 0    | 1       | 0.50\nMOV $0x1,%ECX                            | 1     | 0.33 | 0.33 | 0    | 0    | 0  | 0.33 | 1       | 0.33\nMOVSXD %R15D,%RDI                        | 1     | 0.33 | 0.33 | 0    | 0    | 0  | 0.33 | 1       | 0.33\nJMP 18078 <copy_y_face_._omp_fn.1+0x128> | 1     | 0    | 0    | 0    | 0    | 0  | 1    | 0       | 2\nNOPL (%RAX)                              | 1     | 0    | 0    | 0    | 0    | 0  | 0    | 0       | 0.25\n",
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
          txt = "Detected a slowdown caused by scalar integer instructions (typically used for address computation).\nBy removing them, you can lower the cost of an iteration from 36.00 to 7.00 cycles (5.14x speedup).",
        },
        {
          workaround = " - Try another compiler or update/tune your current one\n - Make array accesses unit-stride:\n  * If your function streams arrays of structures (AoS), try to use structures of arrays instead (SoA):\ndo i a(i)%x = b(i)%x (slow, non stride 1) => do i a%x(i) = b%x(i) (fast, stride 1)\n",
          details = "All SSE/AVX instructions are used in scalar version (process only one data element in vector registers).\nSince your execution units are vector units, only a vectorized function can use their full power.\n",
          title = "Vectorization",
          txt = "Your function is not vectorized.\nOnly 31% of vector register length is used (average across all SSE/AVX instructions).\nBy vectorizing your function, you can lower the cost of an iteration from 36.00 to 9.00 cycles (4.00x speedup).",
        },
        {
          workaround = "Reduce the number of division or square root instructions:\n - If denominator is constant over iterations, use reciprocal (replace x/y with x*(1/y)). Check precision impact. This will be done by your compiler with ffast-math or Ofast\n",
          title = "Execution units bottlenecks",
          txt = "Performance is limited by execution of divide and square root operations (the divide/square root unit is a bottleneck).\n\nBy removing all these bottlenecks, you can lower the cost of an iteration from 36.00 to 30.50 cycles (1.18x speedup).\n",
        },
      },
      potential = {
        {
          title = "Expensive FP math instructions/calls",
          txt = "Detected performance impact from expensive FP math instructions/calls.\nBy removing/reexpressing them, you can lower the cost of an iteration from 36.00 to 26.00 cycles (1.38x speedup).",
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
          title = "Type of elements and instruction set",
          txt = "No instructions are processing arithmetic or math operations on FP elements. This function is probably writing/copying data or processing integer elements.",
        },
        {
          title = "Matching between your function (in the source code) and the binary function",
          txt = "The binary function does not contain any FP arithmetical operations.\nThe binary function is loading 124 bytes.\nThe binary function is storing 44 bytes.",
        },
      },
      expert = {
        {
          title = "General properties",
          txt = "nb instructions    : 99\nnb uops            : 122\nloop length        : 354\nused x86 registers : 16\nused mmx registers : 0\nused xmm registers : 5\nused ymm registers : 0\nused zmm registers : 0\nnb stack references: 1\n",
        },
        {
          title = "Front-end",
          txt = "MACRO FUSION NOT POSSIBLE\nFIT IN UOP CACHE\nmicro-operation queue: 30.50 cycles\nfront end            : 30.50 cycles\n",
        },
        {
          title = "Back-end",
          txt = "       | P0    | P1    | P2    | P3    | P4    | P5\n------------------------------------------------------\nuops   | 18.67 | 18.67 | 19.00 | 19.00 | 14.00 | 18.67\ncycles | 18.67 | 18.67 | 19.00 | 19.00 | 14.00 | 18.67\n\nCycles executing div or sqrt instructions: 22.00-36.00\n",
        },
        {
          title = "Cycles summary",
          txt = "Front-end : 30.50\nDispatch  : 19.00\nDIV/SQRT  : 22.00-36.00\nOverall L1: 30.50-36.00\n",
        },
        {
          title = "Vectorization ratios",
          txt = "INT\nall    : 0%\nload   : 0%\nstore  : 0%\nmul    : 0%\nadd-sub: NA (no add-sub vectorizable/vectorized instructions)\nfma    : NA (no fma vectorizable/vectorized instructions)\nother  : 0%\nFP\nall     : 0%\nload    : 0%\nstore   : 0%\nmul     : NA (no mul vectorizable/vectorized instructions)\nadd-sub : NA (no add-sub vectorizable/vectorized instructions)\nfma     : NA (no fma vectorizable/vectorized instructions)\ndiv/sqrt: NA (no div/sqrt vectorizable/vectorized instructions)\nother   : NA (no other vectorizable/vectorized instructions)\nINT+FP\nall     : 0%\nload    : 0%\nstore   : 0%\nmul     : 0%\nadd-sub : NA (no add-sub vectorizable/vectorized instructions)\nfma     : NA (no fma vectorizable/vectorized instructions)\ndiv/sqrt: 0%\nother   : 0%\n",
        },
        {
          title = "Vector efficiency ratios",
          txt = "INT\nall    : 35%\nload   : 50%\nstore  : 25%\nmul    : 50%\nadd-sub: NA (no add-sub vectorizable/vectorized instructions)\nfma    : NA (no fma vectorizable/vectorized instructions)\nother  : 25%\nFP\nall     : 25%\nload    : 25%\nstore   : 25%\nmul     : NA (no mul vectorizable/vectorized instructions)\nadd-sub : NA (no add-sub vectorizable/vectorized instructions)\nfma     : NA (no fma vectorizable/vectorized instructions)\ndiv/sqrt: NA (no div/sqrt vectorizable/vectorized instructions)\nother   : NA (no other vectorizable/vectorized instructions)\nINT+FP\nall     : 31%\nload    : 38%\nstore   : 25%\nmul     : 50%\nadd-sub : NA (no add-sub vectorizable/vectorized instructions)\nfma     : NA (no fma vectorizable/vectorized instructions)\ndiv/sqrt: 25%\nother   : 25%\n",
        },
        {
          title = "Cycles and memory resources usage",
          txt = "Assuming all data fit into the L1 cache, each call to the function takes 36.00 cycles. At this rate:\n - 10% of peak load performance is reached (3.44 out of 32.00 bytes loaded per cycle (GB/s @ 1GHz))\n - 7% of peak store performance is reached (1.22 out of 16.00 bytes stored per cycle (GB/s @ 1GHz))\n",
        },
        {
          title = "Front-end bottlenecks",
          txt = "Found no such bottlenecks.",
        },
        {
          title = "ASM code",
          txt = "In the binary file, the address of the function is: 17f50\n\nInstruction                              | Nb FU | P0   | P1   | P2   | P3   | P4 | P5   | Latency | Recip. throughput\n----------------------------------------------------------------------------------------------------------------------\nPUSH %R15                                | 1     | 0    | 0    | 0.50 | 0.50 | 1  | 0    | 3       | 1\nPUSH %R14                                | 1     | 0    | 0    | 0.50 | 0.50 | 1  | 0    | 3       | 1\nPUSH %R13                                | 1     | 0    | 0    | 0.50 | 0.50 | 1  | 0    | 3       | 1\nPUSH %R12                                | 1     | 0    | 0    | 0.50 | 0.50 | 1  | 0    | 3       | 1\nPUSH %RBP                                | 1     | 0    | 0    | 0.50 | 0.50 | 1  | 0    | 3       | 1\nPUSH %RBX                                | 1     | 0    | 0    | 0.50 | 0.50 | 1  | 0    | 3       | 1\nSUB $0x18,%RSP                           | 1     | 0.33 | 0.33 | 0    | 0    | 0  | 0.33 | 1       | 0.33\nMOV 0x18(%RDI),%RAX                      | 1     | 0    | 0    | 0.50 | 0.50 | 0  | 0    | 2       | 0.50\nMOV 0x10(%RDI),%RDX                      | 1     | 0    | 0    | 0.50 | 0.50 | 0  | 0    | 2       | 0.50\nMOV (%RAX),%ECX                          | 1     | 0    | 0    | 0.50 | 0.50 | 0  | 0    | 2       | 0.50\nMOV (%RDX),%R15D                         | 1     | 0    | 0    | 0.50 | 0.50 | 0  | 0    | 2       | 0.50\nCMP $0x2,%ECX                            | 1     | 0.33 | 0.33 | 0    | 0    | 0  | 0.33 | 1       | 0.33\nJLE 18180 <copy_y_face_._omp_fn.1+0x230> | 1     | 0    | 0    | 0    | 0    | 0  | 1    | 0       | 1-2\nCMP $0x2,%R15D                           | 1     | 0.33 | 0.33 | 0    | 0    | 0  | 0.33 | 1       | 0.33\nJLE 18180 <copy_y_face_._omp_fn.1+0x230> | 1     | 0    | 0    | 0    | 0    | 0  | 1    | 0       | 1-2\nLEA -0x2(%RCX),%R14D                     | 1     | 0.50 | 0.50 | 0    | 0    | 0  | 0    | 1       | 0.50\nMOV %RDI,%R13                            | 1     | 0.33 | 0.33 | 0    | 0    | 0  | 0.33 | 1       | 0.33\nCALL 2300 <@plt_start@+0x2e0>            | 3     | 0    | 0    | 0.50 | 0.50 | 1  | 1    | 0       | 2\nLEA -0x2(%R15),%R12D                     | 1     | 0.50 | 0.50 | 0    | 0    | 0  | 0    | 1       | 0.50\nIMUL %R12D,%R14D                         | 1     | 0    | 1    | 0    | 0    | 0  | 0    | 3       | 1\nMOV %EAX,%EBX                            | 1     | 0.33 | 0.33 | 0    | 0    | 0  | 0.33 | 1       | 0.33\nCALL 22a0 <@plt_start@+0x280>            | 3     | 0    | 0    | 0.50 | 0.50 | 1  | 1    | 0       | 2\nXOR %EDX,%EDX                            | 1     | 0    | 0    | 0    | 0    | 0  | 0    | 0       | 0.25\nMOV %EAX,%ESI                            | 1     | 0.33 | 0.33 | 0    | 0    | 0  | 0.33 | 1       | 0.33\nMOV %R14D,%EAX                           | 1     | 0.33 | 0.33 | 0    | 0    | 0  | 0.33 | 1       | 0.33\nDIV %EBX                                 | 10    | 0    | 0    | 0    | 0    | 0  | 0    | 20-28   | 11-18\nMOV %EAX,%R14D                           | 1     | 0.33 | 0.33 | 0    | 0    | 0  | 0.33 | 1       | 0.33\nCMP %EDX,%ESI                            | 1     | 0.33 | 0.33 | 0    | 0    | 0  | 0.33 | 1       | 0.33\nJB 181a0 <copy_y_face_._omp_fn.1+0x250>  | 1     | 0    | 0    | 0    | 0    | 0  | 1    | 0       | 1-2\nIMUL %R14D,%ESI                          | 1     | 0    | 1    | 0    | 0    | 0  | 0    | 3       | 1\nLEA (%RSI,%RDX,1),%EAX                   | 1     | 0.50 | 0.50 | 0    | 0    | 0  | 0    | 1       | 0.50\nLEA (%R14,%RAX,1),%EDI                   | 1     | 0.50 | 0.50 | 0    | 0    | 0  | 0    | 1       | 0.50\nCMP %EDI,%EAX                            | 1     | 0.33 | 0.33 | 0    | 0    | 0  | 0.33 | 1       | 0.33\nJAE 18180 <copy_y_face_._omp_fn.1+0x230> | 1     | 0    | 0    | 0    | 0    | 0  | 1    | 0       | 1-2\nLEA -0x1(%R14),%ESI                      | 1     | 0.50 | 0.50 | 0    | 0    | 0  | 0    | 1       | 0.50\nXOR %EDX,%EDX                            | 1     | 0    | 0    | 0    | 0    | 0  | 0    | 0       | 0.25\nMOVSXD 0x48(%R13),%R9                    | 1     | 0    | 0    | 0.50 | 0.50 | 0  | 0    | 1       | 0.50\nDIV %R12D                                | 10    | 0    | 0    | 0    | 0    | 0  | 0    | 20-28   | 11-18\nMOV %ESI,0xc(%RSP)                       | 1     | 0    | 0    | 0.50 | 0.50 | 1  | 0    | 3       | 1\nXOR %ESI,%ESI                            | 1     | 0    | 0    | 0    | 0    | 0  | 0    | 0       | 0.25\nMOV 0x40(%R13),%R10                      | 1     | 0    | 0    | 0.50 | 0.50 | 0  | 0    | 2       | 0.50\nMOV 0x38(%R13),%R11                      | 1     | 0    | 0    | 0.50 | 0.50 | 0  | 0    | 2       | 0.50\nMOV 0x28(%R13),%RBX                      | 1     | 0    | 0    | 0.50 | 0.50 | 0  | 0    | 2       | 0.50\nMOV 0x20(%R13),%RBP                      | 1     | 0    | 0    | 0.50 | 0.50 | 0  | 0    | 2       | 0.50\nIMUL 0x30(%R13),%R9                      | 1     | 0    | 1    | 0.50 | 0.50 | 0  | 0    | 3       | 1\nAND $0x1,%R14D                           | 1     | 0.33 | 0.33 | 0    | 0    | 0  | 0.33 | 1       | 0.33\nLEA -0x1(%R15),%R8D                      | 1     | 0.50 | 0.50 | 0    | 0    | 0  | 0    | 1       | 0.50\nMOV (%R13),%R12                          | 1     | 0    | 0    | 0.50 | 0.50 | 0  | 0    | 2       | 0.50\nMOV 0x8(%R13),%R13                       | 1     | 0    | 0    | 0.50 | 0.50 | 0  | 0    | 2       | 0.50\nLEA 0x1(%RAX),%R15D                      | 1     | 0.50 | 0.50 | 0    | 0    | 0  | 0    | 1       | 0.50\nLEA 0x1(%RDX),%ECX                       | 1     | 0.50 | 0.50 | 0    | 0    | 0  | 0    | 1       | 0.50\nMOVSXD %R15D,%RDI                        | 1     | 0.33 | 0.33 | 0    | 0    | 0  | 0.33 | 1       | 0.33\nJNE 180f6 <copy_y_face_._omp_fn.1+0x1a6> | 1     | 0    | 0    | 0    | 0    | 0  | 1    | 0       | 1-2\nMOV %R11,%RSI                            | 1     | 0.33 | 0.33 | 0    | 0    | 0  | 0.33 | 1       | 0.33\nMOVSXD %ECX,%RCX                         | 1     | 0.33 | 0.33 | 0    | 0    | 0  | 0.33 | 1       | 0.33\nIMUL %RDI,%RSI                           | 1     | 0    | 1    | 0    | 0    | 0  | 0    | 3       | 1\nLEA (%RCX,%RCX,4),%R14                   | 1     | 0.50 | 0.50 | 0    | 0    | 0  | 0    | 1       | 0.50\nADD %R10,%RSI                            | 1     | 0.33 | 0.33 | 0    | 0    | 0  | 0.33 | 1       | 0.33\nADD %R9,%RSI                             | 1     | 0.33 | 0.33 | 0    | 0    | 0  | 0.33 | 1       | 0.33\nADD %R14,%RSI                            | 1     | 0.33 | 0.33 | 0    | 0    | 0  | 0.33 | 1       | 0.33\nLEA (%R12,%RSI,8),%RCX                   | 1     | 0.50 | 0.50 | 0    | 0    | 0  | 0    | 1       | 0.50\nMOV %RBP,%RSI                            | 1     | 0.33 | 0.33 | 0    | 0    | 0  | 0.33 | 1       | 0.33\nIMUL %RDI,%RSI                           | 1     | 0    | 1    | 0    | 0    | 0  | 0    | 3       | 1\nVMOVSD 0x8(%RCX),%XMM0                   | 1     | 0    | 0    | 0.50 | 0.50 | 0  | 0    | 3       | 0.50\nADD %RBX,%RSI                            | 1     | 0.33 | 0.33 | 0    | 0    | 0  | 0.33 | 1       | 0.33\nADD %R14,%RSI                            | 1     | 0.33 | 0.33 | 0    | 0    | 0  | 0.33 | 1       | 0.33\nLEA (%R13,%RSI,8),%R14                   | 1     | 0.50 | 0.50 | 0    | 0    | 0  | 0    | 1       | 0.50\nVMOVSD %XMM0,0x8(%R14)                   | 1     | 0    | 0    | 0.50 | 0.50 | 1  | 0    | 3       | 1\nVMOVSD 0x10(%RCX),%XMM1                  | 1     | 0    | 0    | 0.50 | 0.50 | 0  | 0    | 3       | 0.50\nVMOVSD %XMM1,0x10(%R14)                  | 1     | 0    | 0    | 0.50 | 0.50 | 1  | 0    | 3       | 1\nVMOVSD 0x18(%RCX),%XMM2                  | 1     | 0    | 0    | 0.50 | 0.50 | 0  | 0    | 3       | 0.50\nVMOVSD %XMM2,0x18(%R14)                  | 1     | 0    | 0    | 0.50 | 0.50 | 1  | 0    | 3       | 1\nVMOVSD 0x20(%RCX),%XMM3                  | 1     | 0    | 0    | 0.50 | 0.50 | 0  | 0    | 3       | 0.50\nVMOVSD %XMM3,0x20(%R14)                  | 1     | 0    | 0    | 0.50 | 0.50 | 1  | 0    | 3       | 1\nVMOVSD 0x28(%RCX),%XMM4                  | 1     | 0    | 0    | 0.50 | 0.50 | 0  | 0    | 3       | 0.50\nLEA 0x2(%RDX),%ECX                       | 1     | 0.50 | 0.50 | 0    | 0    | 0  | 0    | 1       | 0.50\nVMOVSD %XMM4,0x28(%R14)                  | 1     | 0    | 0    | 0.50 | 0.50 | 1  | 0    | 3       | 1\nCMP %ECX,%R8D                            | 1     | 0.33 | 0.33 | 0    | 0    | 0  | 0.33 | 1       | 0.33\nJLE 181ab <copy_y_face_._omp_fn.1+0x25b> | 1     | 0    | 0    | 0    | 0    | 0  | 1    | 0       | 1-2\nMOV $0x1,%ESI                            | 1     | 0.33 | 0.33 | 0    | 0    | 0  | 0.33 | 1       | 0.33\nJMP 180f6 <copy_y_face_._omp_fn.1+0x1a6> | 1     | 0    | 0    | 0    | 0    | 0  | 1    | 0       | 2\nNOP                                      | 1     | 0    | 0    | 0    | 0    | 0  | 0    | 0       | 0.25\nNOPL (%RAX)                              | 1     | 0    | 0    | 0    | 0    | 0  | 0    | 0       | 0.25\nADD $0x18,%RSP                           | 1     | 0.33 | 0.33 | 0    | 0    | 0  | 0.33 | 1       | 0.33\nPOP %RBX                                 | 1     | 0    | 0    | 0.50 | 0.50 | 0  | 0    | 2       | 0.50\nPOP %RBP                                 | 1     | 0    | 0    | 0.50 | 0.50 | 0  | 0    | 2       | 0.50\nPOP %R12                                 | 1     | 0    | 0    | 0.50 | 0.50 | 0  | 0    | 2       | 0.50\nPOP %R13                                 | 1     | 0    | 0    | 0.50 | 0.50 | 0  | 0    | 2       | 0.50\nPOP %R14                                 | 1     | 0    | 0    | 0.50 | 0.50 | 0  | 0    | 2       | 0.50\nPOP %R15                                 | 1     | 0    | 0    | 0.50 | 0.50 | 0  | 0    | 2       | 0.50\nRET                                      | 2     | 0    | 0    | 0.50 | 0.50 | 0  | 1    | 0       | 2\nADD $0x1,%R14D                           | 1     | 0.33 | 0.33 | 0    | 0    | 0  | 0.33 | 1       | 0.33\nXOR %EDX,%EDX                            | 1     | 0    | 0    | 0    | 0    | 0  | 0    | 0       | 0.25\nJMP 17fad <copy_y_face_._omp_fn.1+0x5d>  | 1     | 0    | 0    | 0    | 0    | 0  | 1    | 0       | 2\nLEA 0x2(%RAX),%R15D                      | 1     | 0.50 | 0.50 | 0    | 0    | 0  | 0    | 1       | 0.50\nMOV $0x1,%ECX                            | 1     | 0.33 | 0.33 | 0    | 0    | 0  | 0.33 | 1       | 0.33\nMOVSXD %R15D,%RDI                        | 1     | 0.33 | 0.33 | 0    | 0    | 0  | 0.33 | 1       | 0.33\nJMP 18078 <copy_y_face_._omp_fn.1+0x128> | 1     | 0    | 0    | 0    | 0    | 0  | 1    | 0       | 2\nNOPL (%RAX)                              | 1     | 0    | 0    | 0    | 0    | 0  | 0    | 0       | 0.25\n",
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
          txt = "Detected a slowdown caused by scalar integer instructions (typically used for address computation).\nBy removing them, you can lower the cost of an iteration from 36.00 to 7.00 cycles (5.14x speedup).",
        },
        {
          workaround = " - Try another compiler or update/tune your current one\n - Make array accesses unit-stride:\n  * If your function streams arrays of structures (AoS), try to use structures of arrays instead (SoA):\ndo i a(i)%x = b(i)%x (slow, non stride 1) => do i a%x(i) = b%x(i) (fast, stride 1)\n",
          details = "All SSE/AVX instructions are used in scalar version (process only one data element in vector registers).\nSince your execution units are vector units, only a vectorized function can use their full power.\n",
          title = "Vectorization",
          txt = "Your function is not vectorized.\nOnly 31% of vector register length is used (average across all SSE/AVX instructions).\nBy vectorizing your function, you can lower the cost of an iteration from 36.00 to 9.00 cycles (4.00x speedup).",
        },
        {
          workaround = "Reduce the number of division or square root instructions:\n - If denominator is constant over iterations, use reciprocal (replace x/y with x*(1/y)). Check precision impact. This will be done by your compiler with ffast-math or Ofast\n",
          title = "Execution units bottlenecks",
          txt = "Performance is limited by execution of divide and square root operations (the divide/square root unit is a bottleneck).\n\nBy removing all these bottlenecks, you can lower the cost of an iteration from 36.00 to 30.50 cycles (1.18x speedup).\n",
        },
      },
      potential = {
        {
          title = "Expensive FP math instructions/calls",
          txt = "Detected performance impact from expensive FP math instructions/calls.\nBy removing/reexpressing them, you can lower the cost of an iteration from 36.00 to 26.00 cycles (1.38x speedup).",
        },
      },
    },
  common = {
    header = {
      "The function is defined in /users/user2210/NPB3.4-MZ-MPI/BT-MZ/exch_qbc.f90:218-222.\n",
      "Warnings:\nIgnoring paths for analysis",
    },
  },
}
