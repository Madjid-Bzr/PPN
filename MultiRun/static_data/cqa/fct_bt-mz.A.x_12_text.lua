_cqa_text_report = {
  paths = {
    {
      hint = {
        {
          details = "These instructions generate more than one micro-operation and only one of them can be decoded during a cycle and the extra micro-operations increase pressure on execution units.\n - RET: 1 occurrences\n - VEXTRACTF128: 1 occurrences\n - VINSERTF128: 13 occurrences\n - VZEROUPPER: 1 occurrences\n",
          title = "Complex instructions",
          txt = "Detected COMPLEX INSTRUCTIONS.\n",
        },
        {
          workaround = "Use vector aligned instructions:\n 1) The GNU Fortran compiler does not support allocation alignment and does not feature directives to benefit from aligned data.\n 2) Use another compiler or locally use C code (for instance via libraries)\n",
          details = " - VEXTRACTF128: 1 occurrences\n - VINSERTF128: 16 occurrences\n - VMOVUPS: 1 occurrences\n",
          title = "Vector unaligned load/store instructions",
          txt = "Detected 18 optimal vector unaligned load/store instructions.\n",
        },
        {
          title = "Type of elements and instruction set",
          txt = "24 SSE or AVX instructions are processing arithmetic or math operations on double precision FP elements in scalar mode (one at a time).\n24 AVX instructions are processing arithmetic or math operations on double precision FP elements in vector mode (four at a time).\n",
        },
        {
          title = "Matching between your function (in the source code) and the binary function",
          txt = "The binary function is composed of 120 FP arithmetical operations:\n - 60: addition or subtraction\n - 60: multiply\nThe binary function is loading 544 bytes (68 double precision FP elements).\nThe binary function is storing 40 bytes (5 double precision FP elements).",
        },
        {
          title = "Arithmetic intensity",
          txt = "Arithmetic intensity is 0.21 FP operations per loaded or stored byte.",
        },
      },
      expert = {
        {
          title = "General properties",
          txt = "nb instructions    : 88\nnb uops            : 106\nloop length        : 547\nused x86 registers : 4\nused mmx registers : 0\nused xmm registers : 16\nused ymm registers : 13\nused zmm registers : 0\nnb stack references: 0\nADD-SUB / MUL ratio: 1.00\n",
        },
        {
          title = "Front-end",
          txt = "MACRO FUSION NOT POSSIBLE\nFIT IN UOP CACHE\nmicro-operation queue: 26.50 cycles\nfront end            : 26.50 cycles\n",
        },
        {
          title = "Back-end",
          txt = "       | P0    | P1    | P2    | P3    | P4   | P5\n-----------------------------------------------------\nuops   | 24.00 | 24.00 | 23.00 | 23.00 | 3.00 | 20.00\ncycles | 24.00 | 24.00 | 23.00 | 23.00 | 3.00 | 20.00\n\nCycles executing div or sqrt instructions: NA\n",
        },
        {
          title = "Cycles summary",
          txt = "Front-end : 26.50\nDispatch  : 24.00\nOverall L1: 26.50\n",
        },
        {
          title = "Vectorization ratios",
          txt = "INT\nall    : 100%\nload   : NA (no load vectorizable/vectorized instructions)\nstore  : NA (no store vectorizable/vectorized instructions)\nmul    : NA (no mul vectorizable/vectorized instructions)\nadd-sub: NA (no add-sub vectorizable/vectorized instructions)\nfma    : NA (no fma vectorizable/vectorized instructions)\nother  : 100%\nFP\nall     : 63%\nload    : 61%\nstore   : 66%\nmul     : 50%\nadd-sub : 50%\nfma     : NA (no fma vectorizable/vectorized instructions)\ndiv/sqrt: NA (no div/sqrt vectorizable/vectorized instructions)\nother   : 84%\nINT+FP\nall     : 64%\nload    : 61%\nstore   : 66%\nmul     : 50%\nadd-sub : 50%\nfma     : NA (no fma vectorizable/vectorized instructions)\ndiv/sqrt: NA (no div/sqrt vectorizable/vectorized instructions)\nother   : 85%\n",
        },
        {
          title = "Vector efficiency ratios",
          txt = "INT\nall    : 100%\nload   : NA (no load vectorizable/vectorized instructions)\nstore  : NA (no store vectorizable/vectorized instructions)\nmul    : NA (no mul vectorizable/vectorized instructions)\nadd-sub: NA (no add-sub vectorizable/vectorized instructions)\nfma    : NA (no fma vectorizable/vectorized instructions)\nother  : 100%\nFP\nall     : 54%\nload    : 40%\nstore   : 41%\nmul     : 62%\nadd-sub : 62%\nfma     : NA (no fma vectorizable/vectorized instructions)\ndiv/sqrt: NA (no div/sqrt vectorizable/vectorized instructions)\nother   : 46%\nINT+FP\nall     : 55%\nload    : 40%\nstore   : 41%\nmul     : 62%\nadd-sub : 62%\nfma     : NA (no fma vectorizable/vectorized instructions)\ndiv/sqrt: NA (no div/sqrt vectorizable/vectorized instructions)\nother   : 48%\n",
        },
        {
          title = "Cycles and memory resources usage",
          txt = "Assuming all data fit into the L1 cache, each call to the function takes 26.50 cycles. At this rate:\n - 64% of peak load performance is reached (20.53 out of 32.00 bytes loaded per cycle (GB/s @ 1GHz))\n - 9% of peak store performance is reached (1.51 out of 16.00 bytes stored per cycle (GB/s @ 1GHz))\n",
        },
        {
          title = "Front-end bottlenecks",
          txt = "Performance is limited by instruction throughput (loading/decoding program instructions to execution core) (front-end is a bottleneck).\n\nBy removing all these bottlenecks, you can lower the cost of an iteration from 26.50 to 24.00 cycles (1.10x speedup).\n",
        },
        {
          title = "ASM code",
          txt = "In the binary file, the address of the function is: 7120\n\nInstruction                                  | Nb FU | P0 | P1 | P2   | P3   | P4 | P5 | Latency | Recip. throughput\n--------------------------------------------------------------------------------------------------------------------\nVMOVSD (%RDI),%XMM4                          | 1     | 0  | 0  | 0.50 | 0.50 | 0  | 0  | 3       | 0.50\nVMOVUPD 0x25a04(%RIP),%XMM7                  | 1     | 0  | 0  | 0.50 | 0.50 | 0  | 0  | 3       | 0.50\nVINSERTF128 $0x1,0x25a0a(%RIP),%YMM7,%YMM1   | 2     | 0  | 0  | 0.50 | 0.50 | 0  | 1  | 2       | 1\nVMOVUPD 0x2597a(%RIP),%XMM9                  | 1     | 0  | 0  | 0.50 | 0.50 | 0  | 0  | 3       | 0.50\nVMOVDDUP %XMM4,%XMM0                         | 1     | 0  | 0  | 0    | 0    | 0  | 1  | 1       | 1\nVINSERTF128 $0x1,%XMM0,%YMM0,%YMM0           | 1     | 0  | 0  | 0    | 0    | 0  | 1  | 2       | 1\nVINSERTF128 $0x1,0x25976(%RIP),%YMM9,%YMM10  | 2     | 0  | 0  | 0.50 | 0.50 | 0  | 1  | 2       | 1\nVMULPD %YMM0,%YMM1,%YMM8                     | 1     | 1  | 0  | 0    | 0    | 0  | 0  | 5       | 1\nVADDPD %YMM10,%YMM8,%YMM11                   | 1     | 0  | 1  | 0    | 0    | 0  | 0  | 3       | 1\nVMOVUPD 0x258dd(%RIP),%XMM13                 | 1     | 0  | 0  | 0.50 | 0.50 | 0  | 0  | 3       | 0.50\nVINSERTF128 $0x1,0x258e3(%RIP),%YMM13,%YMM14 | 2     | 0  | 0  | 0.50 | 0.50 | 0  | 1  | 2       | 1\nVMOVSD (%RSI),%XMM3                          | 1     | 0  | 0  | 0.50 | 0.50 | 0  | 0  | 3       | 0.50\nVMOVUPD 0x2584f(%RIP),%XMM7                  | 1     | 0  | 0  | 0.50 | 0.50 | 0  | 0  | 3       | 0.50\nVINSERTF128 $0x1,0x25855(%RIP),%YMM7,%YMM8   | 2     | 0  | 0  | 0.50 | 0.50 | 0  | 1  | 2       | 1\nVMULPD %YMM0,%YMM11,%YMM12                   | 1     | 1  | 0  | 0    | 0    | 0  | 0  | 5       | 1\nVADDPD %YMM14,%YMM12,%YMM15                  | 1     | 0  | 1  | 0    | 0    | 0  | 0  | 3       | 1\nVMOVDDUP %XMM3,%XMM6                         | 1     | 0  | 0  | 0    | 0    | 0  | 1  | 1       | 1\nVMOVSD (%RDX),%XMM2                          | 1     | 0  | 0  | 0.50 | 0.50 | 0  | 0  | 3       | 0.50\nVINSERTF128 $0x1,%XMM6,%YMM6,%YMM6           | 1     | 0  | 0  | 0    | 0    | 0  | 1  | 2       | 1\nVMOVUPD 0x259b6(%RIP),%XMM13                 | 1     | 0  | 0  | 0.50 | 0.50 | 0  | 0  | 3       | 0.50\nVINSERTF128 $0x1,0x259bc(%RIP),%YMM13,%YMM14 | 2     | 0  | 0  | 0.50 | 0.50 | 0  | 1  | 2       | 1\nVMOVDDUP %XMM2,%XMM5                         | 1     | 0  | 0  | 0    | 0    | 0  | 1  | 1       | 1\nVINSERTF128 $0x1,%XMM5,%YMM5,%YMM5           | 1     | 0  | 0  | 0    | 0    | 0  | 1  | 2       | 1\nVMULPD %YMM0,%YMM15,%YMM1                    | 1     | 1  | 0  | 0    | 0    | 0  | 0  | 5       | 1\nVMULPD %YMM6,%YMM14,%YMM15                   | 1     | 1  | 0  | 0    | 0    | 0  | 0  | 5       | 1\nVADDPD %YMM8,%YMM1,%YMM9                     | 1     | 0  | 1  | 0    | 0    | 0  | 0  | 3       | 1\nVMOVUPD 0x25915(%RIP),%XMM1                  | 1     | 0  | 0  | 0.50 | 0.50 | 0  | 0  | 3       | 0.50\nVINSERTF128 $0x1,0x2591b(%RIP),%YMM1,%YMM7   | 2     | 0  | 0  | 0.50 | 0.50 | 0  | 1  | 2       | 1\nVADDPD %YMM7,%YMM15,%YMM8                    | 1     | 0  | 1  | 0    | 0    | 0  | 0  | 3       | 1\nVMOVUPD 0x2580f(%RIP),%XMM14                 | 1     | 0  | 0  | 0.50 | 0.50 | 0  | 0  | 3       | 0.50\nVINSERTF128 $0x1,0x25815(%RIP),%YMM14,%YMM15 | 2     | 0  | 0  | 0.50 | 0.50 | 0  | 1  | 2       | 1\nVMOVUPD 0x2598d(%RIP),%XMM7                  | 1     | 0  | 0  | 0.50 | 0.50 | 0  | 0  | 3       | 0.50\nVMULPD %YMM0,%YMM9,%YMM10                    | 1     | 1  | 0  | 0    | 0    | 0  | 0  | 5       | 1\nVMOVUPD 0x257a1(%RIP),%XMM0                  | 1     | 0  | 0  | 0.50 | 0.50 | 0  | 0  | 3       | 0.50\nVINSERTF128 $0x1,0x257a7(%RIP),%YMM0,%YMM11  | 2     | 0  | 0  | 0.50 | 0.50 | 0  | 1  | 2       | 1\nVADDPD %YMM11,%YMM10,%YMM12                  | 1     | 0  | 1  | 0    | 0    | 0  | 0  | 3       | 1\nVMULPD %YMM6,%YMM8,%YMM9                     | 1     | 1  | 0  | 0    | 0    | 0  | 0  | 5       | 1\nVMOVUPD 0x2584e(%RIP),%XMM10                 | 1     | 0  | 0  | 0.50 | 0.50 | 0  | 0  | 3       | 0.50\nVINSERTF128 $0x1,0x25854(%RIP),%YMM10,%YMM0  | 2     | 0  | 0  | 0.50 | 0.50 | 0  | 1  | 2       | 1\nVADDPD %YMM0,%YMM9,%YMM11                    | 1     | 0  | 1  | 0    | 0    | 0  | 0  | 3       | 1\nVINSERTF128 $0x1,0x2595e(%RIP),%YMM7,%YMM8   | 2     | 0  | 0  | 0.50 | 0.50 | 0  | 1  | 2       | 1\nVMOVUPD 0x258ce(%RIP),%XMM10                 | 1     | 0  | 0  | 0.50 | 0.50 | 0  | 0  | 3       | 0.50\nVMULPD %YMM5,%YMM8,%YMM9                     | 1     | 1  | 0  | 0    | 0    | 0  | 0  | 5       | 1\nVINSERTF128 $0x1,0x258d0(%RIP),%YMM10,%YMM0  | 2     | 0  | 0  | 0.50 | 0.50 | 0  | 1  | 2       | 1\nVMOVUPD 0x25840(%RIP),%XMM14                 | 1     | 0  | 0  | 0.50 | 0.50 | 0  | 0  | 3       | 0.50\nVMULPD %YMM6,%YMM11,%YMM13                   | 1     | 1  | 0  | 0    | 0    | 0  | 0  | 5       | 1\nVADDPD %YMM0,%YMM9,%YMM11                    | 1     | 0  | 1  | 0    | 0    | 0  | 0  | 3       | 1\nVMULSD 0x258f0(%RIP),%XMM4,%XMM10            | 1     | 1  | 0  | 0.50 | 0.50 | 0  | 0  | 5       | 1\nVADDPD %YMM15,%YMM13,%YMM1                   | 1     | 0  | 1  | 0    | 0    | 0  | 0  | 3       | 1\nVINSERTF128 $0x1,0x25831(%RIP),%YMM14,%YMM15 | 2     | 0  | 0  | 0.50 | 0.50 | 0  | 1  | 2       | 1\nVMULPD %YMM5,%YMM11,%YMM13                   | 1     | 1  | 0  | 0    | 0    | 0  | 0  | 5       | 1\nVMULPD %YMM6,%YMM1,%YMM6                     | 1     | 1  | 0  | 0    | 0    | 0  | 0  | 5       | 1\nVADDPD %YMM15,%YMM13,%YMM1                   | 1     | 0  | 1  | 0    | 0    | 0  | 0  | 3       | 1\nVADDPD %YMM6,%YMM12,%YMM12                   | 1     | 0  | 1  | 0    | 0    | 0  | 0  | 3       | 1\nVMOVUPD 0x25790(%RIP),%XMM6                  | 1     | 0  | 0  | 0.50 | 0.50 | 0  | 0  | 3       | 0.50\nVINSERTF128 $0x1,0x25796(%RIP),%YMM6,%YMM8   | 2     | 0  | 0  | 0.50 | 0.50 | 0  | 1  | 2       | 1\nVMULPD %YMM5,%YMM1,%YMM7                     | 1     | 1  | 0  | 0    | 0    | 0  | 0  | 5       | 1\nVADDPD %YMM8,%YMM7,%YMM9                     | 1     | 0  | 1  | 0    | 0    | 0  | 0  | 3       | 1\nVMULPD %YMM5,%YMM9,%YMM5                     | 1     | 1  | 0  | 0    | 0    | 0  | 0  | 5       | 1\nVADDPD %YMM5,%YMM12,%YMM12                   | 1     | 0  | 1  | 0    | 0    | 0  | 0  | 3       | 1\nVMOVUPS %XMM12,(%RCX)                        | 1     | 0  | 0  | 0.50 | 0.50 | 1  | 0  | 3       | 1\nVEXTRACTF128 $0x1,%YMM12,0x10(%RCX)          | 2     | 0  | 0  | 0.50 | 0.50 | 1  | 0  | 2       | 1\nVADDSD 0x25822(%RIP),%XMM10,%XMM0            | 1     | 0  | 1  | 0.50 | 0.50 | 0  | 0  | 3       | 1\nVMULSD 0x258ba(%RIP),%XMM3,%XMM1             | 1     | 1  | 0  | 0.50 | 0.50 | 0  | 0  | 5       | 1\nVADDSD 0x2583a(%RIP),%XMM1,%XMM6             | 1     | 0  | 1  | 0.50 | 0.50 | 0  | 0  | 3       | 1\nVMULSD %XMM4,%XMM0,%XMM11                    | 1     | 1  | 0  | 0    | 0    | 0  | 0  | 5       | 1\nVMULSD 0x258ce(%RIP),%XMM2,%XMM0             | 1     | 1  | 0  | 0.50 | 0.50 | 0  | 0  | 5       | 1\nVADDSD 0x25786(%RIP),%XMM11,%XMM13           | 1     | 0  | 1  | 0.50 | 0.50 | 0  | 0  | 3       | 1\nVMULSD %XMM3,%XMM6,%XMM8                     | 1     | 1  | 0  | 0    | 0    | 0  | 0  | 5       | 1\nVADDSD 0x25842(%RIP),%XMM0,%XMM11            | 1     | 0  | 1  | 0.50 | 0.50 | 0  | 0  | 3       | 1\nVADDSD 0x2579a(%RIP),%XMM8,%XMM9             | 1     | 0  | 1  | 0.50 | 0.50 | 0  | 0  | 3       | 1\nVMULSD %XMM4,%XMM13,%XMM14                   | 1     | 1  | 0  | 0    | 0    | 0  | 0  | 5       | 1\nVMULSD %XMM2,%XMM11,%XMM13                   | 1     | 1  | 0  | 0    | 0    | 0  | 0  | 5       | 1\nVADDSD 0x256ea(%RIP),%XMM14,%XMM15           | 1     | 0  | 1  | 0.50 | 0.50 | 0  | 0  | 3       | 1\nVMULSD %XMM3,%XMM9,%XMM5                     | 1     | 1  | 0  | 0    | 0    | 0  | 0  | 5       | 1\nVADDSD 0x257a6(%RIP),%XMM13,%XMM14           | 1     | 0  | 1  | 0.50 | 0.50 | 0  | 0  | 3       | 1\nVADDSD 0x256fe(%RIP),%XMM5,%XMM12            | 1     | 0  | 1  | 0.50 | 0.50 | 0  | 0  | 3       | 1\nVMULSD %XMM4,%XMM15,%XMM4                    | 1     | 1  | 0  | 0    | 0    | 0  | 0  | 5       | 1\nVMULSD %XMM2,%XMM14,%XMM15                   | 1     | 1  | 0  | 0    | 0    | 0  | 0  | 5       | 1\nVADDSD 0x2569e(%RIP),%XMM4,%XMM7             | 1     | 0  | 1  | 0.50 | 0.50 | 0  | 0  | 3       | 1\nVMULSD %XMM3,%XMM12,%XMM3                    | 1     | 1  | 0  | 0    | 0    | 0  | 0  | 5       | 1\nVADDSD 0x2570a(%RIP),%XMM15,%XMM4            | 1     | 0  | 1  | 0.50 | 0.50 | 0  | 0  | 3       | 1\nVMULSD %XMM2,%XMM4,%XMM2                     | 1     | 1  | 0  | 0    | 0    | 0  | 0  | 5       | 1\nVADDSD %XMM3,%XMM7,%XMM10                    | 1     | 0  | 1  | 0    | 0    | 0  | 0  | 3       | 1\nVADDSD %XMM2,%XMM10,%XMM7                    | 1     | 0  | 1  | 0    | 0    | 0  | 0  | 3       | 1\nVMOVSD %XMM7,0x20(%RCX)                      | 1     | 0  | 0  | 0.50 | 0.50 | 1  | 0  | 3       | 1\nVZEROUPPER                                   | 4     | 0  | 0  | 0    | 0    | 0  | 0  | 2       | 1\nRET                                          | 2     | 0  | 0  | 0.50 | 0.50 | 0  | 1  | 0       | 2\n",
        },
      },
      header = {
        "56% of peak computational performance is used (4.53 out of 8.00 FLOP per cycle (GFLOPS @ 1GHz))",
      },
      brief = {
      },
      gain = {
        {
          workaround = " - Try another compiler or update/tune your current one\n - Make array accesses unit-stride:\n  * If your function streams arrays of structures (AoS), try to use structures of arrays instead (SoA):\ndo i a(i)%x = b(i)%x (slow, non stride 1) => do i a%x(i) = b%x(i) (fast, stride 1)\n",
          details = "64% of SSE/AVX instructions are used in vector version (process two or more data elements in vector registers):\n - 61% of SSE/AVX loads are used in vector version.\n - 66% of SSE/AVX stores are used in vector version.\n - 50% of SSE/AVX addition or subtraction instructions are used in vector version.\n - 50% of SSE/AVX multiply instructions are used in vector version.\n - 85% of SSE/AVX instructions that are not load, store, addition, subtraction nor multiply instructions are used in vector version.\nSince your execution units are vector units, only a fully vectorized function can use their full power.\n",
          title = "Vectorization",
          txt = "Your function is partially vectorized.\nOnly 55% of vector register length is used (average across all SSE/AVX instructions).\nBy fully vectorizing your function, you can lower the cost of an iteration from 26.50 to 17.00 cycles (1.56x speedup).",
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
          details = "These instructions generate more than one micro-operation and only one of them can be decoded during a cycle and the extra micro-operations increase pressure on execution units.\n - RET: 1 occurrences\n - VEXTRACTF128: 1 occurrences\n - VINSERTF128: 13 occurrences\n - VZEROUPPER: 1 occurrences\n",
          title = "Complex instructions",
          txt = "Detected COMPLEX INSTRUCTIONS.\n",
        },
        {
          workaround = "Use vector aligned instructions:\n 1) The GNU Fortran compiler does not support allocation alignment and does not feature directives to benefit from aligned data.\n 2) Use another compiler or locally use C code (for instance via libraries)\n",
          details = " - VEXTRACTF128: 1 occurrences\n - VINSERTF128: 16 occurrences\n - VMOVUPS: 1 occurrences\n",
          title = "Vector unaligned load/store instructions",
          txt = "Detected 18 optimal vector unaligned load/store instructions.\n",
        },
        {
          title = "Type of elements and instruction set",
          txt = "24 SSE or AVX instructions are processing arithmetic or math operations on double precision FP elements in scalar mode (one at a time).\n24 AVX instructions are processing arithmetic or math operations on double precision FP elements in vector mode (four at a time).\n",
        },
        {
          title = "Matching between your function (in the source code) and the binary function",
          txt = "The binary function is composed of 120 FP arithmetical operations:\n - 60: addition or subtraction\n - 60: multiply\nThe binary function is loading 544 bytes (68 double precision FP elements).\nThe binary function is storing 40 bytes (5 double precision FP elements).",
        },
        {
          title = "Arithmetic intensity",
          txt = "Arithmetic intensity is 0.21 FP operations per loaded or stored byte.",
        },
      },
      expert = {
        {
          title = "General properties",
          txt = "nb instructions    : 88\nnb uops            : 106\nloop length        : 547\nused x86 registers : 4\nused mmx registers : 0\nused xmm registers : 16\nused ymm registers : 13\nused zmm registers : 0\nnb stack references: 0\nADD-SUB / MUL ratio: 1.00\n",
        },
        {
          title = "Front-end",
          txt = "MACRO FUSION NOT POSSIBLE\nFIT IN UOP CACHE\nmicro-operation queue: 26.50 cycles\nfront end            : 26.50 cycles\n",
        },
        {
          title = "Back-end",
          txt = "       | P0    | P1    | P2    | P3    | P4   | P5\n-----------------------------------------------------\nuops   | 24.00 | 24.00 | 23.00 | 23.00 | 3.00 | 20.00\ncycles | 24.00 | 24.00 | 23.00 | 23.00 | 3.00 | 20.00\n\nCycles executing div or sqrt instructions: NA\n",
        },
        {
          title = "Cycles summary",
          txt = "Front-end : 26.50\nDispatch  : 24.00\nOverall L1: 26.50\n",
        },
        {
          title = "Vectorization ratios",
          txt = "INT\nall    : 100%\nload   : NA (no load vectorizable/vectorized instructions)\nstore  : NA (no store vectorizable/vectorized instructions)\nmul    : NA (no mul vectorizable/vectorized instructions)\nadd-sub: NA (no add-sub vectorizable/vectorized instructions)\nfma    : NA (no fma vectorizable/vectorized instructions)\nother  : 100%\nFP\nall     : 63%\nload    : 61%\nstore   : 66%\nmul     : 50%\nadd-sub : 50%\nfma     : NA (no fma vectorizable/vectorized instructions)\ndiv/sqrt: NA (no div/sqrt vectorizable/vectorized instructions)\nother   : 84%\nINT+FP\nall     : 64%\nload    : 61%\nstore   : 66%\nmul     : 50%\nadd-sub : 50%\nfma     : NA (no fma vectorizable/vectorized instructions)\ndiv/sqrt: NA (no div/sqrt vectorizable/vectorized instructions)\nother   : 85%\n",
        },
        {
          title = "Vector efficiency ratios",
          txt = "INT\nall    : 100%\nload   : NA (no load vectorizable/vectorized instructions)\nstore  : NA (no store vectorizable/vectorized instructions)\nmul    : NA (no mul vectorizable/vectorized instructions)\nadd-sub: NA (no add-sub vectorizable/vectorized instructions)\nfma    : NA (no fma vectorizable/vectorized instructions)\nother  : 100%\nFP\nall     : 54%\nload    : 40%\nstore   : 41%\nmul     : 62%\nadd-sub : 62%\nfma     : NA (no fma vectorizable/vectorized instructions)\ndiv/sqrt: NA (no div/sqrt vectorizable/vectorized instructions)\nother   : 46%\nINT+FP\nall     : 55%\nload    : 40%\nstore   : 41%\nmul     : 62%\nadd-sub : 62%\nfma     : NA (no fma vectorizable/vectorized instructions)\ndiv/sqrt: NA (no div/sqrt vectorizable/vectorized instructions)\nother   : 48%\n",
        },
        {
          title = "Cycles and memory resources usage",
          txt = "Assuming all data fit into the L1 cache, each call to the function takes 26.50 cycles. At this rate:\n - 64% of peak load performance is reached (20.53 out of 32.00 bytes loaded per cycle (GB/s @ 1GHz))\n - 9% of peak store performance is reached (1.51 out of 16.00 bytes stored per cycle (GB/s @ 1GHz))\n",
        },
        {
          title = "Front-end bottlenecks",
          txt = "Performance is limited by instruction throughput (loading/decoding program instructions to execution core) (front-end is a bottleneck).\n\nBy removing all these bottlenecks, you can lower the cost of an iteration from 26.50 to 24.00 cycles (1.10x speedup).\n",
        },
        {
          title = "ASM code",
          txt = "In the binary file, the address of the function is: 7120\n\nInstruction                                  | Nb FU | P0 | P1 | P2   | P3   | P4 | P5 | Latency | Recip. throughput\n--------------------------------------------------------------------------------------------------------------------\nVMOVSD (%RDI),%XMM4                          | 1     | 0  | 0  | 0.50 | 0.50 | 0  | 0  | 3       | 0.50\nVMOVUPD 0x25a04(%RIP),%XMM7                  | 1     | 0  | 0  | 0.50 | 0.50 | 0  | 0  | 3       | 0.50\nVINSERTF128 $0x1,0x25a0a(%RIP),%YMM7,%YMM1   | 2     | 0  | 0  | 0.50 | 0.50 | 0  | 1  | 2       | 1\nVMOVUPD 0x2597a(%RIP),%XMM9                  | 1     | 0  | 0  | 0.50 | 0.50 | 0  | 0  | 3       | 0.50\nVMOVDDUP %XMM4,%XMM0                         | 1     | 0  | 0  | 0    | 0    | 0  | 1  | 1       | 1\nVINSERTF128 $0x1,%XMM0,%YMM0,%YMM0           | 1     | 0  | 0  | 0    | 0    | 0  | 1  | 2       | 1\nVINSERTF128 $0x1,0x25976(%RIP),%YMM9,%YMM10  | 2     | 0  | 0  | 0.50 | 0.50 | 0  | 1  | 2       | 1\nVMULPD %YMM0,%YMM1,%YMM8                     | 1     | 1  | 0  | 0    | 0    | 0  | 0  | 5       | 1\nVADDPD %YMM10,%YMM8,%YMM11                   | 1     | 0  | 1  | 0    | 0    | 0  | 0  | 3       | 1\nVMOVUPD 0x258dd(%RIP),%XMM13                 | 1     | 0  | 0  | 0.50 | 0.50 | 0  | 0  | 3       | 0.50\nVINSERTF128 $0x1,0x258e3(%RIP),%YMM13,%YMM14 | 2     | 0  | 0  | 0.50 | 0.50 | 0  | 1  | 2       | 1\nVMOVSD (%RSI),%XMM3                          | 1     | 0  | 0  | 0.50 | 0.50 | 0  | 0  | 3       | 0.50\nVMOVUPD 0x2584f(%RIP),%XMM7                  | 1     | 0  | 0  | 0.50 | 0.50 | 0  | 0  | 3       | 0.50\nVINSERTF128 $0x1,0x25855(%RIP),%YMM7,%YMM8   | 2     | 0  | 0  | 0.50 | 0.50 | 0  | 1  | 2       | 1\nVMULPD %YMM0,%YMM11,%YMM12                   | 1     | 1  | 0  | 0    | 0    | 0  | 0  | 5       | 1\nVADDPD %YMM14,%YMM12,%YMM15                  | 1     | 0  | 1  | 0    | 0    | 0  | 0  | 3       | 1\nVMOVDDUP %XMM3,%XMM6                         | 1     | 0  | 0  | 0    | 0    | 0  | 1  | 1       | 1\nVMOVSD (%RDX),%XMM2                          | 1     | 0  | 0  | 0.50 | 0.50 | 0  | 0  | 3       | 0.50\nVINSERTF128 $0x1,%XMM6,%YMM6,%YMM6           | 1     | 0  | 0  | 0    | 0    | 0  | 1  | 2       | 1\nVMOVUPD 0x259b6(%RIP),%XMM13                 | 1     | 0  | 0  | 0.50 | 0.50 | 0  | 0  | 3       | 0.50\nVINSERTF128 $0x1,0x259bc(%RIP),%YMM13,%YMM14 | 2     | 0  | 0  | 0.50 | 0.50 | 0  | 1  | 2       | 1\nVMOVDDUP %XMM2,%XMM5                         | 1     | 0  | 0  | 0    | 0    | 0  | 1  | 1       | 1\nVINSERTF128 $0x1,%XMM5,%YMM5,%YMM5           | 1     | 0  | 0  | 0    | 0    | 0  | 1  | 2       | 1\nVMULPD %YMM0,%YMM15,%YMM1                    | 1     | 1  | 0  | 0    | 0    | 0  | 0  | 5       | 1\nVMULPD %YMM6,%YMM14,%YMM15                   | 1     | 1  | 0  | 0    | 0    | 0  | 0  | 5       | 1\nVADDPD %YMM8,%YMM1,%YMM9                     | 1     | 0  | 1  | 0    | 0    | 0  | 0  | 3       | 1\nVMOVUPD 0x25915(%RIP),%XMM1                  | 1     | 0  | 0  | 0.50 | 0.50 | 0  | 0  | 3       | 0.50\nVINSERTF128 $0x1,0x2591b(%RIP),%YMM1,%YMM7   | 2     | 0  | 0  | 0.50 | 0.50 | 0  | 1  | 2       | 1\nVADDPD %YMM7,%YMM15,%YMM8                    | 1     | 0  | 1  | 0    | 0    | 0  | 0  | 3       | 1\nVMOVUPD 0x2580f(%RIP),%XMM14                 | 1     | 0  | 0  | 0.50 | 0.50 | 0  | 0  | 3       | 0.50\nVINSERTF128 $0x1,0x25815(%RIP),%YMM14,%YMM15 | 2     | 0  | 0  | 0.50 | 0.50 | 0  | 1  | 2       | 1\nVMOVUPD 0x2598d(%RIP),%XMM7                  | 1     | 0  | 0  | 0.50 | 0.50 | 0  | 0  | 3       | 0.50\nVMULPD %YMM0,%YMM9,%YMM10                    | 1     | 1  | 0  | 0    | 0    | 0  | 0  | 5       | 1\nVMOVUPD 0x257a1(%RIP),%XMM0                  | 1     | 0  | 0  | 0.50 | 0.50 | 0  | 0  | 3       | 0.50\nVINSERTF128 $0x1,0x257a7(%RIP),%YMM0,%YMM11  | 2     | 0  | 0  | 0.50 | 0.50 | 0  | 1  | 2       | 1\nVADDPD %YMM11,%YMM10,%YMM12                  | 1     | 0  | 1  | 0    | 0    | 0  | 0  | 3       | 1\nVMULPD %YMM6,%YMM8,%YMM9                     | 1     | 1  | 0  | 0    | 0    | 0  | 0  | 5       | 1\nVMOVUPD 0x2584e(%RIP),%XMM10                 | 1     | 0  | 0  | 0.50 | 0.50 | 0  | 0  | 3       | 0.50\nVINSERTF128 $0x1,0x25854(%RIP),%YMM10,%YMM0  | 2     | 0  | 0  | 0.50 | 0.50 | 0  | 1  | 2       | 1\nVADDPD %YMM0,%YMM9,%YMM11                    | 1     | 0  | 1  | 0    | 0    | 0  | 0  | 3       | 1\nVINSERTF128 $0x1,0x2595e(%RIP),%YMM7,%YMM8   | 2     | 0  | 0  | 0.50 | 0.50 | 0  | 1  | 2       | 1\nVMOVUPD 0x258ce(%RIP),%XMM10                 | 1     | 0  | 0  | 0.50 | 0.50 | 0  | 0  | 3       | 0.50\nVMULPD %YMM5,%YMM8,%YMM9                     | 1     | 1  | 0  | 0    | 0    | 0  | 0  | 5       | 1\nVINSERTF128 $0x1,0x258d0(%RIP),%YMM10,%YMM0  | 2     | 0  | 0  | 0.50 | 0.50 | 0  | 1  | 2       | 1\nVMOVUPD 0x25840(%RIP),%XMM14                 | 1     | 0  | 0  | 0.50 | 0.50 | 0  | 0  | 3       | 0.50\nVMULPD %YMM6,%YMM11,%YMM13                   | 1     | 1  | 0  | 0    | 0    | 0  | 0  | 5       | 1\nVADDPD %YMM0,%YMM9,%YMM11                    | 1     | 0  | 1  | 0    | 0    | 0  | 0  | 3       | 1\nVMULSD 0x258f0(%RIP),%XMM4,%XMM10            | 1     | 1  | 0  | 0.50 | 0.50 | 0  | 0  | 5       | 1\nVADDPD %YMM15,%YMM13,%YMM1                   | 1     | 0  | 1  | 0    | 0    | 0  | 0  | 3       | 1\nVINSERTF128 $0x1,0x25831(%RIP),%YMM14,%YMM15 | 2     | 0  | 0  | 0.50 | 0.50 | 0  | 1  | 2       | 1\nVMULPD %YMM5,%YMM11,%YMM13                   | 1     | 1  | 0  | 0    | 0    | 0  | 0  | 5       | 1\nVMULPD %YMM6,%YMM1,%YMM6                     | 1     | 1  | 0  | 0    | 0    | 0  | 0  | 5       | 1\nVADDPD %YMM15,%YMM13,%YMM1                   | 1     | 0  | 1  | 0    | 0    | 0  | 0  | 3       | 1\nVADDPD %YMM6,%YMM12,%YMM12                   | 1     | 0  | 1  | 0    | 0    | 0  | 0  | 3       | 1\nVMOVUPD 0x25790(%RIP),%XMM6                  | 1     | 0  | 0  | 0.50 | 0.50 | 0  | 0  | 3       | 0.50\nVINSERTF128 $0x1,0x25796(%RIP),%YMM6,%YMM8   | 2     | 0  | 0  | 0.50 | 0.50 | 0  | 1  | 2       | 1\nVMULPD %YMM5,%YMM1,%YMM7                     | 1     | 1  | 0  | 0    | 0    | 0  | 0  | 5       | 1\nVADDPD %YMM8,%YMM7,%YMM9                     | 1     | 0  | 1  | 0    | 0    | 0  | 0  | 3       | 1\nVMULPD %YMM5,%YMM9,%YMM5                     | 1     | 1  | 0  | 0    | 0    | 0  | 0  | 5       | 1\nVADDPD %YMM5,%YMM12,%YMM12                   | 1     | 0  | 1  | 0    | 0    | 0  | 0  | 3       | 1\nVMOVUPS %XMM12,(%RCX)                        | 1     | 0  | 0  | 0.50 | 0.50 | 1  | 0  | 3       | 1\nVEXTRACTF128 $0x1,%YMM12,0x10(%RCX)          | 2     | 0  | 0  | 0.50 | 0.50 | 1  | 0  | 2       | 1\nVADDSD 0x25822(%RIP),%XMM10,%XMM0            | 1     | 0  | 1  | 0.50 | 0.50 | 0  | 0  | 3       | 1\nVMULSD 0x258ba(%RIP),%XMM3,%XMM1             | 1     | 1  | 0  | 0.50 | 0.50 | 0  | 0  | 5       | 1\nVADDSD 0x2583a(%RIP),%XMM1,%XMM6             | 1     | 0  | 1  | 0.50 | 0.50 | 0  | 0  | 3       | 1\nVMULSD %XMM4,%XMM0,%XMM11                    | 1     | 1  | 0  | 0    | 0    | 0  | 0  | 5       | 1\nVMULSD 0x258ce(%RIP),%XMM2,%XMM0             | 1     | 1  | 0  | 0.50 | 0.50 | 0  | 0  | 5       | 1\nVADDSD 0x25786(%RIP),%XMM11,%XMM13           | 1     | 0  | 1  | 0.50 | 0.50 | 0  | 0  | 3       | 1\nVMULSD %XMM3,%XMM6,%XMM8                     | 1     | 1  | 0  | 0    | 0    | 0  | 0  | 5       | 1\nVADDSD 0x25842(%RIP),%XMM0,%XMM11            | 1     | 0  | 1  | 0.50 | 0.50 | 0  | 0  | 3       | 1\nVADDSD 0x2579a(%RIP),%XMM8,%XMM9             | 1     | 0  | 1  | 0.50 | 0.50 | 0  | 0  | 3       | 1\nVMULSD %XMM4,%XMM13,%XMM14                   | 1     | 1  | 0  | 0    | 0    | 0  | 0  | 5       | 1\nVMULSD %XMM2,%XMM11,%XMM13                   | 1     | 1  | 0  | 0    | 0    | 0  | 0  | 5       | 1\nVADDSD 0x256ea(%RIP),%XMM14,%XMM15           | 1     | 0  | 1  | 0.50 | 0.50 | 0  | 0  | 3       | 1\nVMULSD %XMM3,%XMM9,%XMM5                     | 1     | 1  | 0  | 0    | 0    | 0  | 0  | 5       | 1\nVADDSD 0x257a6(%RIP),%XMM13,%XMM14           | 1     | 0  | 1  | 0.50 | 0.50 | 0  | 0  | 3       | 1\nVADDSD 0x256fe(%RIP),%XMM5,%XMM12            | 1     | 0  | 1  | 0.50 | 0.50 | 0  | 0  | 3       | 1\nVMULSD %XMM4,%XMM15,%XMM4                    | 1     | 1  | 0  | 0    | 0    | 0  | 0  | 5       | 1\nVMULSD %XMM2,%XMM14,%XMM15                   | 1     | 1  | 0  | 0    | 0    | 0  | 0  | 5       | 1\nVADDSD 0x2569e(%RIP),%XMM4,%XMM7             | 1     | 0  | 1  | 0.50 | 0.50 | 0  | 0  | 3       | 1\nVMULSD %XMM3,%XMM12,%XMM3                    | 1     | 1  | 0  | 0    | 0    | 0  | 0  | 5       | 1\nVADDSD 0x2570a(%RIP),%XMM15,%XMM4            | 1     | 0  | 1  | 0.50 | 0.50 | 0  | 0  | 3       | 1\nVMULSD %XMM2,%XMM4,%XMM2                     | 1     | 1  | 0  | 0    | 0    | 0  | 0  | 5       | 1\nVADDSD %XMM3,%XMM7,%XMM10                    | 1     | 0  | 1  | 0    | 0    | 0  | 0  | 3       | 1\nVADDSD %XMM2,%XMM10,%XMM7                    | 1     | 0  | 1  | 0    | 0    | 0  | 0  | 3       | 1\nVMOVSD %XMM7,0x20(%RCX)                      | 1     | 0  | 0  | 0.50 | 0.50 | 1  | 0  | 3       | 1\nVZEROUPPER                                   | 4     | 0  | 0  | 0    | 0    | 0  | 0  | 2       | 1\nRET                                          | 2     | 0  | 0  | 0.50 | 0.50 | 0  | 1  | 0       | 2\n",
        },
      },
      header = {
        "56% of peak computational performance is used (4.53 out of 8.00 FLOP per cycle (GFLOPS @ 1GHz))",
      },
      brief = {
      },
      gain = {
        {
          workaround = " - Try another compiler or update/tune your current one\n - Make array accesses unit-stride:\n  * If your function streams arrays of structures (AoS), try to use structures of arrays instead (SoA):\ndo i a(i)%x = b(i)%x (slow, non stride 1) => do i a%x(i) = b%x(i) (fast, stride 1)\n",
          details = "64% of SSE/AVX instructions are used in vector version (process two or more data elements in vector registers):\n - 61% of SSE/AVX loads are used in vector version.\n - 66% of SSE/AVX stores are used in vector version.\n - 50% of SSE/AVX addition or subtraction instructions are used in vector version.\n - 50% of SSE/AVX multiply instructions are used in vector version.\n - 85% of SSE/AVX instructions that are not load, store, addition, subtraction nor multiply instructions are used in vector version.\nSince your execution units are vector units, only a fully vectorized function can use their full power.\n",
          title = "Vectorization",
          txt = "Your function is partially vectorized.\nOnly 55% of vector register length is used (average across all SSE/AVX instructions).\nBy fully vectorizing your function, you can lower the cost of an iteration from 26.50 to 17.00 cycles (1.56x speedup).",
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
      "The function is defined in /users/user2210/NPB3.4-MZ-MPI/BT-MZ/exact_solution.f90:24-28.\n",
    },
    nb_paths = 1,
  },
}
