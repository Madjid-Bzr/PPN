_cqa_text_report = {
  paths = {
    {
      hint = {
        {
          details = "These instructions generate more than one micro-operation and only one of them can be decoded during a cycle and the extra micro-operations increase pressure on execution units.\n - RET: 1 occurrences\n",
          title = "Complex instructions",
          txt = "Detected COMPLEX INSTRUCTIONS.\n",
        },
        {
          title = "Type of elements and instruction set",
          txt = "50 SSE or AVX instructions are processing arithmetic or math operations on double precision FP elements in scalar mode (one at a time).\n",
        },
        {
          title = "Matching between your function (in the source code) and the binary function",
          txt = "The binary function is composed of 50 FP arithmetical operations:\n - 25: addition or subtraction\n - 25: multiply\nThe binary function is loading 280 bytes (35 double precision FP elements).\nThe binary function is storing 40 bytes (5 double precision FP elements).",
        },
        {
          title = "Arithmetic intensity",
          txt = "Arithmetic intensity is 0.16 FP operations per loaded or stored byte.",
        },
      },
      expert = {
        {
          title = "General properties",
          txt = "nb instructions    : 66\nnb uops            : 67\nloop length        : 340\nused x86 registers : 3\nused mmx registers : 0\nused xmm registers : 16\nused ymm registers : 0\nused zmm registers : 0\nnb stack references: 0\nADD-SUB / MUL ratio: 1.00\n",
        },
        {
          title = "Front-end",
          txt = "MACRO FUSION NOT POSSIBLE\nFIT IN UOP CACHE\nmicro-operation queue: 16.75 cycles\nfront end            : 16.75 cycles\n",
        },
        {
          title = "Back-end",
          txt = "       | P0    | P1    | P2    | P3    | P4   | P5\n----------------------------------------------------\nuops   | 25.00 | 25.00 | 20.50 | 20.50 | 5.00 | 1.00\ncycles | 25.00 | 25.00 | 20.50 | 20.50 | 5.00 | 1.00\n\nCycles executing div or sqrt instructions: NA\n",
        },
        {
          title = "Cycles summary",
          txt = "Front-end : 16.75\nDispatch  : 25.00\nOverall L1: 25.00\n",
        },
        {
          title = "Vectorization ratios",
          txt = "all     : 0%\nload    : 0%\nstore   : 0%\nmul     : 0%\nadd-sub : 0%\nfma     : NA (no fma vectorizable/vectorized instructions)\ndiv/sqrt: NA (no div/sqrt vectorizable/vectorized instructions)\nother   : NA (no other vectorizable/vectorized instructions)\n",
        },
        {
          title = "Vector efficiency ratios",
          txt = "all     : 25%\nload    : 25%\nstore   : 25%\nmul     : 25%\nadd-sub : 25%\nfma     : NA (no fma vectorizable/vectorized instructions)\ndiv/sqrt: NA (no div/sqrt vectorizable/vectorized instructions)\nother   : NA (no other vectorizable/vectorized instructions)\n",
        },
        {
          title = "Cycles and memory resources usage",
          txt = "Assuming all data fit into the L1 cache, each call to the function takes 25.00 cycles. At this rate:\n - 35% of peak load performance is reached (11.20 out of 32.00 bytes loaded per cycle (GB/s @ 1GHz))\n - 10% of peak store performance is reached (1.60 out of 16.00 bytes stored per cycle (GB/s @ 1GHz))\n",
        },
        {
          title = "Front-end bottlenecks",
          txt = "Found no such bottlenecks.",
        },
        {
          title = "ASM code",
          txt = "In the binary file, the address of the function is: 19680\n\nInstruction                    | Nb FU | P0 | P1 | P2   | P3   | P4 | P5 | Latency | Recip. throughput\n------------------------------------------------------------------------------------------------------\nVMOVSD (%RSI),%XMM0            | 1     | 0  | 0  | 0.50 | 0.50 | 0  | 0  | 3       | 0.50\nVMULSD (%RDI),%XMM0,%XMM6      | 1     | 1  | 0  | 0.50 | 0.50 | 0  | 0  | 5       | 1\nVMOVSD 0x8(%RSI),%XMM5         | 1     | 0  | 0  | 0.50 | 0.50 | 0  | 0  | 3       | 0.50\nVMOVSD (%RDX),%XMM1            | 1     | 0  | 0  | 0.50 | 0.50 | 0  | 0  | 3       | 0.50\nVMULSD 0x28(%RDI),%XMM5,%XMM8  | 1     | 1  | 0  | 0.50 | 0.50 | 0  | 0  | 5       | 1\nVMOVSD 0x10(%RSI),%XMM4        | 1     | 0  | 0  | 0.50 | 0.50 | 0  | 0  | 3       | 0.50\nVSUBSD %XMM6,%XMM1,%XMM7       | 1     | 0  | 1  | 0    | 0    | 0  | 0  | 3       | 1\nVMULSD 0x8(%RDI),%XMM0,%XMM6   | 1     | 1  | 0  | 0.50 | 0.50 | 0  | 0  | 5       | 1\nVMULSD 0x50(%RDI),%XMM4,%XMM10 | 1     | 1  | 0  | 0.50 | 0.50 | 0  | 0  | 5       | 1\nVMOVSD 0x8(%RDX),%XMM1         | 1     | 0  | 0  | 0.50 | 0.50 | 0  | 0  | 3       | 0.50\nVSUBSD %XMM8,%XMM7,%XMM9       | 1     | 0  | 1  | 0    | 0    | 0  | 0  | 3       | 1\nVMULSD 0x30(%RDI),%XMM5,%XMM8  | 1     | 1  | 0  | 0.50 | 0.50 | 0  | 0  | 5       | 1\nVMOVSD 0x18(%RSI),%XMM3        | 1     | 0  | 0  | 0.50 | 0.50 | 0  | 0  | 3       | 0.50\nVMULSD 0x78(%RDI),%XMM3,%XMM12 | 1     | 1  | 0  | 0.50 | 0.50 | 0  | 0  | 5       | 1\nVSUBSD %XMM6,%XMM1,%XMM7       | 1     | 0  | 1  | 0    | 0    | 0  | 0  | 3       | 1\nVMULSD 0x10(%RDI),%XMM0,%XMM6  | 1     | 1  | 0  | 0.50 | 0.50 | 0  | 0  | 5       | 1\nVSUBSD %XMM10,%XMM9,%XMM11     | 1     | 0  | 1  | 0    | 0    | 0  | 0  | 3       | 1\nVMULSD 0x58(%RDI),%XMM4,%XMM10 | 1     | 1  | 0  | 0.50 | 0.50 | 0  | 0  | 5       | 1\nVMOVSD 0x20(%RSI),%XMM2        | 1     | 0  | 0  | 0.50 | 0.50 | 0  | 0  | 3       | 0.50\nVSUBSD %XMM8,%XMM7,%XMM9       | 1     | 0  | 1  | 0    | 0    | 0  | 0  | 3       | 1\nVMULSD 0xa0(%RDI),%XMM2,%XMM14 | 1     | 1  | 0  | 0.50 | 0.50 | 0  | 0  | 5       | 1\nVMULSD 0x38(%RDI),%XMM5,%XMM8  | 1     | 1  | 0  | 0.50 | 0.50 | 0  | 0  | 5       | 1\nVSUBSD %XMM12,%XMM11,%XMM13    | 1     | 0  | 1  | 0    | 0    | 0  | 0  | 3       | 1\nVMOVSD 0x10(%RDX),%XMM1        | 1     | 0  | 0  | 0.50 | 0.50 | 0  | 0  | 3       | 0.50\nVMULSD 0x80(%RDI),%XMM3,%XMM12 | 1     | 1  | 0  | 0.50 | 0.50 | 0  | 0  | 5       | 1\nVSUBSD %XMM10,%XMM9,%XMM11     | 1     | 0  | 1  | 0    | 0    | 0  | 0  | 3       | 1\nVSUBSD %XMM6,%XMM1,%XMM7       | 1     | 0  | 1  | 0    | 0    | 0  | 0  | 3       | 1\nVMULSD 0x18(%RDI),%XMM0,%XMM6  | 1     | 1  | 0  | 0.50 | 0.50 | 0  | 0  | 5       | 1\nVMULSD 0x60(%RDI),%XMM4,%XMM10 | 1     | 1  | 0  | 0.50 | 0.50 | 0  | 0  | 5       | 1\nVSUBSD %XMM14,%XMM13,%XMM15    | 1     | 0  | 1  | 0    | 0    | 0  | 0  | 3       | 1\nVMULSD 0xa8(%RDI),%XMM2,%XMM14 | 1     | 1  | 0  | 0.50 | 0.50 | 0  | 0  | 5       | 1\nVSUBSD %XMM8,%XMM7,%XMM9       | 1     | 0  | 1  | 0    | 0    | 0  | 0  | 3       | 1\nVMOVSD 0x18(%RDX),%XMM1        | 1     | 0  | 0  | 0.50 | 0.50 | 0  | 0  | 3       | 0.50\nVMULSD 0x40(%RDI),%XMM5,%XMM8  | 1     | 1  | 0  | 0.50 | 0.50 | 0  | 0  | 5       | 1\nVSUBSD %XMM12,%XMM11,%XMM13    | 1     | 0  | 1  | 0    | 0    | 0  | 0  | 3       | 1\nVMOVSD %XMM15,(%RDX)           | 1     | 0  | 0  | 0.50 | 0.50 | 1  | 0  | 3       | 1\nVMULSD 0x88(%RDI),%XMM3,%XMM12 | 1     | 1  | 0  | 0.50 | 0.50 | 0  | 0  | 5       | 1\nVSUBSD %XMM6,%XMM1,%XMM7       | 1     | 0  | 1  | 0    | 0    | 0  | 0  | 3       | 1\nVSUBSD %XMM10,%XMM9,%XMM11     | 1     | 0  | 1  | 0    | 0    | 0  | 0  | 3       | 1\nVMULSD 0x68(%RDI),%XMM4,%XMM10 | 1     | 1  | 0  | 0.50 | 0.50 | 0  | 0  | 5       | 1\nVSUBSD %XMM14,%XMM13,%XMM15    | 1     | 0  | 1  | 0    | 0    | 0  | 0  | 3       | 1\nVMULSD 0xb0(%RDI),%XMM2,%XMM14 | 1     | 1  | 0  | 0.50 | 0.50 | 0  | 0  | 5       | 1\nVSUBSD %XMM8,%XMM7,%XMM9       | 1     | 0  | 1  | 0    | 0    | 0  | 0  | 3       | 1\nVSUBSD %XMM12,%XMM11,%XMM13    | 1     | 0  | 1  | 0    | 0    | 0  | 0  | 3       | 1\nVMULSD 0x90(%RDI),%XMM3,%XMM12 | 1     | 1  | 0  | 0.50 | 0.50 | 0  | 0  | 5       | 1\nVMOVSD %XMM15,0x8(%RDX)        | 1     | 0  | 0  | 0.50 | 0.50 | 1  | 0  | 3       | 1\nVSUBSD %XMM10,%XMM9,%XMM11     | 1     | 0  | 1  | 0    | 0    | 0  | 0  | 3       | 1\nVSUBSD %XMM14,%XMM13,%XMM15    | 1     | 0  | 1  | 0    | 0    | 0  | 0  | 3       | 1\nVMULSD 0xb8(%RDI),%XMM2,%XMM14 | 1     | 1  | 0  | 0.50 | 0.50 | 0  | 0  | 5       | 1\nVSUBSD %XMM12,%XMM11,%XMM13    | 1     | 0  | 1  | 0    | 0    | 0  | 0  | 3       | 1\nVMOVSD %XMM15,0x10(%RDX)       | 1     | 0  | 0  | 0.50 | 0.50 | 1  | 0  | 3       | 1\nVSUBSD %XMM14,%XMM13,%XMM15    | 1     | 0  | 1  | 0    | 0    | 0  | 0  | 3       | 1\nVMOVSD %XMM15,0x18(%RDX)       | 1     | 0  | 0  | 0.50 | 0.50 | 1  | 0  | 3       | 1\nVMULSD 0x20(%RDI),%XMM0,%XMM6  | 1     | 1  | 0  | 0.50 | 0.50 | 0  | 0  | 5       | 1\nVMULSD 0x48(%RDI),%XMM5,%XMM5  | 1     | 1  | 0  | 0.50 | 0.50 | 0  | 0  | 5       | 1\nVMOVSD 0x20(%RDX),%XMM0        | 1     | 0  | 0  | 0.50 | 0.50 | 0  | 0  | 3       | 0.50\nVMULSD 0x70(%RDI),%XMM4,%XMM4  | 1     | 1  | 0  | 0.50 | 0.50 | 0  | 0  | 5       | 1\nVMULSD 0x98(%RDI),%XMM3,%XMM3  | 1     | 1  | 0  | 0.50 | 0.50 | 0  | 0  | 5       | 1\nVSUBSD %XMM6,%XMM0,%XMM1       | 1     | 0  | 1  | 0    | 0    | 0  | 0  | 3       | 1\nVMULSD 0xc0(%RDI),%XMM2,%XMM2  | 1     | 1  | 0  | 0.50 | 0.50 | 0  | 0  | 5       | 1\nVSUBSD %XMM5,%XMM1,%XMM7       | 1     | 0  | 1  | 0    | 0    | 0  | 0  | 3       | 1\nVSUBSD %XMM4,%XMM7,%XMM8       | 1     | 0  | 1  | 0    | 0    | 0  | 0  | 3       | 1\nVSUBSD %XMM3,%XMM8,%XMM9       | 1     | 0  | 1  | 0    | 0    | 0  | 0  | 3       | 1\nVSUBSD %XMM2,%XMM9,%XMM10      | 1     | 0  | 1  | 0    | 0    | 0  | 0  | 3       | 1\nVMOVSD %XMM10,0x20(%RDX)       | 1     | 0  | 0  | 0.50 | 0.50 | 1  | 0  | 3       | 1\nRET                            | 2     | 0  | 0  | 0.50 | 0.50 | 0  | 1  | 0       | 2\n",
        },
      },
      header = {
        "25% of peak computational performance is used (2.00 out of 8.00 FLOP per cycle (GFLOPS @ 1GHz))",
      },
      brief = {
      },
      gain = {
        {
          workaround = " - Try another compiler or update/tune your current one\n - Make array accesses unit-stride:\n  * If your function streams arrays of structures (AoS), try to use structures of arrays instead (SoA):\ndo i a(i)%x = b(i)%x (slow, non stride 1) => do i a%x(i) = b%x(i) (fast, stride 1)\n",
          details = "All SSE/AVX instructions are used in scalar version (process only one data element in vector registers).\nSince your execution units are vector units, only a vectorized function can use their full power.\n",
          title = "Vectorization",
          txt = "Your function is not vectorized.\n4 data elements could be processed at once in vector registers.\nBy vectorizing your function, you can lower the cost of an iteration from 25.00 to 8.75 cycles (2.86x speedup).",
        },
        {
          workaround = " - Reduce the number of FP add instructions\n - Reduce the number of FP multiply instructions\n",
          title = "Execution units bottlenecks",
          txt = "Performance is limited by:\n - execution of FP add operations (the FP add unit is a bottleneck)\n - execution of FP multiply operations (the FP multiply unit is a bottleneck)\n\nBy removing all these bottlenecks, you can lower the cost of an iteration from 25.00 to 20.50 cycles (1.22x speedup).\n",
        },
      },
      potential = {
      },
    },
  },
  AVG = {
      hint = {
        {
          details = "These instructions generate more than one micro-operation and only one of them can be decoded during a cycle and the extra micro-operations increase pressure on execution units.\n - RET: 1 occurrences\n",
          title = "Complex instructions",
          txt = "Detected COMPLEX INSTRUCTIONS.\n",
        },
        {
          title = "Type of elements and instruction set",
          txt = "50 SSE or AVX instructions are processing arithmetic or math operations on double precision FP elements in scalar mode (one at a time).\n",
        },
        {
          title = "Matching between your function (in the source code) and the binary function",
          txt = "The binary function is composed of 50 FP arithmetical operations:\n - 25: addition or subtraction\n - 25: multiply\nThe binary function is loading 280 bytes (35 double precision FP elements).\nThe binary function is storing 40 bytes (5 double precision FP elements).",
        },
        {
          title = "Arithmetic intensity",
          txt = "Arithmetic intensity is 0.16 FP operations per loaded or stored byte.",
        },
      },
      expert = {
        {
          title = "General properties",
          txt = "nb instructions    : 66\nnb uops            : 67\nloop length        : 340\nused x86 registers : 3\nused mmx registers : 0\nused xmm registers : 16\nused ymm registers : 0\nused zmm registers : 0\nnb stack references: 0\nADD-SUB / MUL ratio: 1.00\n",
        },
        {
          title = "Front-end",
          txt = "MACRO FUSION NOT POSSIBLE\nFIT IN UOP CACHE\nmicro-operation queue: 16.75 cycles\nfront end            : 16.75 cycles\n",
        },
        {
          title = "Back-end",
          txt = "       | P0    | P1    | P2    | P3    | P4   | P5\n----------------------------------------------------\nuops   | 25.00 | 25.00 | 20.50 | 20.50 | 5.00 | 1.00\ncycles | 25.00 | 25.00 | 20.50 | 20.50 | 5.00 | 1.00\n\nCycles executing div or sqrt instructions: NA\n",
        },
        {
          title = "Cycles summary",
          txt = "Front-end : 16.75\nDispatch  : 25.00\nOverall L1: 25.00\n",
        },
        {
          title = "Vectorization ratios",
          txt = "all     : 0%\nload    : 0%\nstore   : 0%\nmul     : 0%\nadd-sub : 0%\nfma     : NA (no fma vectorizable/vectorized instructions)\ndiv/sqrt: NA (no div/sqrt vectorizable/vectorized instructions)\nother   : NA (no other vectorizable/vectorized instructions)\n",
        },
        {
          title = "Vector efficiency ratios",
          txt = "all     : 25%\nload    : 25%\nstore   : 25%\nmul     : 25%\nadd-sub : 25%\nfma     : NA (no fma vectorizable/vectorized instructions)\ndiv/sqrt: NA (no div/sqrt vectorizable/vectorized instructions)\nother   : NA (no other vectorizable/vectorized instructions)\n",
        },
        {
          title = "Cycles and memory resources usage",
          txt = "Assuming all data fit into the L1 cache, each call to the function takes 25.00 cycles. At this rate:\n - 35% of peak load performance is reached (11.20 out of 32.00 bytes loaded per cycle (GB/s @ 1GHz))\n - 10% of peak store performance is reached (1.60 out of 16.00 bytes stored per cycle (GB/s @ 1GHz))\n",
        },
        {
          title = "Front-end bottlenecks",
          txt = "Found no such bottlenecks.",
        },
        {
          title = "ASM code",
          txt = "In the binary file, the address of the function is: 19680\n\nInstruction                    | Nb FU | P0 | P1 | P2   | P3   | P4 | P5 | Latency | Recip. throughput\n------------------------------------------------------------------------------------------------------\nVMOVSD (%RSI),%XMM0            | 1     | 0  | 0  | 0.50 | 0.50 | 0  | 0  | 3       | 0.50\nVMULSD (%RDI),%XMM0,%XMM6      | 1     | 1  | 0  | 0.50 | 0.50 | 0  | 0  | 5       | 1\nVMOVSD 0x8(%RSI),%XMM5         | 1     | 0  | 0  | 0.50 | 0.50 | 0  | 0  | 3       | 0.50\nVMOVSD (%RDX),%XMM1            | 1     | 0  | 0  | 0.50 | 0.50 | 0  | 0  | 3       | 0.50\nVMULSD 0x28(%RDI),%XMM5,%XMM8  | 1     | 1  | 0  | 0.50 | 0.50 | 0  | 0  | 5       | 1\nVMOVSD 0x10(%RSI),%XMM4        | 1     | 0  | 0  | 0.50 | 0.50 | 0  | 0  | 3       | 0.50\nVSUBSD %XMM6,%XMM1,%XMM7       | 1     | 0  | 1  | 0    | 0    | 0  | 0  | 3       | 1\nVMULSD 0x8(%RDI),%XMM0,%XMM6   | 1     | 1  | 0  | 0.50 | 0.50 | 0  | 0  | 5       | 1\nVMULSD 0x50(%RDI),%XMM4,%XMM10 | 1     | 1  | 0  | 0.50 | 0.50 | 0  | 0  | 5       | 1\nVMOVSD 0x8(%RDX),%XMM1         | 1     | 0  | 0  | 0.50 | 0.50 | 0  | 0  | 3       | 0.50\nVSUBSD %XMM8,%XMM7,%XMM9       | 1     | 0  | 1  | 0    | 0    | 0  | 0  | 3       | 1\nVMULSD 0x30(%RDI),%XMM5,%XMM8  | 1     | 1  | 0  | 0.50 | 0.50 | 0  | 0  | 5       | 1\nVMOVSD 0x18(%RSI),%XMM3        | 1     | 0  | 0  | 0.50 | 0.50 | 0  | 0  | 3       | 0.50\nVMULSD 0x78(%RDI),%XMM3,%XMM12 | 1     | 1  | 0  | 0.50 | 0.50 | 0  | 0  | 5       | 1\nVSUBSD %XMM6,%XMM1,%XMM7       | 1     | 0  | 1  | 0    | 0    | 0  | 0  | 3       | 1\nVMULSD 0x10(%RDI),%XMM0,%XMM6  | 1     | 1  | 0  | 0.50 | 0.50 | 0  | 0  | 5       | 1\nVSUBSD %XMM10,%XMM9,%XMM11     | 1     | 0  | 1  | 0    | 0    | 0  | 0  | 3       | 1\nVMULSD 0x58(%RDI),%XMM4,%XMM10 | 1     | 1  | 0  | 0.50 | 0.50 | 0  | 0  | 5       | 1\nVMOVSD 0x20(%RSI),%XMM2        | 1     | 0  | 0  | 0.50 | 0.50 | 0  | 0  | 3       | 0.50\nVSUBSD %XMM8,%XMM7,%XMM9       | 1     | 0  | 1  | 0    | 0    | 0  | 0  | 3       | 1\nVMULSD 0xa0(%RDI),%XMM2,%XMM14 | 1     | 1  | 0  | 0.50 | 0.50 | 0  | 0  | 5       | 1\nVMULSD 0x38(%RDI),%XMM5,%XMM8  | 1     | 1  | 0  | 0.50 | 0.50 | 0  | 0  | 5       | 1\nVSUBSD %XMM12,%XMM11,%XMM13    | 1     | 0  | 1  | 0    | 0    | 0  | 0  | 3       | 1\nVMOVSD 0x10(%RDX),%XMM1        | 1     | 0  | 0  | 0.50 | 0.50 | 0  | 0  | 3       | 0.50\nVMULSD 0x80(%RDI),%XMM3,%XMM12 | 1     | 1  | 0  | 0.50 | 0.50 | 0  | 0  | 5       | 1\nVSUBSD %XMM10,%XMM9,%XMM11     | 1     | 0  | 1  | 0    | 0    | 0  | 0  | 3       | 1\nVSUBSD %XMM6,%XMM1,%XMM7       | 1     | 0  | 1  | 0    | 0    | 0  | 0  | 3       | 1\nVMULSD 0x18(%RDI),%XMM0,%XMM6  | 1     | 1  | 0  | 0.50 | 0.50 | 0  | 0  | 5       | 1\nVMULSD 0x60(%RDI),%XMM4,%XMM10 | 1     | 1  | 0  | 0.50 | 0.50 | 0  | 0  | 5       | 1\nVSUBSD %XMM14,%XMM13,%XMM15    | 1     | 0  | 1  | 0    | 0    | 0  | 0  | 3       | 1\nVMULSD 0xa8(%RDI),%XMM2,%XMM14 | 1     | 1  | 0  | 0.50 | 0.50 | 0  | 0  | 5       | 1\nVSUBSD %XMM8,%XMM7,%XMM9       | 1     | 0  | 1  | 0    | 0    | 0  | 0  | 3       | 1\nVMOVSD 0x18(%RDX),%XMM1        | 1     | 0  | 0  | 0.50 | 0.50 | 0  | 0  | 3       | 0.50\nVMULSD 0x40(%RDI),%XMM5,%XMM8  | 1     | 1  | 0  | 0.50 | 0.50 | 0  | 0  | 5       | 1\nVSUBSD %XMM12,%XMM11,%XMM13    | 1     | 0  | 1  | 0    | 0    | 0  | 0  | 3       | 1\nVMOVSD %XMM15,(%RDX)           | 1     | 0  | 0  | 0.50 | 0.50 | 1  | 0  | 3       | 1\nVMULSD 0x88(%RDI),%XMM3,%XMM12 | 1     | 1  | 0  | 0.50 | 0.50 | 0  | 0  | 5       | 1\nVSUBSD %XMM6,%XMM1,%XMM7       | 1     | 0  | 1  | 0    | 0    | 0  | 0  | 3       | 1\nVSUBSD %XMM10,%XMM9,%XMM11     | 1     | 0  | 1  | 0    | 0    | 0  | 0  | 3       | 1\nVMULSD 0x68(%RDI),%XMM4,%XMM10 | 1     | 1  | 0  | 0.50 | 0.50 | 0  | 0  | 5       | 1\nVSUBSD %XMM14,%XMM13,%XMM15    | 1     | 0  | 1  | 0    | 0    | 0  | 0  | 3       | 1\nVMULSD 0xb0(%RDI),%XMM2,%XMM14 | 1     | 1  | 0  | 0.50 | 0.50 | 0  | 0  | 5       | 1\nVSUBSD %XMM8,%XMM7,%XMM9       | 1     | 0  | 1  | 0    | 0    | 0  | 0  | 3       | 1\nVSUBSD %XMM12,%XMM11,%XMM13    | 1     | 0  | 1  | 0    | 0    | 0  | 0  | 3       | 1\nVMULSD 0x90(%RDI),%XMM3,%XMM12 | 1     | 1  | 0  | 0.50 | 0.50 | 0  | 0  | 5       | 1\nVMOVSD %XMM15,0x8(%RDX)        | 1     | 0  | 0  | 0.50 | 0.50 | 1  | 0  | 3       | 1\nVSUBSD %XMM10,%XMM9,%XMM11     | 1     | 0  | 1  | 0    | 0    | 0  | 0  | 3       | 1\nVSUBSD %XMM14,%XMM13,%XMM15    | 1     | 0  | 1  | 0    | 0    | 0  | 0  | 3       | 1\nVMULSD 0xb8(%RDI),%XMM2,%XMM14 | 1     | 1  | 0  | 0.50 | 0.50 | 0  | 0  | 5       | 1\nVSUBSD %XMM12,%XMM11,%XMM13    | 1     | 0  | 1  | 0    | 0    | 0  | 0  | 3       | 1\nVMOVSD %XMM15,0x10(%RDX)       | 1     | 0  | 0  | 0.50 | 0.50 | 1  | 0  | 3       | 1\nVSUBSD %XMM14,%XMM13,%XMM15    | 1     | 0  | 1  | 0    | 0    | 0  | 0  | 3       | 1\nVMOVSD %XMM15,0x18(%RDX)       | 1     | 0  | 0  | 0.50 | 0.50 | 1  | 0  | 3       | 1\nVMULSD 0x20(%RDI),%XMM0,%XMM6  | 1     | 1  | 0  | 0.50 | 0.50 | 0  | 0  | 5       | 1\nVMULSD 0x48(%RDI),%XMM5,%XMM5  | 1     | 1  | 0  | 0.50 | 0.50 | 0  | 0  | 5       | 1\nVMOVSD 0x20(%RDX),%XMM0        | 1     | 0  | 0  | 0.50 | 0.50 | 0  | 0  | 3       | 0.50\nVMULSD 0x70(%RDI),%XMM4,%XMM4  | 1     | 1  | 0  | 0.50 | 0.50 | 0  | 0  | 5       | 1\nVMULSD 0x98(%RDI),%XMM3,%XMM3  | 1     | 1  | 0  | 0.50 | 0.50 | 0  | 0  | 5       | 1\nVSUBSD %XMM6,%XMM0,%XMM1       | 1     | 0  | 1  | 0    | 0    | 0  | 0  | 3       | 1\nVMULSD 0xc0(%RDI),%XMM2,%XMM2  | 1     | 1  | 0  | 0.50 | 0.50 | 0  | 0  | 5       | 1\nVSUBSD %XMM5,%XMM1,%XMM7       | 1     | 0  | 1  | 0    | 0    | 0  | 0  | 3       | 1\nVSUBSD %XMM4,%XMM7,%XMM8       | 1     | 0  | 1  | 0    | 0    | 0  | 0  | 3       | 1\nVSUBSD %XMM3,%XMM8,%XMM9       | 1     | 0  | 1  | 0    | 0    | 0  | 0  | 3       | 1\nVSUBSD %XMM2,%XMM9,%XMM10      | 1     | 0  | 1  | 0    | 0    | 0  | 0  | 3       | 1\nVMOVSD %XMM10,0x20(%RDX)       | 1     | 0  | 0  | 0.50 | 0.50 | 1  | 0  | 3       | 1\nRET                            | 2     | 0  | 0  | 0.50 | 0.50 | 0  | 1  | 0       | 2\n",
        },
      },
      header = {
        "25% of peak computational performance is used (2.00 out of 8.00 FLOP per cycle (GFLOPS @ 1GHz))",
      },
      brief = {
      },
      gain = {
        {
          workaround = " - Try another compiler or update/tune your current one\n - Make array accesses unit-stride:\n  * If your function streams arrays of structures (AoS), try to use structures of arrays instead (SoA):\ndo i a(i)%x = b(i)%x (slow, non stride 1) => do i a%x(i) = b%x(i) (fast, stride 1)\n",
          details = "All SSE/AVX instructions are used in scalar version (process only one data element in vector registers).\nSince your execution units are vector units, only a vectorized function can use their full power.\n",
          title = "Vectorization",
          txt = "Your function is not vectorized.\n4 data elements could be processed at once in vector registers.\nBy vectorizing your function, you can lower the cost of an iteration from 25.00 to 8.75 cycles (2.86x speedup).",
        },
        {
          workaround = " - Reduce the number of FP add instructions\n - Reduce the number of FP multiply instructions\n",
          title = "Execution units bottlenecks",
          txt = "Performance is limited by:\n - execution of FP add operations (the FP add unit is a bottleneck)\n - execution of FP multiply operations (the FP multiply unit is a bottleneck)\n\nBy removing all these bottlenecks, you can lower the cost of an iteration from 25.00 to 20.50 cycles (1.22x speedup).\n",
        },
      },
      potential = {
      },
    },
  common = {
    header = {
      "The function is defined in /users/user2210/NPB3.4-MZ-MPI/BT-MZ/solve_subs.f90:27-51.\n",
    },
    nb_paths = 1,
  },
}
