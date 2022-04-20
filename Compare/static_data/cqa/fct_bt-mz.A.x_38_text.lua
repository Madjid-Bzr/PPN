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
          details = "These instructions generate more than one micro-operation and only one of them can be decoded during a cycle and the extra micro-operations increase pressure on execution units.\n - DIV: 2 occurrences\n - RET: 1 occurrences\n - VZEROUPPER: 1 occurrences\n",
          title = "Complex instructions",
          txt = "Detected COMPLEX INSTRUCTIONS.\n",
        },
        {
          workaround = "Avoid mixing data with different types. In particular, check if the type of constants is the same as array elements.",
          details = " - CLTQ: 3 occurrences\n",
          title = "Conversion instructions",
          txt = "Detected expensive conversion instructions.",
        },
        {
          title = "Type of elements and instruction set",
          txt = "No instructions are processing arithmetic or math operations on FP elements. This function is probably writing/copying data or processing integer elements.",
        },
        {
          title = "Matching between your function (in the source code) and the binary function",
          txt = "The binary function does not contain any FP arithmetical operations.\nThe binary function is loading 100 bytes.\nThe binary function is storing 116 bytes.",
        },
      },
      expert = {
        {
          title = "General properties",
          txt = "nb instructions    : 108\nnb uops            : 134\nloop length        : 393\nused x86 registers : 16\nused mmx registers : 0\nused xmm registers : 0\nused ymm registers : 0\nused zmm registers : 0\nnb stack references: 19\n",
        },
        {
          title = "Front-end",
          txt = "MACRO FUSION NOT POSSIBLE\nFIT IN UOP CACHE\nmicro-operation queue: 33.50 cycles\nfront end            : 33.50 cycles\n",
        },
        {
          title = "Back-end",
          txt = "       | P0    | P1    | P2    | P3    | P4    | P5\n------------------------------------------------------\nuops   | 17.00 | 17.00 | 23.50 | 23.50 | 26.00 | 17.00\ncycles | 17.00 | 17.00 | 23.50 | 23.50 | 26.00 | 17.00\n\nCycles executing div or sqrt instructions: 22.00-36.00\n",
        },
        {
          title = "Cycles summary",
          txt = "Front-end : 33.50\nDispatch  : 26.00\nDIV/SQRT  : 22.00-36.00\nOverall L1: 33.50-36.00\n",
        },
        {
          title = "Vectorization ratios",
          txt = "all     : 2%\nload    : 0%\nstore   : 0%\nmul     : NA (no mul vectorizable/vectorized instructions)\nadd-sub : NA (no add-sub vectorizable/vectorized instructions)\nfma     : NA (no fma vectorizable/vectorized instructions)\ndiv/sqrt: 0%\nother   : 8%\n",
        },
        {
          title = "Vector efficiency ratios",
          txt = "all     : 41%\nload    : 50%\nstore   : 40%\nmul     : NA (no mul vectorizable/vectorized instructions)\nadd-sub : NA (no add-sub vectorizable/vectorized instructions)\nfma     : NA (no fma vectorizable/vectorized instructions)\ndiv/sqrt: 25%\nother   : 41%\n",
        },
        {
          title = "Cycles and memory resources usage",
          txt = "Assuming all data fit into the L1 cache, each call to the function takes 36.00 cycles. At this rate:\n - 8% of peak load performance is reached (2.78 out of 32.00 bytes loaded per cycle (GB/s @ 1GHz))\n - 20% of peak store performance is reached (3.22 out of 16.00 bytes stored per cycle (GB/s @ 1GHz))\n",
        },
        {
          title = "Front-end bottlenecks",
          txt = "Found no such bottlenecks.",
        },
        {
          title = "ASM code",
          txt = "In the binary file, the address of the function is: 1dec0\n\nInstruction                      | Nb FU | P0   | P1   | P2   | P3   | P4 | P5   | Latency | Recip. throughput\n--------------------------------------------------------------------------------------------------------------\nPUSH %RBP                        | 1     | 0    | 0    | 0.50 | 0.50 | 1  | 0    | 3       | 1\nMOV %RSP,%RBP                    | 1     | 0.33 | 0.33 | 0    | 0    | 0  | 0.33 | 1       | 0.33\nPUSH %R15                        | 1     | 0    | 0    | 0.50 | 0.50 | 1  | 0    | 3       | 1\nPUSH %R14                        | 1     | 0    | 0    | 0.50 | 0.50 | 1  | 0    | 3       | 1\nPUSH %R13                        | 1     | 0    | 0    | 0.50 | 0.50 | 1  | 0    | 3       | 1\nPUSH %R12                        | 1     | 0    | 0    | 0.50 | 0.50 | 1  | 0    | 3       | 1\nPUSH %RBX                        | 1     | 0    | 0    | 0.50 | 0.50 | 1  | 0    | 3       | 1\nAND $-0x20,%RSP                  | 1     | 0.33 | 0.33 | 0    | 0    | 0  | 0.33 | 1       | 0.33\nADD $-0x80,%RSP                  | 1     | 0.33 | 0.33 | 0    | 0    | 0  | 0.33 | 1       | 0.33\nMOV 0x20(%RDI),%RAX              | 1     | 0    | 0    | 0.50 | 0.50 | 0  | 0    | 2       | 0.50\nMOV 0x18(%RDI),%RDX              | 1     | 0    | 0    | 0.50 | 0.50 | 0  | 0    | 2       | 0.50\nMOV (%RAX),%ECX                  | 1     | 0    | 0    | 0.50 | 0.50 | 0  | 0    | 2       | 0.50\nMOV (%RDX),%R13D                 | 1     | 0    | 0    | 0.50 | 0.50 | 0  | 0    | 2       | 0.50\nCMP $0x2,%ECX                    | 1     | 0.33 | 0.33 | 0    | 0    | 0  | 0.33 | 1       | 0.33\nJLE 1e520 <add_._omp_fn.0+0x660> | 1     | 0    | 0    | 0    | 0    | 0  | 1    | 0       | 1-2\nCMP $0x2,%R13D                   | 1     | 0.33 | 0.33 | 0    | 0    | 0  | 0.33 | 1       | 0.33\nJLE 1e520 <add_._omp_fn.0+0x660> | 1     | 0    | 0    | 0    | 0    | 0  | 1    | 0       | 1-2\nLEA -0x2(%RCX),%R15D             | 1     | 0.50 | 0.50 | 0    | 0    | 0  | 0    | 1       | 0.50\nMOV %RDI,%RBX                    | 1     | 0.33 | 0.33 | 0    | 0    | 0  | 0.33 | 1       | 0.33\nCALL 2300 <@plt_start@+0x2e0>    | 3     | 0    | 0    | 0.50 | 0.50 | 1  | 1    | 0       | 2\nLEA -0x2(%R13),%R12D             | 1     | 0.50 | 0.50 | 0    | 0    | 0  | 0    | 1       | 0.50\nMOV %EAX,%R14D                   | 1     | 0.33 | 0.33 | 0    | 0    | 0  | 0.33 | 1       | 0.33\nCALL 22a0 <@plt_start@+0x280>    | 3     | 0    | 0    | 0.50 | 0.50 | 1  | 1    | 0       | 2\nXOR %EDX,%EDX                    | 1     | 0    | 0    | 0    | 0    | 0  | 0    | 0       | 0.25\nMOV %EAX,%ESI                    | 1     | 0.33 | 0.33 | 0    | 0    | 0  | 0.33 | 1       | 0.33\nMOV %R15D,%EAX                   | 1     | 0.33 | 0.33 | 0    | 0    | 0  | 0.33 | 1       | 0.33\nIMUL %R12D,%EAX                  | 1     | 0    | 1    | 0    | 0    | 0  | 0    | 3       | 1\nDIV %R14D                        | 10    | 0    | 0    | 0    | 0    | 0  | 0    | 20-28   | 11-18\nMOV %EAX,%R8D                    | 1     | 0.33 | 0.33 | 0    | 0    | 0  | 0.33 | 1       | 0.33\nCMP %EDX,%ESI                    | 1     | 0.33 | 0.33 | 0    | 0    | 0  | 0.33 | 1       | 0.33\nJB 1e7e9 <add_._omp_fn.0+0x929>  | 1     | 0    | 0    | 0    | 0    | 0  | 1    | 0       | 1-2\nIMUL %R8D,%ESI                   | 1     | 0    | 1    | 0    | 0    | 0  | 0    | 3       | 1\nLEA (%RSI,%RDX,1),%EAX           | 1     | 0.50 | 0.50 | 0    | 0    | 0  | 0    | 1       | 0.50\nLEA (%R8,%RAX,1),%EDI            | 1     | 0.50 | 0.50 | 0    | 0    | 0  | 0    | 1       | 0.50\nCMP %EDI,%EAX                    | 1     | 0.33 | 0.33 | 0    | 0    | 0  | 0.33 | 1       | 0.33\nJAE 1e520 <add_._omp_fn.0+0x660> | 1     | 0    | 0    | 0    | 0    | 0  | 1    | 0       | 1-2\nMOV 0x38(%RBX),%RCX              | 1     | 0    | 0    | 0.50 | 0.50 | 0  | 0    | 2       | 0.50\nLEA -0x1(%R13),%R13D             | 1     | 0.50 | 0.50 | 0    | 0    | 0  | 0    | 1       | 0.50\nXOR %EDX,%EDX                    | 1     | 0    | 0    | 0    | 0    | 0  | 0    | 0       | 0.25\nDIV %R12D                        | 10    | 0    | 0    | 0    | 0    | 0  | 0    | 20-28   | 11-18\nMOV 0x10(%RBX),%R12              | 1     | 0    | 0    | 0.50 | 0.50 | 0  | 0    | 2       | 0.50\nMOV %R13D,0x48(%RSP)             | 1     | 0    | 0    | 0.50 | 0.50 | 1  | 0    | 3       | 1\nMOV 0x50(%RBX),%R9               | 1     | 0    | 0    | 0.50 | 0.50 | 0  | 0    | 2       | 0.50\nMOV 0x48(%RBX),%R10              | 1     | 0    | 0    | 0.50 | 0.50 | 0  | 0    | 2       | 0.50\nMOV %RCX,0x60(%RSP)              | 1     | 0    | 0    | 0.50 | 0.50 | 1  | 0    | 3       | 1\nMOV 0x40(%RBX),%R11              | 1     | 0    | 0    | 0.50 | 0.50 | 0  | 0    | 2       | 0.50\nMOV (%R12),%ECX                  | 1     | 0    | 0    | 0.50 | 0.50 | 0  | 0    | 2       | 0.50\nMOV 0x30(%RBX),%R15              | 1     | 0    | 0    | 0.50 | 0.50 | 0  | 0    | 2       | 0.50\nMOV %R9,0x78(%RSP)               | 1     | 0    | 0    | 0.50 | 0.50 | 1  | 0    | 3       | 1\nMOV 0x28(%RBX),%R14              | 1     | 0    | 0    | 0.50 | 0.50 | 0  | 0    | 2       | 0.50\nMOV %R10,0x70(%RSP)              | 1     | 0    | 0    | 0.50 | 0.50 | 1  | 0    | 3       | 1\nMOV %R11,0x68(%RSP)              | 1     | 0    | 0    | 0.50 | 0.50 | 1  | 0    | 3       | 1\nMOV (%RBX),%R10                  | 1     | 0    | 0    | 0.50 | 0.50 | 0  | 0    | 2       | 0.50\nLEA -0x2(%RCX),%R13D             | 1     | 0.50 | 0.50 | 0    | 0    | 0  | 0    | 1       | 0.50\nMOV 0x8(%RBX),%R11               | 1     | 0    | 0    | 0.50 | 0.50 | 0  | 0    | 2       | 0.50\nMOV %R15,0x58(%RSP)              | 1     | 0    | 0    | 0.50 | 0.50 | 1  | 0    | 3       | 1\nMOV %R14,0x50(%RSP)              | 1     | 0    | 0    | 0.50 | 0.50 | 1  | 0    | 3       | 1\nLEA 0x1(%RAX),%ESI               | 1     | 0.50 | 0.50 | 0    | 0    | 0  | 0    | 1       | 0.50\nLEA 0x1(%RDX),%R9D               | 1     | 0.50 | 0.50 | 0    | 0    | 0  | 0    | 1       | 0.50\nMOV %ESI,0x1c(%RSP)              | 1     | 0    | 0    | 0.50 | 0.50 | 1  | 0    | 3       | 1\nTEST %R13D,%R13D                 | 1     | 0.33 | 0.33 | 0    | 0    | 0  | 0.33 | 1       | 0.33\nJLE 1e520 <add_._omp_fn.0+0x660> | 1     | 0    | 0    | 0    | 0    | 0  | 1    | 0       | 1-2\nLEA -0x1(%R8),%EBX               | 1     | 0.50 | 0.50 | 0    | 0    | 0  | 0    | 1       | 0.50\nMOV %R13D,%EDI                   | 1     | 0.33 | 0.33 | 0    | 0    | 0  | 0.33 | 1       | 0.33\nMOV %R13D,%R8D                   | 1     | 0.33 | 0.33 | 0    | 0    | 0  | 0.33 | 1       | 0.33\nLEA -0x3(%RCX),%ECX              | 1     | 0.50 | 0.50 | 0    | 0    | 0  | 0    | 1       | 0.50\nAND $-0x4,%EDI                   | 1     | 0.33 | 0.33 | 0    | 0    | 0  | 0.33 | 1       | 0.33\nSHR $0x2,%R8D                    | 1     | 0.50 | 0    | 0    | 0    | 0  | 0.50 | 1       | 0.50\nMOV %EBX,0x4c(%RSP)              | 1     | 0    | 0    | 0.50 | 0.50 | 1  | 0    | 3       | 1\nLEA 0x1(%RDI),%EAX               | 1     | 0.50 | 0.50 | 0    | 0    | 0  | 0    | 1       | 0.50\nMOV %EDI,0x40(%RSP)              | 1     | 0    | 0    | 0.50 | 0.50 | 1  | 0    | 3       | 1\nLEA (%R8,%R8,4),%R15             | 1     | 0.50 | 0.50 | 0    | 0    | 0  | 0    | 1       | 0.50\nCLTQ                             | 1     | 0    | 0    | 0    | 0    | 0  | 0    | 1       | 0.50\nMOV %ECX,0x44(%RSP)              | 1     | 0    | 0    | 0.50 | 0.50 | 1  | 0    | 3       | 1\nLEA (%RAX,%RAX,4),%R14           | 1     | 0.50 | 0.50 | 0    | 0    | 0  | 0    | 1       | 0.50\nSAL $0x5,%R15                    | 1     | 0.50 | 0    | 0    | 0    | 0  | 0.50 | 1       | 0.50\nLEA 0x2(%RDI),%EAX               | 1     | 0.50 | 0.50 | 0    | 0    | 0  | 0    | 1       | 0.50\nMOV %R14,0x30(%RSP)              | 1     | 0    | 0    | 0.50 | 0.50 | 1  | 0    | 3       | 1\nMOVSXD %ESI,%R14                 | 1     | 0.33 | 0.33 | 0    | 0    | 0  | 0.33 | 1       | 0.33\nMOV %EAX,0x3c(%RSP)              | 1     | 0    | 0    | 0.50 | 0.50 | 1  | 0    | 3       | 1\nLEA (%RCX,%RCX,4),%RBX           | 1     | 0.50 | 0.50 | 0    | 0    | 0  | 0    | 1       | 0.50\nCLTQ                             | 1     | 0    | 0    | 0    | 0    | 0  | 0    | 1       | 0.50\nLEA (%RAX,%RAX,4),%RDX           | 1     | 0.50 | 0.50 | 0    | 0    | 0  | 0    | 1       | 0.50\nMOV %RBX,0x10(%RSP)              | 1     | 0    | 0    | 0.50 | 0.50 | 1  | 0    | 3       | 1\nLEA 0x3(%RDI),%EAX               | 1     | 0.50 | 0.50 | 0    | 0    | 0  | 0    | 1       | 0.50\nMOV %RDX,0x28(%RSP)              | 1     | 0    | 0    | 0.50 | 0.50 | 1  | 0    | 3       | 1\nMOV %EAX,0x38(%RSP)              | 1     | 0    | 0    | 0.50 | 0.50 | 1  | 0    | 3       | 1\nLEA 0x58(%R10),%RSI              | 1     | 0.50 | 0.50 | 0    | 0    | 0  | 0    | 1       | 0.50\nCLTQ                             | 1     | 0    | 0    | 0    | 0    | 0  | 0    | 1       | 0.50\nLEA (%RAX,%RAX,4),%R12           | 1     | 0.50 | 0.50 | 0    | 0    | 0  | 0    | 1       | 0.50\nMOV %RSI,0x8(%RSP)               | 1     | 0    | 0    | 0.50 | 0.50 | 1  | 0    | 3       | 1\nMOV %R12,0x20(%RSP)              | 1     | 0    | 0    | 0.50 | 0.50 | 1  | 0    | 3       | 1\nXOR %R12D,%R12D                  | 1     | 0    | 0    | 0    | 0    | 0  | 0    | 0       | 0.25\nNOPW %CS:(%RAX,%RAX,1)           | 1     | 0    | 0    | 0    | 0    | 0  | 0    | 0       | 0.25\nVZEROUPPER                       | 4     | 0    | 0    | 0    | 0    | 0  | 0    | 2       | 1\nLEA -0x28(%RBP),%RSP             | 1     | 0.50 | 0.50 | 0    | 0    | 0  | 0    | 1       | 0.50\nPOP %RBX                         | 1     | 0    | 0    | 0.50 | 0.50 | 0  | 0    | 2       | 0.50\nPOP %R12                         | 1     | 0    | 0    | 0.50 | 0.50 | 0  | 0    | 2       | 0.50\nPOP %R13                         | 1     | 0    | 0    | 0.50 | 0.50 | 0  | 0    | 2       | 0.50\nPOP %R14                         | 1     | 0    | 0    | 0.50 | 0.50 | 0  | 0    | 2       | 0.50\nPOP %R15                         | 1     | 0    | 0    | 0.50 | 0.50 | 0  | 0    | 2       | 0.50\nPOP %RBP                         | 1     | 0    | 0    | 0.50 | 0.50 | 0  | 0    | 2       | 0.50\nRET                              | 2     | 0    | 0    | 0.50 | 0.50 | 0  | 1    | 0       | 2\nADD $0x1,%R8D                    | 1     | 0.33 | 0.33 | 0    | 0    | 0  | 0.33 | 1       | 0.33\nXOR %EDX,%EDX                    | 1     | 0    | 0    | 0    | 0    | 0  | 0    | 0       | 0.25\nJMP 1df26 <add_._omp_fn.0+0x66>  | 1     | 0    | 0    | 0    | 0    | 0  | 1    | 0       | 2\nNOPW %CS:(%RAX,%RAX,1)           | 1     | 0    | 0    | 0    | 0    | 0  | 0    | 0       | 0.25\nNOP                              | 1     | 0    | 0    | 0    | 0    | 0  | 0    | 0       | 0.25\n",
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
          workaround = " - Try another compiler or update/tune your current one\n - Make array accesses unit-stride:\n  * If your function streams arrays of structures (AoS), try to use structures of arrays instead (SoA):\ndo i a(i)%x = b(i)%x (slow, non stride 1) => do i a%x(i) = b%x(i) (fast, stride 1)\n",
          details = "Store and arithmetical SSE/AVX instructions are used in scalar version (process only one data element in vector registers).\nSince your execution units are vector units, only a vectorized function can use their full power.\n",
          title = "Vectorization",
          txt = "Your function is probably not vectorized.\nOnly 41% of vector register length is used (average across all SSE/AVX instructions).\nBy vectorizing your function, you can lower the cost of an iteration from 36.00 to 27.14 cycles (1.33x speedup).",
        },
        {
          workaround = "Reduce the number of division or square root instructions:\n - If denominator is constant over iterations, use reciprocal (replace x/y with x*(1/y)). Check precision impact. This will be done by your compiler with ffast-math or Ofast\n",
          title = "Execution units bottlenecks",
          txt = "Performance is limited by execution of divide and square root operations (the divide/square root unit is a bottleneck).\n\nBy removing all these bottlenecks, you can lower the cost of an iteration from 36.00 to 33.50 cycles (1.07x speedup).\n",
        },
      },
      potential = {
        {
          title = "Expensive FP math instructions/calls",
          txt = "Detected performance impact from expensive FP math instructions/calls.\nBy removing/reexpressing them, you can lower the cost of an iteration from 36.00 to 29.00 cycles (1.24x speedup).",
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
          details = "These instructions generate more than one micro-operation and only one of them can be decoded during a cycle and the extra micro-operations increase pressure on execution units.\n - DIV: 2 occurrences\n - RET: 1 occurrences\n - VZEROUPPER: 1 occurrences\n",
          title = "Complex instructions",
          txt = "Detected COMPLEX INSTRUCTIONS.\n",
        },
        {
          workaround = "Avoid mixing data with different types. In particular, check if the type of constants is the same as array elements.",
          details = " - CLTQ: 3 occurrences\n",
          title = "Conversion instructions",
          txt = "Detected expensive conversion instructions.",
        },
        {
          title = "Type of elements and instruction set",
          txt = "No instructions are processing arithmetic or math operations on FP elements. This function is probably writing/copying data or processing integer elements.",
        },
        {
          title = "Matching between your function (in the source code) and the binary function",
          txt = "The binary function does not contain any FP arithmetical operations.\nThe binary function is loading 100 bytes.\nThe binary function is storing 116 bytes.",
        },
      },
      expert = {
        {
          title = "General properties",
          txt = "nb instructions    : 108\nnb uops            : 134\nloop length        : 393\nused x86 registers : 16\nused mmx registers : 0\nused xmm registers : 0\nused ymm registers : 0\nused zmm registers : 0\nnb stack references: 19\n",
        },
        {
          title = "Front-end",
          txt = "MACRO FUSION NOT POSSIBLE\nFIT IN UOP CACHE\nmicro-operation queue: 33.50 cycles\nfront end            : 33.50 cycles\n",
        },
        {
          title = "Back-end",
          txt = "       | P0    | P1    | P2    | P3    | P4    | P5\n------------------------------------------------------\nuops   | 17.00 | 17.00 | 23.50 | 23.50 | 26.00 | 17.00\ncycles | 17.00 | 17.00 | 23.50 | 23.50 | 26.00 | 17.00\n\nCycles executing div or sqrt instructions: 22.00-36.00\n",
        },
        {
          title = "Cycles summary",
          txt = "Front-end : 33.50\nDispatch  : 26.00\nDIV/SQRT  : 22.00-36.00\nOverall L1: 33.50-36.00\n",
        },
        {
          title = "Vectorization ratios",
          txt = "all     : 2%\nload    : 0%\nstore   : 0%\nmul     : NA (no mul vectorizable/vectorized instructions)\nadd-sub : NA (no add-sub vectorizable/vectorized instructions)\nfma     : NA (no fma vectorizable/vectorized instructions)\ndiv/sqrt: 0%\nother   : 8%\n",
        },
        {
          title = "Vector efficiency ratios",
          txt = "all     : 41%\nload    : 50%\nstore   : 40%\nmul     : NA (no mul vectorizable/vectorized instructions)\nadd-sub : NA (no add-sub vectorizable/vectorized instructions)\nfma     : NA (no fma vectorizable/vectorized instructions)\ndiv/sqrt: 25%\nother   : 41%\n",
        },
        {
          title = "Cycles and memory resources usage",
          txt = "Assuming all data fit into the L1 cache, each call to the function takes 36.00 cycles. At this rate:\n - 8% of peak load performance is reached (2.78 out of 32.00 bytes loaded per cycle (GB/s @ 1GHz))\n - 20% of peak store performance is reached (3.22 out of 16.00 bytes stored per cycle (GB/s @ 1GHz))\n",
        },
        {
          title = "Front-end bottlenecks",
          txt = "Found no such bottlenecks.",
        },
        {
          title = "ASM code",
          txt = "In the binary file, the address of the function is: 1dec0\n\nInstruction                      | Nb FU | P0   | P1   | P2   | P3   | P4 | P5   | Latency | Recip. throughput\n--------------------------------------------------------------------------------------------------------------\nPUSH %RBP                        | 1     | 0    | 0    | 0.50 | 0.50 | 1  | 0    | 3       | 1\nMOV %RSP,%RBP                    | 1     | 0.33 | 0.33 | 0    | 0    | 0  | 0.33 | 1       | 0.33\nPUSH %R15                        | 1     | 0    | 0    | 0.50 | 0.50 | 1  | 0    | 3       | 1\nPUSH %R14                        | 1     | 0    | 0    | 0.50 | 0.50 | 1  | 0    | 3       | 1\nPUSH %R13                        | 1     | 0    | 0    | 0.50 | 0.50 | 1  | 0    | 3       | 1\nPUSH %R12                        | 1     | 0    | 0    | 0.50 | 0.50 | 1  | 0    | 3       | 1\nPUSH %RBX                        | 1     | 0    | 0    | 0.50 | 0.50 | 1  | 0    | 3       | 1\nAND $-0x20,%RSP                  | 1     | 0.33 | 0.33 | 0    | 0    | 0  | 0.33 | 1       | 0.33\nADD $-0x80,%RSP                  | 1     | 0.33 | 0.33 | 0    | 0    | 0  | 0.33 | 1       | 0.33\nMOV 0x20(%RDI),%RAX              | 1     | 0    | 0    | 0.50 | 0.50 | 0  | 0    | 2       | 0.50\nMOV 0x18(%RDI),%RDX              | 1     | 0    | 0    | 0.50 | 0.50 | 0  | 0    | 2       | 0.50\nMOV (%RAX),%ECX                  | 1     | 0    | 0    | 0.50 | 0.50 | 0  | 0    | 2       | 0.50\nMOV (%RDX),%R13D                 | 1     | 0    | 0    | 0.50 | 0.50 | 0  | 0    | 2       | 0.50\nCMP $0x2,%ECX                    | 1     | 0.33 | 0.33 | 0    | 0    | 0  | 0.33 | 1       | 0.33\nJLE 1e520 <add_._omp_fn.0+0x660> | 1     | 0    | 0    | 0    | 0    | 0  | 1    | 0       | 1-2\nCMP $0x2,%R13D                   | 1     | 0.33 | 0.33 | 0    | 0    | 0  | 0.33 | 1       | 0.33\nJLE 1e520 <add_._omp_fn.0+0x660> | 1     | 0    | 0    | 0    | 0    | 0  | 1    | 0       | 1-2\nLEA -0x2(%RCX),%R15D             | 1     | 0.50 | 0.50 | 0    | 0    | 0  | 0    | 1       | 0.50\nMOV %RDI,%RBX                    | 1     | 0.33 | 0.33 | 0    | 0    | 0  | 0.33 | 1       | 0.33\nCALL 2300 <@plt_start@+0x2e0>    | 3     | 0    | 0    | 0.50 | 0.50 | 1  | 1    | 0       | 2\nLEA -0x2(%R13),%R12D             | 1     | 0.50 | 0.50 | 0    | 0    | 0  | 0    | 1       | 0.50\nMOV %EAX,%R14D                   | 1     | 0.33 | 0.33 | 0    | 0    | 0  | 0.33 | 1       | 0.33\nCALL 22a0 <@plt_start@+0x280>    | 3     | 0    | 0    | 0.50 | 0.50 | 1  | 1    | 0       | 2\nXOR %EDX,%EDX                    | 1     | 0    | 0    | 0    | 0    | 0  | 0    | 0       | 0.25\nMOV %EAX,%ESI                    | 1     | 0.33 | 0.33 | 0    | 0    | 0  | 0.33 | 1       | 0.33\nMOV %R15D,%EAX                   | 1     | 0.33 | 0.33 | 0    | 0    | 0  | 0.33 | 1       | 0.33\nIMUL %R12D,%EAX                  | 1     | 0    | 1    | 0    | 0    | 0  | 0    | 3       | 1\nDIV %R14D                        | 10    | 0    | 0    | 0    | 0    | 0  | 0    | 20-28   | 11-18\nMOV %EAX,%R8D                    | 1     | 0.33 | 0.33 | 0    | 0    | 0  | 0.33 | 1       | 0.33\nCMP %EDX,%ESI                    | 1     | 0.33 | 0.33 | 0    | 0    | 0  | 0.33 | 1       | 0.33\nJB 1e7e9 <add_._omp_fn.0+0x929>  | 1     | 0    | 0    | 0    | 0    | 0  | 1    | 0       | 1-2\nIMUL %R8D,%ESI                   | 1     | 0    | 1    | 0    | 0    | 0  | 0    | 3       | 1\nLEA (%RSI,%RDX,1),%EAX           | 1     | 0.50 | 0.50 | 0    | 0    | 0  | 0    | 1       | 0.50\nLEA (%R8,%RAX,1),%EDI            | 1     | 0.50 | 0.50 | 0    | 0    | 0  | 0    | 1       | 0.50\nCMP %EDI,%EAX                    | 1     | 0.33 | 0.33 | 0    | 0    | 0  | 0.33 | 1       | 0.33\nJAE 1e520 <add_._omp_fn.0+0x660> | 1     | 0    | 0    | 0    | 0    | 0  | 1    | 0       | 1-2\nMOV 0x38(%RBX),%RCX              | 1     | 0    | 0    | 0.50 | 0.50 | 0  | 0    | 2       | 0.50\nLEA -0x1(%R13),%R13D             | 1     | 0.50 | 0.50 | 0    | 0    | 0  | 0    | 1       | 0.50\nXOR %EDX,%EDX                    | 1     | 0    | 0    | 0    | 0    | 0  | 0    | 0       | 0.25\nDIV %R12D                        | 10    | 0    | 0    | 0    | 0    | 0  | 0    | 20-28   | 11-18\nMOV 0x10(%RBX),%R12              | 1     | 0    | 0    | 0.50 | 0.50 | 0  | 0    | 2       | 0.50\nMOV %R13D,0x48(%RSP)             | 1     | 0    | 0    | 0.50 | 0.50 | 1  | 0    | 3       | 1\nMOV 0x50(%RBX),%R9               | 1     | 0    | 0    | 0.50 | 0.50 | 0  | 0    | 2       | 0.50\nMOV 0x48(%RBX),%R10              | 1     | 0    | 0    | 0.50 | 0.50 | 0  | 0    | 2       | 0.50\nMOV %RCX,0x60(%RSP)              | 1     | 0    | 0    | 0.50 | 0.50 | 1  | 0    | 3       | 1\nMOV 0x40(%RBX),%R11              | 1     | 0    | 0    | 0.50 | 0.50 | 0  | 0    | 2       | 0.50\nMOV (%R12),%ECX                  | 1     | 0    | 0    | 0.50 | 0.50 | 0  | 0    | 2       | 0.50\nMOV 0x30(%RBX),%R15              | 1     | 0    | 0    | 0.50 | 0.50 | 0  | 0    | 2       | 0.50\nMOV %R9,0x78(%RSP)               | 1     | 0    | 0    | 0.50 | 0.50 | 1  | 0    | 3       | 1\nMOV 0x28(%RBX),%R14              | 1     | 0    | 0    | 0.50 | 0.50 | 0  | 0    | 2       | 0.50\nMOV %R10,0x70(%RSP)              | 1     | 0    | 0    | 0.50 | 0.50 | 1  | 0    | 3       | 1\nMOV %R11,0x68(%RSP)              | 1     | 0    | 0    | 0.50 | 0.50 | 1  | 0    | 3       | 1\nMOV (%RBX),%R10                  | 1     | 0    | 0    | 0.50 | 0.50 | 0  | 0    | 2       | 0.50\nLEA -0x2(%RCX),%R13D             | 1     | 0.50 | 0.50 | 0    | 0    | 0  | 0    | 1       | 0.50\nMOV 0x8(%RBX),%R11               | 1     | 0    | 0    | 0.50 | 0.50 | 0  | 0    | 2       | 0.50\nMOV %R15,0x58(%RSP)              | 1     | 0    | 0    | 0.50 | 0.50 | 1  | 0    | 3       | 1\nMOV %R14,0x50(%RSP)              | 1     | 0    | 0    | 0.50 | 0.50 | 1  | 0    | 3       | 1\nLEA 0x1(%RAX),%ESI               | 1     | 0.50 | 0.50 | 0    | 0    | 0  | 0    | 1       | 0.50\nLEA 0x1(%RDX),%R9D               | 1     | 0.50 | 0.50 | 0    | 0    | 0  | 0    | 1       | 0.50\nMOV %ESI,0x1c(%RSP)              | 1     | 0    | 0    | 0.50 | 0.50 | 1  | 0    | 3       | 1\nTEST %R13D,%R13D                 | 1     | 0.33 | 0.33 | 0    | 0    | 0  | 0.33 | 1       | 0.33\nJLE 1e520 <add_._omp_fn.0+0x660> | 1     | 0    | 0    | 0    | 0    | 0  | 1    | 0       | 1-2\nLEA -0x1(%R8),%EBX               | 1     | 0.50 | 0.50 | 0    | 0    | 0  | 0    | 1       | 0.50\nMOV %R13D,%EDI                   | 1     | 0.33 | 0.33 | 0    | 0    | 0  | 0.33 | 1       | 0.33\nMOV %R13D,%R8D                   | 1     | 0.33 | 0.33 | 0    | 0    | 0  | 0.33 | 1       | 0.33\nLEA -0x3(%RCX),%ECX              | 1     | 0.50 | 0.50 | 0    | 0    | 0  | 0    | 1       | 0.50\nAND $-0x4,%EDI                   | 1     | 0.33 | 0.33 | 0    | 0    | 0  | 0.33 | 1       | 0.33\nSHR $0x2,%R8D                    | 1     | 0.50 | 0    | 0    | 0    | 0  | 0.50 | 1       | 0.50\nMOV %EBX,0x4c(%RSP)              | 1     | 0    | 0    | 0.50 | 0.50 | 1  | 0    | 3       | 1\nLEA 0x1(%RDI),%EAX               | 1     | 0.50 | 0.50 | 0    | 0    | 0  | 0    | 1       | 0.50\nMOV %EDI,0x40(%RSP)              | 1     | 0    | 0    | 0.50 | 0.50 | 1  | 0    | 3       | 1\nLEA (%R8,%R8,4),%R15             | 1     | 0.50 | 0.50 | 0    | 0    | 0  | 0    | 1       | 0.50\nCLTQ                             | 1     | 0    | 0    | 0    | 0    | 0  | 0    | 1       | 0.50\nMOV %ECX,0x44(%RSP)              | 1     | 0    | 0    | 0.50 | 0.50 | 1  | 0    | 3       | 1\nLEA (%RAX,%RAX,4),%R14           | 1     | 0.50 | 0.50 | 0    | 0    | 0  | 0    | 1       | 0.50\nSAL $0x5,%R15                    | 1     | 0.50 | 0    | 0    | 0    | 0  | 0.50 | 1       | 0.50\nLEA 0x2(%RDI),%EAX               | 1     | 0.50 | 0.50 | 0    | 0    | 0  | 0    | 1       | 0.50\nMOV %R14,0x30(%RSP)              | 1     | 0    | 0    | 0.50 | 0.50 | 1  | 0    | 3       | 1\nMOVSXD %ESI,%R14                 | 1     | 0.33 | 0.33 | 0    | 0    | 0  | 0.33 | 1       | 0.33\nMOV %EAX,0x3c(%RSP)              | 1     | 0    | 0    | 0.50 | 0.50 | 1  | 0    | 3       | 1\nLEA (%RCX,%RCX,4),%RBX           | 1     | 0.50 | 0.50 | 0    | 0    | 0  | 0    | 1       | 0.50\nCLTQ                             | 1     | 0    | 0    | 0    | 0    | 0  | 0    | 1       | 0.50\nLEA (%RAX,%RAX,4),%RDX           | 1     | 0.50 | 0.50 | 0    | 0    | 0  | 0    | 1       | 0.50\nMOV %RBX,0x10(%RSP)              | 1     | 0    | 0    | 0.50 | 0.50 | 1  | 0    | 3       | 1\nLEA 0x3(%RDI),%EAX               | 1     | 0.50 | 0.50 | 0    | 0    | 0  | 0    | 1       | 0.50\nMOV %RDX,0x28(%RSP)              | 1     | 0    | 0    | 0.50 | 0.50 | 1  | 0    | 3       | 1\nMOV %EAX,0x38(%RSP)              | 1     | 0    | 0    | 0.50 | 0.50 | 1  | 0    | 3       | 1\nLEA 0x58(%R10),%RSI              | 1     | 0.50 | 0.50 | 0    | 0    | 0  | 0    | 1       | 0.50\nCLTQ                             | 1     | 0    | 0    | 0    | 0    | 0  | 0    | 1       | 0.50\nLEA (%RAX,%RAX,4),%R12           | 1     | 0.50 | 0.50 | 0    | 0    | 0  | 0    | 1       | 0.50\nMOV %RSI,0x8(%RSP)               | 1     | 0    | 0    | 0.50 | 0.50 | 1  | 0    | 3       | 1\nMOV %R12,0x20(%RSP)              | 1     | 0    | 0    | 0.50 | 0.50 | 1  | 0    | 3       | 1\nXOR %R12D,%R12D                  | 1     | 0    | 0    | 0    | 0    | 0  | 0    | 0       | 0.25\nNOPW %CS:(%RAX,%RAX,1)           | 1     | 0    | 0    | 0    | 0    | 0  | 0    | 0       | 0.25\nVZEROUPPER                       | 4     | 0    | 0    | 0    | 0    | 0  | 0    | 2       | 1\nLEA -0x28(%RBP),%RSP             | 1     | 0.50 | 0.50 | 0    | 0    | 0  | 0    | 1       | 0.50\nPOP %RBX                         | 1     | 0    | 0    | 0.50 | 0.50 | 0  | 0    | 2       | 0.50\nPOP %R12                         | 1     | 0    | 0    | 0.50 | 0.50 | 0  | 0    | 2       | 0.50\nPOP %R13                         | 1     | 0    | 0    | 0.50 | 0.50 | 0  | 0    | 2       | 0.50\nPOP %R14                         | 1     | 0    | 0    | 0.50 | 0.50 | 0  | 0    | 2       | 0.50\nPOP %R15                         | 1     | 0    | 0    | 0.50 | 0.50 | 0  | 0    | 2       | 0.50\nPOP %RBP                         | 1     | 0    | 0    | 0.50 | 0.50 | 0  | 0    | 2       | 0.50\nRET                              | 2     | 0    | 0    | 0.50 | 0.50 | 0  | 1    | 0       | 2\nADD $0x1,%R8D                    | 1     | 0.33 | 0.33 | 0    | 0    | 0  | 0.33 | 1       | 0.33\nXOR %EDX,%EDX                    | 1     | 0    | 0    | 0    | 0    | 0  | 0    | 0       | 0.25\nJMP 1df26 <add_._omp_fn.0+0x66>  | 1     | 0    | 0    | 0    | 0    | 0  | 1    | 0       | 2\nNOPW %CS:(%RAX,%RAX,1)           | 1     | 0    | 0    | 0    | 0    | 0  | 0    | 0       | 0.25\nNOP                              | 1     | 0    | 0    | 0    | 0    | 0  | 0    | 0       | 0.25\n",
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
          workaround = " - Try another compiler or update/tune your current one\n - Make array accesses unit-stride:\n  * If your function streams arrays of structures (AoS), try to use structures of arrays instead (SoA):\ndo i a(i)%x = b(i)%x (slow, non stride 1) => do i a%x(i) = b%x(i) (fast, stride 1)\n",
          details = "Store and arithmetical SSE/AVX instructions are used in scalar version (process only one data element in vector registers).\nSince your execution units are vector units, only a vectorized function can use their full power.\n",
          title = "Vectorization",
          txt = "Your function is probably not vectorized.\nOnly 41% of vector register length is used (average across all SSE/AVX instructions).\nBy vectorizing your function, you can lower the cost of an iteration from 36.00 to 27.14 cycles (1.33x speedup).",
        },
        {
          workaround = "Reduce the number of division or square root instructions:\n - If denominator is constant over iterations, use reciprocal (replace x/y with x*(1/y)). Check precision impact. This will be done by your compiler with ffast-math or Ofast\n",
          title = "Execution units bottlenecks",
          txt = "Performance is limited by execution of divide and square root operations (the divide/square root unit is a bottleneck).\n\nBy removing all these bottlenecks, you can lower the cost of an iteration from 36.00 to 33.50 cycles (1.07x speedup).\n",
        },
      },
      potential = {
        {
          title = "Expensive FP math instructions/calls",
          txt = "Detected performance impact from expensive FP math instructions/calls.\nBy removing/reexpressing them, you can lower the cost of an iteration from 36.00 to 29.00 cycles (1.24x speedup).",
        },
      },
    },
  common = {
    header = {
      "The function is defined in /users/user2210/NPB3.4-MZ-MPI/BT-MZ/add.f90:24-29.\n",
      "Warnings:\nIgnoring paths for analysis",
    },
  },
}
