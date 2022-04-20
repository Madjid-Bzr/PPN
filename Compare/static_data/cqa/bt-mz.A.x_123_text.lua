_cqa_text_report = {
  paths = {
    {
      hint = {
        {
          details = "Calling (and then returning from) a function prevents many compiler optimizations (like vectorization), breaks control flow (which reduces pipeline performance) and executes extra instructions to save/restore the registers used inside it, which is very expensive (dozens of cycles). Consider to inline small functions.\n - exact_solution: 1 occurrences\n",
          title = "CALL instructions",
          txt = "Detected function call instructions.\n",
        },
        {
          details = "These instructions generate more than one micro-operation and only one of them can be decoded during a cycle and the extra micro-operations increase pressure on execution units.\n - VCVTSI2SD: 1 occurrences\n",
          title = "Complex instructions",
          txt = "Detected COMPLEX INSTRUCTIONS.\n",
        },
        {
          workaround = "Avoid mixing data with different types. In particular, check if the type of constants is the same as array elements.",
          details = " - VCVTSI2SD (INT32/64 to FP64, scalar): 1 occurrences\n",
          title = "Conversion instructions",
          txt = "Detected expensive conversion instructions.",
        },
        {
          title = "Type of elements and instruction set",
          txt = "16 SSE or AVX instructions are processing arithmetic or math operations on double precision FP elements in scalar mode (one at a time).\n",
        },
        {
          title = "Matching between your loop (in the source code) and the binary loop",
          txt = "The binary loop is composed of 16 FP arithmetical operations:\n - 10: addition or subtraction\n - 6: multiply\nThe binary loop is loading 156 bytes (19 double precision FP elements).\nThe binary loop is storing 88 bytes (11 double precision FP elements).",
        },
        {
          title = "Arithmetic intensity",
          txt = "Arithmetic intensity is 0.07 FP operations per loaded or stored byte.",
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
          txt = "nb instructions    : 49\nnb uops            : 51\nloop length        : 299\nused x86 registers : 11\nused mmx registers : 0\nused xmm registers : 16\nused ymm registers : 0\nused zmm registers : 0\nnb stack references: 19\nADD-SUB / MUL ratio: 1.67\n",
        },
        {
          title = "Front-end",
          txt = "ASSUMED MACRO FUSION\nFIT IN UOP CACHE\nmicro-operation queue: 12.75 cycles\nfront end            : 12.75 cycles\n",
        },
        {
          title = "Back-end",
          txt = "       | P0   | P1    | P2    | P3    | P4    | P5\n----------------------------------------------------\nuops   | 7.00 | 11.00 | 16.00 | 16.00 | 12.00 | 6.00\ncycles | 7.00 | 11.00 | 16.00 | 16.00 | 12.00 | 6.00\n\nCycles executing div or sqrt instructions: NA\nLongest recurrence chain latency (RecMII): 1.00\n",
        },
        {
          title = "Cycles summary",
          txt = "Front-end : 12.75\nDispatch  : 16.00\nData deps.: 1.00\nOverall L1: 16.00\n",
        },
        {
          title = "Vectorization ratios",
          txt = "INT\nall    : 0%\nload   : 0%\nstore  : NA (no store vectorizable/vectorized instructions)\nmul    : NA (no mul vectorizable/vectorized instructions)\nadd-sub: NA (no add-sub vectorizable/vectorized instructions)\nfma    : NA (no fma vectorizable/vectorized instructions)\nother  : 0%\nFP\nall     : 2%\nload    : 0%\nstore   : 0%\nmul     : 0%\nadd-sub : 0%\nfma     : NA (no fma vectorizable/vectorized instructions)\ndiv/sqrt: NA (no div/sqrt vectorizable/vectorized instructions)\nother   : 100%\nINT+FP\nall     : 2%\nload    : 0%\nstore   : 0%\nmul     : 0%\nadd-sub : 0%\nfma     : NA (no fma vectorizable/vectorized instructions)\ndiv/sqrt: NA (no div/sqrt vectorizable/vectorized instructions)\nother   : 25%\n",
        },
        {
          title = "Vector efficiency ratios",
          txt = "INT\nall    : 45%\nload   : 50%\nstore  : NA (no store vectorizable/vectorized instructions)\nmul    : NA (no mul vectorizable/vectorized instructions)\nadd-sub: NA (no add-sub vectorizable/vectorized instructions)\nfma    : NA (no fma vectorizable/vectorized instructions)\nother  : 41%\nFP\nall     : 25%\nload    : 25%\nstore   : 25%\nmul     : 25%\nadd-sub : 25%\nfma     : NA (no fma vectorizable/vectorized instructions)\ndiv/sqrt: NA (no div/sqrt vectorizable/vectorized instructions)\nother   : 50%\nINT+FP\nall     : 27%\nload    : 27%\nstore   : 25%\nmul     : 25%\nadd-sub : 25%\nfma     : NA (no fma vectorizable/vectorized instructions)\ndiv/sqrt: NA (no div/sqrt vectorizable/vectorized instructions)\nother   : 43%\n",
        },
        {
          title = "Cycles and memory resources usage",
          txt = "Assuming all data fit into the L1 cache, each iteration of the binary loop takes 16.00 cycles. At this rate:\n - 30% of peak load performance is reached (9.75 out of 32.00 bytes loaded per cycle (GB/s @ 1GHz))\n - 34% of peak store performance is reached (5.50 out of 16.00 bytes stored per cycle (GB/s @ 1GHz))\n",
        },
        {
          title = "Front-end bottlenecks",
          txt = "Found no such bottlenecks.",
        },
        {
          title = "ASM code",
          txt = "In the binary file, the address of the loop is: 1ead0\n\nInstruction                             | Nb FU | P0   | P1   | P2   | P3   | P4 | P5   | Latency | Recip. throughput\n---------------------------------------------------------------------------------------------------------------------\nVXORPD %XMM5,%XMM5,%XMM5                | 1     | 0    | 0    | 0    | 0    | 0  | 0    | 0       | 0.25\nMOV 0x40(%RSP),%RCX                     | 1     | 0    | 0    | 0.50 | 0.50 | 0  | 0    | 2       | 0.50\nMOV %R14,%RDX                           | 1     | 0.33 | 0.33 | 0    | 0    | 0  | 0.33 | 1       | 0.33\nVMOVSD %XMM9,0x78(%RSP)                 | 1     | 0    | 0    | 0.50 | 0.50 | 1  | 0    | 3       | 1\nVCVTSI2SD %R15D,%XMM5,%XMM9             | 2     | 1    | 1    | 0    | 0    | 0  | 0    | 4       | 1.50\nMOV 0x48(%RSP),%RDI                     | 1     | 0    | 0    | 0.50 | 0.50 | 0  | 0    | 2       | 0.50\nMOV %R13,%RSI                           | 1     | 0.33 | 0.33 | 0    | 0    | 0  | 0.33 | 1       | 0.33\nVMOVSD %XMM3,0x58(%RSP)                 | 1     | 0    | 0    | 0.50 | 0.50 | 1  | 0    | 3       | 1\nVMULSD 0xde4b(%RIP),%XMM9,%XMM10        | 1     | 1    | 0    | 0.50 | 0.50 | 0  | 0    | 5       | 1\nVMOVSD %XMM14,0x60(%RSP)                | 1     | 0    | 0    | 0.50 | 0.50 | 1  | 0    | 3       | 1\nADD $0x1,%R15D                          | 1     | 0.33 | 0.33 | 0    | 0    | 0  | 0.33 | 1       | 0.33\nVMOVSD %XMM4,0x68(%RSP)                 | 1     | 0    | 0    | 0.50 | 0.50 | 1  | 0    | 3       | 1\nVMOVSD %XMM15,0x70(%RSP)                | 1     | 0    | 0    | 0.50 | 0.50 | 1  | 0    | 3       | 1\nVMOVSD %XMM10,0x98(%RSP)                | 1     | 0    | 0    | 0.50 | 0.50 | 1  | 0    | 3       | 1\nCALL 7120 <exact_solution_>             | 3     | 0    | 0    | 0.50 | 0.50 | 1  | 1    | 0       | 2\nMOV 0x8(%RBX),%R10                      | 1     | 0    | 0    | 0.50 | 0.50 | 0  | 0    | 2       | 0.50\nVMOVSD 0x68(%RSP),%XMM2                 | 1     | 0    | 0    | 0.50 | 0.50 | 0  | 0    | 3       | 0.50\nVMOVSD 0x70(%RSP),%XMM14                | 1     | 0    | 0    | 0.50 | 0.50 | 0  | 0    | 3       | 0.50\nVMOVSD 0x78(%RSP),%XMM5                 | 1     | 0    | 0    | 0.50 | 0.50 | 0  | 0    | 3       | 0.50\nVMOVSD 0x8(%R10,%R12,8),%XMM0           | 1     | 0    | 0    | 0.50 | 0.50 | 0  | 0    | 3       | 0.50\nVSUBSD 0xd8(%RSP),%XMM0,%XMM7           | 1     | 0    | 1    | 0.50 | 0.50 | 0  | 0    | 3       | 1\nVMOVSD (%R10,%R12,8),%XMM11             | 1     | 0    | 0    | 0.50 | 0.50 | 0  | 0    | 3       | 0.50\nVSUBSD 0xd0(%RSP),%XMM11,%XMM12         | 1     | 0    | 1    | 0.50 | 0.50 | 0  | 0    | 3       | 1\nVMULSD %XMM7,%XMM7,%XMM1                | 1     | 1    | 0    | 0    | 0    | 0  | 0    | 5       | 1\nVMOVSD 0x10(%R10,%R12,8),%XMM3          | 1     | 0    | 0    | 0.50 | 0.50 | 0  | 0    | 3       | 0.50\nVMOVSD 0x18(%R10,%R12,8),%XMM10         | 1     | 0    | 0    | 0.50 | 0.50 | 0  | 0    | 3       | 0.50\nVSUBSD 0xe0(%RSP),%XMM3,%XMM6           | 1     | 0    | 1    | 0.50 | 0.50 | 0  | 0    | 3       | 1\nVMULSD %XMM12,%XMM12,%XMM13             | 1     | 1    | 0    | 0    | 0    | 0  | 0    | 5       | 1\nVMOVSD 0x20(%R10,%R12,8),%XMM0          | 1     | 0    | 0    | 0.50 | 0.50 | 0  | 0    | 3       | 0.50\nADD $0x5,%R12                           | 1     | 0.33 | 0.33 | 0    | 0    | 0  | 0.33 | 1       | 0.33\nVSUBSD 0xe8(%RSP),%XMM10,%XMM11         | 1     | 0    | 1    | 0.50 | 0.50 | 0  | 0    | 3       | 1\nVSUBSD 0xf0(%RSP),%XMM0,%XMM7           | 1     | 0    | 1    | 0.50 | 0.50 | 0  | 0    | 3       | 1\nVMULSD %XMM6,%XMM6,%XMM8                | 1     | 1    | 0    | 0    | 0    | 0  | 0    | 5       | 1\nVADDSD %XMM1,%XMM2,%XMM4                | 1     | 0    | 1    | 0    | 0    | 0  | 0    | 3       | 1\nVMOVSD 0x58(%RSP),%XMM1                 | 1     | 0    | 0    | 0.50 | 0.50 | 0  | 0    | 3       | 0.50\nVMULSD %XMM11,%XMM11,%XMM12             | 1     | 1    | 0    | 0    | 0    | 0  | 0    | 5       | 1\nVADDSD %XMM13,%XMM14,%XMM15             | 1     | 0    | 1    | 0    | 0    | 0  | 0    | 3       | 1\nVMOVSD 0x60(%RSP),%XMM13                | 1     | 0    | 0    | 0.50 | 0.50 | 0  | 0    | 3       | 0.50\nVMULSD %XMM7,%XMM7,%XMM2                | 1     | 1    | 0    | 0    | 0    | 0  | 0    | 5       | 1\nVMOVSD %XMM4,0xa8(%RSP)                 | 1     | 0    | 0    | 0.50 | 0.50 | 1  | 0    | 3       | 1\nVMOVSD %XMM15,0xa0(%RSP)                | 1     | 0    | 0    | 0.50 | 0.50 | 1  | 0    | 3       | 1\nVADDSD %XMM8,%XMM5,%XMM9                | 1     | 0    | 1    | 0    | 0    | 0  | 0    | 3       | 1\nVADDSD %XMM12,%XMM13,%XMM14             | 1     | 0    | 1    | 0    | 0    | 0  | 0    | 3       | 1\nVMOVSD %XMM9,0xb0(%RSP)                 | 1     | 0    | 0    | 0.50 | 0.50 | 1  | 0    | 3       | 1\nVADDSD %XMM2,%XMM1,%XMM3                | 1     | 0    | 1    | 0    | 0    | 0  | 0    | 3       | 1\nVMOVSD %XMM14,0xb8(%RSP)                | 1     | 0    | 0    | 0.50 | 0.50 | 1  | 0    | 3       | 1\nVMOVSD %XMM3,0xc0(%RSP)                 | 1     | 0    | 0    | 0.50 | 0.50 | 1  | 0    | 3       | 1\nCMP %R15D,0x54(%RSP)                    | 1     | 0.33 | 0.33 | 0.50 | 0.50 | 0  | 0.33 | 1       | 0.50\nJNE 1ead0 <error_norm_._omp_fn.0+0x1b0> | 1     | 0    | 0    | 0    | 0    | 0  | 1    | 0       | 1-2\n",
        },
      },
      header = {
        "Warnings:\nDetected a function call instruction: ignoring called function instructions.\nRerun with --follow-calls=append to include them to analysis  or with --follow-calls=inline to simulate inlining.",
        "12% of peak computational performance is used (1.00 out of 8.00 FLOP per cycle (GFLOPS @ 1GHz))",
      },
      brief = {
      },
      gain = {
        {
          workaround = " - Try to reorganize arrays of structures to structures of arrays\n - Consider to permute loops (see vectorization gain report)\n - To reference allocatable arrays, use \"allocatable\" instead of \"pointer\" pointers or qualify them with the \"contiguous\" attribute (Fortran 2008)\n - For structures, limit to one indirection. For example, use a_b%c instead of a%b%c with a_b set to a%b before this loop\n",
          title = "Code clean check",
          txt = "Detected a slowdown caused by scalar integer instructions (typically used for address computation).\nBy removing them, you can lower the cost of an iteration from 16.00 to 14.00 cycles (1.14x speedup).",
        },
        {
          workaround = " - Try another compiler or update/tune your current one:\n  * recompile with fassociative-math (included in Ofast or ffast-math) to extend loop vectorization to FP reductions.\n - Remove inter-iterations dependences from your loop and make it unit-stride:\n  * If your arrays have 2 or more dimensions, check whether elements are accessed contiguously and, otherwise, try to permute loops accordingly:\nFortran storage order is column-major: do i do j a(i,j) = b(i,j) (slow, non stride 1) => do i do j a(j,i) = b(i,j) (fast, stride 1)\n  * If your loop streams arrays of structures (AoS), try to use structures of arrays instead (SoA):\ndo i a(i)%x = b(i)%x (slow, non stride 1) => do i a%x(i) = b%x(i) (fast, stride 1)\n",
          details = "Store and arithmetical SSE/AVX instructions are used in scalar version (process only one data element in vector registers).\nSince your execution units are vector units, only a vectorized loop can use their full power.\n",
          title = "Vectorization",
          txt = "Your loop is probably not vectorized.\nOnly 27% of vector register length is used (average across all SSE/AVX instructions).\nBy vectorizing your loop, you can lower the cost of an iteration from 16.00 to 5.50 cycles (2.91x speedup).",
        },
        {
          workaround = " - Read less array elements\nAll SSE and/or AVX registers are used:\nin that case, try to relax register pressure by reducing the unroll factor or splitting your loop\n - Write less array elements\n - Provide more information to your compiler:\n  * hardcode the bounds of the corresponding 'for' loop\n",
          title = "Execution units bottlenecks",
          txt = "Performance is limited by:\n - reading data from caches/RAM (load units are a bottleneck)\n - writing data to caches/RAM (the store unit is a bottleneck)\n\nBy removing all these bottlenecks, you can lower the cost of an iteration from 16.00 to 12.75 cycles (1.25x speedup).\n",
        },
      },
      potential = {
      },
    },
  },
  AVG = {
      hint = {
        {
          details = "Calling (and then returning from) a function prevents many compiler optimizations (like vectorization), breaks control flow (which reduces pipeline performance) and executes extra instructions to save/restore the registers used inside it, which is very expensive (dozens of cycles). Consider to inline small functions.\n - exact_solution: 1 occurrences\n",
          title = "CALL instructions",
          txt = "Detected function call instructions.\n",
        },
        {
          details = "These instructions generate more than one micro-operation and only one of them can be decoded during a cycle and the extra micro-operations increase pressure on execution units.\n - VCVTSI2SD: 1 occurrences\n",
          title = "Complex instructions",
          txt = "Detected COMPLEX INSTRUCTIONS.\n",
        },
        {
          workaround = "Avoid mixing data with different types. In particular, check if the type of constants is the same as array elements.",
          details = " - VCVTSI2SD (INT32/64 to FP64, scalar): 1 occurrences\n",
          title = "Conversion instructions",
          txt = "Detected expensive conversion instructions.",
        },
        {
          title = "Type of elements and instruction set",
          txt = "16 SSE or AVX instructions are processing arithmetic or math operations on double precision FP elements in scalar mode (one at a time).\n",
        },
        {
          title = "Matching between your loop (in the source code) and the binary loop",
          txt = "The binary loop is composed of 16 FP arithmetical operations:\n - 10: addition or subtraction\n - 6: multiply\nThe binary loop is loading 156 bytes (19 double precision FP elements).\nThe binary loop is storing 88 bytes (11 double precision FP elements).",
        },
        {
          title = "Arithmetic intensity",
          txt = "Arithmetic intensity is 0.07 FP operations per loaded or stored byte.",
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
          txt = "nb instructions    : 49\nnb uops            : 51\nloop length        : 299\nused x86 registers : 11\nused mmx registers : 0\nused xmm registers : 16\nused ymm registers : 0\nused zmm registers : 0\nnb stack references: 19\nADD-SUB / MUL ratio: 1.67\n",
        },
        {
          title = "Front-end",
          txt = "ASSUMED MACRO FUSION\nFIT IN UOP CACHE\nmicro-operation queue: 12.75 cycles\nfront end            : 12.75 cycles\n",
        },
        {
          title = "Back-end",
          txt = "       | P0   | P1    | P2    | P3    | P4    | P5\n----------------------------------------------------\nuops   | 7.00 | 11.00 | 16.00 | 16.00 | 12.00 | 6.00\ncycles | 7.00 | 11.00 | 16.00 | 16.00 | 12.00 | 6.00\n\nCycles executing div or sqrt instructions: NA\nLongest recurrence chain latency (RecMII): 1.00\n",
        },
        {
          title = "Cycles summary",
          txt = "Front-end : 12.75\nDispatch  : 16.00\nData deps.: 1.00\nOverall L1: 16.00\n",
        },
        {
          title = "Vectorization ratios",
          txt = "INT\nall    : 0%\nload   : 0%\nstore  : NA (no store vectorizable/vectorized instructions)\nmul    : NA (no mul vectorizable/vectorized instructions)\nadd-sub: NA (no add-sub vectorizable/vectorized instructions)\nfma    : NA (no fma vectorizable/vectorized instructions)\nother  : 0%\nFP\nall     : 2%\nload    : 0%\nstore   : 0%\nmul     : 0%\nadd-sub : 0%\nfma     : NA (no fma vectorizable/vectorized instructions)\ndiv/sqrt: NA (no div/sqrt vectorizable/vectorized instructions)\nother   : 100%\nINT+FP\nall     : 2%\nload    : 0%\nstore   : 0%\nmul     : 0%\nadd-sub : 0%\nfma     : NA (no fma vectorizable/vectorized instructions)\ndiv/sqrt: NA (no div/sqrt vectorizable/vectorized instructions)\nother   : 25%\n",
        },
        {
          title = "Vector efficiency ratios",
          txt = "INT\nall    : 45%\nload   : 50%\nstore  : NA (no store vectorizable/vectorized instructions)\nmul    : NA (no mul vectorizable/vectorized instructions)\nadd-sub: NA (no add-sub vectorizable/vectorized instructions)\nfma    : NA (no fma vectorizable/vectorized instructions)\nother  : 41%\nFP\nall     : 25%\nload    : 25%\nstore   : 25%\nmul     : 25%\nadd-sub : 25%\nfma     : NA (no fma vectorizable/vectorized instructions)\ndiv/sqrt: NA (no div/sqrt vectorizable/vectorized instructions)\nother   : 50%\nINT+FP\nall     : 27%\nload    : 27%\nstore   : 25%\nmul     : 25%\nadd-sub : 25%\nfma     : NA (no fma vectorizable/vectorized instructions)\ndiv/sqrt: NA (no div/sqrt vectorizable/vectorized instructions)\nother   : 43%\n",
        },
        {
          title = "Cycles and memory resources usage",
          txt = "Assuming all data fit into the L1 cache, each iteration of the binary loop takes 16.00 cycles. At this rate:\n - 30% of peak load performance is reached (9.75 out of 32.00 bytes loaded per cycle (GB/s @ 1GHz))\n - 34% of peak store performance is reached (5.50 out of 16.00 bytes stored per cycle (GB/s @ 1GHz))\n",
        },
        {
          title = "Front-end bottlenecks",
          txt = "Found no such bottlenecks.",
        },
        {
          title = "ASM code",
          txt = "In the binary file, the address of the loop is: 1ead0\n\nInstruction                             | Nb FU | P0   | P1   | P2   | P3   | P4 | P5   | Latency | Recip. throughput\n---------------------------------------------------------------------------------------------------------------------\nVXORPD %XMM5,%XMM5,%XMM5                | 1     | 0    | 0    | 0    | 0    | 0  | 0    | 0       | 0.25\nMOV 0x40(%RSP),%RCX                     | 1     | 0    | 0    | 0.50 | 0.50 | 0  | 0    | 2       | 0.50\nMOV %R14,%RDX                           | 1     | 0.33 | 0.33 | 0    | 0    | 0  | 0.33 | 1       | 0.33\nVMOVSD %XMM9,0x78(%RSP)                 | 1     | 0    | 0    | 0.50 | 0.50 | 1  | 0    | 3       | 1\nVCVTSI2SD %R15D,%XMM5,%XMM9             | 2     | 1    | 1    | 0    | 0    | 0  | 0    | 4       | 1.50\nMOV 0x48(%RSP),%RDI                     | 1     | 0    | 0    | 0.50 | 0.50 | 0  | 0    | 2       | 0.50\nMOV %R13,%RSI                           | 1     | 0.33 | 0.33 | 0    | 0    | 0  | 0.33 | 1       | 0.33\nVMOVSD %XMM3,0x58(%RSP)                 | 1     | 0    | 0    | 0.50 | 0.50 | 1  | 0    | 3       | 1\nVMULSD 0xde4b(%RIP),%XMM9,%XMM10        | 1     | 1    | 0    | 0.50 | 0.50 | 0  | 0    | 5       | 1\nVMOVSD %XMM14,0x60(%RSP)                | 1     | 0    | 0    | 0.50 | 0.50 | 1  | 0    | 3       | 1\nADD $0x1,%R15D                          | 1     | 0.33 | 0.33 | 0    | 0    | 0  | 0.33 | 1       | 0.33\nVMOVSD %XMM4,0x68(%RSP)                 | 1     | 0    | 0    | 0.50 | 0.50 | 1  | 0    | 3       | 1\nVMOVSD %XMM15,0x70(%RSP)                | 1     | 0    | 0    | 0.50 | 0.50 | 1  | 0    | 3       | 1\nVMOVSD %XMM10,0x98(%RSP)                | 1     | 0    | 0    | 0.50 | 0.50 | 1  | 0    | 3       | 1\nCALL 7120 <exact_solution_>             | 3     | 0    | 0    | 0.50 | 0.50 | 1  | 1    | 0       | 2\nMOV 0x8(%RBX),%R10                      | 1     | 0    | 0    | 0.50 | 0.50 | 0  | 0    | 2       | 0.50\nVMOVSD 0x68(%RSP),%XMM2                 | 1     | 0    | 0    | 0.50 | 0.50 | 0  | 0    | 3       | 0.50\nVMOVSD 0x70(%RSP),%XMM14                | 1     | 0    | 0    | 0.50 | 0.50 | 0  | 0    | 3       | 0.50\nVMOVSD 0x78(%RSP),%XMM5                 | 1     | 0    | 0    | 0.50 | 0.50 | 0  | 0    | 3       | 0.50\nVMOVSD 0x8(%R10,%R12,8),%XMM0           | 1     | 0    | 0    | 0.50 | 0.50 | 0  | 0    | 3       | 0.50\nVSUBSD 0xd8(%RSP),%XMM0,%XMM7           | 1     | 0    | 1    | 0.50 | 0.50 | 0  | 0    | 3       | 1\nVMOVSD (%R10,%R12,8),%XMM11             | 1     | 0    | 0    | 0.50 | 0.50 | 0  | 0    | 3       | 0.50\nVSUBSD 0xd0(%RSP),%XMM11,%XMM12         | 1     | 0    | 1    | 0.50 | 0.50 | 0  | 0    | 3       | 1\nVMULSD %XMM7,%XMM7,%XMM1                | 1     | 1    | 0    | 0    | 0    | 0  | 0    | 5       | 1\nVMOVSD 0x10(%R10,%R12,8),%XMM3          | 1     | 0    | 0    | 0.50 | 0.50 | 0  | 0    | 3       | 0.50\nVMOVSD 0x18(%R10,%R12,8),%XMM10         | 1     | 0    | 0    | 0.50 | 0.50 | 0  | 0    | 3       | 0.50\nVSUBSD 0xe0(%RSP),%XMM3,%XMM6           | 1     | 0    | 1    | 0.50 | 0.50 | 0  | 0    | 3       | 1\nVMULSD %XMM12,%XMM12,%XMM13             | 1     | 1    | 0    | 0    | 0    | 0  | 0    | 5       | 1\nVMOVSD 0x20(%R10,%R12,8),%XMM0          | 1     | 0    | 0    | 0.50 | 0.50 | 0  | 0    | 3       | 0.50\nADD $0x5,%R12                           | 1     | 0.33 | 0.33 | 0    | 0    | 0  | 0.33 | 1       | 0.33\nVSUBSD 0xe8(%RSP),%XMM10,%XMM11         | 1     | 0    | 1    | 0.50 | 0.50 | 0  | 0    | 3       | 1\nVSUBSD 0xf0(%RSP),%XMM0,%XMM7           | 1     | 0    | 1    | 0.50 | 0.50 | 0  | 0    | 3       | 1\nVMULSD %XMM6,%XMM6,%XMM8                | 1     | 1    | 0    | 0    | 0    | 0  | 0    | 5       | 1\nVADDSD %XMM1,%XMM2,%XMM4                | 1     | 0    | 1    | 0    | 0    | 0  | 0    | 3       | 1\nVMOVSD 0x58(%RSP),%XMM1                 | 1     | 0    | 0    | 0.50 | 0.50 | 0  | 0    | 3       | 0.50\nVMULSD %XMM11,%XMM11,%XMM12             | 1     | 1    | 0    | 0    | 0    | 0  | 0    | 5       | 1\nVADDSD %XMM13,%XMM14,%XMM15             | 1     | 0    | 1    | 0    | 0    | 0  | 0    | 3       | 1\nVMOVSD 0x60(%RSP),%XMM13                | 1     | 0    | 0    | 0.50 | 0.50 | 0  | 0    | 3       | 0.50\nVMULSD %XMM7,%XMM7,%XMM2                | 1     | 1    | 0    | 0    | 0    | 0  | 0    | 5       | 1\nVMOVSD %XMM4,0xa8(%RSP)                 | 1     | 0    | 0    | 0.50 | 0.50 | 1  | 0    | 3       | 1\nVMOVSD %XMM15,0xa0(%RSP)                | 1     | 0    | 0    | 0.50 | 0.50 | 1  | 0    | 3       | 1\nVADDSD %XMM8,%XMM5,%XMM9                | 1     | 0    | 1    | 0    | 0    | 0  | 0    | 3       | 1\nVADDSD %XMM12,%XMM13,%XMM14             | 1     | 0    | 1    | 0    | 0    | 0  | 0    | 3       | 1\nVMOVSD %XMM9,0xb0(%RSP)                 | 1     | 0    | 0    | 0.50 | 0.50 | 1  | 0    | 3       | 1\nVADDSD %XMM2,%XMM1,%XMM3                | 1     | 0    | 1    | 0    | 0    | 0  | 0    | 3       | 1\nVMOVSD %XMM14,0xb8(%RSP)                | 1     | 0    | 0    | 0.50 | 0.50 | 1  | 0    | 3       | 1\nVMOVSD %XMM3,0xc0(%RSP)                 | 1     | 0    | 0    | 0.50 | 0.50 | 1  | 0    | 3       | 1\nCMP %R15D,0x54(%RSP)                    | 1     | 0.33 | 0.33 | 0.50 | 0.50 | 0  | 0.33 | 1       | 0.50\nJNE 1ead0 <error_norm_._omp_fn.0+0x1b0> | 1     | 0    | 0    | 0    | 0    | 0  | 1    | 0       | 1-2\n",
        },
      },
      header = {
        "Warnings:\nDetected a function call instruction: ignoring called function instructions.\nRerun with --follow-calls=append to include them to analysis  or with --follow-calls=inline to simulate inlining.",
        "12% of peak computational performance is used (1.00 out of 8.00 FLOP per cycle (GFLOPS @ 1GHz))",
      },
      brief = {
      },
      gain = {
        {
          workaround = " - Try to reorganize arrays of structures to structures of arrays\n - Consider to permute loops (see vectorization gain report)\n - To reference allocatable arrays, use \"allocatable\" instead of \"pointer\" pointers or qualify them with the \"contiguous\" attribute (Fortran 2008)\n - For structures, limit to one indirection. For example, use a_b%c instead of a%b%c with a_b set to a%b before this loop\n",
          title = "Code clean check",
          txt = "Detected a slowdown caused by scalar integer instructions (typically used for address computation).\nBy removing them, you can lower the cost of an iteration from 16.00 to 14.00 cycles (1.14x speedup).",
        },
        {
          workaround = " - Try another compiler or update/tune your current one:\n  * recompile with fassociative-math (included in Ofast or ffast-math) to extend loop vectorization to FP reductions.\n - Remove inter-iterations dependences from your loop and make it unit-stride:\n  * If your arrays have 2 or more dimensions, check whether elements are accessed contiguously and, otherwise, try to permute loops accordingly:\nFortran storage order is column-major: do i do j a(i,j) = b(i,j) (slow, non stride 1) => do i do j a(j,i) = b(i,j) (fast, stride 1)\n  * If your loop streams arrays of structures (AoS), try to use structures of arrays instead (SoA):\ndo i a(i)%x = b(i)%x (slow, non stride 1) => do i a%x(i) = b%x(i) (fast, stride 1)\n",
          details = "Store and arithmetical SSE/AVX instructions are used in scalar version (process only one data element in vector registers).\nSince your execution units are vector units, only a vectorized loop can use their full power.\n",
          title = "Vectorization",
          txt = "Your loop is probably not vectorized.\nOnly 27% of vector register length is used (average across all SSE/AVX instructions).\nBy vectorizing your loop, you can lower the cost of an iteration from 16.00 to 5.50 cycles (2.91x speedup).",
        },
        {
          workaround = " - Read less array elements\nAll SSE and/or AVX registers are used:\nin that case, try to relax register pressure by reducing the unroll factor or splitting your loop\n - Write less array elements\n - Provide more information to your compiler:\n  * hardcode the bounds of the corresponding 'for' loop\n",
          title = "Execution units bottlenecks",
          txt = "Performance is limited by:\n - reading data from caches/RAM (load units are a bottleneck)\n - writing data to caches/RAM (the store unit is a bottleneck)\n\nBy removing all these bottlenecks, you can lower the cost of an iteration from 16.00 to 12.75 cycles (1.25x speedup).\n",
        },
      },
      potential = {
      },
    },
  common = {
    header = {
      "The loop is defined in /users/user2210/NPB3.4-MZ-MPI/BT-MZ/error.f90:38-44.\n",
      "The related source loop is not unrolled or unrolled with no peel/tail loop.",
    },
    nb_paths = 1,
  },
}
