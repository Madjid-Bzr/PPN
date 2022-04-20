_cqa_text_report = {
  paths = {
    {
      hint = {
        {
          details = "Calling (and then returning from) a function prevents many compiler optimizations (like vectorization), breaks control flow (which reduces pipeline performance) and executes extra instructions to save/restore the registers used inside it, which is very expensive (dozens of cycles). Consider to inline small functions.\n - binvcrhs: 2 occurrences\n - matmul_sub: 2 occurrences\n - matvec_sub: 2 occurrences\n",
          title = "CALL instructions",
          txt = "Detected function call instructions.\n",
        },
        {
          title = "Type of elements and instruction set",
          txt = "No instructions are processing arithmetic or math operations on FP elements. This loop is probably writing/copying data or processing integer elements.",
        },
        {
          title = "Matching between your loop (in the source code) and the binary loop",
          txt = "The binary loop does not contain any FP arithmetical operations.\nThe binary loop is loading 48 bytes.\nThe binary loop is storing 8 bytes.",
        },
        {
          workaround = "Unroll your loop if trip count is significantly higher than target unroll factor and if some data references are common to consecutive iterations. This can be done manually. Or by recompiling with -funroll-loops and/or -floop-unroll-and-jam.",
          title = "Unroll opportunity",
          txt = "Loop is potentially data access bound.",
        },
      },
      expert = {
        {
          title = "General properties",
          txt = "nb instructions    : 38\nnb uops            : 49\nloop length        : 173\nused x86 registers : 12\nused mmx registers : 0\nused xmm registers : 0\nused ymm registers : 0\nused zmm registers : 0\nnb stack references: 3\n",
        },
        {
          title = "Front-end",
          txt = "ASSUMED MACRO FUSION\nFIT IN UOP CACHE\nmicro-operation queue: 12.25 cycles\nfront end            : 12.25 cycles\n",
        },
        {
          title = "Back-end",
          txt = "       | P0    | P1    | P2   | P3   | P4   | P5\n---------------------------------------------------\nuops   | 10.50 | 10.17 | 6.50 | 6.50 | 7.00 | 10.33\ncycles | 10.50 | 10.17 | 6.50 | 6.50 | 7.00 | 10.33\n\nCycles executing div or sqrt instructions: NA\nLongest recurrence chain latency (RecMII): 1.00\n",
        },
        {
          title = "Cycles summary",
          txt = "Front-end : 12.25\nDispatch  : 10.50\nData deps.: 1.00\nOverall L1: 12.25\n",
        },
        {
          title = "Vectorization ratios",
          txt = "all     : 0%\nload    : 0%\nstore   : 0%\nmul     : NA (no mul vectorizable/vectorized instructions)\nadd-sub : 0%\nfma     : NA (no fma vectorizable/vectorized instructions)\ndiv/sqrt: NA (no div/sqrt vectorizable/vectorized instructions)\nother   : 0%\n",
        },
        {
          title = "Vector efficiency ratios",
          txt = "all     : 50%\nload    : 50%\nstore   : 50%\nmul     : NA (no mul vectorizable/vectorized instructions)\nadd-sub : 50%\nfma     : NA (no fma vectorizable/vectorized instructions)\ndiv/sqrt: NA (no div/sqrt vectorizable/vectorized instructions)\nother   : 50%\n",
        },
        {
          title = "Cycles and memory resources usage",
          txt = "Assuming all data fit into the L1 cache, each iteration of the binary loop takes 12.25 cycles. At this rate:\n - 12% of peak load performance is reached (3.92 out of 32.00 bytes loaded per cycle (GB/s @ 1GHz))\n - 4% of peak store performance is reached (0.65 out of 16.00 bytes stored per cycle (GB/s @ 1GHz))\n",
        },
        {
          title = "Front-end bottlenecks",
          txt = "Performance is limited by instruction throughput (loading/decoding program instructions to execution core) (front-end is a bottleneck).\n\nBy removing all these bottlenecks, you can lower the cost of an iteration from 12.25 to 10.50 cycles (1.17x speedup).\n",
        },
        {
          title = "ASM code",
          txt = "In the binary file, the address of the loop is: 15032\n\nInstruction                           | Nb FU | P0   | P1   | P2   | P3   | P4 | P5   | Latency | Recip. throughput\n-------------------------------------------------------------------------------------------------------------------\nMOV 0x20(%RBP),%RSI                   | 1     | 0    | 0    | 0.50 | 0.50 | 0  | 0    | 2       | 0.50\nLEA 0xc8(%RBX),%R14                   | 1     | 0.50 | 0.50 | 0    | 0    | 0  | 0    | 1       | 0.50\nMOV %RBX,%RDI                         | 1     | 0.33 | 0.33 | 0    | 0    | 0  | 0.33 | 1       | 0.33\nLEA 0x258(%RBX),%R13                  | 1     | 0.50 | 0.50 | 0    | 0    | 0  | 0    | 1       | 0.50\nLEA 0x320(%RBX),%R15                  | 1     | 0.50 | 0.50 | 0    | 0    | 0  | 0    | 1       | 0.50\nLEA (%RSI,%R12,1),%RDX                | 1     | 0.50 | 0.50 | 0    | 0    | 0  | 0    | 1       | 0.50\nLEA -0x28(%RSI,%R12,1),%RSI           | 1     | 0    | 1    | 0    | 0    | 0  | 0    | 3       | 1\nCALL 19680 <matvec_sub_>              | 3     | 0    | 0    | 0.50 | 0.50 | 1  | 1    | 0       | 2\nLEA -0xc8(%RBX),%RSI                  | 1     | 0.50 | 0.50 | 0    | 0    | 0  | 0    | 1       | 0.50\nMOV %R14,%RDX                         | 1     | 0.33 | 0.33 | 0    | 0    | 0  | 0.33 | 1       | 0.33\nMOV %RBX,%RDI                         | 1     | 0.33 | 0.33 | 0    | 0    | 0  | 0.33 | 1       | 0.33\nCALL 197e0 <matmul_sub_>              | 3     | 0    | 0    | 0.50 | 0.50 | 1  | 1    | 0       | 2\nMOV 0x20(%RBP),%RDX                   | 1     | 0    | 0    | 0.50 | 0.50 | 0  | 0    | 2       | 0.50\nLEA 0x190(%RBX),%R11                  | 1     | 0.50 | 0.50 | 0    | 0    | 0  | 0    | 1       | 0.50\nMOV %R14,%RDI                         | 1     | 0.33 | 0.33 | 0    | 0    | 0  | 0.33 | 1       | 0.33\nMOV %R11,(%RSP)                       | 1     | 0    | 0    | 0.50 | 0.50 | 1  | 0    | 3       | 1\nLEA 0x28(%R12),%R14                   | 1     | 0.50 | 0.50 | 0    | 0    | 0  | 0    | 1       | 0.50\nMOV %R11,%RSI                         | 1     | 0.33 | 0.33 | 0    | 0    | 0  | 0.33 | 1       | 0.33\nADD %R12,%RDX                         | 1     | 0.33 | 0.33 | 0    | 0    | 0  | 0.33 | 1       | 0.33\nCALL 19f90 <binvcrhs_>                | 3     | 0    | 0    | 0.50 | 0.50 | 1  | 1    | 0       | 2\nMOV 0x20(%RBP),%R8                    | 1     | 0    | 0    | 0.50 | 0.50 | 0  | 0    | 2       | 0.50\nMOV %R13,%RDI                         | 1     | 0.33 | 0.33 | 0    | 0    | 0  | 0.33 | 1       | 0.33\nLEA (%R8,%R12,1),%RSI                 | 1     | 0.50 | 0.50 | 0    | 0    | 0  | 0    | 1       | 0.50\nADD $0x50,%R12                        | 1     | 0.33 | 0.33 | 0    | 0    | 0  | 0.33 | 1       | 0.33\nLEA (%R8,%R14,1),%RDX                 | 1     | 0.50 | 0.50 | 0    | 0    | 0  | 0    | 1       | 0.50\nCALL 19680 <matvec_sub_>              | 3     | 0    | 0    | 0.50 | 0.50 | 1  | 1    | 0       | 2\nMOV (%RSP),%RSI                       | 1     | 0    | 0    | 0.50 | 0.50 | 0  | 0    | 2       | 0.50\nMOV %R15,%RDX                         | 1     | 0.33 | 0.33 | 0    | 0    | 0  | 0.33 | 1       | 0.33\nMOV %R13,%RDI                         | 1     | 0.33 | 0.33 | 0    | 0    | 0  | 0.33 | 1       | 0.33\nCALL 197e0 <matmul_sub_>              | 3     | 0    | 0    | 0.50 | 0.50 | 1  | 1    | 0       | 2\nMOV 0x20(%RBP),%RDX                   | 1     | 0    | 0    | 0.50 | 0.50 | 0  | 0    | 2       | 0.50\nLEA 0x3e8(%RBX),%RSI                  | 1     | 0.50 | 0.50 | 0    | 0    | 0  | 0    | 1       | 0.50\nMOV %R15,%RDI                         | 1     | 0.33 | 0.33 | 0    | 0    | 0  | 0.33 | 1       | 0.33\nADD $0x4b0,%RBX                       | 1     | 0.33 | 0.33 | 0    | 0    | 0  | 0.33 | 1       | 0.33\nADD %R14,%RDX                         | 1     | 0.33 | 0.33 | 0    | 0    | 0  | 0.33 | 1       | 0.33\nCALL 19f90 <binvcrhs_>                | 3     | 0    | 0    | 0.50 | 0.50 | 1  | 1    | 0       | 2\nCMP 0x8(%RSP),%RBX                    | 1     | 0.33 | 0.33 | 0.50 | 0.50 | 0  | 0.33 | 1       | 0.50\nJNE 15032 <x_solve_._omp_fn.0+0x1fb2> | 1     | 0    | 0    | 0    | 0    | 0  | 1    | 0       | 1-2\n",
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
          txt = "Your loop is not vectorized.\n2 data elements could be processed at once in vector registers.\nBy vectorizing your loop, you can lower the cost of an iteration from 12.25 to 6.12 cycles (2.00x speedup).",
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
          details = "Calling (and then returning from) a function prevents many compiler optimizations (like vectorization), breaks control flow (which reduces pipeline performance) and executes extra instructions to save/restore the registers used inside it, which is very expensive (dozens of cycles). Consider to inline small functions.\n - binvcrhs: 2 occurrences\n - matmul_sub: 2 occurrences\n - matvec_sub: 2 occurrences\n",
          title = "CALL instructions",
          txt = "Detected function call instructions.\n",
        },
        {
          title = "Type of elements and instruction set",
          txt = "No instructions are processing arithmetic or math operations on FP elements. This loop is probably writing/copying data or processing integer elements.",
        },
        {
          title = "Matching between your loop (in the source code) and the binary loop",
          txt = "The binary loop does not contain any FP arithmetical operations.\nThe binary loop is loading 48 bytes.\nThe binary loop is storing 8 bytes.",
        },
        {
          workaround = "Unroll your loop if trip count is significantly higher than target unroll factor and if some data references are common to consecutive iterations. This can be done manually. Or by recompiling with -funroll-loops and/or -floop-unroll-and-jam.",
          title = "Unroll opportunity",
          txt = "Loop is potentially data access bound.",
        },
      },
      expert = {
        {
          title = "General properties",
          txt = "nb instructions    : 38\nnb uops            : 49\nloop length        : 173\nused x86 registers : 12\nused mmx registers : 0\nused xmm registers : 0\nused ymm registers : 0\nused zmm registers : 0\nnb stack references: 3\n",
        },
        {
          title = "Front-end",
          txt = "ASSUMED MACRO FUSION\nFIT IN UOP CACHE\nmicro-operation queue: 12.25 cycles\nfront end            : 12.25 cycles\n",
        },
        {
          title = "Back-end",
          txt = "       | P0    | P1    | P2   | P3   | P4   | P5\n---------------------------------------------------\nuops   | 10.50 | 10.17 | 6.50 | 6.50 | 7.00 | 10.33\ncycles | 10.50 | 10.17 | 6.50 | 6.50 | 7.00 | 10.33\n\nCycles executing div or sqrt instructions: NA\nLongest recurrence chain latency (RecMII): 1.00\n",
        },
        {
          title = "Cycles summary",
          txt = "Front-end : 12.25\nDispatch  : 10.50\nData deps.: 1.00\nOverall L1: 12.25\n",
        },
        {
          title = "Vectorization ratios",
          txt = "all     : 0%\nload    : 0%\nstore   : 0%\nmul     : NA (no mul vectorizable/vectorized instructions)\nadd-sub : 0%\nfma     : NA (no fma vectorizable/vectorized instructions)\ndiv/sqrt: NA (no div/sqrt vectorizable/vectorized instructions)\nother   : 0%\n",
        },
        {
          title = "Vector efficiency ratios",
          txt = "all     : 50%\nload    : 50%\nstore   : 50%\nmul     : NA (no mul vectorizable/vectorized instructions)\nadd-sub : 50%\nfma     : NA (no fma vectorizable/vectorized instructions)\ndiv/sqrt: NA (no div/sqrt vectorizable/vectorized instructions)\nother   : 50%\n",
        },
        {
          title = "Cycles and memory resources usage",
          txt = "Assuming all data fit into the L1 cache, each iteration of the binary loop takes 12.25 cycles. At this rate:\n - 12% of peak load performance is reached (3.92 out of 32.00 bytes loaded per cycle (GB/s @ 1GHz))\n - 4% of peak store performance is reached (0.65 out of 16.00 bytes stored per cycle (GB/s @ 1GHz))\n",
        },
        {
          title = "Front-end bottlenecks",
          txt = "Performance is limited by instruction throughput (loading/decoding program instructions to execution core) (front-end is a bottleneck).\n\nBy removing all these bottlenecks, you can lower the cost of an iteration from 12.25 to 10.50 cycles (1.17x speedup).\n",
        },
        {
          title = "ASM code",
          txt = "In the binary file, the address of the loop is: 15032\n\nInstruction                           | Nb FU | P0   | P1   | P2   | P3   | P4 | P5   | Latency | Recip. throughput\n-------------------------------------------------------------------------------------------------------------------\nMOV 0x20(%RBP),%RSI                   | 1     | 0    | 0    | 0.50 | 0.50 | 0  | 0    | 2       | 0.50\nLEA 0xc8(%RBX),%R14                   | 1     | 0.50 | 0.50 | 0    | 0    | 0  | 0    | 1       | 0.50\nMOV %RBX,%RDI                         | 1     | 0.33 | 0.33 | 0    | 0    | 0  | 0.33 | 1       | 0.33\nLEA 0x258(%RBX),%R13                  | 1     | 0.50 | 0.50 | 0    | 0    | 0  | 0    | 1       | 0.50\nLEA 0x320(%RBX),%R15                  | 1     | 0.50 | 0.50 | 0    | 0    | 0  | 0    | 1       | 0.50\nLEA (%RSI,%R12,1),%RDX                | 1     | 0.50 | 0.50 | 0    | 0    | 0  | 0    | 1       | 0.50\nLEA -0x28(%RSI,%R12,1),%RSI           | 1     | 0    | 1    | 0    | 0    | 0  | 0    | 3       | 1\nCALL 19680 <matvec_sub_>              | 3     | 0    | 0    | 0.50 | 0.50 | 1  | 1    | 0       | 2\nLEA -0xc8(%RBX),%RSI                  | 1     | 0.50 | 0.50 | 0    | 0    | 0  | 0    | 1       | 0.50\nMOV %R14,%RDX                         | 1     | 0.33 | 0.33 | 0    | 0    | 0  | 0.33 | 1       | 0.33\nMOV %RBX,%RDI                         | 1     | 0.33 | 0.33 | 0    | 0    | 0  | 0.33 | 1       | 0.33\nCALL 197e0 <matmul_sub_>              | 3     | 0    | 0    | 0.50 | 0.50 | 1  | 1    | 0       | 2\nMOV 0x20(%RBP),%RDX                   | 1     | 0    | 0    | 0.50 | 0.50 | 0  | 0    | 2       | 0.50\nLEA 0x190(%RBX),%R11                  | 1     | 0.50 | 0.50 | 0    | 0    | 0  | 0    | 1       | 0.50\nMOV %R14,%RDI                         | 1     | 0.33 | 0.33 | 0    | 0    | 0  | 0.33 | 1       | 0.33\nMOV %R11,(%RSP)                       | 1     | 0    | 0    | 0.50 | 0.50 | 1  | 0    | 3       | 1\nLEA 0x28(%R12),%R14                   | 1     | 0.50 | 0.50 | 0    | 0    | 0  | 0    | 1       | 0.50\nMOV %R11,%RSI                         | 1     | 0.33 | 0.33 | 0    | 0    | 0  | 0.33 | 1       | 0.33\nADD %R12,%RDX                         | 1     | 0.33 | 0.33 | 0    | 0    | 0  | 0.33 | 1       | 0.33\nCALL 19f90 <binvcrhs_>                | 3     | 0    | 0    | 0.50 | 0.50 | 1  | 1    | 0       | 2\nMOV 0x20(%RBP),%R8                    | 1     | 0    | 0    | 0.50 | 0.50 | 0  | 0    | 2       | 0.50\nMOV %R13,%RDI                         | 1     | 0.33 | 0.33 | 0    | 0    | 0  | 0.33 | 1       | 0.33\nLEA (%R8,%R12,1),%RSI                 | 1     | 0.50 | 0.50 | 0    | 0    | 0  | 0    | 1       | 0.50\nADD $0x50,%R12                        | 1     | 0.33 | 0.33 | 0    | 0    | 0  | 0.33 | 1       | 0.33\nLEA (%R8,%R14,1),%RDX                 | 1     | 0.50 | 0.50 | 0    | 0    | 0  | 0    | 1       | 0.50\nCALL 19680 <matvec_sub_>              | 3     | 0    | 0    | 0.50 | 0.50 | 1  | 1    | 0       | 2\nMOV (%RSP),%RSI                       | 1     | 0    | 0    | 0.50 | 0.50 | 0  | 0    | 2       | 0.50\nMOV %R15,%RDX                         | 1     | 0.33 | 0.33 | 0    | 0    | 0  | 0.33 | 1       | 0.33\nMOV %R13,%RDI                         | 1     | 0.33 | 0.33 | 0    | 0    | 0  | 0.33 | 1       | 0.33\nCALL 197e0 <matmul_sub_>              | 3     | 0    | 0    | 0.50 | 0.50 | 1  | 1    | 0       | 2\nMOV 0x20(%RBP),%RDX                   | 1     | 0    | 0    | 0.50 | 0.50 | 0  | 0    | 2       | 0.50\nLEA 0x3e8(%RBX),%RSI                  | 1     | 0.50 | 0.50 | 0    | 0    | 0  | 0    | 1       | 0.50\nMOV %R15,%RDI                         | 1     | 0.33 | 0.33 | 0    | 0    | 0  | 0.33 | 1       | 0.33\nADD $0x4b0,%RBX                       | 1     | 0.33 | 0.33 | 0    | 0    | 0  | 0.33 | 1       | 0.33\nADD %R14,%RDX                         | 1     | 0.33 | 0.33 | 0    | 0    | 0  | 0.33 | 1       | 0.33\nCALL 19f90 <binvcrhs_>                | 3     | 0    | 0    | 0.50 | 0.50 | 1  | 1    | 0       | 2\nCMP 0x8(%RSP),%RBX                    | 1     | 0.33 | 0.33 | 0.50 | 0.50 | 0  | 0.33 | 1       | 0.50\nJNE 15032 <x_solve_._omp_fn.0+0x1fb2> | 1     | 0    | 0    | 0    | 0    | 0  | 1    | 0       | 1-2\n",
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
          txt = "Your loop is not vectorized.\n2 data elements could be processed at once in vector registers.\nBy vectorizing your loop, you can lower the cost of an iteration from 12.25 to 6.12 cycles (2.00x speedup).",
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
      "The loop is defined in /users/user2210/NPB3.4-MZ-MPI/BT-MZ/x_solve.f90:341,347,354,363.\n",
      "The related source loop is not unrolled or unrolled with no peel/tail loop.",
    },
    nb_paths = 1,
  },
}
