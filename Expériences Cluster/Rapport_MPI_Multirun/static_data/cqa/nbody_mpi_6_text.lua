_cqa_text_report = {
  paths = {
    {
      hint = {
        {
          workaround = " - Try to reorganize arrays of structures to structures of arrays\n - Consider to permute loops (see vectorization gain report)\n",
          details = " - Constant non-unit stride: 9 occurrence(s)\nNon-unit stride (uncontiguous) accesses are not efficiently using data caches\n",
          title = "Slow data structures access",
          txt = "Detected data structures (typically arrays) that cannot be efficiently read/written",
        },
        {
          title = "Type of elements and instruction set",
          txt = "52 SSE or AVX instructions are processing arithmetic or math operations on single precision FP elements in scalar mode (one at a time).\n",
        },
        {
          title = "Matching between your loop (in the source code) and the binary loop",
          txt = "The binary loop is composed of 72 FP arithmetical operations:\n - 36: addition or subtraction (20 inside FMA instructions)\n - 28: multiply (20 inside FMA instructions)\n - 4: divide\n - 4: square root\nThe binary loop is loading 48 bytes (12 single precision FP elements).",
        },
        {
          title = "Arithmetic intensity",
          txt = "Arithmetic intensity is 1.50 FP operations per loaded or stored byte.",
        },
      },
      expert = {
        {
          title = "General properties",
          txt = "nb instructions    : 74\nloop length        : 359\nused x86 registers : 7\nused mmx registers : 0\nused xmm registers : 14\nused ymm registers : 0\nused zmm registers : 0\nnb stack references: 0\nADD-SUB / MUL ratio: 2.00\n",
        },
        {
          title = "Front-end",
          txt = "MACRO FUSION NOT POSSIBLE\ninstruction fetch    : 23.00 cycles\ninstruction queue    : 37.00 cycles\ndecoding             : 37.00 cycles\nmicro-operation queue: 37.00 cycles\nfront end            : 37.00 cycles\n",
        },
        {
          title = "Back-end",
          txt = "       | P0    | P1    | P2   | P3   | P4   | P5   | P6\n---------------------------------------------------------\nuops   | 36.00 | 36.00 | 6.00 | 6.00 | 3.00 | 3.00 | 0.00\ncycles | 36.00 | 36.00 | 6.00 | 6.00 | 3.00 | 3.00 | 0.00\n\nCycles executing div or sqrt instructions: 116.00-140.00\nLongest recurrence chain latency (RecMII): 24.00\n",
        },
        {
          title = "Cycles summary",
          txt = "Front-end : 37.00\nDispatch  : 36.00\nDIV/SQRT  : 116.00-140.00\nData deps.: 24.00\nOverall L1: 116.00-140.00\n",
        },
        {
          title = "Vectorization ratios",
          txt = "all     : 5%\nload    : 0%\nstore   : NA (no store vectorizable/vectorized instructions)\nmul     : 0%\nadd-sub : 0%\nfma     : 0%\ndiv/sqrt: 0%\nother   : 100%\n",
        },
        {
          title = "Vector efficiency ratios",
          txt = "all     : 7%\nload    : 6%\nstore   : NA (no store vectorizable/vectorized instructions)\nmul     : 6%\nadd-sub : 6%\nfma     : 6%\ndiv/sqrt: 6%\nother   : 25%\n",
        },
        {
          title = "Cycles and memory resources usage",
          txt = "Assuming all data fit into the L1 cache, each iteration of the binary loop takes 140.00 cycles. At this rate:\n - 0% of peak load performance is reached (0.34 out of 128.00 bytes loaded per cycle (GB/s @ 1GHz))\n",
        },
        {
          title = "Front-end bottlenecks",
          txt = "Found no such bottlenecks.",
        },
        {
          title = "ASM code",
          txt = "In the binary file, the address of the loop is: 2a32\n\nInstruction                      | Nb FU | P0   | P1   | P2   | P3   | P4   | P5   | P6 | Latency | Recip. throughput\n---------------------------------------------------------------------------------------------------------------------\nVMOVSS (%RCX,%RAX,4),%XMM15      | 1     | 0    | 0    | 0.50 | 0.50 | 0    | 0    | 0  | 5       | 0.50\nVMOVSS (%R12,%RAX,4),%XMM14      | 1     | 0    | 0    | 0.50 | 0.50 | 0    | 0    | 0  | 5       | 0.50\nLEA 0x1(%RAX),%RDI               | 1     | 0    | 0    | 0    | 0    | 0.50 | 0.50 | 0  | 1       | 0.50\nLEA 0x2(%RAX),%RSI               | 1     | 0    | 0    | 0    | 0    | 0.50 | 0.50 | 0  | 1       | 0.50\nVMOVSS (%R13,%RAX,4),%XMM2       | 1     | 0    | 0    | 0.50 | 0.50 | 0    | 0    | 0  | 5       | 0.50\nVSUBSS %XMM7,%XMM15,%XMM13       | 1     | 0.50 | 0.50 | 0    | 0    | 0    | 0    | 0  | 6       | 0.50\nVSUBSS %XMM8,%XMM14,%XMM6        | 1     | 0.50 | 0.50 | 0    | 0    | 0    | 0    | 0  | 6       | 0.50\nVSUBSS %XMM9,%XMM2,%XMM3         | 1     | 0.50 | 0.50 | 0    | 0    | 0    | 0    | 0  | 6       | 0.50\nVMULSS %XMM13,%XMM13,%XMM15      | 1     | 0.50 | 0.50 | 0    | 0    | 0    | 0    | 0  | 6       | 0.50\nVMOVAPS %XMM6,%XMM14             | 1     | 0.50 | 0.50 | 0    | 0    | 0    | 0    | 0  | 2       | 0.50\nVFMADD132SS %XMM6,%XMM11,%XMM14  | 1     | 0.50 | 0.50 | 0    | 0    | 0    | 0    | 0  | 6       | 0.50\nVFMADD231SS %XMM3,%XMM3,%XMM15   | 1     | 0.50 | 0.50 | 0    | 0    | 0    | 0    | 0  | 6       | 0.50\nVADDSS %XMM14,%XMM15,%XMM15      | 1     | 0.50 | 0.50 | 0    | 0    | 0    | 0    | 0  | 6       | 0.50\nVSQRTSS %XMM15,%XMM15,%XMM2      | 3     | 3    | 0    | 0    | 0    | 0    | 0    | 0  | 25-27   | 17-18\nVMULSS %XMM15,%XMM2,%XMM14       | 1     | 0.50 | 0.50 | 0    | 0    | 0    | 0    | 0  | 6       | 0.50\nVDIVSS %XMM14,%XMM10,%XMM15      | 3     | 3    | 0    | 0    | 0    | 0    | 0    | 0  | 25-27   | 12-17\nVFMADD231SS %XMM13,%XMM15,%XMM5  | 1     | 0.50 | 0.50 | 0    | 0    | 0    | 0    | 0  | 6       | 0.50\nVMOVSS (%RCX,%RDI,4),%XMM13      | 1     | 0    | 0    | 0.50 | 0.50 | 0    | 0    | 0  | 5       | 0.50\nVFMADD231SS %XMM6,%XMM15,%XMM4   | 1     | 0.50 | 0.50 | 0    | 0    | 0    | 0    | 0  | 6       | 0.50\nVMOVSS (%R12,%RDI,4),%XMM6       | 1     | 0    | 0    | 0.50 | 0.50 | 0    | 0    | 0  | 5       | 0.50\nVFMADD231SS %XMM3,%XMM15,%XMM1   | 1     | 0.50 | 0.50 | 0    | 0    | 0    | 0    | 0  | 6       | 0.50\nVMOVSS (%R13,%RDI,4),%XMM3       | 1     | 0    | 0    | 0.50 | 0.50 | 0    | 0    | 0  | 5       | 0.50\nLEA 0x3(%RAX),%RDI               | 1     | 0    | 0    | 0    | 0    | 0.50 | 0.50 | 0  | 1       | 0.50\nADD $0x4,%RAX                    | 1     | 0    | 0    | 0    | 0    | 0.50 | 0.50 | 0  | 1       | 0.50\nVSUBSS %XMM7,%XMM13,%XMM15       | 1     | 0.50 | 0.50 | 0    | 0    | 0    | 0    | 0  | 6       | 0.50\nVSUBSS %XMM8,%XMM6,%XMM13        | 1     | 0.50 | 0.50 | 0    | 0    | 0    | 0    | 0  | 6       | 0.50\nVSUBSS %XMM9,%XMM3,%XMM6         | 1     | 0.50 | 0.50 | 0    | 0    | 0    | 0    | 0  | 6       | 0.50\nVMULSS %XMM15,%XMM15,%XMM2       | 1     | 0.50 | 0.50 | 0    | 0    | 0    | 0    | 0  | 6       | 0.50\nVMOVAPS %XMM13,%XMM14            | 1     | 0.50 | 0.50 | 0    | 0    | 0    | 0    | 0  | 2       | 0.50\nVFMADD132SS %XMM13,%XMM11,%XMM14 | 1     | 0.50 | 0.50 | 0    | 0    | 0    | 0    | 0  | 6       | 0.50\nVFMADD231SS %XMM6,%XMM6,%XMM2    | 1     | 0.50 | 0.50 | 0    | 0    | 0    | 0    | 0  | 6       | 0.50\nVADDSS %XMM14,%XMM2,%XMM3        | 1     | 0.50 | 0.50 | 0    | 0    | 0    | 0    | 0  | 6       | 0.50\nVSQRTSS %XMM3,%XMM3,%XMM2        | 3     | 3    | 0    | 0    | 0    | 0    | 0    | 0  | 25-27   | 17-18\nVMULSS %XMM3,%XMM2,%XMM14        | 1     | 0.50 | 0.50 | 0    | 0    | 0    | 0    | 0  | 6       | 0.50\nVMOVSS (%R13,%RSI,4),%XMM2       | 1     | 0    | 0    | 0.50 | 0.50 | 0    | 0    | 0  | 5       | 0.50\nVDIVSS %XMM14,%XMM10,%XMM3       | 3     | 3    | 0    | 0    | 0    | 0    | 0    | 0  | 25-27   | 12-17\nVSUBSS %XMM9,%XMM2,%XMM14        | 1     | 0.50 | 0.50 | 0    | 0    | 0    | 0    | 0  | 6       | 0.50\nVFMADD132SS %XMM3,%XMM1,%XMM6    | 1     | 0.50 | 0.50 | 0    | 0    | 0    | 0    | 0  | 6       | 0.50\nVMOVSS (%RCX,%RSI,4),%XMM1       | 1     | 0    | 0    | 0.50 | 0.50 | 0    | 0    | 0  | 5       | 0.50\nVFMADD132SS %XMM3,%XMM5,%XMM15   | 1     | 0.50 | 0.50 | 0    | 0    | 0    | 0    | 0  | 6       | 0.50\nVFMADD132SS %XMM3,%XMM4,%XMM13   | 1     | 0.50 | 0.50 | 0    | 0    | 0    | 0    | 0  | 6       | 0.50\nVMOVSS (%R12,%RSI,4),%XMM4       | 1     | 0    | 0    | 0.50 | 0.50 | 0    | 0    | 0  | 5       | 0.50\nVSUBSS %XMM7,%XMM1,%XMM5         | 1     | 0.50 | 0.50 | 0    | 0    | 0    | 0    | 0  | 6       | 0.50\nVSUBSS %XMM8,%XMM4,%XMM4         | 1     | 0.50 | 0.50 | 0    | 0    | 0    | 0    | 0  | 6       | 0.50\nVMULSS %XMM5,%XMM5,%XMM3         | 1     | 0.50 | 0.50 | 0    | 0    | 0    | 0    | 0  | 6       | 0.50\nVMOVAPS %XMM4,%XMM1              | 1     | 0.50 | 0.50 | 0    | 0    | 0    | 0    | 0  | 2       | 0.50\nVFMADD132SS %XMM4,%XMM11,%XMM1   | 1     | 0.50 | 0.50 | 0    | 0    | 0    | 0    | 0  | 6       | 0.50\nVFMADD231SS %XMM14,%XMM14,%XMM3  | 1     | 0.50 | 0.50 | 0    | 0    | 0    | 0    | 0  | 6       | 0.50\nVADDSS %XMM1,%XMM3,%XMM3         | 1     | 0.50 | 0.50 | 0    | 0    | 0    | 0    | 0  | 6       | 0.50\nVSQRTSS %XMM3,%XMM3,%XMM2        | 3     | 3    | 0    | 0    | 0    | 0    | 0    | 0  | 25-27   | 17-18\nVMULSS %XMM3,%XMM2,%XMM1         | 1     | 0.50 | 0.50 | 0    | 0    | 0    | 0    | 0  | 6       | 0.50\nVMOVSS (%R13,%RDI,4),%XMM3       | 1     | 0    | 0    | 0.50 | 0.50 | 0    | 0    | 0  | 5       | 0.50\nVDIVSS %XMM1,%XMM10,%XMM1        | 3     | 3    | 0    | 0    | 0    | 0    | 0    | 0  | 25-27   | 12-17\nVFMADD132SS %XMM1,%XMM15,%XMM5   | 1     | 0.50 | 0.50 | 0    | 0    | 0    | 0    | 0  | 6       | 0.50\nVMOVSS (%RCX,%RDI,4),%XMM15      | 1     | 0    | 0    | 0.50 | 0.50 | 0    | 0    | 0  | 5       | 0.50\nVFMADD132SS %XMM1,%XMM13,%XMM4   | 1     | 0.50 | 0.50 | 0    | 0    | 0    | 0    | 0  | 6       | 0.50\nVFMADD132SS %XMM14,%XMM6,%XMM1   | 1     | 0.50 | 0.50 | 0    | 0    | 0    | 0    | 0  | 6       | 0.50\nVMOVSS (%R12,%RDI,4),%XMM6       | 1     | 0    | 0    | 0.50 | 0.50 | 0    | 0    | 0  | 5       | 0.50\nVSUBSS %XMM7,%XMM15,%XMM13       | 1     | 0.50 | 0.50 | 0    | 0    | 0    | 0    | 0  | 6       | 0.50\nVSUBSS %XMM9,%XMM3,%XMM15        | 1     | 0.50 | 0.50 | 0    | 0    | 0    | 0    | 0  | 6       | 0.50\nVSUBSS %XMM8,%XMM6,%XMM14        | 1     | 0.50 | 0.50 | 0    | 0    | 0    | 0    | 0  | 6       | 0.50\nVMULSS %XMM13,%XMM13,%XMM2       | 1     | 0.50 | 0.50 | 0    | 0    | 0    | 0    | 0  | 6       | 0.50\nVMOVAPS %XMM14,%XMM6             | 1     | 0.50 | 0.50 | 0    | 0    | 0    | 0    | 0  | 2       | 0.50\nVFMADD132SS %XMM14,%XMM11,%XMM6  | 1     | 0.50 | 0.50 | 0    | 0    | 0    | 0    | 0  | 6       | 0.50\nVFMADD231SS %XMM15,%XMM15,%XMM2  | 1     | 0.50 | 0.50 | 0    | 0    | 0    | 0    | 0  | 6       | 0.50\nVADDSS %XMM6,%XMM2,%XMM3         | 1     | 0.50 | 0.50 | 0    | 0    | 0    | 0    | 0  | 6       | 0.50\nVSQRTSS %XMM3,%XMM3,%XMM2        | 3     | 3    | 0    | 0    | 0    | 0    | 0    | 0  | 25-27   | 17-18\nVMULSS %XMM3,%XMM2,%XMM6         | 1     | 0.50 | 0.50 | 0    | 0    | 0    | 0    | 0  | 6       | 0.50\nVDIVSS %XMM6,%XMM10,%XMM3        | 3     | 3    | 0    | 0    | 0    | 0    | 0    | 0  | 25-27   | 12-17\nVFMADD231SS %XMM13,%XMM3,%XMM5   | 1     | 0.50 | 0.50 | 0    | 0    | 0    | 0    | 0  | 6       | 0.50\nVFMADD231SS %XMM14,%XMM3,%XMM4   | 1     | 0.50 | 0.50 | 0    | 0    | 0    | 0    | 0  | 6       | 0.50\nVFMADD231SS %XMM15,%XMM3,%XMM1   | 1     | 0.50 | 0.50 | 0    | 0    | 0    | 0    | 0  | 6       | 0.50\nCMP %RAX,%R9                     | 1     | 0    | 0    | 0    | 0    | 0.50 | 0.50 | 0  | 1       | 0.50\nJA 2a32 <move_particles+0x6b2>   | 1     | 0    | 0    | 0    | 0    | 0    | 1    | 0  | 0       | 1-2\n",
        },
      },
      header = {
        "0% of peak computational performance is used (0.51 out of 64.00 FLOP per cycle (GFLOPS @ 1GHz))",
      },
      brief = {
      },
      gain = {
        {
          workaround = " - recompile with -fprofile-generate, execute and recompile with -fprofile-use (profile-guided optimization)\n - hardcode most frequent values of loop bounds by adding specialized paths.:\n  *  For instance, replace for (i=0; i<n; i++) foo(i) with:\nswitch (n) {\n  case (4): for (i=0; i<4; i++) foo(i); break;\n  case (6): for (i=0; i<6; i++) foo(i); break;\n  default : for (i=0; i<n; i++) foo(i); break;\n}\n",
          details = "The more iterations the main loop is processing, the higher the trip count must be to amortize peel/tail overhead.",
          title = "Unrolling/vectorization cost",
          txt = "This loop is peel/tail of a unrolled/vectorized loop. If its cost is not negligible compared to the main (unrolled/vectorized) loop, unrolling/vectorization is counterproductive due to low trip count.",
        },
        {
          details = "Store and arithmetical SSE/AVX instructions are used in scalar version (process only one data element in vector registers).\n",
          title = "Vectorization",
          txt = "Your loop is probably not vectorized.\nOnly 7% of vector register length is used (average across all SSE/AVX instructions).\n",
        },
        {
          workaround = " - Reduce the number of division or square root instructions:\n  * If denominator is constant over iterations, use reciprocal (replace x/y with x*(1/y)). Check precision impact. This will be done by your compiler with ffast-math or Ofast\n - If you accept to loose numerical precision up to 2 ulp, you can speedup your code by passing the following options to your compiler: (ffast-math or Ofast) and mrecip\n",
          title = "Execution units bottlenecks",
          txt = "Performance is limited by execution of divide and square root operations (the divide/square root unit is a bottleneck).\n\nBy removing all these bottlenecks, you can lower the cost of an iteration from 140.00 to 37.00 cycles (3.78x speedup).\n",
        },
      },
      potential = {
        {
          title = "Expensive FP math instructions/calls",
          txt = "Detected performance impact from expensive FP math instructions/calls.\nBy removing/reexpressing them, you can lower the cost of an iteration from 140.00 to 37.00 cycles (3.78x speedup).",
        },
        {
          workaround = "Try to change order in which elements are evaluated (using parentheses) in arithmetic expressions containing both ADD/SUB and MUL operations to enable your compiler to generate FMA instructions wherever possible.\nFor instance a + b*c is a valid FMA (MUL then ADD).\nHowever (a+b)* c cannot be translated into an FMA (ADD then MUL).",
          title = "FMA",
          txt = "Detected 20 FMA (fused multiply-add) operations.\nPresence of both ADD/SUB and MUL operations.",
        },
      },
    },
  },
  AVG = {
      hint = {
        {
          workaround = " - Try to reorganize arrays of structures to structures of arrays\n - Consider to permute loops (see vectorization gain report)\n",
          details = " - Constant non-unit stride: 9 occurrence(s)\nNon-unit stride (uncontiguous) accesses are not efficiently using data caches\n",
          title = "Slow data structures access",
          txt = "Detected data structures (typically arrays) that cannot be efficiently read/written",
        },
        {
          title = "Type of elements and instruction set",
          txt = "52 SSE or AVX instructions are processing arithmetic or math operations on single precision FP elements in scalar mode (one at a time).\n",
        },
        {
          title = "Matching between your loop (in the source code) and the binary loop",
          txt = "The binary loop is composed of 72 FP arithmetical operations:\n - 36: addition or subtraction (20 inside FMA instructions)\n - 28: multiply (20 inside FMA instructions)\n - 4: divide\n - 4: square root\nThe binary loop is loading 48 bytes (12 single precision FP elements).",
        },
        {
          title = "Arithmetic intensity",
          txt = "Arithmetic intensity is 1.50 FP operations per loaded or stored byte.",
        },
      },
      expert = {
        {
          title = "General properties",
          txt = "nb instructions    : 74\nloop length        : 359\nused x86 registers : 7\nused mmx registers : 0\nused xmm registers : 14\nused ymm registers : 0\nused zmm registers : 0\nnb stack references: 0\nADD-SUB / MUL ratio: 2.00\n",
        },
        {
          title = "Front-end",
          txt = "MACRO FUSION NOT POSSIBLE\ninstruction fetch    : 23.00 cycles\ninstruction queue    : 37.00 cycles\ndecoding             : 37.00 cycles\nmicro-operation queue: 37.00 cycles\nfront end            : 37.00 cycles\n",
        },
        {
          title = "Back-end",
          txt = "       | P0    | P1    | P2   | P3   | P4   | P5   | P6\n---------------------------------------------------------\nuops   | 36.00 | 36.00 | 6.00 | 6.00 | 3.00 | 3.00 | 0.00\ncycles | 36.00 | 36.00 | 6.00 | 6.00 | 3.00 | 3.00 | 0.00\n\nCycles executing div or sqrt instructions: 116.00-140.00\nLongest recurrence chain latency (RecMII): 24.00\n",
        },
        {
          title = "Cycles summary",
          txt = "Front-end : 37.00\nDispatch  : 36.00\nDIV/SQRT  : 116.00-140.00\nData deps.: 24.00\nOverall L1: 116.00-140.00\n",
        },
        {
          title = "Vectorization ratios",
          txt = "all     : 5%\nload    : 0%\nstore   : NA (no store vectorizable/vectorized instructions)\nmul     : 0%\nadd-sub : 0%\nfma     : 0%\ndiv/sqrt: 0%\nother   : 100%\n",
        },
        {
          title = "Vector efficiency ratios",
          txt = "all     : 7%\nload    : 6%\nstore   : NA (no store vectorizable/vectorized instructions)\nmul     : 6%\nadd-sub : 6%\nfma     : 6%\ndiv/sqrt: 6%\nother   : 25%\n",
        },
        {
          title = "Cycles and memory resources usage",
          txt = "Assuming all data fit into the L1 cache, each iteration of the binary loop takes 140.00 cycles. At this rate:\n - 0% of peak load performance is reached (0.34 out of 128.00 bytes loaded per cycle (GB/s @ 1GHz))\n",
        },
        {
          title = "Front-end bottlenecks",
          txt = "Found no such bottlenecks.",
        },
        {
          title = "ASM code",
          txt = "In the binary file, the address of the loop is: 2a32\n\nInstruction                      | Nb FU | P0   | P1   | P2   | P3   | P4   | P5   | P6 | Latency | Recip. throughput\n---------------------------------------------------------------------------------------------------------------------\nVMOVSS (%RCX,%RAX,4),%XMM15      | 1     | 0    | 0    | 0.50 | 0.50 | 0    | 0    | 0  | 5       | 0.50\nVMOVSS (%R12,%RAX,4),%XMM14      | 1     | 0    | 0    | 0.50 | 0.50 | 0    | 0    | 0  | 5       | 0.50\nLEA 0x1(%RAX),%RDI               | 1     | 0    | 0    | 0    | 0    | 0.50 | 0.50 | 0  | 1       | 0.50\nLEA 0x2(%RAX),%RSI               | 1     | 0    | 0    | 0    | 0    | 0.50 | 0.50 | 0  | 1       | 0.50\nVMOVSS (%R13,%RAX,4),%XMM2       | 1     | 0    | 0    | 0.50 | 0.50 | 0    | 0    | 0  | 5       | 0.50\nVSUBSS %XMM7,%XMM15,%XMM13       | 1     | 0.50 | 0.50 | 0    | 0    | 0    | 0    | 0  | 6       | 0.50\nVSUBSS %XMM8,%XMM14,%XMM6        | 1     | 0.50 | 0.50 | 0    | 0    | 0    | 0    | 0  | 6       | 0.50\nVSUBSS %XMM9,%XMM2,%XMM3         | 1     | 0.50 | 0.50 | 0    | 0    | 0    | 0    | 0  | 6       | 0.50\nVMULSS %XMM13,%XMM13,%XMM15      | 1     | 0.50 | 0.50 | 0    | 0    | 0    | 0    | 0  | 6       | 0.50\nVMOVAPS %XMM6,%XMM14             | 1     | 0.50 | 0.50 | 0    | 0    | 0    | 0    | 0  | 2       | 0.50\nVFMADD132SS %XMM6,%XMM11,%XMM14  | 1     | 0.50 | 0.50 | 0    | 0    | 0    | 0    | 0  | 6       | 0.50\nVFMADD231SS %XMM3,%XMM3,%XMM15   | 1     | 0.50 | 0.50 | 0    | 0    | 0    | 0    | 0  | 6       | 0.50\nVADDSS %XMM14,%XMM15,%XMM15      | 1     | 0.50 | 0.50 | 0    | 0    | 0    | 0    | 0  | 6       | 0.50\nVSQRTSS %XMM15,%XMM15,%XMM2      | 3     | 3    | 0    | 0    | 0    | 0    | 0    | 0  | 25-27   | 17-18\nVMULSS %XMM15,%XMM2,%XMM14       | 1     | 0.50 | 0.50 | 0    | 0    | 0    | 0    | 0  | 6       | 0.50\nVDIVSS %XMM14,%XMM10,%XMM15      | 3     | 3    | 0    | 0    | 0    | 0    | 0    | 0  | 25-27   | 12-17\nVFMADD231SS %XMM13,%XMM15,%XMM5  | 1     | 0.50 | 0.50 | 0    | 0    | 0    | 0    | 0  | 6       | 0.50\nVMOVSS (%RCX,%RDI,4),%XMM13      | 1     | 0    | 0    | 0.50 | 0.50 | 0    | 0    | 0  | 5       | 0.50\nVFMADD231SS %XMM6,%XMM15,%XMM4   | 1     | 0.50 | 0.50 | 0    | 0    | 0    | 0    | 0  | 6       | 0.50\nVMOVSS (%R12,%RDI,4),%XMM6       | 1     | 0    | 0    | 0.50 | 0.50 | 0    | 0    | 0  | 5       | 0.50\nVFMADD231SS %XMM3,%XMM15,%XMM1   | 1     | 0.50 | 0.50 | 0    | 0    | 0    | 0    | 0  | 6       | 0.50\nVMOVSS (%R13,%RDI,4),%XMM3       | 1     | 0    | 0    | 0.50 | 0.50 | 0    | 0    | 0  | 5       | 0.50\nLEA 0x3(%RAX),%RDI               | 1     | 0    | 0    | 0    | 0    | 0.50 | 0.50 | 0  | 1       | 0.50\nADD $0x4,%RAX                    | 1     | 0    | 0    | 0    | 0    | 0.50 | 0.50 | 0  | 1       | 0.50\nVSUBSS %XMM7,%XMM13,%XMM15       | 1     | 0.50 | 0.50 | 0    | 0    | 0    | 0    | 0  | 6       | 0.50\nVSUBSS %XMM8,%XMM6,%XMM13        | 1     | 0.50 | 0.50 | 0    | 0    | 0    | 0    | 0  | 6       | 0.50\nVSUBSS %XMM9,%XMM3,%XMM6         | 1     | 0.50 | 0.50 | 0    | 0    | 0    | 0    | 0  | 6       | 0.50\nVMULSS %XMM15,%XMM15,%XMM2       | 1     | 0.50 | 0.50 | 0    | 0    | 0    | 0    | 0  | 6       | 0.50\nVMOVAPS %XMM13,%XMM14            | 1     | 0.50 | 0.50 | 0    | 0    | 0    | 0    | 0  | 2       | 0.50\nVFMADD132SS %XMM13,%XMM11,%XMM14 | 1     | 0.50 | 0.50 | 0    | 0    | 0    | 0    | 0  | 6       | 0.50\nVFMADD231SS %XMM6,%XMM6,%XMM2    | 1     | 0.50 | 0.50 | 0    | 0    | 0    | 0    | 0  | 6       | 0.50\nVADDSS %XMM14,%XMM2,%XMM3        | 1     | 0.50 | 0.50 | 0    | 0    | 0    | 0    | 0  | 6       | 0.50\nVSQRTSS %XMM3,%XMM3,%XMM2        | 3     | 3    | 0    | 0    | 0    | 0    | 0    | 0  | 25-27   | 17-18\nVMULSS %XMM3,%XMM2,%XMM14        | 1     | 0.50 | 0.50 | 0    | 0    | 0    | 0    | 0  | 6       | 0.50\nVMOVSS (%R13,%RSI,4),%XMM2       | 1     | 0    | 0    | 0.50 | 0.50 | 0    | 0    | 0  | 5       | 0.50\nVDIVSS %XMM14,%XMM10,%XMM3       | 3     | 3    | 0    | 0    | 0    | 0    | 0    | 0  | 25-27   | 12-17\nVSUBSS %XMM9,%XMM2,%XMM14        | 1     | 0.50 | 0.50 | 0    | 0    | 0    | 0    | 0  | 6       | 0.50\nVFMADD132SS %XMM3,%XMM1,%XMM6    | 1     | 0.50 | 0.50 | 0    | 0    | 0    | 0    | 0  | 6       | 0.50\nVMOVSS (%RCX,%RSI,4),%XMM1       | 1     | 0    | 0    | 0.50 | 0.50 | 0    | 0    | 0  | 5       | 0.50\nVFMADD132SS %XMM3,%XMM5,%XMM15   | 1     | 0.50 | 0.50 | 0    | 0    | 0    | 0    | 0  | 6       | 0.50\nVFMADD132SS %XMM3,%XMM4,%XMM13   | 1     | 0.50 | 0.50 | 0    | 0    | 0    | 0    | 0  | 6       | 0.50\nVMOVSS (%R12,%RSI,4),%XMM4       | 1     | 0    | 0    | 0.50 | 0.50 | 0    | 0    | 0  | 5       | 0.50\nVSUBSS %XMM7,%XMM1,%XMM5         | 1     | 0.50 | 0.50 | 0    | 0    | 0    | 0    | 0  | 6       | 0.50\nVSUBSS %XMM8,%XMM4,%XMM4         | 1     | 0.50 | 0.50 | 0    | 0    | 0    | 0    | 0  | 6       | 0.50\nVMULSS %XMM5,%XMM5,%XMM3         | 1     | 0.50 | 0.50 | 0    | 0    | 0    | 0    | 0  | 6       | 0.50\nVMOVAPS %XMM4,%XMM1              | 1     | 0.50 | 0.50 | 0    | 0    | 0    | 0    | 0  | 2       | 0.50\nVFMADD132SS %XMM4,%XMM11,%XMM1   | 1     | 0.50 | 0.50 | 0    | 0    | 0    | 0    | 0  | 6       | 0.50\nVFMADD231SS %XMM14,%XMM14,%XMM3  | 1     | 0.50 | 0.50 | 0    | 0    | 0    | 0    | 0  | 6       | 0.50\nVADDSS %XMM1,%XMM3,%XMM3         | 1     | 0.50 | 0.50 | 0    | 0    | 0    | 0    | 0  | 6       | 0.50\nVSQRTSS %XMM3,%XMM3,%XMM2        | 3     | 3    | 0    | 0    | 0    | 0    | 0    | 0  | 25-27   | 17-18\nVMULSS %XMM3,%XMM2,%XMM1         | 1     | 0.50 | 0.50 | 0    | 0    | 0    | 0    | 0  | 6       | 0.50\nVMOVSS (%R13,%RDI,4),%XMM3       | 1     | 0    | 0    | 0.50 | 0.50 | 0    | 0    | 0  | 5       | 0.50\nVDIVSS %XMM1,%XMM10,%XMM1        | 3     | 3    | 0    | 0    | 0    | 0    | 0    | 0  | 25-27   | 12-17\nVFMADD132SS %XMM1,%XMM15,%XMM5   | 1     | 0.50 | 0.50 | 0    | 0    | 0    | 0    | 0  | 6       | 0.50\nVMOVSS (%RCX,%RDI,4),%XMM15      | 1     | 0    | 0    | 0.50 | 0.50 | 0    | 0    | 0  | 5       | 0.50\nVFMADD132SS %XMM1,%XMM13,%XMM4   | 1     | 0.50 | 0.50 | 0    | 0    | 0    | 0    | 0  | 6       | 0.50\nVFMADD132SS %XMM14,%XMM6,%XMM1   | 1     | 0.50 | 0.50 | 0    | 0    | 0    | 0    | 0  | 6       | 0.50\nVMOVSS (%R12,%RDI,4),%XMM6       | 1     | 0    | 0    | 0.50 | 0.50 | 0    | 0    | 0  | 5       | 0.50\nVSUBSS %XMM7,%XMM15,%XMM13       | 1     | 0.50 | 0.50 | 0    | 0    | 0    | 0    | 0  | 6       | 0.50\nVSUBSS %XMM9,%XMM3,%XMM15        | 1     | 0.50 | 0.50 | 0    | 0    | 0    | 0    | 0  | 6       | 0.50\nVSUBSS %XMM8,%XMM6,%XMM14        | 1     | 0.50 | 0.50 | 0    | 0    | 0    | 0    | 0  | 6       | 0.50\nVMULSS %XMM13,%XMM13,%XMM2       | 1     | 0.50 | 0.50 | 0    | 0    | 0    | 0    | 0  | 6       | 0.50\nVMOVAPS %XMM14,%XMM6             | 1     | 0.50 | 0.50 | 0    | 0    | 0    | 0    | 0  | 2       | 0.50\nVFMADD132SS %XMM14,%XMM11,%XMM6  | 1     | 0.50 | 0.50 | 0    | 0    | 0    | 0    | 0  | 6       | 0.50\nVFMADD231SS %XMM15,%XMM15,%XMM2  | 1     | 0.50 | 0.50 | 0    | 0    | 0    | 0    | 0  | 6       | 0.50\nVADDSS %XMM6,%XMM2,%XMM3         | 1     | 0.50 | 0.50 | 0    | 0    | 0    | 0    | 0  | 6       | 0.50\nVSQRTSS %XMM3,%XMM3,%XMM2        | 3     | 3    | 0    | 0    | 0    | 0    | 0    | 0  | 25-27   | 17-18\nVMULSS %XMM3,%XMM2,%XMM6         | 1     | 0.50 | 0.50 | 0    | 0    | 0    | 0    | 0  | 6       | 0.50\nVDIVSS %XMM6,%XMM10,%XMM3        | 3     | 3    | 0    | 0    | 0    | 0    | 0    | 0  | 25-27   | 12-17\nVFMADD231SS %XMM13,%XMM3,%XMM5   | 1     | 0.50 | 0.50 | 0    | 0    | 0    | 0    | 0  | 6       | 0.50\nVFMADD231SS %XMM14,%XMM3,%XMM4   | 1     | 0.50 | 0.50 | 0    | 0    | 0    | 0    | 0  | 6       | 0.50\nVFMADD231SS %XMM15,%XMM3,%XMM1   | 1     | 0.50 | 0.50 | 0    | 0    | 0    | 0    | 0  | 6       | 0.50\nCMP %RAX,%R9                     | 1     | 0    | 0    | 0    | 0    | 0.50 | 0.50 | 0  | 1       | 0.50\nJA 2a32 <move_particles+0x6b2>   | 1     | 0    | 0    | 0    | 0    | 0    | 1    | 0  | 0       | 1-2\n",
        },
      },
      header = {
        "0% of peak computational performance is used (0.51 out of 64.00 FLOP per cycle (GFLOPS @ 1GHz))",
      },
      brief = {
      },
      gain = {
        {
          workaround = " - recompile with -fprofile-generate, execute and recompile with -fprofile-use (profile-guided optimization)\n - hardcode most frequent values of loop bounds by adding specialized paths.:\n  *  For instance, replace for (i=0; i<n; i++) foo(i) with:\nswitch (n) {\n  case (4): for (i=0; i<4; i++) foo(i); break;\n  case (6): for (i=0; i<6; i++) foo(i); break;\n  default : for (i=0; i<n; i++) foo(i); break;\n}\n",
          details = "The more iterations the main loop is processing, the higher the trip count must be to amortize peel/tail overhead.",
          title = "Unrolling/vectorization cost",
          txt = "This loop is peel/tail of a unrolled/vectorized loop. If its cost is not negligible compared to the main (unrolled/vectorized) loop, unrolling/vectorization is counterproductive due to low trip count.",
        },
        {
          details = "Store and arithmetical SSE/AVX instructions are used in scalar version (process only one data element in vector registers).\n",
          title = "Vectorization",
          txt = "Your loop is probably not vectorized.\nOnly 7% of vector register length is used (average across all SSE/AVX instructions).\n",
        },
        {
          workaround = " - Reduce the number of division or square root instructions:\n  * If denominator is constant over iterations, use reciprocal (replace x/y with x*(1/y)). Check precision impact. This will be done by your compiler with ffast-math or Ofast\n - If you accept to loose numerical precision up to 2 ulp, you can speedup your code by passing the following options to your compiler: (ffast-math or Ofast) and mrecip\n",
          title = "Execution units bottlenecks",
          txt = "Performance is limited by execution of divide and square root operations (the divide/square root unit is a bottleneck).\n\nBy removing all these bottlenecks, you can lower the cost of an iteration from 140.00 to 37.00 cycles (3.78x speedup).\n",
        },
      },
      potential = {
        {
          title = "Expensive FP math instructions/calls",
          txt = "Detected performance impact from expensive FP math instructions/calls.\nBy removing/reexpressing them, you can lower the cost of an iteration from 140.00 to 37.00 cycles (3.78x speedup).",
        },
        {
          workaround = "Try to change order in which elements are evaluated (using parentheses) in arithmetic expressions containing both ADD/SUB and MUL operations to enable your compiler to generate FMA instructions wherever possible.\nFor instance a + b*c is a valid FMA (MUL then ADD).\nHowever (a+b)* c cannot be translated into an FMA (ADD then MUL).",
          title = "FMA",
          txt = "Detected 20 FMA (fused multiply-add) operations.\nPresence of both ADD/SUB and MUL operations.",
        },
      },
    },
  common = {
    header = {
      "The loop is defined in /users/user2234/Code_Nbody3D/nbody_mpi.c:45-61.\n",
      "It is peel/tail loop of related source loop which is unrolled by 16 (including vectorization).",
    },
    nb_paths = 1,
  },
}
