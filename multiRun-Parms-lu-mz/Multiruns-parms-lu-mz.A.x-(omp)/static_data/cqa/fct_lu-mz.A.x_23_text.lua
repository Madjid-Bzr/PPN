_cqa_text_report = {
  paths = {
    {
      hint = {
        {
          workaround = "Avoid mixing data with different types. In particular, check if the type of constants is the same as array elements.",
          details = " - VCVTSI2SD (INT32/64 to FP64, scalar): 6 occurrences\n",
          title = "Conversion instructions",
          txt = "Detected expensive conversion instructions.",
        },
        {
          title = "Type of elements and instruction set",
          txt = "16 SSE or AVX instructions are processing arithmetic or math operations on double precision FP elements in scalar mode (one at a time).\n12 AVX instructions are processing arithmetic or math operations on double precision FP elements in vector mode (four at a time).\n",
        },
        {
          title = "Matching between your function (in the source code) and the binary function",
          txt = "The binary function is composed of 123 FP arithmetical operations:\n - 60: addition or subtraction (59 inside FMA instructions)\n - 60: multiply (59 inside FMA instructions)\n - 3: divide\nThe binary function is loading 552 bytes (69 double precision FP elements).\nThe binary function is storing 40 bytes (5 double precision FP elements).",
        },
        {
          title = "Arithmetic intensity",
          txt = "Arithmetic intensity is 0.21 FP operations per loaded or stored byte.",
        },
      },
      expert = {
        {
          title = "General properties",
          txt = "nb instructions    : 62\nloop length        : 360\nused x86 registers : 10\nused mmx registers : 0\nused xmm registers : 10\nused ymm registers : 6\nused zmm registers : 0\nnb stack references: 2\nADD-SUB / MUL ratio: 1.00\n",
        },
        {
          title = "Front-end",
          txt = "MACRO FUSION NOT POSSIBLE\ninstruction fetch    : 23.00 cycles\ninstruction queue    : 31.00 cycles\ndecoding             : 31.00 cycles\nmicro-operation queue: 32.00 cycles\nfront end            : 32.00 cycles\n",
        },
        {
          title = "Back-end",
          txt = "       | P0    | P1    | P2    | P3    | P4   | P5   | P6\n-----------------------------------------------------------\nuops   | 18.50 | 18.50 | 18.00 | 18.00 | 4.50 | 4.50 | 3.00\ncycles | 18.50 | 18.50 | 18.00 | 18.00 | 4.50 | 4.50 | 3.00\n\nCycles executing div or sqrt instructions: 36.00-96.00\n",
        },
        {
          title = "Cycles summary",
          txt = "Front-end : 32.00\nDispatch  : 18.50\nDIV/SQRT  : 36.00-96.00\nOverall L1: 36.00-96.00\n",
        },
        {
          title = "Vectorization ratios",
          txt = "INT\nall    : 0%\nload   : 0%\nstore  : NA (no store vectorizable/vectorized instructions)\nmul    : NA (no mul vectorizable/vectorized instructions)\nadd-sub: 0%\nfma    : NA (no fma vectorizable/vectorized instructions)\nother  : 0%\nFP\nall     : 41%\nload    : 50%\nstore   : 50%\nmul     : 0%\nadd-sub : 0%\nfma     : 52%\ndiv/sqrt: 0%\nother   : 0%\nINT+FP\nall     : 34%\nload    : 48%\nstore   : 50%\nmul     : 0%\nadd-sub : 0%\nfma     : 52%\ndiv/sqrt: 0%\nother   : 0%\n",
        },
        {
          title = "Vector efficiency ratios",
          txt = "INT\nall    : 6%\nload   : 6%\nstore  : NA (no store vectorizable/vectorized instructions)\nmul    : NA (no mul vectorizable/vectorized instructions)\nadd-sub: 6%\nfma    : NA (no fma vectorizable/vectorized instructions)\nother  : 6%\nFP\nall     : 27%\nload    : 31%\nstore   : 31%\nmul     : 12%\nadd-sub : 12%\nfma     : 32%\ndiv/sqrt: 12%\nother   : 12%\nINT+FP\nall     : 24%\nload    : 30%\nstore   : 31%\nmul     : 12%\nadd-sub : 9%\nfma     : 32%\ndiv/sqrt: 12%\nother   : 8%\n",
        },
        {
          title = "Cycles and memory resources usage",
          txt = "Assuming all data fit into the L1 cache, each call to the function takes 96.00 cycles. At this rate:\n - 4% of peak load performance is reached (5.75 out of 128.00 bytes loaded per cycle (GB/s @ 1GHz))\n - 0% of peak store performance is reached (0.42 out of 64.00 bytes stored per cycle (GB/s @ 1GHz))\n",
        },
        {
          title = "Front-end bottlenecks",
          txt = "Found no such bottlenecks.",
        },
        {
          title = "ASM code",
          txt = "In the binary file, the address of the function is: dc60\n\nInstruction                            | Nb FU | P0   | P1   | P2   | P3   | P4   | P5   | P6 | Latency | Recip. throughput\n---------------------------------------------------------------------------------------------------------------------------\nPUSH %RBP                              | 1     | 0    | 0    | 0    | 0    | 1    | 1    | 0  | 0       | 1\nVMOVUPD 0x24007(%RIP),%YMM13           | 1     | 0    | 0    | 0.50 | 0.50 | 0    | 0    | 0  | 5       | 0.50\nMOV (%RDI),%EAX                        | 1     | 0    | 0    | 1    | 0    | 0    | 0    | 0  | 4       | 1\nLEA (%RSP),%RBP                        | 1     | 0    | 0    | 0    | 0    | 0.50 | 0.50 | 0  | 1       | 0.50\nMOV (%R8),%EDI                         | 1     | 0    | 0    | 1    | 0    | 0    | 0    | 0  | 4       | 1\nMOV (%RSI),%ESI                        | 1     | 0    | 0    | 1    | 0    | 0    | 0    | 0  | 4       | 1\nMOV (%R9),%R8D                         | 1     | 0    | 0    | 1    | 0    | 0    | 0    | 0  | 4       | 1\nSUB $0x1,%EAX                          | 1     | 0    | 0    | 0    | 0    | 0.50 | 0.50 | 0  | 1       | 0.50\nMOV 0x10(%RBP),%R9                     | 1     | 0    | 0    | 1    | 0    | 0    | 0    | 0  | 4       | 1\nSUB $0x1,%EDI                          | 1     | 0    | 0    | 0    | 0    | 0.50 | 0.50 | 0  | 1       | 0.50\nMOV (%RDX),%EDX                        | 1     | 0    | 0    | 1    | 0    | 0    | 0    | 0  | 4       | 1\nSUB $0x1,%ESI                          | 1     | 0    | 0    | 0    | 0    | 0.50 | 0.50 | 0  | 1       | 0.50\nVCVTSI2SD %ESI,%XMM2,%XMM2             | 1     | 1    | 0    | 0    | 0    | 0    | 0    | 0  | 5       | 1\nSUB $0x1,%R8D                          | 1     | 0    | 0    | 0    | 0    | 0.50 | 0.50 | 0  | 1       | 0.50\nMOV (%R9),%R10D                        | 1     | 0    | 0    | 1    | 0    | 0    | 0    | 0  | 4       | 1\nVCVTSI2SD %R8D,%XMM3,%XMM3             | 1     | 1    | 0    | 0    | 0    | 0    | 0    | 0  | 5       | 1\nSUB $0x1,%EDX                          | 1     | 0    | 0    | 0    | 0    | 0.50 | 0.50 | 0  | 1       | 0.50\nVCVTSI2SD %EAX,%XMM1,%XMM1             | 1     | 1    | 0    | 0    | 0    | 0    | 0    | 0  | 5       | 1\nVCVTSI2SD %EDI,%XMM0,%XMM0             | 1     | 1    | 0    | 0    | 0    | 0    | 0    | 0  | 5       | 1\nSUB $0x1,%R10D                         | 1     | 0    | 0    | 0    | 0    | 0.50 | 0.50 | 0  | 1       | 0.50\nVCVTSI2SD %EDX,%XMM4,%XMM4             | 1     | 1    | 0    | 0    | 0    | 0    | 0    | 0  | 5       | 1\nVDIVSD %XMM3,%XMM2,%XMM10              | 3     | 1    | 0    | 0    | 0    | 0    | 0    | 0  | 40-42   | 12-32\nVMOVUPD 0x23fe3(%RIP),%YMM14           | 1     | 0    | 0    | 0.50 | 0.50 | 0    | 0    | 0  | 5       | 0.50\nVMOVUPD 0x24003(%RIP),%YMM6            | 1     | 0    | 0    | 0.50 | 0.50 | 0    | 0    | 0  | 5       | 0.50\nVMOVSD 0x23fcb(%RIP),%XMM15            | 1     | 0    | 0    | 0.50 | 0.50 | 0    | 0    | 0  | 5       | 0.50\nVMOVSD 0x24013(%RIP),%XMM2             | 1     | 0    | 0    | 0.50 | 0.50 | 0    | 0    | 0  | 5       | 0.50\nVCVTSI2SD %R10D,%XMM5,%XMM5            | 1     | 1    | 0    | 0    | 0    | 0    | 0    | 0  | 5       | 1\nVDIVSD %XMM0,%XMM1,%XMM9               | 3     | 1    | 0    | 0    | 0    | 0    | 0    | 0  | 40-42   | 12-32\nVMOVSD 0x23fda(%RIP),%XMM1             | 1     | 0    | 0    | 0.50 | 0.50 | 0    | 0    | 0  | 5       | 0.50\nVBROADCASTSD %XMM10,%YMM8              | 1     | 1    | 0    | 0    | 0    | 0    | 0    | 0  | 5       | 1\nVFMADD213SD 0x23f54(%RIP),%XMM10,%XMM1 | 1     | 0.50 | 0.50 | 0.50 | 0.50 | 0    | 0    | 0  | 6       | 0.50\nVFMADD213SD 0x23ed3(%RIP),%XMM10,%XMM1 | 1     | 0.50 | 0.50 | 0.50 | 0.50 | 0    | 0    | 0  | 6       | 0.50\nVFMADD213SD 0x23e52(%RIP),%XMM10,%XMM1 | 1     | 0.50 | 0.50 | 0.50 | 0.50 | 0    | 0    | 0  | 6       | 0.50\nVFMADD213PD 0x23f19(%RIP),%YMM8,%YMM14 | 1     | 0.50 | 0.50 | 0.50 | 0.50 | 0    | 0    | 0  | 6       | 0.50\nVFMADD213PD 0x23e98(%RIP),%YMM8,%YMM14 | 1     | 0.50 | 0.50 | 0.50 | 0.50 | 0    | 0    | 0  | 6       | 0.50\nVFMADD213PD 0x23e17(%RIP),%YMM8,%YMM14 | 1     | 0.50 | 0.50 | 0.50 | 0.50 | 0    | 0    | 0  | 6       | 0.50\nVDIVSD %XMM5,%XMM4,%XMM11              | 3     | 1    | 0    | 0    | 0    | 0    | 0    | 0  | 40-42   | 12-32\nVBROADCASTSD %XMM9,%YMM7               | 1     | 1    | 0    | 0    | 0    | 0    | 0    | 0  | 5       | 1\nVFMADD213SD 0x23eed(%RIP),%XMM9,%XMM15 | 1     | 0.50 | 0.50 | 0.50 | 0.50 | 0    | 0    | 0  | 6       | 0.50\nVFMADD213PD 0x23ec4(%RIP),%YMM7,%YMM13 | 1     | 0.50 | 0.50 | 0.50 | 0.50 | 0    | 0    | 0  | 6       | 0.50\nVFMADD213SD 0x23e63(%RIP),%XMM9,%XMM15 | 1     | 0.50 | 0.50 | 0.50 | 0.50 | 0    | 0    | 0  | 6       | 0.50\nVFMADD213PD 0x23e3a(%RIP),%YMM7,%YMM13 | 1     | 0.50 | 0.50 | 0.50 | 0.50 | 0    | 0    | 0  | 6       | 0.50\nVFMADD213SD 0x23dd9(%RIP),%XMM9,%XMM15 | 1     | 0.50 | 0.50 | 0.50 | 0.50 | 0    | 0    | 0  | 6       | 0.50\nVFMADD213PD 0x23db0(%RIP),%YMM7,%YMM13 | 1     | 0.50 | 0.50 | 0.50 | 0.50 | 0    | 0    | 0  | 6       | 0.50\nVMULSD %XMM1,%XMM10,%XMM0              | 1     | 0.50 | 0.50 | 0    | 0    | 0    | 0    | 0  | 6       | 0.50\nVBROADCASTSD %XMM11,%YMM12             | 1     | 1    | 0    | 0    | 0    | 0    | 0    | 0  | 5       | 1\nVFMADD213SD 0x23efe(%RIP),%XMM11,%XMM2 | 1     | 0.50 | 0.50 | 0.50 | 0.50 | 0    | 0    | 0  | 6       | 0.50\nVFMADD213PD 0x23ed5(%RIP),%YMM12,%YMM6 | 1     | 0.50 | 0.50 | 0.50 | 0.50 | 0    | 0    | 0  | 6       | 0.50\nVFMADD213PD 0x23e54(%RIP),%YMM12,%YMM6 | 1     | 0.50 | 0.50 | 0.50 | 0.50 | 0    | 0    | 0  | 6       | 0.50\nVFMADD213PD 0x23dd3(%RIP),%YMM12,%YMM6 | 1     | 0.50 | 0.50 | 0.50 | 0.50 | 0    | 0    | 0  | 6       | 0.50\nVFMADD213PD 0x23d52(%RIP),%YMM6,%YMM12 | 1     | 0.50 | 0.50 | 0.50 | 0.50 | 0    | 0    | 0  | 6       | 0.50\nVFMADD132SD %XMM15,%XMM0,%XMM9         | 1     | 0.50 | 0.50 | 0    | 0    | 0    | 0    | 0  | 6       | 0.50\nVFMADD132PD %YMM8,%YMM12,%YMM14        | 1     | 0.50 | 0.50 | 0    | 0    | 0    | 0    | 0  | 6       | 0.50\nVFMADD231PD %YMM7,%YMM13,%YMM14        | 1     | 0.50 | 0.50 | 0    | 0    | 0    | 0    | 0  | 6       | 0.50\nVMOVUPD %YMM14,(%RCX)                  | 1     | 0    | 0    | 0.50 | 0.50 | 0    | 0    | 1  | 2       | 1\nVFMADD213SD 0x23e46(%RIP),%XMM11,%XMM2 | 1     | 0.50 | 0.50 | 0.50 | 0.50 | 0    | 0    | 0  | 6       | 0.50\nVFMADD213SD 0x23dc5(%RIP),%XMM11,%XMM2 | 1     | 0.50 | 0.50 | 0.50 | 0.50 | 0    | 0    | 0  | 6       | 0.50\nVFMADD213SD 0x23d44(%RIP),%XMM2,%XMM11 | 1     | 0.50 | 0.50 | 0.50 | 0.50 | 0    | 0    | 0  | 6       | 0.50\nVADDSD %XMM9,%XMM11,%XMM9              | 1     | 0.50 | 0.50 | 0    | 0    | 0    | 0    | 0  | 6       | 0.50\nPOP %RBP                               | 2     | 0    | 0    | 0.50 | 0.50 | 0    | 0    | 1  | 0       | 1\nVMOVSD %XMM9,0x20(%RCX)                | 1     | 0    | 0    | 0.50 | 0.50 | 0    | 0    | 1  | 2       | 1\nRET\n",
        },
      },
      header = {
        "4% of peak computational performance is used (1.28 out of 32.00 FLOP per cycle (GFLOPS @ 1GHz))",
      },
      brief = {
      },
      gain = {
        {
          workaround = " - Try another compiler or update/tune your current one\n - Make array accesses unit-stride:\n  * If your function streams arrays of structures (AoS), try to use structures of arrays instead (SoA):\ndo i a(i)%x = b(i)%x (slow, non stride 1) => do i a%x(i) = b%x(i) (fast, stride 1)\n",
          details = "34% of SSE/AVX instructions are used in vector version (process two or more data elements in vector registers):\n - 48% of SSE/AVX loads are used in vector version.\n - 50% of SSE/AVX stores are used in vector version.\n - 0% of SSE/AVX addition or subtraction instructions are used in vector version.\n - 0% of SSE/AVX multiply instructions are used in vector version.\n - 52% of SSE/AVX fused multiply-add instructions are used in vector version.\n - 0% of SSE/AVX nil are used in vector version.\n - 0% of SSE/AVX instructions that are not load, store, addition, subtraction nor multiply instructions are used in vector version.\nSince your execution units are vector units, only a fully vectorized function can use their full power.\n",
          title = "Vectorization",
          txt = "Your function is poorly vectorized.\nOnly 24% of vector register length is used (average across all SSE/AVX instructions).\nBy fully vectorizing your function, you can lower the cost of an iteration from 96.00 to 12.00 cycles (8.00x speedup).",
        },
        {
          workaround = " - Reduce the number of division or square root instructions:\n  * If denominator is constant over iterations, use reciprocal (replace x/y with x*(1/y)). Check precision impact. This will be done by your compiler with ffast-math or Ofast\n - Check whether you really need double precision. If not, switch to single precision to speedup execution\n",
          title = "Execution units bottlenecks",
          txt = "Performance is limited by execution of divide and square root operations (the divide/square root unit is a bottleneck).\n\nBy removing all these bottlenecks, you can lower the cost of an iteration from 96.00 to 32.00 cycles (3.00x speedup).\n",
        },
      },
      potential = {
        {
          title = "Expensive FP math instructions/calls",
          txt = "Detected performance impact from expensive FP math instructions/calls.\nBy removing/reexpressing them, you can lower the cost of an iteration from 96.00 to 32.00 cycles (3.00x speedup).",
        },
        {
          workaround = "Try to change order in which elements are evaluated (using parentheses) in arithmetic expressions containing both ADD/SUB and MUL operations to enable your compiler to generate FMA instructions wherever possible.\nFor instance a + b*c is a valid FMA (MUL then ADD).\nHowever (a+b)* c cannot be translated into an FMA (ADD then MUL).",
          title = "FMA",
          txt = "Detected 59 FMA (fused multiply-add) operations.\nPresence of both ADD/SUB and MUL operations.",
        },
      },
    },
  },
  AVG = {
      hint = {
        {
          workaround = "Avoid mixing data with different types. In particular, check if the type of constants is the same as array elements.",
          details = " - VCVTSI2SD (INT32/64 to FP64, scalar): 6 occurrences\n",
          title = "Conversion instructions",
          txt = "Detected expensive conversion instructions.",
        },
        {
          title = "Type of elements and instruction set",
          txt = "16 SSE or AVX instructions are processing arithmetic or math operations on double precision FP elements in scalar mode (one at a time).\n12 AVX instructions are processing arithmetic or math operations on double precision FP elements in vector mode (four at a time).\n",
        },
        {
          title = "Matching between your function (in the source code) and the binary function",
          txt = "The binary function is composed of 123 FP arithmetical operations:\n - 60: addition or subtraction (59 inside FMA instructions)\n - 60: multiply (59 inside FMA instructions)\n - 3: divide\nThe binary function is loading 552 bytes (69 double precision FP elements).\nThe binary function is storing 40 bytes (5 double precision FP elements).",
        },
        {
          title = "Arithmetic intensity",
          txt = "Arithmetic intensity is 0.21 FP operations per loaded or stored byte.",
        },
      },
      expert = {
        {
          title = "General properties",
          txt = "nb instructions    : 62\nloop length        : 360\nused x86 registers : 10\nused mmx registers : 0\nused xmm registers : 10\nused ymm registers : 6\nused zmm registers : 0\nnb stack references: 2\nADD-SUB / MUL ratio: 1.00\n",
        },
        {
          title = "Front-end",
          txt = "MACRO FUSION NOT POSSIBLE\ninstruction fetch    : 23.00 cycles\ninstruction queue    : 31.00 cycles\ndecoding             : 31.00 cycles\nmicro-operation queue: 32.00 cycles\nfront end            : 32.00 cycles\n",
        },
        {
          title = "Back-end",
          txt = "       | P0    | P1    | P2    | P3    | P4   | P5   | P6\n-----------------------------------------------------------\nuops   | 18.50 | 18.50 | 18.00 | 18.00 | 4.50 | 4.50 | 3.00\ncycles | 18.50 | 18.50 | 18.00 | 18.00 | 4.50 | 4.50 | 3.00\n\nCycles executing div or sqrt instructions: 36.00-96.00\n",
        },
        {
          title = "Cycles summary",
          txt = "Front-end : 32.00\nDispatch  : 18.50\nDIV/SQRT  : 36.00-96.00\nOverall L1: 36.00-96.00\n",
        },
        {
          title = "Vectorization ratios",
          txt = "INT\nall    : 0%\nload   : 0%\nstore  : NA (no store vectorizable/vectorized instructions)\nmul    : NA (no mul vectorizable/vectorized instructions)\nadd-sub: 0%\nfma    : NA (no fma vectorizable/vectorized instructions)\nother  : 0%\nFP\nall     : 41%\nload    : 50%\nstore   : 50%\nmul     : 0%\nadd-sub : 0%\nfma     : 52%\ndiv/sqrt: 0%\nother   : 0%\nINT+FP\nall     : 34%\nload    : 48%\nstore   : 50%\nmul     : 0%\nadd-sub : 0%\nfma     : 52%\ndiv/sqrt: 0%\nother   : 0%\n",
        },
        {
          title = "Vector efficiency ratios",
          txt = "INT\nall    : 6%\nload   : 6%\nstore  : NA (no store vectorizable/vectorized instructions)\nmul    : NA (no mul vectorizable/vectorized instructions)\nadd-sub: 6%\nfma    : NA (no fma vectorizable/vectorized instructions)\nother  : 6%\nFP\nall     : 27%\nload    : 31%\nstore   : 31%\nmul     : 12%\nadd-sub : 12%\nfma     : 32%\ndiv/sqrt: 12%\nother   : 12%\nINT+FP\nall     : 24%\nload    : 30%\nstore   : 31%\nmul     : 12%\nadd-sub : 9%\nfma     : 32%\ndiv/sqrt: 12%\nother   : 8%\n",
        },
        {
          title = "Cycles and memory resources usage",
          txt = "Assuming all data fit into the L1 cache, each call to the function takes 96.00 cycles. At this rate:\n - 4% of peak load performance is reached (5.75 out of 128.00 bytes loaded per cycle (GB/s @ 1GHz))\n - 0% of peak store performance is reached (0.42 out of 64.00 bytes stored per cycle (GB/s @ 1GHz))\n",
        },
        {
          title = "Front-end bottlenecks",
          txt = "Found no such bottlenecks.",
        },
        {
          title = "ASM code",
          txt = "In the binary file, the address of the function is: dc60\n\nInstruction                            | Nb FU | P0   | P1   | P2   | P3   | P4   | P5   | P6 | Latency | Recip. throughput\n---------------------------------------------------------------------------------------------------------------------------\nPUSH %RBP                              | 1     | 0    | 0    | 0    | 0    | 1    | 1    | 0  | 0       | 1\nVMOVUPD 0x24007(%RIP),%YMM13           | 1     | 0    | 0    | 0.50 | 0.50 | 0    | 0    | 0  | 5       | 0.50\nMOV (%RDI),%EAX                        | 1     | 0    | 0    | 1    | 0    | 0    | 0    | 0  | 4       | 1\nLEA (%RSP),%RBP                        | 1     | 0    | 0    | 0    | 0    | 0.50 | 0.50 | 0  | 1       | 0.50\nMOV (%R8),%EDI                         | 1     | 0    | 0    | 1    | 0    | 0    | 0    | 0  | 4       | 1\nMOV (%RSI),%ESI                        | 1     | 0    | 0    | 1    | 0    | 0    | 0    | 0  | 4       | 1\nMOV (%R9),%R8D                         | 1     | 0    | 0    | 1    | 0    | 0    | 0    | 0  | 4       | 1\nSUB $0x1,%EAX                          | 1     | 0    | 0    | 0    | 0    | 0.50 | 0.50 | 0  | 1       | 0.50\nMOV 0x10(%RBP),%R9                     | 1     | 0    | 0    | 1    | 0    | 0    | 0    | 0  | 4       | 1\nSUB $0x1,%EDI                          | 1     | 0    | 0    | 0    | 0    | 0.50 | 0.50 | 0  | 1       | 0.50\nMOV (%RDX),%EDX                        | 1     | 0    | 0    | 1    | 0    | 0    | 0    | 0  | 4       | 1\nSUB $0x1,%ESI                          | 1     | 0    | 0    | 0    | 0    | 0.50 | 0.50 | 0  | 1       | 0.50\nVCVTSI2SD %ESI,%XMM2,%XMM2             | 1     | 1    | 0    | 0    | 0    | 0    | 0    | 0  | 5       | 1\nSUB $0x1,%R8D                          | 1     | 0    | 0    | 0    | 0    | 0.50 | 0.50 | 0  | 1       | 0.50\nMOV (%R9),%R10D                        | 1     | 0    | 0    | 1    | 0    | 0    | 0    | 0  | 4       | 1\nVCVTSI2SD %R8D,%XMM3,%XMM3             | 1     | 1    | 0    | 0    | 0    | 0    | 0    | 0  | 5       | 1\nSUB $0x1,%EDX                          | 1     | 0    | 0    | 0    | 0    | 0.50 | 0.50 | 0  | 1       | 0.50\nVCVTSI2SD %EAX,%XMM1,%XMM1             | 1     | 1    | 0    | 0    | 0    | 0    | 0    | 0  | 5       | 1\nVCVTSI2SD %EDI,%XMM0,%XMM0             | 1     | 1    | 0    | 0    | 0    | 0    | 0    | 0  | 5       | 1\nSUB $0x1,%R10D                         | 1     | 0    | 0    | 0    | 0    | 0.50 | 0.50 | 0  | 1       | 0.50\nVCVTSI2SD %EDX,%XMM4,%XMM4             | 1     | 1    | 0    | 0    | 0    | 0    | 0    | 0  | 5       | 1\nVDIVSD %XMM3,%XMM2,%XMM10              | 3     | 1    | 0    | 0    | 0    | 0    | 0    | 0  | 40-42   | 12-32\nVMOVUPD 0x23fe3(%RIP),%YMM14           | 1     | 0    | 0    | 0.50 | 0.50 | 0    | 0    | 0  | 5       | 0.50\nVMOVUPD 0x24003(%RIP),%YMM6            | 1     | 0    | 0    | 0.50 | 0.50 | 0    | 0    | 0  | 5       | 0.50\nVMOVSD 0x23fcb(%RIP),%XMM15            | 1     | 0    | 0    | 0.50 | 0.50 | 0    | 0    | 0  | 5       | 0.50\nVMOVSD 0x24013(%RIP),%XMM2             | 1     | 0    | 0    | 0.50 | 0.50 | 0    | 0    | 0  | 5       | 0.50\nVCVTSI2SD %R10D,%XMM5,%XMM5            | 1     | 1    | 0    | 0    | 0    | 0    | 0    | 0  | 5       | 1\nVDIVSD %XMM0,%XMM1,%XMM9               | 3     | 1    | 0    | 0    | 0    | 0    | 0    | 0  | 40-42   | 12-32\nVMOVSD 0x23fda(%RIP),%XMM1             | 1     | 0    | 0    | 0.50 | 0.50 | 0    | 0    | 0  | 5       | 0.50\nVBROADCASTSD %XMM10,%YMM8              | 1     | 1    | 0    | 0    | 0    | 0    | 0    | 0  | 5       | 1\nVFMADD213SD 0x23f54(%RIP),%XMM10,%XMM1 | 1     | 0.50 | 0.50 | 0.50 | 0.50 | 0    | 0    | 0  | 6       | 0.50\nVFMADD213SD 0x23ed3(%RIP),%XMM10,%XMM1 | 1     | 0.50 | 0.50 | 0.50 | 0.50 | 0    | 0    | 0  | 6       | 0.50\nVFMADD213SD 0x23e52(%RIP),%XMM10,%XMM1 | 1     | 0.50 | 0.50 | 0.50 | 0.50 | 0    | 0    | 0  | 6       | 0.50\nVFMADD213PD 0x23f19(%RIP),%YMM8,%YMM14 | 1     | 0.50 | 0.50 | 0.50 | 0.50 | 0    | 0    | 0  | 6       | 0.50\nVFMADD213PD 0x23e98(%RIP),%YMM8,%YMM14 | 1     | 0.50 | 0.50 | 0.50 | 0.50 | 0    | 0    | 0  | 6       | 0.50\nVFMADD213PD 0x23e17(%RIP),%YMM8,%YMM14 | 1     | 0.50 | 0.50 | 0.50 | 0.50 | 0    | 0    | 0  | 6       | 0.50\nVDIVSD %XMM5,%XMM4,%XMM11              | 3     | 1    | 0    | 0    | 0    | 0    | 0    | 0  | 40-42   | 12-32\nVBROADCASTSD %XMM9,%YMM7               | 1     | 1    | 0    | 0    | 0    | 0    | 0    | 0  | 5       | 1\nVFMADD213SD 0x23eed(%RIP),%XMM9,%XMM15 | 1     | 0.50 | 0.50 | 0.50 | 0.50 | 0    | 0    | 0  | 6       | 0.50\nVFMADD213PD 0x23ec4(%RIP),%YMM7,%YMM13 | 1     | 0.50 | 0.50 | 0.50 | 0.50 | 0    | 0    | 0  | 6       | 0.50\nVFMADD213SD 0x23e63(%RIP),%XMM9,%XMM15 | 1     | 0.50 | 0.50 | 0.50 | 0.50 | 0    | 0    | 0  | 6       | 0.50\nVFMADD213PD 0x23e3a(%RIP),%YMM7,%YMM13 | 1     | 0.50 | 0.50 | 0.50 | 0.50 | 0    | 0    | 0  | 6       | 0.50\nVFMADD213SD 0x23dd9(%RIP),%XMM9,%XMM15 | 1     | 0.50 | 0.50 | 0.50 | 0.50 | 0    | 0    | 0  | 6       | 0.50\nVFMADD213PD 0x23db0(%RIP),%YMM7,%YMM13 | 1     | 0.50 | 0.50 | 0.50 | 0.50 | 0    | 0    | 0  | 6       | 0.50\nVMULSD %XMM1,%XMM10,%XMM0              | 1     | 0.50 | 0.50 | 0    | 0    | 0    | 0    | 0  | 6       | 0.50\nVBROADCASTSD %XMM11,%YMM12             | 1     | 1    | 0    | 0    | 0    | 0    | 0    | 0  | 5       | 1\nVFMADD213SD 0x23efe(%RIP),%XMM11,%XMM2 | 1     | 0.50 | 0.50 | 0.50 | 0.50 | 0    | 0    | 0  | 6       | 0.50\nVFMADD213PD 0x23ed5(%RIP),%YMM12,%YMM6 | 1     | 0.50 | 0.50 | 0.50 | 0.50 | 0    | 0    | 0  | 6       | 0.50\nVFMADD213PD 0x23e54(%RIP),%YMM12,%YMM6 | 1     | 0.50 | 0.50 | 0.50 | 0.50 | 0    | 0    | 0  | 6       | 0.50\nVFMADD213PD 0x23dd3(%RIP),%YMM12,%YMM6 | 1     | 0.50 | 0.50 | 0.50 | 0.50 | 0    | 0    | 0  | 6       | 0.50\nVFMADD213PD 0x23d52(%RIP),%YMM6,%YMM12 | 1     | 0.50 | 0.50 | 0.50 | 0.50 | 0    | 0    | 0  | 6       | 0.50\nVFMADD132SD %XMM15,%XMM0,%XMM9         | 1     | 0.50 | 0.50 | 0    | 0    | 0    | 0    | 0  | 6       | 0.50\nVFMADD132PD %YMM8,%YMM12,%YMM14        | 1     | 0.50 | 0.50 | 0    | 0    | 0    | 0    | 0  | 6       | 0.50\nVFMADD231PD %YMM7,%YMM13,%YMM14        | 1     | 0.50 | 0.50 | 0    | 0    | 0    | 0    | 0  | 6       | 0.50\nVMOVUPD %YMM14,(%RCX)                  | 1     | 0    | 0    | 0.50 | 0.50 | 0    | 0    | 1  | 2       | 1\nVFMADD213SD 0x23e46(%RIP),%XMM11,%XMM2 | 1     | 0.50 | 0.50 | 0.50 | 0.50 | 0    | 0    | 0  | 6       | 0.50\nVFMADD213SD 0x23dc5(%RIP),%XMM11,%XMM2 | 1     | 0.50 | 0.50 | 0.50 | 0.50 | 0    | 0    | 0  | 6       | 0.50\nVFMADD213SD 0x23d44(%RIP),%XMM2,%XMM11 | 1     | 0.50 | 0.50 | 0.50 | 0.50 | 0    | 0    | 0  | 6       | 0.50\nVADDSD %XMM9,%XMM11,%XMM9              | 1     | 0.50 | 0.50 | 0    | 0    | 0    | 0    | 0  | 6       | 0.50\nPOP %RBP                               | 2     | 0    | 0    | 0.50 | 0.50 | 0    | 0    | 1  | 0       | 1\nVMOVSD %XMM9,0x20(%RCX)                | 1     | 0    | 0    | 0.50 | 0.50 | 0    | 0    | 1  | 2       | 1\nRET\n",
        },
      },
      header = {
        "4% of peak computational performance is used (1.28 out of 32.00 FLOP per cycle (GFLOPS @ 1GHz))",
      },
      brief = {
      },
      gain = {
        {
          workaround = " - Try another compiler or update/tune your current one\n - Make array accesses unit-stride:\n  * If your function streams arrays of structures (AoS), try to use structures of arrays instead (SoA):\ndo i a(i)%x = b(i)%x (slow, non stride 1) => do i a%x(i) = b%x(i) (fast, stride 1)\n",
          details = "34% of SSE/AVX instructions are used in vector version (process two or more data elements in vector registers):\n - 48% of SSE/AVX loads are used in vector version.\n - 50% of SSE/AVX stores are used in vector version.\n - 0% of SSE/AVX addition or subtraction instructions are used in vector version.\n - 0% of SSE/AVX multiply instructions are used in vector version.\n - 52% of SSE/AVX fused multiply-add instructions are used in vector version.\n - 0% of SSE/AVX nil are used in vector version.\n - 0% of SSE/AVX instructions that are not load, store, addition, subtraction nor multiply instructions are used in vector version.\nSince your execution units are vector units, only a fully vectorized function can use their full power.\n",
          title = "Vectorization",
          txt = "Your function is poorly vectorized.\nOnly 24% of vector register length is used (average across all SSE/AVX instructions).\nBy fully vectorizing your function, you can lower the cost of an iteration from 96.00 to 12.00 cycles (8.00x speedup).",
        },
        {
          workaround = " - Reduce the number of division or square root instructions:\n  * If denominator is constant over iterations, use reciprocal (replace x/y with x*(1/y)). Check precision impact. This will be done by your compiler with ffast-math or Ofast\n - Check whether you really need double precision. If not, switch to single precision to speedup execution\n",
          title = "Execution units bottlenecks",
          txt = "Performance is limited by execution of divide and square root operations (the divide/square root unit is a bottleneck).\n\nBy removing all these bottlenecks, you can lower the cost of an iteration from 96.00 to 32.00 cycles (3.00x speedup).\n",
        },
      },
      potential = {
        {
          title = "Expensive FP math instructions/calls",
          txt = "Detected performance impact from expensive FP math instructions/calls.\nBy removing/reexpressing them, you can lower the cost of an iteration from 96.00 to 32.00 cycles (3.00x speedup).",
        },
        {
          workaround = "Try to change order in which elements are evaluated (using parentheses) in arithmetic expressions containing both ADD/SUB and MUL operations to enable your compiler to generate FMA instructions wherever possible.\nFor instance a + b*c is a valid FMA (MUL then ADD).\nHowever (a+b)* c cannot be translated into an FMA (ADD then MUL).",
          title = "FMA",
          txt = "Detected 59 FMA (fused multiply-add) operations.\nPresence of both ADD/SUB and MUL operations.",
        },
      },
    },
  common = {
    header = {
      "The function is defined in /users/user2222/NPB3.4.1-MZ/NPB3.4-MZ-OMP/LU-MZ/exact.f90:4,30-32,48-52.\n",
    },
    nb_paths = 1,
  },
}
