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
          txt = "The binary function does not contain any FP arithmetical operations.\nThe binary function is loading 76 bytes.",
        },
      },
      expert = {
        {
          title = "General properties",
          txt = "nb instructions    : 66\nloop length        : 242\nused x86 registers : 14\nused mmx registers : 0\nused xmm registers : 0\nused ymm registers : 0\nused zmm registers : 0\nnb stack references: 11\n",
        },
        {
          title = "Front-end",
          txt = "MACRO FUSION NOT POSSIBLE\ninstruction fetch    : 16.00 cycles\ninstruction queue    : 33.00 cycles\ndecoding             : 33.00 cycles\nmicro-operation queue: 37.00 cycles\nfront end            : 37.00 cycles\n",
        },
        {
          title = "Back-end",
          txt = "       | P0    | P1   | P2    | P3   | P4    | P5    | P6\n-----------------------------------------------------------\nuops   | 22.00 | 0.00 | 11.00 | 5.00 | 29.50 | 29.50 | 5.00\ncycles | 22.00 | 0.00 | 11.00 | 5.00 | 29.50 | 29.50 | 5.00\n\nCycles executing div or sqrt instructions: 22.00-26.00\n",
        },
        {
          title = "Cycles summary",
          txt = "Front-end : 37.00\nDispatch  : 29.50\nDIV/SQRT  : 22.00-26.00\nOverall L1: 37.00\n",
        },
        {
          title = "Vectorization ratios",
          txt = "all     : 0%\nload    : 0%\nstore   : NA (no store vectorizable/vectorized instructions)\nmul     : 0%\nadd-sub : 0%\nfma     : NA (no fma vectorizable/vectorized instructions)\ndiv/sqrt: 0%\nother   : 0%\n",
        },
        {
          title = "Vector efficiency ratios",
          txt = "all     : 9%\nload    : 12%\nstore   : NA (no store vectorizable/vectorized instructions)\nmul     : 12%\nadd-sub : 12%\nfma     : NA (no fma vectorizable/vectorized instructions)\ndiv/sqrt: 6%\nother   : 7%\n",
        },
        {
          title = "Cycles and memory resources usage",
          txt = "Assuming all data fit into the L1 cache, each call to the function takes 37.00 cycles. At this rate:\n - 1% of peak load performance is reached (2.05 out of 128.00 bytes loaded per cycle (GB/s @ 1GHz))\n",
        },
        {
          title = "Front-end bottlenecks",
          txt = "Performance is limited by instruction throughput (loading/decoding program instructions to execution core) (front-end is a bottleneck).\n\nBy removing all these bottlenecks, you can lower the cost of an iteration from 37.00 to 33.00 cycles (1.12x speedup).\n",
        },
        {
          title = "ASM code",
          txt = "In the binary file, the address of the function is: 1b950\n\nInstruction                              | Nb FU | P0    | P1 | P2   | P3   | P4    | P5   | P6 | Latency | Recip. throughput\n-----------------------------------------------------------------------------------------------------------------------------\nPUSH %R14                                | 1     | 0     | 0  | 0    | 0    | 1     | 1    | 0  | 0       | 1\nPUSH %R13                                | 1     | 0     | 0  | 0    | 0    | 1     | 1    | 0  | 0       | 1\nPUSH %R12                                | 1     | 0     | 0  | 0    | 0    | 1     | 1    | 0  | 0       | 1\nPUSH %RBP                                | 1     | 0     | 0  | 0    | 0    | 1     | 1    | 0  | 0       | 1\nLEA (%RDI),%RBP                          | 1     | 0     | 0  | 0    | 0    | 0.50  | 0.50 | 0  | 1       | 0.50\nPUSH %RBX                                | 1     | 0     | 0  | 0    | 0    | 1     | 1    | 0  | 0       | 1\nCALL 2080 <@plt_start@+0x60>             | 1     | 0     | 0  | 0    | 0    | 0.50  | 0.50 | 0  | 0       | 2\nLEA (%RAX),%EBX                          | 1     | 0     | 0  | 0    | 0    | 0.50  | 0.50 | 0  | 1       | 0.50\nCALL 2190 <@plt_start@+0x170>            | 1     | 0     | 0  | 0    | 0    | 0.50  | 0.50 | 0  | 0       | 2\nLEA (%RAX),%R8D                          | 1     | 0     | 0  | 0    | 0    | 0.50  | 0.50 | 0  | 1       | 0.50\nMOV 0x44(%RBP),%EAX                      | 1     | 0     | 0  | 1    | 0    | 0     | 0    | 0  | 4       | 1\nMOV %EAX,%EDX                            | 1     | 0     | 0  | 0    | 0    | 0.50  | 0.50 | 0  | 0       | 0.50\nSAR $0x1f,%EDX                           | 1     | 0     | 0  | 0    | 0    | 1     | 0    | 0  | 1       | 1\nIDIV %EBX                                | 29    | 14.50 | 0  | 0    | 0    | 14.50 | 0    | 0  | 37-49   | 22-26\nCMP %EDX,%R8D                            | 1     | 0     | 0  | 0    | 0    | 0.50  | 0.50 | 0  | 1       | 0.50\nJL 1bc27 <copy_x_face_._omp_fn.0+0x2d7>  | 1     | 0     | 0  | 0    | 0    | 0     | 1    | 0  | 0       | 1-2\nIMUL %EAX,%R8D                           | 1     | 0     | 0  | 0    | 0    | 1     | 0    | 0  | 3       | 1\nADD %EDX,%R8D                            | 1     | 0     | 0  | 0    | 0    | 0.50  | 0.50 | 0  | 1       | 0.50\nADD %R8D,%EAX                            | 1     | 0     | 0  | 0    | 0    | 0.50  | 0.50 | 0  | 1       | 0.50\nCMP %EAX,%R8D                            | 1     | 0     | 0  | 0    | 0    | 0.50  | 0.50 | 0  | 1       | 0.50\nJGE 1bc1e <copy_x_face_._omp_fn.0+0x2ce> | 1     | 0     | 0  | 0    | 0    | 0     | 1    | 0  | 0       | 1-2\nMOV 0x10(%RBP),%RCX                      | 1     | 0     | 0  | 1    | 0    | 0     | 0    | 0  | 4       | 1\nLEA 0x1(%R8),%R8D                        | 1     | 0     | 0  | 0    | 0    | 0.50  | 0.50 | 0  | 1       | 0.50\nMOVSXD 0x40(%RBP),%RDI                   | 1     | 0     | 0  | 1    | 0    | 0     | 0    | 0  | 4       | 1\nMOV 0x38(%RBP),%R9                       | 1     | 0     | 0  | 1    | 0    | 0     | 0    | 0  | 4       | 1\nMOV (%RCX),%EDX                          | 1     | 0     | 0  | 1    | 0    | 0     | 0    | 0  | 4       | 1\nMOV 0x30(%RBP),%RBX                      | 1     | 0     | 0  | 1    | 0    | 0     | 0    | 0  | 4       | 1\nMOV %RDI,%RCX                            | 1     | 0     | 0  | 0    | 0    | 0.50  | 0.50 | 0  | 0       | 0.50\nSAL $0x2,%RCX                            | 1     | 0     | 0  | 0    | 0    | 1     | 0    | 0  | 1       | 1\nMOV 0x28(%RBP),%R11                      | 1     | 0     | 0  | 1    | 0    | 0     | 0    | 0  | 4       | 1\nADD %RDI,%RCX                            | 1     | 0     | 0  | 0    | 0    | 0.50  | 0.50 | 0  | 1       | 0.50\nMOV 0x20(%RBP),%R10                      | 1     | 0     | 0  | 1    | 0    | 0     | 0    | 0  | 4       | 1\nCMP $0x2,%EDX                            | 1     | 0     | 0  | 0    | 0    | 0.50  | 0.50 | 0  | 1       | 0.50\nMOV 0x18(%RBP),%RSI                      | 1     | 0     | 0  | 1    | 0    | 0     | 0    | 0  | 4       | 1\nMOV 0x8(%RBP),%RDI                       | 1     | 0     | 0  | 1    | 0    | 0     | 0    | 0  | 4       | 1\nMOV (%RBP),%R13                          | 1     | 0     | 0  | 1    | 0    | 0     | 0    | 0  | 4       | 1\nJLE 1bc1e <copy_x_face_._omp_fn.0+0x2ce> | 1     | 0     | 0  | 0    | 0    | 0     | 1    | 0  | 0       | 1-2\nMOVSXD %R8D,%R14                         | 1     | 0     | 0  | 0    | 0    | 1     | 0    | 0  | 1       | 1\nLEA (%RBX),%R12                          | 1     | 0     | 0  | 0    | 0    | 0.50  | 0.50 | 0  | 1       | 0.50\nIMUL %R14,%R12                           | 1     | 0     | 0  | 0    | 0    | 1     | 0    | 0  | 5       | 2\nLEA -0x3(%RDX),%EBP                      | 1     | 0     | 0  | 0    | 0    | 0.50  | 0.50 | 0  | 1       | 0.50\nLEA (%RBP,%RBP,4),%RDX                   | 1     | 0     | 0  | 0    | 0    | 0.50  | 0.50 | 0  | 1       | 0.50\nLEA (%RDX,%R10,1),%R10                   | 1     | 0     | 0  | 0    | 0    | 0.50  | 0.50 | 0  | 1       | 0.50\nADD %R12,%R9                             | 1     | 0     | 0  | 0    | 0    | 0.50  | 0.50 | 0  | 1       | 0.50\nLEA (,%RSI,8),%R12                       | 1     | 0     | 0  | 0    | 0    | 0.50  | 0.50 | 0  | 1       | 0.50\nIMUL %R14,%RSI                           | 1     | 0     | 0  | 0    | 0    | 1     | 0    | 0  | 5       | 2\nLEA 0x1(%RAX),%R14D                      | 1     | 0     | 0  | 0    | 0    | 0.50  | 0.50 | 0  | 1       | 0.50\nLEA (%RCX,%R11,1),%RAX                   | 1     | 0     | 0  | 0    | 0    | 0.50  | 0.50 | 0  | 1       | 0.50\nLEA 0x8(%R13,%RAX,8),%R13                | 1     | 0     | 0  | 0    | 0    | 1     | 0    | 0  | 1       | 1\nADD %RSI,%R10                            | 1     | 0     | 0  | 0    | 0    | 0.50  | 0.50 | 0  | 1       | 0.50\nLEA (,%R11,8),%RSI                       | 1     | 0     | 0  | 0    | 0    | 0.50  | 0.50 | 0  | 1       | 0.50\nLEA 0x1(%RBP),%R11                       | 1     | 0     | 0  | 0    | 0    | 0.50  | 0.50 | 0  | 1       | 0.50\nLEA 0x58(%RDI,%R10,8),%RDI               | 1     | 0     | 0  | 0    | 0    | 1     | 0    | 0  | 1       | 1\nIMUL $-0x28,%R11,%RBP                    | 1     | 0     | 0  | 0    | 0    | 1     | 0    | 0  | 5       | 2\nNOPW (%RAX,%RAX,1)                       | 1     | 0     | 0  | 0    | 0    | 0.50  | 0.50 | 0  | 0       | 0.50\nPOP %RBX                                 | 2     | 0     | 0  | 0.50 | 0.50 | 0     | 0    | 1  | 0       | 1\nPOP %RBP                                 | 2     | 0     | 0  | 0.50 | 0.50 | 0     | 0    | 1  | 0       | 1\nPOP %R12                                 | 2     | 0     | 0  | 0.50 | 0.50 | 0     | 0    | 1  | 0       | 1\nPOP %R13                                 | 2     | 0     | 0  | 0.50 | 0.50 | 0     | 0    | 1  | 0       | 1\nPOP %R14                                 | 2     | 0     | 0  | 0.50 | 0.50 | 0     | 0    | 1  | 0       | 1\nRET\nADD $0x1,%EAX                            | 1     | 0     | 0  | 0    | 0    | 0.50  | 0.50 | 0  | 1       | 0.50\nXOR %EDX,%EDX\nJMP 1b97d <copy_x_face_._omp_fn.0+0x2d>  | 1     | 0     | 0  | 0    | 0    | 0     | 1    | 0  | 0       | 2\nNOPW %CS:(%RAX,%RAX,1)                   | 1     | 0     | 0  | 0    | 0    | 0.50  | 0.50 | 0  | 0       | 0.50\nNOPL (%RAX)                              | 1     | 0     | 0  | 0    | 0    | 0.50  | 0.50 | 0  | 0       | 0.50\n",
        },
      },
      header = {
        "Warnings:\nget_path_cqa_results:\n - Detected a function call instruction: ignoring called function instructions.\nRerun with --follow-calls=append to include them to analysis  or with --follow-calls=inline to simulate inlining.\n",
        "0% of peak computational performance is used (0.00 out of 4.00 FLOP per cycle (GFLOPS @ 1GHz))",
      },
      brief = {
      },
      gain = {
        {
          workaround = " - Try another compiler or update/tune your current one\n - Make array accesses unit-stride:\n  * If your function streams arrays of structures (AoS), try to use structures of arrays instead (SoA):\ndo i a(i)%x = b(i)%x (slow, non stride 1) => do i a%x(i) = b%x(i) (fast, stride 1)\n",
          details = "All SSE/AVX instructions are used in scalar version (process only one data element in vector registers).\nSince your execution units are vector units, only a vectorized function can use their full power.\n",
          title = "Vectorization",
          txt = "Your function is not vectorized.\nOnly 9% of vector register length is used (average across all SSE/AVX instructions).\nBy vectorizing your function, you can lower the cost of an iteration from 37.00 to 2.42 cycles (15.30x speedup).",
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
          title = "Type of elements and instruction set",
          txt = "No instructions are processing arithmetic or math operations on FP elements. This function is probably writing/copying data or processing integer elements.",
        },
        {
          title = "Matching between your function (in the source code) and the binary function",
          txt = "The binary function does not contain any FP arithmetical operations.\nThe binary function is loading 76 bytes.",
        },
      },
      expert = {
        {
          title = "General properties",
          txt = "nb instructions    : 66\nloop length        : 242\nused x86 registers : 14\nused mmx registers : 0\nused xmm registers : 0\nused ymm registers : 0\nused zmm registers : 0\nnb stack references: 11\n",
        },
        {
          title = "Front-end",
          txt = "MACRO FUSION NOT POSSIBLE\ninstruction fetch    : 16.00 cycles\ninstruction queue    : 33.00 cycles\ndecoding             : 33.00 cycles\nmicro-operation queue: 37.00 cycles\nfront end            : 37.00 cycles\n",
        },
        {
          title = "Back-end",
          txt = "       | P0    | P1   | P2    | P3   | P4    | P5    | P6\n-----------------------------------------------------------\nuops   | 22.00 | 0.00 | 11.00 | 5.00 | 29.50 | 29.50 | 5.00\ncycles | 22.00 | 0.00 | 11.00 | 5.00 | 29.50 | 29.50 | 5.00\n\nCycles executing div or sqrt instructions: 22.00-26.00\n",
        },
        {
          title = "Cycles summary",
          txt = "Front-end : 37.00\nDispatch  : 29.50\nDIV/SQRT  : 22.00-26.00\nOverall L1: 37.00\n",
        },
        {
          title = "Vectorization ratios",
          txt = "all     : 0%\nload    : 0%\nstore   : NA (no store vectorizable/vectorized instructions)\nmul     : 0%\nadd-sub : 0%\nfma     : NA (no fma vectorizable/vectorized instructions)\ndiv/sqrt: 0%\nother   : 0%\n",
        },
        {
          title = "Vector efficiency ratios",
          txt = "all     : 9%\nload    : 12%\nstore   : NA (no store vectorizable/vectorized instructions)\nmul     : 12%\nadd-sub : 12%\nfma     : NA (no fma vectorizable/vectorized instructions)\ndiv/sqrt: 6%\nother   : 7%\n",
        },
        {
          title = "Cycles and memory resources usage",
          txt = "Assuming all data fit into the L1 cache, each call to the function takes 37.00 cycles. At this rate:\n - 1% of peak load performance is reached (2.05 out of 128.00 bytes loaded per cycle (GB/s @ 1GHz))\n",
        },
        {
          title = "Front-end bottlenecks",
          txt = "Performance is limited by instruction throughput (loading/decoding program instructions to execution core) (front-end is a bottleneck).\n\nBy removing all these bottlenecks, you can lower the cost of an iteration from 37.00 to 33.00 cycles (1.12x speedup).\n",
        },
        {
          title = "ASM code",
          txt = "In the binary file, the address of the function is: 1b950\n\nInstruction                              | Nb FU | P0    | P1 | P2   | P3   | P4    | P5   | P6 | Latency | Recip. throughput\n-----------------------------------------------------------------------------------------------------------------------------\nPUSH %R14                                | 1     | 0     | 0  | 0    | 0    | 1     | 1    | 0  | 0       | 1\nPUSH %R13                                | 1     | 0     | 0  | 0    | 0    | 1     | 1    | 0  | 0       | 1\nPUSH %R12                                | 1     | 0     | 0  | 0    | 0    | 1     | 1    | 0  | 0       | 1\nPUSH %RBP                                | 1     | 0     | 0  | 0    | 0    | 1     | 1    | 0  | 0       | 1\nLEA (%RDI),%RBP                          | 1     | 0     | 0  | 0    | 0    | 0.50  | 0.50 | 0  | 1       | 0.50\nPUSH %RBX                                | 1     | 0     | 0  | 0    | 0    | 1     | 1    | 0  | 0       | 1\nCALL 2080 <@plt_start@+0x60>             | 1     | 0     | 0  | 0    | 0    | 0.50  | 0.50 | 0  | 0       | 2\nLEA (%RAX),%EBX                          | 1     | 0     | 0  | 0    | 0    | 0.50  | 0.50 | 0  | 1       | 0.50\nCALL 2190 <@plt_start@+0x170>            | 1     | 0     | 0  | 0    | 0    | 0.50  | 0.50 | 0  | 0       | 2\nLEA (%RAX),%R8D                          | 1     | 0     | 0  | 0    | 0    | 0.50  | 0.50 | 0  | 1       | 0.50\nMOV 0x44(%RBP),%EAX                      | 1     | 0     | 0  | 1    | 0    | 0     | 0    | 0  | 4       | 1\nMOV %EAX,%EDX                            | 1     | 0     | 0  | 0    | 0    | 0.50  | 0.50 | 0  | 0       | 0.50\nSAR $0x1f,%EDX                           | 1     | 0     | 0  | 0    | 0    | 1     | 0    | 0  | 1       | 1\nIDIV %EBX                                | 29    | 14.50 | 0  | 0    | 0    | 14.50 | 0    | 0  | 37-49   | 22-26\nCMP %EDX,%R8D                            | 1     | 0     | 0  | 0    | 0    | 0.50  | 0.50 | 0  | 1       | 0.50\nJL 1bc27 <copy_x_face_._omp_fn.0+0x2d7>  | 1     | 0     | 0  | 0    | 0    | 0     | 1    | 0  | 0       | 1-2\nIMUL %EAX,%R8D                           | 1     | 0     | 0  | 0    | 0    | 1     | 0    | 0  | 3       | 1\nADD %EDX,%R8D                            | 1     | 0     | 0  | 0    | 0    | 0.50  | 0.50 | 0  | 1       | 0.50\nADD %R8D,%EAX                            | 1     | 0     | 0  | 0    | 0    | 0.50  | 0.50 | 0  | 1       | 0.50\nCMP %EAX,%R8D                            | 1     | 0     | 0  | 0    | 0    | 0.50  | 0.50 | 0  | 1       | 0.50\nJGE 1bc1e <copy_x_face_._omp_fn.0+0x2ce> | 1     | 0     | 0  | 0    | 0    | 0     | 1    | 0  | 0       | 1-2\nMOV 0x10(%RBP),%RCX                      | 1     | 0     | 0  | 1    | 0    | 0     | 0    | 0  | 4       | 1\nLEA 0x1(%R8),%R8D                        | 1     | 0     | 0  | 0    | 0    | 0.50  | 0.50 | 0  | 1       | 0.50\nMOVSXD 0x40(%RBP),%RDI                   | 1     | 0     | 0  | 1    | 0    | 0     | 0    | 0  | 4       | 1\nMOV 0x38(%RBP),%R9                       | 1     | 0     | 0  | 1    | 0    | 0     | 0    | 0  | 4       | 1\nMOV (%RCX),%EDX                          | 1     | 0     | 0  | 1    | 0    | 0     | 0    | 0  | 4       | 1\nMOV 0x30(%RBP),%RBX                      | 1     | 0     | 0  | 1    | 0    | 0     | 0    | 0  | 4       | 1\nMOV %RDI,%RCX                            | 1     | 0     | 0  | 0    | 0    | 0.50  | 0.50 | 0  | 0       | 0.50\nSAL $0x2,%RCX                            | 1     | 0     | 0  | 0    | 0    | 1     | 0    | 0  | 1       | 1\nMOV 0x28(%RBP),%R11                      | 1     | 0     | 0  | 1    | 0    | 0     | 0    | 0  | 4       | 1\nADD %RDI,%RCX                            | 1     | 0     | 0  | 0    | 0    | 0.50  | 0.50 | 0  | 1       | 0.50\nMOV 0x20(%RBP),%R10                      | 1     | 0     | 0  | 1    | 0    | 0     | 0    | 0  | 4       | 1\nCMP $0x2,%EDX                            | 1     | 0     | 0  | 0    | 0    | 0.50  | 0.50 | 0  | 1       | 0.50\nMOV 0x18(%RBP),%RSI                      | 1     | 0     | 0  | 1    | 0    | 0     | 0    | 0  | 4       | 1\nMOV 0x8(%RBP),%RDI                       | 1     | 0     | 0  | 1    | 0    | 0     | 0    | 0  | 4       | 1\nMOV (%RBP),%R13                          | 1     | 0     | 0  | 1    | 0    | 0     | 0    | 0  | 4       | 1\nJLE 1bc1e <copy_x_face_._omp_fn.0+0x2ce> | 1     | 0     | 0  | 0    | 0    | 0     | 1    | 0  | 0       | 1-2\nMOVSXD %R8D,%R14                         | 1     | 0     | 0  | 0    | 0    | 1     | 0    | 0  | 1       | 1\nLEA (%RBX),%R12                          | 1     | 0     | 0  | 0    | 0    | 0.50  | 0.50 | 0  | 1       | 0.50\nIMUL %R14,%R12                           | 1     | 0     | 0  | 0    | 0    | 1     | 0    | 0  | 5       | 2\nLEA -0x3(%RDX),%EBP                      | 1     | 0     | 0  | 0    | 0    | 0.50  | 0.50 | 0  | 1       | 0.50\nLEA (%RBP,%RBP,4),%RDX                   | 1     | 0     | 0  | 0    | 0    | 0.50  | 0.50 | 0  | 1       | 0.50\nLEA (%RDX,%R10,1),%R10                   | 1     | 0     | 0  | 0    | 0    | 0.50  | 0.50 | 0  | 1       | 0.50\nADD %R12,%R9                             | 1     | 0     | 0  | 0    | 0    | 0.50  | 0.50 | 0  | 1       | 0.50\nLEA (,%RSI,8),%R12                       | 1     | 0     | 0  | 0    | 0    | 0.50  | 0.50 | 0  | 1       | 0.50\nIMUL %R14,%RSI                           | 1     | 0     | 0  | 0    | 0    | 1     | 0    | 0  | 5       | 2\nLEA 0x1(%RAX),%R14D                      | 1     | 0     | 0  | 0    | 0    | 0.50  | 0.50 | 0  | 1       | 0.50\nLEA (%RCX,%R11,1),%RAX                   | 1     | 0     | 0  | 0    | 0    | 0.50  | 0.50 | 0  | 1       | 0.50\nLEA 0x8(%R13,%RAX,8),%R13                | 1     | 0     | 0  | 0    | 0    | 1     | 0    | 0  | 1       | 1\nADD %RSI,%R10                            | 1     | 0     | 0  | 0    | 0    | 0.50  | 0.50 | 0  | 1       | 0.50\nLEA (,%R11,8),%RSI                       | 1     | 0     | 0  | 0    | 0    | 0.50  | 0.50 | 0  | 1       | 0.50\nLEA 0x1(%RBP),%R11                       | 1     | 0     | 0  | 0    | 0    | 0.50  | 0.50 | 0  | 1       | 0.50\nLEA 0x58(%RDI,%R10,8),%RDI               | 1     | 0     | 0  | 0    | 0    | 1     | 0    | 0  | 1       | 1\nIMUL $-0x28,%R11,%RBP                    | 1     | 0     | 0  | 0    | 0    | 1     | 0    | 0  | 5       | 2\nNOPW (%RAX,%RAX,1)                       | 1     | 0     | 0  | 0    | 0    | 0.50  | 0.50 | 0  | 0       | 0.50\nPOP %RBX                                 | 2     | 0     | 0  | 0.50 | 0.50 | 0     | 0    | 1  | 0       | 1\nPOP %RBP                                 | 2     | 0     | 0  | 0.50 | 0.50 | 0     | 0    | 1  | 0       | 1\nPOP %R12                                 | 2     | 0     | 0  | 0.50 | 0.50 | 0     | 0    | 1  | 0       | 1\nPOP %R13                                 | 2     | 0     | 0  | 0.50 | 0.50 | 0     | 0    | 1  | 0       | 1\nPOP %R14                                 | 2     | 0     | 0  | 0.50 | 0.50 | 0     | 0    | 1  | 0       | 1\nRET\nADD $0x1,%EAX                            | 1     | 0     | 0  | 0    | 0    | 0.50  | 0.50 | 0  | 1       | 0.50\nXOR %EDX,%EDX\nJMP 1b97d <copy_x_face_._omp_fn.0+0x2d>  | 1     | 0     | 0  | 0    | 0    | 0     | 1    | 0  | 0       | 2\nNOPW %CS:(%RAX,%RAX,1)                   | 1     | 0     | 0  | 0    | 0    | 0.50  | 0.50 | 0  | 0       | 0.50\nNOPL (%RAX)                              | 1     | 0     | 0  | 0    | 0    | 0.50  | 0.50 | 0  | 0       | 0.50\n",
        },
      },
      header = {
        "Warnings:\nget_path_cqa_results:\n - Detected a function call instruction: ignoring called function instructions.\nRerun with --follow-calls=append to include them to analysis  or with --follow-calls=inline to simulate inlining.\n",
        "0% of peak computational performance is used (0.00 out of 4.00 FLOP per cycle (GFLOPS @ 1GHz))",
      },
      brief = {
      },
      gain = {
        {
          workaround = " - Try another compiler or update/tune your current one\n - Make array accesses unit-stride:\n  * If your function streams arrays of structures (AoS), try to use structures of arrays instead (SoA):\ndo i a(i)%x = b(i)%x (slow, non stride 1) => do i a%x(i) = b%x(i) (fast, stride 1)\n",
          details = "All SSE/AVX instructions are used in scalar version (process only one data element in vector registers).\nSince your execution units are vector units, only a vectorized function can use their full power.\n",
          title = "Vectorization",
          txt = "Your function is not vectorized.\nOnly 9% of vector register length is used (average across all SSE/AVX instructions).\nBy vectorizing your function, you can lower the cost of an iteration from 37.00 to 2.42 cycles (15.30x speedup).",
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
      "The function is defined in /users/user2222/NPB3.4.1-MZ/NPB3.4-MZ-MPI/LU-MZ/exch_qbc.f90:253-255.\n",
      "Warnings:\nget_cqa_results:\n - Ignoring paths for analysis\n",
    },
  },
}
