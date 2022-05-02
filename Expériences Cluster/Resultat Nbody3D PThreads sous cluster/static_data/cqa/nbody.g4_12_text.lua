_cqa_text_report = {
  paths = {
    {
      hint = {
        {
          workaround = "Avoid mixing data with different types. In particular, check if the type of constants is the same as array elements. Use double instead of single precision only when/where needed by numerical stability and avoid mixing precision. In C/C++, FP constants are double precision by default and must be suffixed by 'f' to make them single precision.",
          details = " - VCVTSD2SS (FP64 to FP32, scalar): 12 occurrences\n - VCVTSS2SD (FP32 to FP64, scalar): 24 occurrences\n",
          title = "Conversion instructions",
          txt = "Detected expensive conversion instructions.",
        },
        {
          title = "Type of elements and instruction set",
          txt = "12 SSE or AVX instructions are processing arithmetic or math operations on double precision FP elements in scalar mode (one at a time).\n",
        },
        {
          title = "Matching between your loop (in the source code) and the binary loop",
          txt = "The binary loop is composed of 24 FP arithmetical operations:\n - 12: addition or subtraction (all inside FMA instructions)\n - 12: multiply (all inside FMA instructions)\nThe binary loop is loading 96 bytes (12 double precision FP elements).\nThe binary loop is storing 48 bytes (6 double precision FP elements).",
        },
        {
          title = "Arithmetic intensity",
          txt = "Arithmetic intensity is 0.17 FP operations per loaded or stored byte.",
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
          txt = "nb instructions    : 66\nloop length        : 340\nused x86 registers : 8\nused mmx registers : 0\nused xmm registers : 16\nused ymm registers : 0\nused zmm registers : 0\nnb stack references: 0\n",
        },
        {
          title = "Front-end",
          txt = "MACRO FUSION NOT POSSIBLE\ninstruction fetch    : 22.00 cycles\ninstruction queue    : 33.00 cycles\ndecoding             : 33.00 cycles\nmicro-operation queue: 33.00 cycles\nfront end            : 33.00 cycles\n",
        },
        {
          title = "Back-end",
          txt = "       | P0    | P1    | P2    | P3    | P4   | P5   | P6\n------------------------------------------------------------\nuops   | 36.00 | 12.00 | 18.00 | 18.00 | 3.00 | 3.00 | 12.00\ncycles | 36.00 | 12.00 | 18.00 | 18.00 | 3.00 | 3.00 | 12.00\n\nCycles executing div or sqrt instructions: NA\nLongest recurrence chain latency (RecMII): 1.00\n",
        },
        {
          title = "Cycles summary",
          txt = "Front-end : 33.00\nDispatch  : 36.00\nData deps.: 1.00\nOverall L1: 36.00\n",
        },
        {
          title = "Vectorization ratios",
          txt = "all     : 0%\nload    : 0%\nstore   : 0%\nmul     : NA (no mul vectorizable/vectorized instructions)\nadd-sub : NA (no add-sub vectorizable/vectorized instructions)\nfma     : 0%\ndiv/sqrt: NA (no div/sqrt vectorizable/vectorized instructions)\nother   : 0%\n",
        },
        {
          title = "Vector efficiency ratios",
          txt = "all     : 8%\nload    : 6%\nstore   : 6%\nmul     : NA (no mul vectorizable/vectorized instructions)\nadd-sub : NA (no add-sub vectorizable/vectorized instructions)\nfma     : 12%\ndiv/sqrt: NA (no div/sqrt vectorizable/vectorized instructions)\nother   : 8%\n",
        },
        {
          title = "Cycles and memory resources usage",
          txt = "Assuming all data fit into the L1 cache, each iteration of the binary loop takes 36.00 cycles. At this rate:\n - 2% of peak load performance is reached (2.67 out of 128.00 bytes loaded per cycle (GB/s @ 1GHz))\n - 2% of peak store performance is reached (1.33 out of 64.00 bytes stored per cycle (GB/s @ 1GHz))\n",
        },
        {
          title = "Front-end bottlenecks",
          txt = "Found no such bottlenecks.",
        },
        {
          title = "ASM code",
          txt = "In the binary file, the address of the loop is: 2c50\n\nInstruction                             | Nb FU | P0   | P1   | P2   | P3   | P4   | P5   | P6 | Latency | Recip. throughput\n----------------------------------------------------------------------------------------------------------------------------\nVCVTSS2SD (%RSI),%XMM3,%XMM10           | 1     | 1    | 0    | 0.50 | 0.50 | 0    | 0    | 0  | 2       | 1\nADD $0x10,%RCX                          | 1     | 0    | 0    | 0    | 0    | 0.50 | 0.50 | 0  | 1       | 0.50\nADD $0x10,%RSI                          | 1     | 0    | 0    | 0    | 0    | 0.50 | 0.50 | 0  | 1       | 0.50\nADD $0x10,%RDX                          | 1     | 0    | 0    | 0    | 0    | 0.50 | 0.50 | 0  | 1       | 0.50\nVCVTSS2SD (%R12,%RDI,4),%XMM3,%XMM9     | 1     | 1    | 0    | 0.50 | 0.50 | 0    | 0    | 0  | 2       | 1\nVFMADD132SD %XMM5,%XMM10,%XMM9          | 1     | 0.50 | 0.50 | 0    | 0    | 0    | 0    | 0  | 6       | 0.50\nVCVTSD2SS %XMM9,%XMM9,%XMM11            | 1     | 1    | 0    | 0    | 0    | 0    | 0    | 0  | 2       | 1\nVMOVSS %XMM11,-0x10(%RSI)               | 1     | 0    | 0    | 0.50 | 0.50 | 0    | 0    | 1  | 2       | 1\nVCVTSS2SD (%R13,%RDI,4),%XMM3,%XMM2     | 1     | 1    | 0    | 0.50 | 0.50 | 0    | 0    | 0  | 2       | 1\nVCVTSS2SD -0x10(%RCX),%XMM3,%XMM1       | 1     | 1    | 0    | 0.50 | 0.50 | 0    | 0    | 0  | 2       | 1\nVFMADD132SD %XMM5,%XMM1,%XMM2           | 1     | 0.50 | 0.50 | 0    | 0    | 0    | 0    | 0  | 6       | 0.50\nVCVTSD2SS %XMM2,%XMM2,%XMM6             | 1     | 1    | 0    | 0    | 0    | 0    | 0    | 0  | 2       | 1\nVMOVSS %XMM6,-0x10(%RCX)                | 1     | 0    | 0    | 0.50 | 0.50 | 0    | 0    | 1  | 2       | 1\nVCVTSS2SD (%R14,%RDI,4),%XMM3,%XMM7     | 1     | 1    | 0    | 0.50 | 0.50 | 0    | 0    | 0  | 2       | 1\nVCVTSS2SD -0x10(%RDX),%XMM3,%XMM8       | 1     | 1    | 0    | 0.50 | 0.50 | 0    | 0    | 0  | 2       | 1\nVFMADD132SD %XMM5,%XMM8,%XMM7           | 1     | 0.50 | 0.50 | 0    | 0    | 0    | 0    | 0  | 6       | 0.50\nVCVTSD2SS %XMM7,%XMM7,%XMM12            | 1     | 1    | 0    | 0    | 0    | 0    | 0    | 0  | 2       | 1\nVMOVSS %XMM12,-0x10(%RDX)               | 1     | 0    | 0    | 0.50 | 0.50 | 0    | 0    | 1  | 2       | 1\nVCVTSS2SD 0x4(%R12,%RDI,4),%XMM3,%XMM4  | 1     | 1    | 0    | 0.50 | 0.50 | 0    | 0    | 0  | 2       | 1\nVCVTSS2SD -0xc(%RSI),%XMM3,%XMM14       | 1     | 1    | 0    | 0.50 | 0.50 | 0    | 0    | 0  | 2       | 1\nVFMADD132SD %XMM5,%XMM14,%XMM4          | 1     | 0.50 | 0.50 | 0    | 0    | 0    | 0    | 0  | 6       | 0.50\nVCVTSD2SS %XMM4,%XMM4,%XMM15            | 1     | 1    | 0    | 0    | 0    | 0    | 0    | 0  | 2       | 1\nVMOVSS %XMM15,-0xc(%RSI)                | 1     | 0    | 0    | 0.50 | 0.50 | 0    | 0    | 1  | 2       | 1\nVCVTSS2SD 0x4(%R13,%RDI,4),%XMM3,%XMM0  | 1     | 1    | 0    | 0.50 | 0.50 | 0    | 0    | 0  | 2       | 1\nVCVTSS2SD -0xc(%RCX),%XMM3,%XMM13       | 1     | 1    | 0    | 0.50 | 0.50 | 0    | 0    | 0  | 2       | 1\nVFMADD132SD %XMM5,%XMM13,%XMM0          | 1     | 0.50 | 0.50 | 0    | 0    | 0    | 0    | 0  | 6       | 0.50\nVCVTSD2SS %XMM0,%XMM0,%XMM9             | 1     | 1    | 0    | 0    | 0    | 0    | 0    | 0  | 2       | 1\nVMOVSS %XMM9,-0xc(%RCX)                 | 1     | 0    | 0    | 0.50 | 0.50 | 0    | 0    | 1  | 2       | 1\nVCVTSS2SD 0x4(%R14,%RDI,4),%XMM3,%XMM10 | 1     | 1    | 0    | 0.50 | 0.50 | 0    | 0    | 0  | 2       | 1\nVCVTSS2SD -0xc(%RDX),%XMM3,%XMM11       | 1     | 1    | 0    | 0.50 | 0.50 | 0    | 0    | 0  | 2       | 1\nVFMADD132SD %XMM5,%XMM11,%XMM10         | 1     | 0.50 | 0.50 | 0    | 0    | 0    | 0    | 0  | 6       | 0.50\nVCVTSD2SS %XMM10,%XMM10,%XMM2           | 1     | 1    | 0    | 0    | 0    | 0    | 0    | 0  | 2       | 1\nVMOVSS %XMM2,-0xc(%RDX)                 | 1     | 0    | 0    | 0.50 | 0.50 | 0    | 0    | 1  | 2       | 1\nVCVTSS2SD 0x8(%R12,%RDI,4),%XMM3,%XMM6  | 1     | 1    | 0    | 0.50 | 0.50 | 0    | 0    | 0  | 2       | 1\nVCVTSS2SD -0x8(%RSI),%XMM3,%XMM1        | 1     | 1    | 0    | 0.50 | 0.50 | 0    | 0    | 0  | 2       | 1\nVFMADD132SD %XMM5,%XMM1,%XMM6           | 1     | 0.50 | 0.50 | 0    | 0    | 0    | 0    | 0  | 6       | 0.50\nVCVTSD2SS %XMM6,%XMM6,%XMM7             | 1     | 1    | 0    | 0    | 0    | 0    | 0    | 0  | 2       | 1\nVMOVSS %XMM7,-0x8(%RSI)                 | 1     | 0    | 0    | 0.50 | 0.50 | 0    | 0    | 1  | 2       | 1\nVCVTSS2SD 0x8(%R13,%RDI,4),%XMM3,%XMM8  | 1     | 1    | 0    | 0.50 | 0.50 | 0    | 0    | 0  | 2       | 1\nVCVTSS2SD -0x8(%RCX),%XMM3,%XMM12       | 1     | 1    | 0    | 0.50 | 0.50 | 0    | 0    | 0  | 2       | 1\nVFMADD132SD %XMM5,%XMM12,%XMM8          | 1     | 0.50 | 0.50 | 0    | 0    | 0    | 0    | 0  | 6       | 0.50\nVCVTSD2SS %XMM8,%XMM8,%XMM4             | 1     | 1    | 0    | 0    | 0    | 0    | 0    | 0  | 2       | 1\nVMOVSS %XMM4,-0x8(%RCX)                 | 1     | 0    | 0    | 0.50 | 0.50 | 0    | 0    | 1  | 2       | 1\nVCVTSS2SD 0x8(%R14,%RDI,4),%XMM3,%XMM14 | 1     | 1    | 0    | 0.50 | 0.50 | 0    | 0    | 0  | 2       | 1\nVCVTSS2SD -0x8(%RDX),%XMM3,%XMM15       | 1     | 1    | 0    | 0.50 | 0.50 | 0    | 0    | 0  | 2       | 1\nVFMADD132SD %XMM5,%XMM15,%XMM14         | 1     | 0.50 | 0.50 | 0    | 0    | 0    | 0    | 0  | 6       | 0.50\nVCVTSD2SS %XMM14,%XMM14,%XMM0           | 1     | 1    | 0    | 0    | 0    | 0    | 0    | 0  | 2       | 1\nVMOVSS %XMM0,-0x8(%RDX)                 | 1     | 0    | 0    | 0.50 | 0.50 | 0    | 0    | 1  | 2       | 1\nVCVTSS2SD 0xc(%R12,%RDI,4),%XMM3,%XMM13 | 1     | 1    | 0    | 0.50 | 0.50 | 0    | 0    | 0  | 2       | 1\nVCVTSS2SD -0x4(%RSI),%XMM3,%XMM9        | 1     | 1    | 0    | 0.50 | 0.50 | 0    | 0    | 0  | 2       | 1\nVFMADD132SD %XMM5,%XMM9,%XMM13          | 1     | 0.50 | 0.50 | 0    | 0    | 0    | 0    | 0  | 6       | 0.50\nVCVTSD2SS %XMM13,%XMM13,%XMM10          | 1     | 1    | 0    | 0    | 0    | 0    | 0    | 0  | 2       | 1\nVMOVSS %XMM10,-0x4(%RSI)                | 1     | 0    | 0    | 0.50 | 0.50 | 0    | 0    | 1  | 2       | 1\nVCVTSS2SD 0xc(%R13,%RDI,4),%XMM3,%XMM11 | 1     | 1    | 0    | 0.50 | 0.50 | 0    | 0    | 0  | 2       | 1\nVCVTSS2SD -0x4(%RCX),%XMM3,%XMM2        | 1     | 1    | 0    | 0.50 | 0.50 | 0    | 0    | 0  | 2       | 1\nVFMADD132SD %XMM5,%XMM2,%XMM11          | 1     | 0.50 | 0.50 | 0    | 0    | 0    | 0    | 0  | 6       | 0.50\nVCVTSD2SS %XMM11,%XMM11,%XMM6           | 1     | 1    | 0    | 0    | 0    | 0    | 0    | 0  | 2       | 1\nVMOVSS %XMM6,-0x4(%RCX)                 | 1     | 0    | 0    | 0.50 | 0.50 | 0    | 0    | 1  | 2       | 1\nVCVTSS2SD 0xc(%R14,%RDI,4),%XMM3,%XMM7  | 1     | 1    | 0    | 0.50 | 0.50 | 0    | 0    | 0  | 2       | 1\nADD $0x4,%RDI                           | 1     | 0    | 0    | 0    | 0    | 0.50 | 0.50 | 0  | 1       | 0.50\nVCVTSS2SD -0x4(%RDX),%XMM3,%XMM1        | 1     | 1    | 0    | 0.50 | 0.50 | 0    | 0    | 0  | 2       | 1\nVFMADD132SD %XMM5,%XMM1,%XMM7           | 1     | 0.50 | 0.50 | 0    | 0    | 0    | 0    | 0  | 6       | 0.50\nVCVTSD2SS %XMM7,%XMM7,%XMM8             | 1     | 1    | 0    | 0    | 0    | 0    | 0    | 0  | 2       | 1\nVMOVSS %XMM8,-0x4(%RDX)                 | 1     | 0    | 0    | 0.50 | 0.50 | 0    | 0    | 1  | 2       | 1\nCMP %R9,%RDI                            | 1     | 0    | 0    | 0    | 0    | 0.50 | 0.50 | 0  | 1       | 0.50\nJB 2c50 <move_particles+0x850>          | 1     | 0    | 0    | 0    | 0    | 0    | 1    | 0  | 0       | 1-2\n",
        },
      },
      header = {
        "2% of peak computational performance is used (0.67 out of 32.00 FLOP per cycle (GFLOPS @ 1GHz))",
      },
      brief = {
      },
      gain = {
        {
          workaround = " - Try another compiler or update/tune your current one\n - Remove inter-iterations dependences from your loop and make it unit-stride:\n  * If your arrays have 2 or more dimensions, check whether elements are accessed contiguously and, otherwise, try to permute loops accordingly:\nC storage order is row-major: for(i) for(j) a[j][i] = b[j][i]; (slow, non stride 1) => for(i) for(j) a[i][j] = b[i][j]; (fast, stride 1)\n  * If your loop streams arrays of structures (AoS), try to use structures of arrays instead (SoA):\nfor(i) a[i].x = b[i].x; (slow, non stride 1) => for(i) a.x[i] = b.x[i]; (fast, stride 1)\n",
          details = "All SSE/AVX instructions are used in scalar version (process only one data element in vector registers).\nSince your execution units are vector units, only a vectorized loop can use their full power.\n",
          title = "Vectorization",
          txt = "Your loop is not vectorized.\nOnly 8% of vector register length is used (average across all SSE/AVX instructions).\nBy vectorizing your loop, you can lower the cost of an iteration from 36.00 to 3.00 cycles (12.00x speedup).",
        },
        {
          workaround = " - Reduce the number of FP multiply/FMA instructions\n - Reduce arithmetical operations on array elements\n",
          title = "Execution units bottlenecks",
          txt = "Performance is limited by:\n - execution of FP multiply or FMA (fused multiply-add) operations (the FP multiply/FMA unit is a bottleneck)\n - execution of INT/FP operations in vector registers (the VPU is a bottleneck)\n\nBy removing all these bottlenecks, you can lower the cost of an iteration from 36.00 to 33.00 cycles (1.09x speedup).\n",
        },
      },
      potential = {
        {
          title = "FMA",
          txt = "Detected 12 FMA (fused multiply-add) operations.",
        },
      },
    },
  },
  AVG = {
      hint = {
        {
          workaround = "Avoid mixing data with different types. In particular, check if the type of constants is the same as array elements. Use double instead of single precision only when/where needed by numerical stability and avoid mixing precision. In C/C++, FP constants are double precision by default and must be suffixed by 'f' to make them single precision.",
          details = " - VCVTSD2SS (FP64 to FP32, scalar): 12 occurrences\n - VCVTSS2SD (FP32 to FP64, scalar): 24 occurrences\n",
          title = "Conversion instructions",
          txt = "Detected expensive conversion instructions.",
        },
        {
          title = "Type of elements and instruction set",
          txt = "12 SSE or AVX instructions are processing arithmetic or math operations on double precision FP elements in scalar mode (one at a time).\n",
        },
        {
          title = "Matching between your loop (in the source code) and the binary loop",
          txt = "The binary loop is composed of 24 FP arithmetical operations:\n - 12: addition or subtraction (all inside FMA instructions)\n - 12: multiply (all inside FMA instructions)\nThe binary loop is loading 96 bytes (12 double precision FP elements).\nThe binary loop is storing 48 bytes (6 double precision FP elements).",
        },
        {
          title = "Arithmetic intensity",
          txt = "Arithmetic intensity is 0.17 FP operations per loaded or stored byte.",
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
          txt = "nb instructions    : 66\nloop length        : 340\nused x86 registers : 8\nused mmx registers : 0\nused xmm registers : 16\nused ymm registers : 0\nused zmm registers : 0\nnb stack references: 0\n",
        },
        {
          title = "Front-end",
          txt = "MACRO FUSION NOT POSSIBLE\ninstruction fetch    : 22.00 cycles\ninstruction queue    : 33.00 cycles\ndecoding             : 33.00 cycles\nmicro-operation queue: 33.00 cycles\nfront end            : 33.00 cycles\n",
        },
        {
          title = "Back-end",
          txt = "       | P0    | P1    | P2    | P3    | P4   | P5   | P6\n------------------------------------------------------------\nuops   | 36.00 | 12.00 | 18.00 | 18.00 | 3.00 | 3.00 | 12.00\ncycles | 36.00 | 12.00 | 18.00 | 18.00 | 3.00 | 3.00 | 12.00\n\nCycles executing div or sqrt instructions: NA\nLongest recurrence chain latency (RecMII): 1.00\n",
        },
        {
          title = "Cycles summary",
          txt = "Front-end : 33.00\nDispatch  : 36.00\nData deps.: 1.00\nOverall L1: 36.00\n",
        },
        {
          title = "Vectorization ratios",
          txt = "all     : 0%\nload    : 0%\nstore   : 0%\nmul     : NA (no mul vectorizable/vectorized instructions)\nadd-sub : NA (no add-sub vectorizable/vectorized instructions)\nfma     : 0%\ndiv/sqrt: NA (no div/sqrt vectorizable/vectorized instructions)\nother   : 0%\n",
        },
        {
          title = "Vector efficiency ratios",
          txt = "all     : 8%\nload    : 6%\nstore   : 6%\nmul     : NA (no mul vectorizable/vectorized instructions)\nadd-sub : NA (no add-sub vectorizable/vectorized instructions)\nfma     : 12%\ndiv/sqrt: NA (no div/sqrt vectorizable/vectorized instructions)\nother   : 8%\n",
        },
        {
          title = "Cycles and memory resources usage",
          txt = "Assuming all data fit into the L1 cache, each iteration of the binary loop takes 36.00 cycles. At this rate:\n - 2% of peak load performance is reached (2.67 out of 128.00 bytes loaded per cycle (GB/s @ 1GHz))\n - 2% of peak store performance is reached (1.33 out of 64.00 bytes stored per cycle (GB/s @ 1GHz))\n",
        },
        {
          title = "Front-end bottlenecks",
          txt = "Found no such bottlenecks.",
        },
        {
          title = "ASM code",
          txt = "In the binary file, the address of the loop is: 2c50\n\nInstruction                             | Nb FU | P0   | P1   | P2   | P3   | P4   | P5   | P6 | Latency | Recip. throughput\n----------------------------------------------------------------------------------------------------------------------------\nVCVTSS2SD (%RSI),%XMM3,%XMM10           | 1     | 1    | 0    | 0.50 | 0.50 | 0    | 0    | 0  | 2       | 1\nADD $0x10,%RCX                          | 1     | 0    | 0    | 0    | 0    | 0.50 | 0.50 | 0  | 1       | 0.50\nADD $0x10,%RSI                          | 1     | 0    | 0    | 0    | 0    | 0.50 | 0.50 | 0  | 1       | 0.50\nADD $0x10,%RDX                          | 1     | 0    | 0    | 0    | 0    | 0.50 | 0.50 | 0  | 1       | 0.50\nVCVTSS2SD (%R12,%RDI,4),%XMM3,%XMM9     | 1     | 1    | 0    | 0.50 | 0.50 | 0    | 0    | 0  | 2       | 1\nVFMADD132SD %XMM5,%XMM10,%XMM9          | 1     | 0.50 | 0.50 | 0    | 0    | 0    | 0    | 0  | 6       | 0.50\nVCVTSD2SS %XMM9,%XMM9,%XMM11            | 1     | 1    | 0    | 0    | 0    | 0    | 0    | 0  | 2       | 1\nVMOVSS %XMM11,-0x10(%RSI)               | 1     | 0    | 0    | 0.50 | 0.50 | 0    | 0    | 1  | 2       | 1\nVCVTSS2SD (%R13,%RDI,4),%XMM3,%XMM2     | 1     | 1    | 0    | 0.50 | 0.50 | 0    | 0    | 0  | 2       | 1\nVCVTSS2SD -0x10(%RCX),%XMM3,%XMM1       | 1     | 1    | 0    | 0.50 | 0.50 | 0    | 0    | 0  | 2       | 1\nVFMADD132SD %XMM5,%XMM1,%XMM2           | 1     | 0.50 | 0.50 | 0    | 0    | 0    | 0    | 0  | 6       | 0.50\nVCVTSD2SS %XMM2,%XMM2,%XMM6             | 1     | 1    | 0    | 0    | 0    | 0    | 0    | 0  | 2       | 1\nVMOVSS %XMM6,-0x10(%RCX)                | 1     | 0    | 0    | 0.50 | 0.50 | 0    | 0    | 1  | 2       | 1\nVCVTSS2SD (%R14,%RDI,4),%XMM3,%XMM7     | 1     | 1    | 0    | 0.50 | 0.50 | 0    | 0    | 0  | 2       | 1\nVCVTSS2SD -0x10(%RDX),%XMM3,%XMM8       | 1     | 1    | 0    | 0.50 | 0.50 | 0    | 0    | 0  | 2       | 1\nVFMADD132SD %XMM5,%XMM8,%XMM7           | 1     | 0.50 | 0.50 | 0    | 0    | 0    | 0    | 0  | 6       | 0.50\nVCVTSD2SS %XMM7,%XMM7,%XMM12            | 1     | 1    | 0    | 0    | 0    | 0    | 0    | 0  | 2       | 1\nVMOVSS %XMM12,-0x10(%RDX)               | 1     | 0    | 0    | 0.50 | 0.50 | 0    | 0    | 1  | 2       | 1\nVCVTSS2SD 0x4(%R12,%RDI,4),%XMM3,%XMM4  | 1     | 1    | 0    | 0.50 | 0.50 | 0    | 0    | 0  | 2       | 1\nVCVTSS2SD -0xc(%RSI),%XMM3,%XMM14       | 1     | 1    | 0    | 0.50 | 0.50 | 0    | 0    | 0  | 2       | 1\nVFMADD132SD %XMM5,%XMM14,%XMM4          | 1     | 0.50 | 0.50 | 0    | 0    | 0    | 0    | 0  | 6       | 0.50\nVCVTSD2SS %XMM4,%XMM4,%XMM15            | 1     | 1    | 0    | 0    | 0    | 0    | 0    | 0  | 2       | 1\nVMOVSS %XMM15,-0xc(%RSI)                | 1     | 0    | 0    | 0.50 | 0.50 | 0    | 0    | 1  | 2       | 1\nVCVTSS2SD 0x4(%R13,%RDI,4),%XMM3,%XMM0  | 1     | 1    | 0    | 0.50 | 0.50 | 0    | 0    | 0  | 2       | 1\nVCVTSS2SD -0xc(%RCX),%XMM3,%XMM13       | 1     | 1    | 0    | 0.50 | 0.50 | 0    | 0    | 0  | 2       | 1\nVFMADD132SD %XMM5,%XMM13,%XMM0          | 1     | 0.50 | 0.50 | 0    | 0    | 0    | 0    | 0  | 6       | 0.50\nVCVTSD2SS %XMM0,%XMM0,%XMM9             | 1     | 1    | 0    | 0    | 0    | 0    | 0    | 0  | 2       | 1\nVMOVSS %XMM9,-0xc(%RCX)                 | 1     | 0    | 0    | 0.50 | 0.50 | 0    | 0    | 1  | 2       | 1\nVCVTSS2SD 0x4(%R14,%RDI,4),%XMM3,%XMM10 | 1     | 1    | 0    | 0.50 | 0.50 | 0    | 0    | 0  | 2       | 1\nVCVTSS2SD -0xc(%RDX),%XMM3,%XMM11       | 1     | 1    | 0    | 0.50 | 0.50 | 0    | 0    | 0  | 2       | 1\nVFMADD132SD %XMM5,%XMM11,%XMM10         | 1     | 0.50 | 0.50 | 0    | 0    | 0    | 0    | 0  | 6       | 0.50\nVCVTSD2SS %XMM10,%XMM10,%XMM2           | 1     | 1    | 0    | 0    | 0    | 0    | 0    | 0  | 2       | 1\nVMOVSS %XMM2,-0xc(%RDX)                 | 1     | 0    | 0    | 0.50 | 0.50 | 0    | 0    | 1  | 2       | 1\nVCVTSS2SD 0x8(%R12,%RDI,4),%XMM3,%XMM6  | 1     | 1    | 0    | 0.50 | 0.50 | 0    | 0    | 0  | 2       | 1\nVCVTSS2SD -0x8(%RSI),%XMM3,%XMM1        | 1     | 1    | 0    | 0.50 | 0.50 | 0    | 0    | 0  | 2       | 1\nVFMADD132SD %XMM5,%XMM1,%XMM6           | 1     | 0.50 | 0.50 | 0    | 0    | 0    | 0    | 0  | 6       | 0.50\nVCVTSD2SS %XMM6,%XMM6,%XMM7             | 1     | 1    | 0    | 0    | 0    | 0    | 0    | 0  | 2       | 1\nVMOVSS %XMM7,-0x8(%RSI)                 | 1     | 0    | 0    | 0.50 | 0.50 | 0    | 0    | 1  | 2       | 1\nVCVTSS2SD 0x8(%R13,%RDI,4),%XMM3,%XMM8  | 1     | 1    | 0    | 0.50 | 0.50 | 0    | 0    | 0  | 2       | 1\nVCVTSS2SD -0x8(%RCX),%XMM3,%XMM12       | 1     | 1    | 0    | 0.50 | 0.50 | 0    | 0    | 0  | 2       | 1\nVFMADD132SD %XMM5,%XMM12,%XMM8          | 1     | 0.50 | 0.50 | 0    | 0    | 0    | 0    | 0  | 6       | 0.50\nVCVTSD2SS %XMM8,%XMM8,%XMM4             | 1     | 1    | 0    | 0    | 0    | 0    | 0    | 0  | 2       | 1\nVMOVSS %XMM4,-0x8(%RCX)                 | 1     | 0    | 0    | 0.50 | 0.50 | 0    | 0    | 1  | 2       | 1\nVCVTSS2SD 0x8(%R14,%RDI,4),%XMM3,%XMM14 | 1     | 1    | 0    | 0.50 | 0.50 | 0    | 0    | 0  | 2       | 1\nVCVTSS2SD -0x8(%RDX),%XMM3,%XMM15       | 1     | 1    | 0    | 0.50 | 0.50 | 0    | 0    | 0  | 2       | 1\nVFMADD132SD %XMM5,%XMM15,%XMM14         | 1     | 0.50 | 0.50 | 0    | 0    | 0    | 0    | 0  | 6       | 0.50\nVCVTSD2SS %XMM14,%XMM14,%XMM0           | 1     | 1    | 0    | 0    | 0    | 0    | 0    | 0  | 2       | 1\nVMOVSS %XMM0,-0x8(%RDX)                 | 1     | 0    | 0    | 0.50 | 0.50 | 0    | 0    | 1  | 2       | 1\nVCVTSS2SD 0xc(%R12,%RDI,4),%XMM3,%XMM13 | 1     | 1    | 0    | 0.50 | 0.50 | 0    | 0    | 0  | 2       | 1\nVCVTSS2SD -0x4(%RSI),%XMM3,%XMM9        | 1     | 1    | 0    | 0.50 | 0.50 | 0    | 0    | 0  | 2       | 1\nVFMADD132SD %XMM5,%XMM9,%XMM13          | 1     | 0.50 | 0.50 | 0    | 0    | 0    | 0    | 0  | 6       | 0.50\nVCVTSD2SS %XMM13,%XMM13,%XMM10          | 1     | 1    | 0    | 0    | 0    | 0    | 0    | 0  | 2       | 1\nVMOVSS %XMM10,-0x4(%RSI)                | 1     | 0    | 0    | 0.50 | 0.50 | 0    | 0    | 1  | 2       | 1\nVCVTSS2SD 0xc(%R13,%RDI,4),%XMM3,%XMM11 | 1     | 1    | 0    | 0.50 | 0.50 | 0    | 0    | 0  | 2       | 1\nVCVTSS2SD -0x4(%RCX),%XMM3,%XMM2        | 1     | 1    | 0    | 0.50 | 0.50 | 0    | 0    | 0  | 2       | 1\nVFMADD132SD %XMM5,%XMM2,%XMM11          | 1     | 0.50 | 0.50 | 0    | 0    | 0    | 0    | 0  | 6       | 0.50\nVCVTSD2SS %XMM11,%XMM11,%XMM6           | 1     | 1    | 0    | 0    | 0    | 0    | 0    | 0  | 2       | 1\nVMOVSS %XMM6,-0x4(%RCX)                 | 1     | 0    | 0    | 0.50 | 0.50 | 0    | 0    | 1  | 2       | 1\nVCVTSS2SD 0xc(%R14,%RDI,4),%XMM3,%XMM7  | 1     | 1    | 0    | 0.50 | 0.50 | 0    | 0    | 0  | 2       | 1\nADD $0x4,%RDI                           | 1     | 0    | 0    | 0    | 0    | 0.50 | 0.50 | 0  | 1       | 0.50\nVCVTSS2SD -0x4(%RDX),%XMM3,%XMM1        | 1     | 1    | 0    | 0.50 | 0.50 | 0    | 0    | 0  | 2       | 1\nVFMADD132SD %XMM5,%XMM1,%XMM7           | 1     | 0.50 | 0.50 | 0    | 0    | 0    | 0    | 0  | 6       | 0.50\nVCVTSD2SS %XMM7,%XMM7,%XMM8             | 1     | 1    | 0    | 0    | 0    | 0    | 0    | 0  | 2       | 1\nVMOVSS %XMM8,-0x4(%RDX)                 | 1     | 0    | 0    | 0.50 | 0.50 | 0    | 0    | 1  | 2       | 1\nCMP %R9,%RDI                            | 1     | 0    | 0    | 0    | 0    | 0.50 | 0.50 | 0  | 1       | 0.50\nJB 2c50 <move_particles+0x850>          | 1     | 0    | 0    | 0    | 0    | 0    | 1    | 0  | 0       | 1-2\n",
        },
      },
      header = {
        "2% of peak computational performance is used (0.67 out of 32.00 FLOP per cycle (GFLOPS @ 1GHz))",
      },
      brief = {
      },
      gain = {
        {
          workaround = " - Try another compiler or update/tune your current one\n - Remove inter-iterations dependences from your loop and make it unit-stride:\n  * If your arrays have 2 or more dimensions, check whether elements are accessed contiguously and, otherwise, try to permute loops accordingly:\nC storage order is row-major: for(i) for(j) a[j][i] = b[j][i]; (slow, non stride 1) => for(i) for(j) a[i][j] = b[i][j]; (fast, stride 1)\n  * If your loop streams arrays of structures (AoS), try to use structures of arrays instead (SoA):\nfor(i) a[i].x = b[i].x; (slow, non stride 1) => for(i) a.x[i] = b.x[i]; (fast, stride 1)\n",
          details = "All SSE/AVX instructions are used in scalar version (process only one data element in vector registers).\nSince your execution units are vector units, only a vectorized loop can use their full power.\n",
          title = "Vectorization",
          txt = "Your loop is not vectorized.\nOnly 8% of vector register length is used (average across all SSE/AVX instructions).\nBy vectorizing your loop, you can lower the cost of an iteration from 36.00 to 3.00 cycles (12.00x speedup).",
        },
        {
          workaround = " - Reduce the number of FP multiply/FMA instructions\n - Reduce arithmetical operations on array elements\n",
          title = "Execution units bottlenecks",
          txt = "Performance is limited by:\n - execution of FP multiply or FMA (fused multiply-add) operations (the FP multiply/FMA unit is a bottleneck)\n - execution of INT/FP operations in vector registers (the VPU is a bottleneck)\n\nBy removing all these bottlenecks, you can lower the cost of an iteration from 36.00 to 33.00 cycles (1.09x speedup).\n",
        },
      },
      potential = {
        {
          title = "FMA",
          txt = "Detected 12 FMA (fused multiply-add) operations.",
        },
      },
    },
  common = {
    header = {
      "The loop is defined in /users/user2234/VersionFinaleNbody3DOptimisé/nbody4.c:126-142.\n",
      "The related source loop is not unrolled or unrolled with no peel/tail loop.",
    },
    nb_paths = 1,
  },
}
