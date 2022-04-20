_cqa_text_report = {
  paths = {
    {
      hint = {
        {
          details = "Calling (and then returning from) a function prevents many compiler optimizations (like vectorization), breaks control flow (which reduces pipeline performance) and executes extra instructions to save/restore the registers used inside it, which is very expensive (dozens of cycles). Consider to inline small functions.\n - copy_x_face: 2 occurrences\n - copy_y_face: 2 occurrences\n",
          title = "CALL instructions",
          txt = "Detected function call instructions.\n",
        },
        {
          details = "These instructions generate more than one micro-operation and only one of them can be decoded during a cycle and the extra micro-operations increase pressure on execution units.\n - PUSH: 2 occurrences\n",
          title = "Complex instructions",
          txt = "Detected COMPLEX INSTRUCTIONS.\n",
        },
        {
          workaround = " - Try to reorganize arrays of structures to structures of arrays\n - Consider to permute loops (see vectorization gain report)\n",
          details = " - Constant unknown stride: 8 occurrence(s)\n - Constant non-unit stride: 1 occurrence(s)\nNon-unit stride (uncontiguous) accesses are not efficiently using data caches\n",
          title = "Slow data structures access",
          txt = "Detected data structures (typically arrays) that cannot be efficiently read/written",
        },
        {
          title = "Type of elements and instruction set",
          txt = "No instructions are processing arithmetic or math operations on FP elements. This loop is probably writing/copying data or processing integer elements.",
        },
        {
          title = "Matching between your loop (in the source code) and the binary loop",
          txt = "The binary loop does not contain any FP arithmetical operations.\nThe binary loop is loading 188 bytes.\nThe binary loop is storing 32 bytes.",
        },
        {
          workaround = "Unroll your loop if trip count is significantly higher than target unroll factor and if some data references are common to consecutive iterations. This can be done manually. Or by recompiling with -funroll-loops and/or -floop-unroll-and-jam.",
          title = "Unroll opportunity",
          txt = "Loop is data access bound.",
        },
      },
      expert = {
        {
          title = "General properties",
          txt = "nb instructions    : 97\nnb uops            : 106\nloop length        : 431\nused x86 registers : 16\nused mmx registers : 0\nused xmm registers : 0\nused ymm registers : 0\nused zmm registers : 0\nnb stack references: 16\n",
        },
        {
          title = "Front-end",
          txt = "ASSUMED MACRO FUSION\nFIT IN UOP CACHE\nmicro-operation queue: 26.50 cycles\nfront end            : 26.50 cycles\n",
        },
        {
          title = "Back-end",
          txt = "       | P0    | P1    | P2    | P3    | P4    | P5\n------------------------------------------------------\nuops   | 16.50 | 16.17 | 27.00 | 27.00 | 23.00 | 16.33\ncycles | 16.50 | 16.17 | 27.00 | 27.00 | 23.00 | 16.33\n\nCycles executing div or sqrt instructions: NA\nLongest recurrence chain latency (RecMII): 5.00\n",
        },
        {
          title = "Cycles summary",
          txt = "Front-end : 26.50\nDispatch  : 27.00\nData deps.: 5.00\nOverall L1: 27.00\n",
        },
        {
          title = "Vectorization ratios",
          txt = "all     : 0%\nload    : NA (no load vectorizable/vectorized instructions)\nstore   : 0%\nmul     : NA (no mul vectorizable/vectorized instructions)\nadd-sub : NA (no add-sub vectorizable/vectorized instructions)\nfma     : NA (no fma vectorizable/vectorized instructions)\ndiv/sqrt: NA (no div/sqrt vectorizable/vectorized instructions)\nother   : NA (no other vectorizable/vectorized instructions)\n",
        },
        {
          title = "Vector efficiency ratios",
          txt = "all     : 28%\nload    : NA (no load vectorizable/vectorized instructions)\nstore   : 28%\nmul     : NA (no mul vectorizable/vectorized instructions)\nadd-sub : NA (no add-sub vectorizable/vectorized instructions)\nfma     : NA (no fma vectorizable/vectorized instructions)\ndiv/sqrt: NA (no div/sqrt vectorizable/vectorized instructions)\nother   : NA (no other vectorizable/vectorized instructions)\n",
        },
        {
          title = "Cycles and memory resources usage",
          txt = "Assuming all data fit into the L1 cache, each iteration of the binary loop takes 27.00 cycles. At this rate:\n - 21% of peak load performance is reached (6.96 out of 32.00 bytes loaded per cycle (GB/s @ 1GHz))\n - 7% of peak store performance is reached (1.19 out of 16.00 bytes stored per cycle (GB/s @ 1GHz))\n",
        },
        {
          title = "Front-end bottlenecks",
          txt = "Found no such bottlenecks.",
        },
        {
          title = "ASM code",
          txt = "In the binary file, the address of the loop is: 18ad8\n\nInstruction                | Nb FU | P0   | P1   | P2   | P3   | P4 | P5   | Latency | Recip. throughput\n--------------------------------------------------------------------------------------------------------\nMOVSXD (%RAX),%R11         | 1     | 0    | 0    | 0.50 | 0.50 | 0  | 0    | 1       | 0.50\nMOV %RAX,0x20(%RSP)        | 1     | 0    | 0    | 0.50 | 0.50 | 1  | 0    | 3       | 1\nSUB $0x8,%RSP              | 1     | 0.33 | 0.33 | 0    | 0    | 0  | 0.33 | 1       | 0.33\nADD $0x4,%RBX              | 1     | 0.33 | 0.33 | 0    | 0    | 0  | 0.33 | 1       | 0.33\nMOV 0x40(%RSP),%R10        | 1     | 0    | 0    | 0.50 | 0.50 | 0  | 0    | 2       | 0.50\nMOV 0x48(%RSP),%RDX        | 1     | 0    | 0    | 0.50 | 0.50 | 0  | 0    | 2       | 0.50\nMOV 0x50(%RSP),%RCX        | 1     | 0    | 0    | 0.50 | 0.50 | 0  | 0    | 2       | 0.50\nMOV 0x58(%RSP),%RDI        | 1     | 0    | 0    | 0.50 | 0.50 | 0  | 0    | 2       | 0.50\nLEA -0x1(%R11),%RBP        | 1     | 0.50 | 0.50 | 0    | 0    | 0  | 0    | 1       | 0.50\nMOV (%R10,%RBP,4),%EAX     | 1     | 0    | 0    | 0.50 | 0.50 | 0  | 0    | 2       | 0.50\nLEA 0x13ab5(%RIP),%R11     | 1     | 0.50 | 0.50 | 0    | 0    | 0  | 0    | 1       | 0.50\nMOV (%RDX,%RBP,4),%R9D     | 1     | 0    | 0    | 0.50 | 0.50 | 0  | 0    | 2       | 0.50\nMOV (%RCX,%RBP,4),%ESI     | 1     | 0    | 0    | 0.50 | 0.50 | 0  | 0    | 2       | 0.50\nLEA 0xfe3b(%RIP),%RCX      | 1     | 0.50 | 0.50 | 0    | 0    | 0  | 0    | 1       | 0.50\nMOV (%RDI,%RBP,4),%R8D     | 1     | 0    | 0    | 0.50 | 0.50 | 0  | 0    | 2       | 0.50\nMOV %EAX,0x90(%RSP)        | 1     | 0    | 0    | 0.50 | 0.50 | 1  | 0    | 3       | 1\nMOVSXD (%R11,%RBP,4),%R10  | 1     | 0    | 0    | 0.50 | 0.50 | 0  | 0    | 1       | 0.50\nMOV %R9D,0x94(%RSP)        | 1     | 0    | 0    | 0.50 | 0.50 | 1  | 0    | 3       | 1\nMOV 0x8(%RSP),%RAX         | 1     | 0    | 0    | 0.50 | 0.50 | 0  | 0    | 2       | 0.50\nMOV 0x10(%RSP),%R9         | 1     | 0    | 0    | 0.50 | 0.50 | 0  | 0    | 2       | 0.50\nMOV %ESI,0x98(%RSP)        | 1     | 0    | 0    | 0.50 | 0.50 | 1  | 0    | 3       | 1\nMOVSXD -0x4(%RBX),%RDX     | 1     | 0    | 0    | 0.50 | 0.50 | 0  | 0    | 1       | 0.50\nMOV %R8D,0x9c(%RSP)        | 1     | 0    | 0    | 0.50 | 0.50 | 1  | 0    | 3       | 1\nLEA 0xfe34(%RIP),%R8       | 1     | 0.50 | 0.50 | 0    | 0    | 0  | 0    | 1       | 0.50\nPUSH $0x3                  | 1     | 0    | 0    | 0.50 | 0.50 | 1  | 0    | 3       | 1\nLEA -0x8(%RAX,%R10,8),%RSI | 1     | 0    | 1    | 0    | 0    | 0  | 0    | 3       | 1\nPUSH %RCX                  | 1     | 0    | 0    | 0.50 | 0.50 | 1  | 0    | 3       | 1\nMOV %R13,%RCX              | 1     | 0.33 | 0.33 | 0    | 0    | 0  | 0.33 | 1       | 0.33\nPUSH %R8                   | 1     | 0    | 0    | 0.50 | 0.50 | 1  | 0    | 3       | 1\nMOV %R14,%R8               | 1     | 0.33 | 0.33 | 0    | 0    | 0  | 0.33 | 1       | 0.33\nLEA -0x8(%R9,%RDX,8),%RDI  | 1     | 0    | 1    | 0    | 0    | 0  | 0    | 3       | 1\nMOV %R15,%R9               | 1     | 0.33 | 0.33 | 0    | 0    | 0  | 0.33 | 1       | 0.33\nMOV %R12,%RDX              | 1     | 0.33 | 0.33 | 0    | 0    | 0  | 0.33 | 1       | 0.33\nCALL 18890 <copy_x_face_>  | 3     | 0    | 0    | 0.50 | 0.50 | 1  | 1    | 0       | 2\nMOV 0xa8(%RSP),%ESI        | 1     | 0    | 0    | 0.50 | 0.50 | 0  | 0    | 2       | 0.50\nMOV %R14,%R8               | 1     | 0.33 | 0.33 | 0    | 0    | 0  | 0.33 | 1       | 0.33\nLEA 0x13afb(%RIP),%R11     | 1     | 0.50 | 0.50 | 0    | 0    | 0  | 0    | 1       | 0.50\nMOVSXD -0x4(%RBX),%RDX     | 1     | 0    | 0    | 0.50 | 0.50 | 0  | 0    | 1       | 0.50\nMOVSXD (%R11,%RBP,4),%R10  | 1     | 0    | 0    | 0.50 | 0.50 | 0  | 0    | 1       | 0.50\nLEA 0xfdc0(%RIP),%RCX      | 1     | 0.50 | 0.50 | 0    | 0    | 0  | 0    | 1       | 0.50\nLEA -0x2(%RSI),%EDI        | 1     | 0.50 | 0.50 | 0    | 0    | 0  | 0    | 1       | 0.50\nMOV %EDI,0xc0(%RSP)        | 1     | 0    | 0    | 0.50 | 0.50 | 1  | 0    | 3       | 1\nMOV 0x20(%RSP),%RAX        | 1     | 0    | 0    | 0.50 | 0.50 | 0  | 0    | 2       | 0.50\nADD $0x18,%RSP             | 1     | 0.33 | 0.33 | 0    | 0    | 0  | 0.33 | 1       | 0.33\nMOV 0x10(%RSP),%R9         | 1     | 0    | 0    | 0.50 | 0.50 | 0  | 0    | 2       | 0.50\nPUSH $0x3                  | 1     | 0    | 0    | 0.50 | 0.50 | 1  | 0    | 3       | 1\nPUSH %RCX                  | 1     | 0    | 0    | 0.50 | 0.50 | 1  | 0    | 3       | 1\nMOV %R13,%RCX              | 1     | 0.33 | 0.33 | 0    | 0    | 0  | 0.33 | 1       | 0.33\nPUSHQ 0x30(%RSP)           | 2     | 0    | 0    | 1    | 1    | 1  | 0    | 3       | 1\nLEA -0x8(%RAX,%R10,8),%RSI | 1     | 0    | 1    | 0    | 0    | 0  | 0    | 3       | 1\nLEA -0x8(%R9,%RDX,8),%RDI  | 1     | 0    | 1    | 0    | 0    | 0  | 0    | 3       | 1\nMOV %R15,%R9               | 1     | 0.33 | 0.33 | 0    | 0    | 0  | 0.33 | 1       | 0.33\nMOV %R12,%RDX              | 1     | 0.33 | 0.33 | 0    | 0    | 0  | 0.33 | 1       | 0.33\nCALL 18890 <copy_x_face_>  | 3     | 0    | 0    | 0.50 | 0.50 | 1  | 1    | 0       | 2\nMOVSXD -0x4(%RBX),%R11     | 1     | 0    | 0    | 0.50 | 0.50 | 0  | 0    | 1       | 0.50\nADD $0x18,%RSP             | 1     | 0.33 | 0.33 | 0    | 0    | 0  | 0.33 | 1       | 0.33\nMOV %R15,%R9               | 1     | 0.33 | 0.33 | 0    | 0    | 0  | 0.33 | 1       | 0.33\nLEA 0x13a23(%RIP),%R8      | 1     | 0.50 | 0.50 | 0    | 0    | 0  | 0    | 1       | 0.50\nMOV 0x8(%RSP),%RDI         | 1     | 0    | 0    | 0.50 | 0.50 | 0  | 0    | 2       | 0.50\nMOV %R13,%RCX              | 1     | 0.33 | 0.33 | 0    | 0    | 0  | 0.33 | 1       | 0.33\nMOV 0x10(%RSP),%R10        | 1     | 0    | 0    | 0.50 | 0.50 | 0  | 0    | 2       | 0.50\nLEA 0xfd63(%RIP),%RAX      | 1     | 0.50 | 0.50 | 0    | 0    | 0  | 0    | 1       | 0.50\nMOVSXD (%R8,%RBP,4),%RSI   | 1     | 0    | 0    | 0.50 | 0.50 | 0  | 0    | 1       | 0.50\nLEA 0xfd8c(%RIP),%RDX      | 1     | 0.50 | 0.50 | 0    | 0    | 0  | 0    | 1       | 0.50\nPUSH $0x3                  | 1     | 0    | 0    | 0.50 | 0.50 | 1  | 0    | 3       | 1\nMOV %R14,%R8               | 1     | 0.33 | 0.33 | 0    | 0    | 0  | 0.33 | 1       | 0.33\nPUSH %RAX                  | 1     | 0    | 0    | 0.50 | 0.50 | 1  | 0    | 3       | 1\nPUSH %RDX                  | 1     | 0    | 0    | 0.50 | 0.50 | 1  | 0    | 3       | 1\nMOV %R12,%RDX              | 1     | 0.33 | 0.33 | 0    | 0    | 0  | 0.33 | 1       | 0.33\nLEA -0x8(%RDI,%RSI,8),%RSI | 1     | 0    | 1    | 0    | 0    | 0  | 0    | 3       | 1\nLEA -0x8(%R10,%R11,8),%RDI | 1     | 0    | 1    | 0    | 0    | 0  | 0    | 3       | 1\nCALL 18700 <copy_y_face_>  | 3     | 0    | 0    | 0.50 | 0.50 | 1  | 1    | 0       | 2\nMOV 0xb0(%RSP),%R9D        | 1     | 0    | 0    | 0.50 | 0.50 | 0  | 0    | 2       | 0.50\nMOV %R12,%RDX              | 1     | 0.33 | 0.33 | 0    | 0    | 0  | 0.33 | 1       | 0.33\nLEA 0x13a19(%RIP),%R8      | 1     | 0.50 | 0.50 | 0    | 0    | 0  | 0    | 1       | 0.50\nMOVSXD -0x4(%RBX),%RDI     | 1     | 0    | 0    | 0.50 | 0.50 | 0  | 0    | 1       | 0.50\nMOVSXD (%R8,%RBP,4),%RBP   | 1     | 0    | 0    | 0.50 | 0.50 | 0  | 0    | 1       | 0.50\nLEA 0xfd1e(%RIP),%R10      | 1     | 0.50 | 0.50 | 0    | 0    | 0  | 0    | 1       | 0.50\nMOV %R14,%R8               | 1     | 0.33 | 0.33 | 0    | 0    | 0  | 0.33 | 1       | 0.33\nLEA -0x2(%R9),%ECX         | 1     | 0.50 | 0.50 | 0    | 0    | 0  | 0    | 1       | 0.50\nMOV %R15,%R9               | 1     | 0.33 | 0.33 | 0    | 0    | 0  | 0.33 | 1       | 0.33\nMOV %ECX,0xc0(%RSP)        | 1     | 0    | 0    | 0.50 | 0.50 | 1  | 0    | 3       | 1\nMOV 0x20(%RSP),%RSI        | 1     | 0    | 0    | 0.50 | 0.50 | 0  | 0    | 2       | 0.50\nADD $0x18,%RSP             | 1     | 0.33 | 0.33 | 0    | 0    | 0  | 0.33 | 1       | 0.33\nMOV %R13,%RCX              | 1     | 0.33 | 0.33 | 0    | 0    | 0  | 0.33 | 1       | 0.33\nMOV 0x10(%RSP),%R11        | 1     | 0    | 0    | 0.50 | 0.50 | 0  | 0    | 2       | 0.50\nPUSH $0x3                  | 1     | 0    | 0    | 0.50 | 0.50 | 1  | 0    | 3       | 1\nPUSH %R10                  | 1     | 0    | 0    | 0.50 | 0.50 | 1  | 0    | 3       | 1\nPUSHQ 0x30(%RSP)           | 2     | 0    | 0    | 1    | 1    | 1  | 0    | 3       | 1\nLEA -0x8(%RSI,%RBP,8),%RSI | 1     | 0    | 1    | 0    | 0    | 0  | 0    | 3       | 1\nLEA -0x8(%R11,%RDI,8),%RDI | 1     | 0    | 1    | 0    | 0    | 0  | 0    | 3       | 1\nCALL 18700 <copy_y_face_>  | 3     | 0    | 0    | 0.50 | 0.50 | 1  | 1    | 0       | 2\nMOV 0x40(%RSP),%RAX        | 1     | 0    | 0    | 0.50 | 0.50 | 0  | 0    | 2       | 0.50\nADD $0x20,%RSP             | 1     | 0.33 | 0.33 | 0    | 0    | 0  | 0.33 | 1       | 0.33\nADD $0x4,%RAX              | 1     | 0.33 | 0.33 | 0    | 0    | 0  | 0.33 | 1       | 0.33\nCMP %RBX,0x28(%RSP)        | 1     | 0.33 | 0.33 | 0.50 | 0.50 | 0  | 0.33 | 1       | 0.50\nJNE 18ad8 <exch_qbc_+0xb8> | 1     | 0    | 0    | 0    | 0    | 0  | 1    | 0       | 1-2\n",
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
          workaround = " - Try another compiler or update/tune your current one:\n  * recompile with fassociative-math (included in Ofast or ffast-math) to extend loop vectorization to FP reductions.\n - Remove inter-iterations dependences from your loop and make it unit-stride:\n  * If your arrays have 2 or more dimensions, check whether elements are accessed contiguously and, otherwise, try to permute loops accordingly:\nFortran storage order is column-major: do i do j a(i,j) = b(i,j) (slow, non stride 1) => do i do j a(j,i) = b(i,j) (fast, stride 1)\n  * If your loop streams arrays of structures (AoS), try to use structures of arrays instead (SoA):\ndo i a(i)%x = b(i)%x (slow, non stride 1) => do i a%x(i) = b%x(i) (fast, stride 1)\n",
          details = "All SSE/AVX instructions are used in scalar version (process only one data element in vector registers).\nSince your execution units are vector units, only a vectorized loop can use their full power.\n",
          title = "Vectorization",
          txt = "Your loop is not vectorized.\nOnly 28% of vector register length is used (average across all SSE/AVX instructions).\nBy vectorizing your loop, you can lower the cost of an iteration from 27.00 to 6.87 cycles (3.93x speedup).",
        },
        {
          workaround = " - Read less array elements\n - Write less array elements\n - Provide more information to your compiler:\n  * hardcode the bounds of the corresponding 'for' loop\n",
          title = "Execution units bottlenecks",
          txt = "Performance is limited by:\n - reading data from caches/RAM (load units are a bottleneck)\n - writing data to caches/RAM (the store unit is a bottleneck)\n",
        },
      },
      potential = {
      },
    },
  },
  AVG = {
      hint = {
        {
          details = "Calling (and then returning from) a function prevents many compiler optimizations (like vectorization), breaks control flow (which reduces pipeline performance) and executes extra instructions to save/restore the registers used inside it, which is very expensive (dozens of cycles). Consider to inline small functions.\n - copy_x_face: 2 occurrences\n - copy_y_face: 2 occurrences\n",
          title = "CALL instructions",
          txt = "Detected function call instructions.\n",
        },
        {
          details = "These instructions generate more than one micro-operation and only one of them can be decoded during a cycle and the extra micro-operations increase pressure on execution units.\n - PUSH: 2 occurrences\n",
          title = "Complex instructions",
          txt = "Detected COMPLEX INSTRUCTIONS.\n",
        },
        {
          workaround = " - Try to reorganize arrays of structures to structures of arrays\n - Consider to permute loops (see vectorization gain report)\n",
          details = " - Constant unknown stride: 8 occurrence(s)\n - Constant non-unit stride: 1 occurrence(s)\nNon-unit stride (uncontiguous) accesses are not efficiently using data caches\n",
          title = "Slow data structures access",
          txt = "Detected data structures (typically arrays) that cannot be efficiently read/written",
        },
        {
          title = "Type of elements and instruction set",
          txt = "No instructions are processing arithmetic or math operations on FP elements. This loop is probably writing/copying data or processing integer elements.",
        },
        {
          title = "Matching between your loop (in the source code) and the binary loop",
          txt = "The binary loop does not contain any FP arithmetical operations.\nThe binary loop is loading 188 bytes.\nThe binary loop is storing 32 bytes.",
        },
        {
          workaround = "Unroll your loop if trip count is significantly higher than target unroll factor and if some data references are common to consecutive iterations. This can be done manually. Or by recompiling with -funroll-loops and/or -floop-unroll-and-jam.",
          title = "Unroll opportunity",
          txt = "Loop is data access bound.",
        },
      },
      expert = {
        {
          title = "General properties",
          txt = "nb instructions    : 97\nnb uops            : 106\nloop length        : 431\nused x86 registers : 16\nused mmx registers : 0\nused xmm registers : 0\nused ymm registers : 0\nused zmm registers : 0\nnb stack references: 16\n",
        },
        {
          title = "Front-end",
          txt = "ASSUMED MACRO FUSION\nFIT IN UOP CACHE\nmicro-operation queue: 26.50 cycles\nfront end            : 26.50 cycles\n",
        },
        {
          title = "Back-end",
          txt = "       | P0    | P1    | P2    | P3    | P4    | P5\n------------------------------------------------------\nuops   | 16.50 | 16.17 | 27.00 | 27.00 | 23.00 | 16.33\ncycles | 16.50 | 16.17 | 27.00 | 27.00 | 23.00 | 16.33\n\nCycles executing div or sqrt instructions: NA\nLongest recurrence chain latency (RecMII): 5.00\n",
        },
        {
          title = "Cycles summary",
          txt = "Front-end : 26.50\nDispatch  : 27.00\nData deps.: 5.00\nOverall L1: 27.00\n",
        },
        {
          title = "Vectorization ratios",
          txt = "all     : 0%\nload    : NA (no load vectorizable/vectorized instructions)\nstore   : 0%\nmul     : NA (no mul vectorizable/vectorized instructions)\nadd-sub : NA (no add-sub vectorizable/vectorized instructions)\nfma     : NA (no fma vectorizable/vectorized instructions)\ndiv/sqrt: NA (no div/sqrt vectorizable/vectorized instructions)\nother   : NA (no other vectorizable/vectorized instructions)\n",
        },
        {
          title = "Vector efficiency ratios",
          txt = "all     : 28%\nload    : NA (no load vectorizable/vectorized instructions)\nstore   : 28%\nmul     : NA (no mul vectorizable/vectorized instructions)\nadd-sub : NA (no add-sub vectorizable/vectorized instructions)\nfma     : NA (no fma vectorizable/vectorized instructions)\ndiv/sqrt: NA (no div/sqrt vectorizable/vectorized instructions)\nother   : NA (no other vectorizable/vectorized instructions)\n",
        },
        {
          title = "Cycles and memory resources usage",
          txt = "Assuming all data fit into the L1 cache, each iteration of the binary loop takes 27.00 cycles. At this rate:\n - 21% of peak load performance is reached (6.96 out of 32.00 bytes loaded per cycle (GB/s @ 1GHz))\n - 7% of peak store performance is reached (1.19 out of 16.00 bytes stored per cycle (GB/s @ 1GHz))\n",
        },
        {
          title = "Front-end bottlenecks",
          txt = "Found no such bottlenecks.",
        },
        {
          title = "ASM code",
          txt = "In the binary file, the address of the loop is: 18ad8\n\nInstruction                | Nb FU | P0   | P1   | P2   | P3   | P4 | P5   | Latency | Recip. throughput\n--------------------------------------------------------------------------------------------------------\nMOVSXD (%RAX),%R11         | 1     | 0    | 0    | 0.50 | 0.50 | 0  | 0    | 1       | 0.50\nMOV %RAX,0x20(%RSP)        | 1     | 0    | 0    | 0.50 | 0.50 | 1  | 0    | 3       | 1\nSUB $0x8,%RSP              | 1     | 0.33 | 0.33 | 0    | 0    | 0  | 0.33 | 1       | 0.33\nADD $0x4,%RBX              | 1     | 0.33 | 0.33 | 0    | 0    | 0  | 0.33 | 1       | 0.33\nMOV 0x40(%RSP),%R10        | 1     | 0    | 0    | 0.50 | 0.50 | 0  | 0    | 2       | 0.50\nMOV 0x48(%RSP),%RDX        | 1     | 0    | 0    | 0.50 | 0.50 | 0  | 0    | 2       | 0.50\nMOV 0x50(%RSP),%RCX        | 1     | 0    | 0    | 0.50 | 0.50 | 0  | 0    | 2       | 0.50\nMOV 0x58(%RSP),%RDI        | 1     | 0    | 0    | 0.50 | 0.50 | 0  | 0    | 2       | 0.50\nLEA -0x1(%R11),%RBP        | 1     | 0.50 | 0.50 | 0    | 0    | 0  | 0    | 1       | 0.50\nMOV (%R10,%RBP,4),%EAX     | 1     | 0    | 0    | 0.50 | 0.50 | 0  | 0    | 2       | 0.50\nLEA 0x13ab5(%RIP),%R11     | 1     | 0.50 | 0.50 | 0    | 0    | 0  | 0    | 1       | 0.50\nMOV (%RDX,%RBP,4),%R9D     | 1     | 0    | 0    | 0.50 | 0.50 | 0  | 0    | 2       | 0.50\nMOV (%RCX,%RBP,4),%ESI     | 1     | 0    | 0    | 0.50 | 0.50 | 0  | 0    | 2       | 0.50\nLEA 0xfe3b(%RIP),%RCX      | 1     | 0.50 | 0.50 | 0    | 0    | 0  | 0    | 1       | 0.50\nMOV (%RDI,%RBP,4),%R8D     | 1     | 0    | 0    | 0.50 | 0.50 | 0  | 0    | 2       | 0.50\nMOV %EAX,0x90(%RSP)        | 1     | 0    | 0    | 0.50 | 0.50 | 1  | 0    | 3       | 1\nMOVSXD (%R11,%RBP,4),%R10  | 1     | 0    | 0    | 0.50 | 0.50 | 0  | 0    | 1       | 0.50\nMOV %R9D,0x94(%RSP)        | 1     | 0    | 0    | 0.50 | 0.50 | 1  | 0    | 3       | 1\nMOV 0x8(%RSP),%RAX         | 1     | 0    | 0    | 0.50 | 0.50 | 0  | 0    | 2       | 0.50\nMOV 0x10(%RSP),%R9         | 1     | 0    | 0    | 0.50 | 0.50 | 0  | 0    | 2       | 0.50\nMOV %ESI,0x98(%RSP)        | 1     | 0    | 0    | 0.50 | 0.50 | 1  | 0    | 3       | 1\nMOVSXD -0x4(%RBX),%RDX     | 1     | 0    | 0    | 0.50 | 0.50 | 0  | 0    | 1       | 0.50\nMOV %R8D,0x9c(%RSP)        | 1     | 0    | 0    | 0.50 | 0.50 | 1  | 0    | 3       | 1\nLEA 0xfe34(%RIP),%R8       | 1     | 0.50 | 0.50 | 0    | 0    | 0  | 0    | 1       | 0.50\nPUSH $0x3                  | 1     | 0    | 0    | 0.50 | 0.50 | 1  | 0    | 3       | 1\nLEA -0x8(%RAX,%R10,8),%RSI | 1     | 0    | 1    | 0    | 0    | 0  | 0    | 3       | 1\nPUSH %RCX                  | 1     | 0    | 0    | 0.50 | 0.50 | 1  | 0    | 3       | 1\nMOV %R13,%RCX              | 1     | 0.33 | 0.33 | 0    | 0    | 0  | 0.33 | 1       | 0.33\nPUSH %R8                   | 1     | 0    | 0    | 0.50 | 0.50 | 1  | 0    | 3       | 1\nMOV %R14,%R8               | 1     | 0.33 | 0.33 | 0    | 0    | 0  | 0.33 | 1       | 0.33\nLEA -0x8(%R9,%RDX,8),%RDI  | 1     | 0    | 1    | 0    | 0    | 0  | 0    | 3       | 1\nMOV %R15,%R9               | 1     | 0.33 | 0.33 | 0    | 0    | 0  | 0.33 | 1       | 0.33\nMOV %R12,%RDX              | 1     | 0.33 | 0.33 | 0    | 0    | 0  | 0.33 | 1       | 0.33\nCALL 18890 <copy_x_face_>  | 3     | 0    | 0    | 0.50 | 0.50 | 1  | 1    | 0       | 2\nMOV 0xa8(%RSP),%ESI        | 1     | 0    | 0    | 0.50 | 0.50 | 0  | 0    | 2       | 0.50\nMOV %R14,%R8               | 1     | 0.33 | 0.33 | 0    | 0    | 0  | 0.33 | 1       | 0.33\nLEA 0x13afb(%RIP),%R11     | 1     | 0.50 | 0.50 | 0    | 0    | 0  | 0    | 1       | 0.50\nMOVSXD -0x4(%RBX),%RDX     | 1     | 0    | 0    | 0.50 | 0.50 | 0  | 0    | 1       | 0.50\nMOVSXD (%R11,%RBP,4),%R10  | 1     | 0    | 0    | 0.50 | 0.50 | 0  | 0    | 1       | 0.50\nLEA 0xfdc0(%RIP),%RCX      | 1     | 0.50 | 0.50 | 0    | 0    | 0  | 0    | 1       | 0.50\nLEA -0x2(%RSI),%EDI        | 1     | 0.50 | 0.50 | 0    | 0    | 0  | 0    | 1       | 0.50\nMOV %EDI,0xc0(%RSP)        | 1     | 0    | 0    | 0.50 | 0.50 | 1  | 0    | 3       | 1\nMOV 0x20(%RSP),%RAX        | 1     | 0    | 0    | 0.50 | 0.50 | 0  | 0    | 2       | 0.50\nADD $0x18,%RSP             | 1     | 0.33 | 0.33 | 0    | 0    | 0  | 0.33 | 1       | 0.33\nMOV 0x10(%RSP),%R9         | 1     | 0    | 0    | 0.50 | 0.50 | 0  | 0    | 2       | 0.50\nPUSH $0x3                  | 1     | 0    | 0    | 0.50 | 0.50 | 1  | 0    | 3       | 1\nPUSH %RCX                  | 1     | 0    | 0    | 0.50 | 0.50 | 1  | 0    | 3       | 1\nMOV %R13,%RCX              | 1     | 0.33 | 0.33 | 0    | 0    | 0  | 0.33 | 1       | 0.33\nPUSHQ 0x30(%RSP)           | 2     | 0    | 0    | 1    | 1    | 1  | 0    | 3       | 1\nLEA -0x8(%RAX,%R10,8),%RSI | 1     | 0    | 1    | 0    | 0    | 0  | 0    | 3       | 1\nLEA -0x8(%R9,%RDX,8),%RDI  | 1     | 0    | 1    | 0    | 0    | 0  | 0    | 3       | 1\nMOV %R15,%R9               | 1     | 0.33 | 0.33 | 0    | 0    | 0  | 0.33 | 1       | 0.33\nMOV %R12,%RDX              | 1     | 0.33 | 0.33 | 0    | 0    | 0  | 0.33 | 1       | 0.33\nCALL 18890 <copy_x_face_>  | 3     | 0    | 0    | 0.50 | 0.50 | 1  | 1    | 0       | 2\nMOVSXD -0x4(%RBX),%R11     | 1     | 0    | 0    | 0.50 | 0.50 | 0  | 0    | 1       | 0.50\nADD $0x18,%RSP             | 1     | 0.33 | 0.33 | 0    | 0    | 0  | 0.33 | 1       | 0.33\nMOV %R15,%R9               | 1     | 0.33 | 0.33 | 0    | 0    | 0  | 0.33 | 1       | 0.33\nLEA 0x13a23(%RIP),%R8      | 1     | 0.50 | 0.50 | 0    | 0    | 0  | 0    | 1       | 0.50\nMOV 0x8(%RSP),%RDI         | 1     | 0    | 0    | 0.50 | 0.50 | 0  | 0    | 2       | 0.50\nMOV %R13,%RCX              | 1     | 0.33 | 0.33 | 0    | 0    | 0  | 0.33 | 1       | 0.33\nMOV 0x10(%RSP),%R10        | 1     | 0    | 0    | 0.50 | 0.50 | 0  | 0    | 2       | 0.50\nLEA 0xfd63(%RIP),%RAX      | 1     | 0.50 | 0.50 | 0    | 0    | 0  | 0    | 1       | 0.50\nMOVSXD (%R8,%RBP,4),%RSI   | 1     | 0    | 0    | 0.50 | 0.50 | 0  | 0    | 1       | 0.50\nLEA 0xfd8c(%RIP),%RDX      | 1     | 0.50 | 0.50 | 0    | 0    | 0  | 0    | 1       | 0.50\nPUSH $0x3                  | 1     | 0    | 0    | 0.50 | 0.50 | 1  | 0    | 3       | 1\nMOV %R14,%R8               | 1     | 0.33 | 0.33 | 0    | 0    | 0  | 0.33 | 1       | 0.33\nPUSH %RAX                  | 1     | 0    | 0    | 0.50 | 0.50 | 1  | 0    | 3       | 1\nPUSH %RDX                  | 1     | 0    | 0    | 0.50 | 0.50 | 1  | 0    | 3       | 1\nMOV %R12,%RDX              | 1     | 0.33 | 0.33 | 0    | 0    | 0  | 0.33 | 1       | 0.33\nLEA -0x8(%RDI,%RSI,8),%RSI | 1     | 0    | 1    | 0    | 0    | 0  | 0    | 3       | 1\nLEA -0x8(%R10,%R11,8),%RDI | 1     | 0    | 1    | 0    | 0    | 0  | 0    | 3       | 1\nCALL 18700 <copy_y_face_>  | 3     | 0    | 0    | 0.50 | 0.50 | 1  | 1    | 0       | 2\nMOV 0xb0(%RSP),%R9D        | 1     | 0    | 0    | 0.50 | 0.50 | 0  | 0    | 2       | 0.50\nMOV %R12,%RDX              | 1     | 0.33 | 0.33 | 0    | 0    | 0  | 0.33 | 1       | 0.33\nLEA 0x13a19(%RIP),%R8      | 1     | 0.50 | 0.50 | 0    | 0    | 0  | 0    | 1       | 0.50\nMOVSXD -0x4(%RBX),%RDI     | 1     | 0    | 0    | 0.50 | 0.50 | 0  | 0    | 1       | 0.50\nMOVSXD (%R8,%RBP,4),%RBP   | 1     | 0    | 0    | 0.50 | 0.50 | 0  | 0    | 1       | 0.50\nLEA 0xfd1e(%RIP),%R10      | 1     | 0.50 | 0.50 | 0    | 0    | 0  | 0    | 1       | 0.50\nMOV %R14,%R8               | 1     | 0.33 | 0.33 | 0    | 0    | 0  | 0.33 | 1       | 0.33\nLEA -0x2(%R9),%ECX         | 1     | 0.50 | 0.50 | 0    | 0    | 0  | 0    | 1       | 0.50\nMOV %R15,%R9               | 1     | 0.33 | 0.33 | 0    | 0    | 0  | 0.33 | 1       | 0.33\nMOV %ECX,0xc0(%RSP)        | 1     | 0    | 0    | 0.50 | 0.50 | 1  | 0    | 3       | 1\nMOV 0x20(%RSP),%RSI        | 1     | 0    | 0    | 0.50 | 0.50 | 0  | 0    | 2       | 0.50\nADD $0x18,%RSP             | 1     | 0.33 | 0.33 | 0    | 0    | 0  | 0.33 | 1       | 0.33\nMOV %R13,%RCX              | 1     | 0.33 | 0.33 | 0    | 0    | 0  | 0.33 | 1       | 0.33\nMOV 0x10(%RSP),%R11        | 1     | 0    | 0    | 0.50 | 0.50 | 0  | 0    | 2       | 0.50\nPUSH $0x3                  | 1     | 0    | 0    | 0.50 | 0.50 | 1  | 0    | 3       | 1\nPUSH %R10                  | 1     | 0    | 0    | 0.50 | 0.50 | 1  | 0    | 3       | 1\nPUSHQ 0x30(%RSP)           | 2     | 0    | 0    | 1    | 1    | 1  | 0    | 3       | 1\nLEA -0x8(%RSI,%RBP,8),%RSI | 1     | 0    | 1    | 0    | 0    | 0  | 0    | 3       | 1\nLEA -0x8(%R11,%RDI,8),%RDI | 1     | 0    | 1    | 0    | 0    | 0  | 0    | 3       | 1\nCALL 18700 <copy_y_face_>  | 3     | 0    | 0    | 0.50 | 0.50 | 1  | 1    | 0       | 2\nMOV 0x40(%RSP),%RAX        | 1     | 0    | 0    | 0.50 | 0.50 | 0  | 0    | 2       | 0.50\nADD $0x20,%RSP             | 1     | 0.33 | 0.33 | 0    | 0    | 0  | 0.33 | 1       | 0.33\nADD $0x4,%RAX              | 1     | 0.33 | 0.33 | 0    | 0    | 0  | 0.33 | 1       | 0.33\nCMP %RBX,0x28(%RSP)        | 1     | 0.33 | 0.33 | 0.50 | 0.50 | 0  | 0.33 | 1       | 0.50\nJNE 18ad8 <exch_qbc_+0xb8> | 1     | 0    | 0    | 0    | 0    | 0  | 1    | 0       | 1-2\n",
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
          workaround = " - Try another compiler or update/tune your current one:\n  * recompile with fassociative-math (included in Ofast or ffast-math) to extend loop vectorization to FP reductions.\n - Remove inter-iterations dependences from your loop and make it unit-stride:\n  * If your arrays have 2 or more dimensions, check whether elements are accessed contiguously and, otherwise, try to permute loops accordingly:\nFortran storage order is column-major: do i do j a(i,j) = b(i,j) (slow, non stride 1) => do i do j a(j,i) = b(i,j) (fast, stride 1)\n  * If your loop streams arrays of structures (AoS), try to use structures of arrays instead (SoA):\ndo i a(i)%x = b(i)%x (slow, non stride 1) => do i a%x(i) = b%x(i) (fast, stride 1)\n",
          details = "All SSE/AVX instructions are used in scalar version (process only one data element in vector registers).\nSince your execution units are vector units, only a vectorized loop can use their full power.\n",
          title = "Vectorization",
          txt = "Your loop is not vectorized.\nOnly 28% of vector register length is used (average across all SSE/AVX instructions).\nBy vectorizing your loop, you can lower the cost of an iteration from 27.00 to 6.87 cycles (3.93x speedup).",
        },
        {
          workaround = " - Read less array elements\n - Write less array elements\n - Provide more information to your compiler:\n  * hardcode the bounds of the corresponding 'for' loop\n",
          title = "Execution units bottlenecks",
          txt = "Performance is limited by:\n - reading data from caches/RAM (load units are a bottleneck)\n - writing data to caches/RAM (the store unit is a bottleneck)\n",
        },
      },
      potential = {
      },
    },
  common = {
    header = {
      "The loop is defined in /users/user2210/NPB3.4-MZ-MPI/BT-MZ/exch_qbc.f90:23-45.\n",
      "The related source loop is not unrolled or unrolled with no peel/tail loop.",
    },
    nb_paths = 1,
  },
}
