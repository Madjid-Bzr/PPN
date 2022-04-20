_cqa_text_report = {
  paths = {
    {
      hint = {
        {
          workaround = " - Try to reorganize arrays of structures to structures of arrays\n - Consider to permute loops (see vectorization gain report)\n - Try to remove indirect accesses. If applicable, precompute elements out of the innermost loop.\n",
          details = " - Constant unknown stride: 1 occurrence(s)\n - Constant non-unit stride: 1 occurrence(s)\n - Irregular (variable stride) or indirect: 1 occurrence(s)\nNon-unit stride (uncontiguous) accesses are not efficiently using data caches\n",
          title = "Slow data structures access",
          txt = "Detected data structures (typically arrays) that cannot be efficiently read/written",
        },
        {
          title = "Type of elements and instruction set",
          txt = "50 SSE or AVX instructions are processing arithmetic or math operations on double precision FP elements in scalar mode (one at a time).\n",
        },
        {
          title = "Matching between your loop (in the source code) and the binary loop",
          txt = "The binary loop is composed of 50 FP arithmetical operations:\n - 25: addition or subtraction\n - 25: multiply\nThe binary loop is loading 440 bytes (55 double precision FP elements).\nThe binary loop is storing 80 bytes (10 double precision FP elements).",
        },
        {
          title = "Arithmetic intensity",
          txt = "Arithmetic intensity is 0.10 FP operations per loaded or stored byte.",
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
          txt = "nb instructions    : 113\nnb uops            : 113\nloop length        : 560\nused x86 registers : 11\nused mmx registers : 0\nused xmm registers : 15\nused ymm registers : 0\nused zmm registers : 0\nnb stack references: 0\nADD-SUB / MUL ratio: 1.00\n",
        },
        {
          title = "Front-end",
          txt = "MACRO FUSION NOT POSSIBLE\nFIT IN UOP CACHE\nmicro-operation queue: 28.25 cycles\nfront end            : 28.25 cycles\n",
        },
        {
          title = "Back-end",
          txt = "       | P0    | P1    | P2    | P3    | P4    | P5\n------------------------------------------------------\nuops   | 27.50 | 27.50 | 32.50 | 32.50 | 10.00 | 18.00\ncycles | 27.50 | 27.50 | 32.50 | 32.50 | 10.00 | 18.00\n\nCycles executing div or sqrt instructions: NA\nLongest recurrence chain latency (RecMII): 1.00\n",
        },
        {
          title = "Cycles summary",
          txt = "Front-end : 28.25\nDispatch  : 32.50\nData deps.: 1.00\nOverall L1: 32.50\n",
        },
        {
          title = "Vectorization ratios",
          txt = "INT\nall    : 0%\nload   : NA (no load vectorizable/vectorized instructions)\nstore  : NA (no store vectorizable/vectorized instructions)\nmul    : NA (no mul vectorizable/vectorized instructions)\nadd-sub: NA (no add-sub vectorizable/vectorized instructions)\nfma    : NA (no fma vectorizable/vectorized instructions)\nother  : 0%\nFP\nall     : 0%\nload    : 0%\nstore   : 0%\nmul     : 0%\nadd-sub : 0%\nfma     : NA (no fma vectorizable/vectorized instructions)\ndiv/sqrt: NA (no div/sqrt vectorizable/vectorized instructions)\nother   : NA (no other vectorizable/vectorized instructions)\nINT+FP\nall     : 0%\nload    : 0%\nstore   : 0%\nmul     : 0%\nadd-sub : 0%\nfma     : NA (no fma vectorizable/vectorized instructions)\ndiv/sqrt: NA (no div/sqrt vectorizable/vectorized instructions)\nother   : 0%\n",
        },
        {
          title = "Vector efficiency ratios",
          txt = "INT\nall    : 41%\nload   : NA (no load vectorizable/vectorized instructions)\nstore  : NA (no store vectorizable/vectorized instructions)\nmul    : NA (no mul vectorizable/vectorized instructions)\nadd-sub: NA (no add-sub vectorizable/vectorized instructions)\nfma    : NA (no fma vectorizable/vectorized instructions)\nother  : 41%\nFP\nall     : 25%\nload    : 25%\nstore   : 25%\nmul     : 25%\nadd-sub : 25%\nfma     : NA (no fma vectorizable/vectorized instructions)\ndiv/sqrt: NA (no div/sqrt vectorizable/vectorized instructions)\nother   : NA (no other vectorizable/vectorized instructions)\nINT+FP\nall     : 26%\nload    : 25%\nstore   : 25%\nmul     : 25%\nadd-sub : 25%\nfma     : NA (no fma vectorizable/vectorized instructions)\ndiv/sqrt: NA (no div/sqrt vectorizable/vectorized instructions)\nother   : 41%\n",
        },
        {
          title = "Cycles and memory resources usage",
          txt = "Assuming all data fit into the L1 cache, each iteration of the binary loop takes 32.50 cycles. At this rate:\n - 42% of peak load performance is reached (13.54 out of 32.00 bytes loaded per cycle (GB/s @ 1GHz))\n - 15% of peak store performance is reached (2.46 out of 16.00 bytes stored per cycle (GB/s @ 1GHz))\n",
        },
        {
          title = "Front-end bottlenecks",
          txt = "Found no such bottlenecks.",
        },
        {
          title = "ASM code",
          txt = "In the binary file, the address of the loop is: 1d6f8\n\nInstruction                           | Nb FU | P0   | P1   | P2   | P3   | P4 | P5   | Latency | Recip. throughput\n-------------------------------------------------------------------------------------------------------------------\nLEA 0x28(%RSI),%RCX                   | 1     | 0.50 | 0.50 | 0    | 0    | 0  | 0    | 1       | 0.50\nLEA 0x28(%RAX),%R11                   | 1     | 0.50 | 0.50 | 0    | 0    | 0  | 0    | 1       | 0.50\nCMP %RCX,%RAX                         | 1     | 0.33 | 0.33 | 0    | 0    | 0  | 0.33 | 1       | 0.33\nLEA 0x20(%RSI),%R8                    | 1     | 0.50 | 0.50 | 0    | 0    | 0  | 0    | 1       | 0.50\nSETAE %R9B                            | 1     | 0.50 | 0    | 0    | 0    | 0  | 0.50 | 1       | 0.50\nCMP %R11,%RSI                         | 1     | 0.33 | 0.33 | 0    | 0    | 0  | 0.33 | 1       | 0.33\nLEA -0xc0(%RDX),%RDI                  | 1     | 0.50 | 0.50 | 0    | 0    | 0  | 0    | 1       | 0.50\nSETAE %R10B                           | 1     | 0.50 | 0    | 0    | 0    | 0  | 0.50 | 1       | 0.50\nOR %R10D,%R9D                         | 1     | 0.33 | 0.33 | 0    | 0    | 0  | 0.33 | 1       | 0.33\nCMP %RDI,%R8                          | 1     | 0.33 | 0.33 | 0    | 0    | 0  | 0.33 | 1       | 0.33\nSETBE %CL                             | 1     | 0.50 | 0    | 0    | 0    | 0  | 0.50 | 1       | 0.50\nCMP %RDX,%RSI                         | 1     | 0.33 | 0.33 | 0    | 0    | 0  | 0.33 | 1       | 0.33\nSETAE %R11B                           | 1     | 0.50 | 0    | 0    | 0    | 0  | 0.50 | 1       | 0.50\nOR %R11D,%ECX                         | 1     | 0.33 | 0.33 | 0    | 0    | 0  | 0.33 | 1       | 0.33\nTEST %CL,%R9B                         | 1     | 0.33 | 0.33 | 0    | 0    | 0  | 0.33 | 1       | 0.33\nLEA -0x28(%RAX),%R9                   | 1     | 0.50 | 0.50 | 0    | 0    | 0  | 0    | 1       | 0.50\nJE 1d8ce <z_solve_._omp_fn.0+0x286e>  | 1     | 0    | 0    | 0    | 0    | 0  | 1    | 0       | 1-2\nVMOVSD (%RAX),%XMM12                  | 1     | 0    | 0    | 0.50 | 0.50 | 0  | 0    | 3       | 0.50\nSUB $0x258,%RDX                       | 1     | 0.33 | 0.33 | 0    | 0    | 0  | 0.33 | 1       | 0.33\nVMULSD 0x1b8(%RDX),%XMM12,%XMM3       | 1     | 1    | 0    | 0.50 | 0.50 | 0  | 0    | 5       | 1\nVMOVSD -0x8(%RAX),%XMM0               | 1     | 0    | 0    | 0.50 | 0.50 | 0  | 0    | 3       | 0.50\nVMOVSD 0x8(%RAX),%XMM9                | 1     | 0    | 0    | 0.50 | 0.50 | 0  | 0    | 3       | 0.50\nVMULSD 0x1e0(%RDX),%XMM9,%XMM8        | 1     | 1    | 0    | 0.50 | 0.50 | 0  | 0    | 5       | 1\nVMOVSD 0x10(%RAX),%XMM6               | 1     | 0    | 0    | 0.50 | 0.50 | 0  | 0    | 3       | 0.50\nVSUBSD %XMM3,%XMM0,%XMM11             | 1     | 0    | 1    | 0    | 0    | 0  | 0    | 3       | 1\nVMULSD 0x208(%RDX),%XMM6,%XMM7        | 1     | 1    | 0    | 0.50 | 0.50 | 0  | 0    | 5       | 1\nVMOVSD 0x18(%RAX),%XMM1               | 1     | 0    | 0    | 0.50 | 0.50 | 0  | 0    | 3       | 0.50\nVMULSD 0x230(%RDX),%XMM1,%XMM10       | 1     | 1    | 0    | 0.50 | 0.50 | 0  | 0    | 5       | 1\nVSUBSD %XMM8,%XMM11,%XMM14            | 1     | 0    | 1    | 0    | 0    | 0  | 0    | 3       | 1\nVMOVSD 0x20(%RAX),%XMM4               | 1     | 0    | 0    | 0.50 | 0.50 | 0  | 0    | 3       | 0.50\nVMULSD 0x258(%RDX),%XMM4,%XMM2        | 1     | 1    | 0    | 0.50 | 0.50 | 0  | 0    | 5       | 1\nVSUBSD %XMM7,%XMM14,%XMM15            | 1     | 0    | 1    | 0    | 0    | 0  | 0    | 3       | 1\nVSUBSD %XMM10,%XMM15,%XMM5            | 1     | 0    | 1    | 0    | 0    | 0  | 0    | 3       | 1\nVSUBSD %XMM2,%XMM5,%XMM12             | 1     | 0    | 1    | 0    | 0    | 0  | 0    | 3       | 1\nVMOVSD %XMM12,-0x8(%RAX)              | 1     | 0    | 0    | 0.50 | 0.50 | 1  | 0    | 3       | 1\nMOV %R9,%RAX                          | 1     | 0.33 | 0.33 | 0    | 0    | 0  | 0.33 | 1       | 0.33\nVMOVSD %XMM12,0x20(%RSI)              | 1     | 0    | 0    | 0.50 | 0.50 | 1  | 0    | 3       | 1\nADD %R12,%RSI                         | 1     | 0.33 | 0.33 | 0    | 0    | 0  | 0.33 | 1       | 0.33\nSUB $0x1,%R15D                        | 1     | 0.33 | 0.33 | 0    | 0    | 0  | 0.33 | 1       | 0.33\nJNS 1d6f8 <z_solve_._omp_fn.0+0x2698> | 1     | 0    | 0    | 0    | 0    | 0  | 1    | 0       | 1-2\nVMOVSD (%RAX),%XMM10                  | 1     | 0    | 0    | 0.50 | 0.50 | 0  | 0    | 3       | 0.50\nVMULSD -0xc0(%RDX),%XMM10,%XMM5       | 1     | 1    | 0    | 0.50 | 0.50 | 0  | 0    | 5       | 1\nVMOVSD -0x28(%RAX),%XMM4              | 1     | 0    | 0    | 0.50 | 0.50 | 0  | 0    | 3       | 0.50\nVMOVSD 0x8(%RAX),%XMM12               | 1     | 0    | 0    | 0.50 | 0.50 | 0  | 0    | 3       | 0.50\nVMULSD -0x98(%RDX),%XMM12,%XMM3       | 1     | 1    | 0    | 0.50 | 0.50 | 0  | 0    | 5       | 1\nVMOVSD 0x10(%RAX),%XMM11              | 1     | 0    | 0    | 0.50 | 0.50 | 0  | 0    | 3       | 0.50\nVSUBSD %XMM5,%XMM4,%XMM2              | 1     | 0    | 1    | 0    | 0    | 0  | 0    | 3       | 1\nVMULSD -0x70(%RDX),%XMM11,%XMM9       | 1     | 1    | 0    | 0.50 | 0.50 | 0  | 0    | 5       | 1\nVMOVSD 0x18(%RAX),%XMM1               | 1     | 0    | 0    | 0.50 | 0.50 | 0  | 0    | 3       | 0.50\nVMULSD -0x48(%RDX),%XMM1,%XMM14       | 1     | 1    | 0    | 0.50 | 0.50 | 0  | 0    | 5       | 1\nVSUBSD %XMM3,%XMM2,%XMM0              | 1     | 0    | 1    | 0    | 0    | 0  | 0    | 3       | 1\nVMOVSD 0x20(%RAX),%XMM7               | 1     | 0    | 0    | 0.50 | 0.50 | 0  | 0    | 3       | 0.50\nVMULSD -0x20(%RDX),%XMM7,%XMM15       | 1     | 1    | 0    | 0.50 | 0.50 | 0  | 0    | 5       | 1\nVSUBSD %XMM9,%XMM0,%XMM8              | 1     | 0    | 1    | 0    | 0    | 0  | 0    | 3       | 1\nVSUBSD %XMM14,%XMM8,%XMM6             | 1     | 0    | 1    | 0    | 0    | 0  | 0    | 3       | 1\nVSUBSD %XMM15,%XMM6,%XMM10            | 1     | 0    | 1    | 0    | 0    | 0  | 0    | 3       | 1\nVMOVSD %XMM10,-0x28(%RAX)             | 1     | 0    | 0    | 0.50 | 0.50 | 1  | 0    | 3       | 1\nVMOVSD %XMM10,(%RSI)                  | 1     | 0    | 0    | 0.50 | 0.50 | 1  | 0    | 3       | 1\nVMOVSD (%RAX),%XMM5                   | 1     | 0    | 0    | 0.50 | 0.50 | 0  | 0    | 3       | 0.50\nVMULSD -0xb8(%RDX),%XMM5,%XMM4        | 1     | 1    | 0    | 0.50 | 0.50 | 0  | 0    | 5       | 1\nVMOVSD -0x20(%RAX),%XMM2              | 1     | 0    | 0    | 0.50 | 0.50 | 0  | 0    | 3       | 0.50\nVMOVSD 0x8(%RAX),%XMM3                | 1     | 0    | 0    | 0.50 | 0.50 | 0  | 0    | 3       | 0.50\nVMULSD -0x90(%RDX),%XMM3,%XMM0        | 1     | 1    | 0    | 0.50 | 0.50 | 0  | 0    | 5       | 1\nVMOVSD 0x10(%RAX),%XMM9               | 1     | 0    | 0    | 0.50 | 0.50 | 0  | 0    | 3       | 0.50\nVSUBSD %XMM4,%XMM2,%XMM12             | 1     | 0    | 1    | 0    | 0    | 0  | 0    | 3       | 1\nVMULSD -0x68(%RDX),%XMM9,%XMM8        | 1     | 1    | 0    | 0.50 | 0.50 | 0  | 0    | 5       | 1\nVMOVSD 0x18(%RAX),%XMM1               | 1     | 0    | 0    | 0.50 | 0.50 | 0  | 0    | 3       | 0.50\nVMULSD -0x40(%RDX),%XMM1,%XMM6        | 1     | 1    | 0    | 0.50 | 0.50 | 0  | 0    | 5       | 1\nVSUBSD %XMM0,%XMM12,%XMM11            | 1     | 0    | 1    | 0    | 0    | 0  | 0    | 3       | 1\nVMOVSD 0x20(%RAX),%XMM15              | 1     | 0    | 0    | 0.50 | 0.50 | 0  | 0    | 3       | 0.50\nVMULSD -0x18(%RDX),%XMM15,%XMM10      | 1     | 1    | 0    | 0.50 | 0.50 | 0  | 0    | 5       | 1\nVSUBSD %XMM8,%XMM11,%XMM14            | 1     | 0    | 1    | 0    | 0    | 0  | 0    | 3       | 1\nVSUBSD %XMM6,%XMM14,%XMM7             | 1     | 0    | 1    | 0    | 0    | 0  | 0    | 3       | 1\nVSUBSD %XMM10,%XMM7,%XMM5             | 1     | 0    | 1    | 0    | 0    | 0  | 0    | 3       | 1\nVMOVSD %XMM5,-0x20(%RAX)              | 1     | 0    | 0    | 0.50 | 0.50 | 1  | 0    | 3       | 1\nVMOVSD %XMM5,0x8(%RSI)                | 1     | 0    | 0    | 0.50 | 0.50 | 1  | 0    | 3       | 1\nVMOVSD (%RAX),%XMM4                   | 1     | 0    | 0    | 0.50 | 0.50 | 0  | 0    | 3       | 0.50\nVMULSD -0xb0(%RDX),%XMM4,%XMM2        | 1     | 1    | 0    | 0.50 | 0.50 | 0  | 0    | 5       | 1\nVMOVSD -0x18(%RAX),%XMM12             | 1     | 0    | 0    | 0.50 | 0.50 | 0  | 0    | 3       | 0.50\nVMOVSD 0x8(%RAX),%XMM0                | 1     | 0    | 0    | 0.50 | 0.50 | 0  | 0    | 3       | 0.50\nVMULSD -0x88(%RDX),%XMM0,%XMM11       | 1     | 1    | 0    | 0.50 | 0.50 | 0  | 0    | 5       | 1\nVMOVSD 0x10(%RAX),%XMM8               | 1     | 0    | 0    | 0.50 | 0.50 | 0  | 0    | 3       | 0.50\nVSUBSD %XMM2,%XMM12,%XMM3             | 1     | 0    | 1    | 0    | 0    | 0  | 0    | 3       | 1\nVMULSD -0x60(%RDX),%XMM8,%XMM14       | 1     | 1    | 0    | 0.50 | 0.50 | 0  | 0    | 5       | 1\nVMOVSD 0x18(%RAX),%XMM1               | 1     | 0    | 0    | 0.50 | 0.50 | 0  | 0    | 3       | 0.50\nVMULSD -0x38(%RDX),%XMM1,%XMM7        | 1     | 1    | 0    | 0.50 | 0.50 | 0  | 0    | 5       | 1\nVSUBSD %XMM11,%XMM3,%XMM9             | 1     | 0    | 1    | 0    | 0    | 0  | 0    | 3       | 1\nVMOVSD 0x20(%RAX),%XMM10              | 1     | 0    | 0    | 0.50 | 0.50 | 0  | 0    | 3       | 0.50\nVMULSD -0x10(%RDX),%XMM10,%XMM5       | 1     | 1    | 0    | 0.50 | 0.50 | 0  | 0    | 5       | 1\nVSUBSD %XMM14,%XMM9,%XMM6             | 1     | 0    | 1    | 0    | 0    | 0  | 0    | 3       | 1\nVSUBSD %XMM7,%XMM6,%XMM15             | 1     | 0    | 1    | 0    | 0    | 0  | 0    | 3       | 1\nVSUBSD %XMM5,%XMM15,%XMM4             | 1     | 0    | 1    | 0    | 0    | 0  | 0    | 3       | 1\nVMOVSD %XMM4,-0x18(%RAX)              | 1     | 0    | 0    | 0.50 | 0.50 | 1  | 0    | 3       | 1\nVMOVSD %XMM4,0x10(%RSI)               | 1     | 0    | 0    | 0.50 | 0.50 | 1  | 0    | 3       | 1\nVMOVSD (%RAX),%XMM2                   | 1     | 0    | 0    | 0.50 | 0.50 | 0  | 0    | 3       | 0.50\nVMULSD -0xa8(%RDX),%XMM2,%XMM12       | 1     | 1    | 0    | 0.50 | 0.50 | 0  | 0    | 5       | 1\nVMOVSD -0x10(%RAX),%XMM3              | 1     | 0    | 0    | 0.50 | 0.50 | 0  | 0    | 3       | 0.50\nVMOVSD 0x8(%RAX),%XMM11               | 1     | 0    | 0    | 0.50 | 0.50 | 0  | 0    | 3       | 0.50\nVMULSD -0x80(%RDX),%XMM11,%XMM9       | 1     | 1    | 0    | 0.50 | 0.50 | 0  | 0    | 5       | 1\nVMOVSD 0x10(%RAX),%XMM14              | 1     | 0    | 0    | 0.50 | 0.50 | 0  | 0    | 3       | 0.50\nVSUBSD %XMM12,%XMM3,%XMM0             | 1     | 0    | 1    | 0    | 0    | 0  | 0    | 3       | 1\nVMULSD -0x58(%RDX),%XMM14,%XMM6       | 1     | 1    | 0    | 0.50 | 0.50 | 0  | 0    | 5       | 1\nVMOVSD 0x18(%RAX),%XMM1               | 1     | 0    | 0    | 0.50 | 0.50 | 0  | 0    | 3       | 0.50\nVMULSD -0x30(%RDX),%XMM1,%XMM15       | 1     | 1    | 0    | 0.50 | 0.50 | 0  | 0    | 5       | 1\nVSUBSD %XMM9,%XMM0,%XMM8              | 1     | 0    | 1    | 0    | 0    | 0  | 0    | 3       | 1\nVMOVSD 0x20(%RAX),%XMM5               | 1     | 0    | 0    | 0.50 | 0.50 | 0  | 0    | 3       | 0.50\nVMULSD -0x8(%RDX),%XMM5,%XMM4         | 1     | 1    | 0    | 0.50 | 0.50 | 0  | 0    | 5       | 1\nVSUBSD %XMM6,%XMM8,%XMM7              | 1     | 0    | 1    | 0    | 0    | 0  | 0    | 3       | 1\nVSUBSD %XMM15,%XMM7,%XMM10            | 1     | 0    | 1    | 0    | 0    | 0  | 0    | 3       | 1\nVSUBSD %XMM4,%XMM10,%XMM2             | 1     | 0    | 1    | 0    | 0    | 0  | 0    | 3       | 1\nVMOVSD %XMM2,-0x10(%RAX)              | 1     | 0    | 0    | 0.50 | 0.50 | 1  | 0    | 3       | 1\nVMOVSD %XMM2,0x18(%RSI)               | 1     | 0    | 0    | 0.50 | 0.50 | 1  | 0    | 3       | 1\nJMP 1d808 <z_solve_._omp_fn.0+0x27a8> | 1     | 0    | 0    | 0    | 0    | 0  | 1    | 0       | 2\n",
        },
      },
      header = {
        "19% of peak computational performance is used (1.54 out of 8.00 FLOP per cycle (GFLOPS @ 1GHz))",
      },
      brief = {
      },
      gain = {
        {
          workaround = " - Try another compiler or update/tune your current one:\n  * recompile with fassociative-math (included in Ofast or ffast-math) to extend loop vectorization to FP reductions.\n - Remove inter-iterations dependences from your loop and make it unit-stride:\n  * If your arrays have 2 or more dimensions, check whether elements are accessed contiguously and, otherwise, try to permute loops accordingly:\nFortran storage order is column-major: do i do j a(i,j) = b(i,j) (slow, non stride 1) => do i do j a(j,i) = b(i,j) (fast, stride 1)\n  * If your loop streams arrays of structures (AoS), try to use structures of arrays instead (SoA):\ndo i a(i)%x = b(i)%x (slow, non stride 1) => do i a%x(i) = b%x(i) (fast, stride 1)\n",
          details = "All SSE/AVX instructions are used in scalar version (process only one data element in vector registers).\nSince your execution units are vector units, only a vectorized loop can use their full power.\n",
          title = "Vectorization",
          txt = "Your loop is not vectorized.\nOnly 26% of vector register length is used (average across all SSE/AVX instructions).\nBy vectorizing your loop, you can lower the cost of an iteration from 32.50 to 13.75 cycles (2.36x speedup).",
        },
        {
          workaround = " - Read less array elements\n - Write less array elements\n - Provide more information to your compiler:\n  * hardcode the bounds of the corresponding 'for' loop\n",
          title = "Execution units bottlenecks",
          txt = "Performance is limited by:\n - reading data from caches/RAM (load units are a bottleneck)\n - writing data to caches/RAM (the store unit is a bottleneck)\n\nBy removing all these bottlenecks, you can lower the cost of an iteration from 32.50 to 28.25 cycles (1.15x speedup).\n",
        },
      },
      potential = {
      },
    },
    {
      hint = {
        {
          details = "These instructions generate more than one micro-operation and only one of them can be decoded during a cycle and the extra micro-operations increase pressure on execution units.\n - VBROADCASTSD: 5 occurrences\n - VEXTRACTF128: 2 occurrences\n - VINSERTF128: 6 occurrences\n",
          title = "Complex instructions",
          txt = "Detected COMPLEX INSTRUCTIONS.\n",
        },
        {
          workaround = " - Try to reorganize arrays of structures to structures of arrays\n - Consider to permute loops (see vectorization gain report)\n - Try to remove indirect accesses. If applicable, precompute elements out of the innermost loop.\n",
          details = " - Constant unknown stride: 1 occurrence(s)\n - Constant non-unit stride: 1 occurrence(s)\n - Irregular (variable stride) or indirect: 1 occurrence(s)\nNon-unit stride (uncontiguous) accesses are not efficiently using data caches\n",
          title = "Slow data structures access",
          txt = "Detected data structures (typically arrays) that cannot be efficiently read/written",
        },
        {
          workaround = "Use vector aligned instructions:\n 1) The GNU Fortran compiler does not support allocation alignment and does not feature directives to benefit from aligned data.\n 2) Use another compiler or locally use C code (for instance via libraries)\n",
          details = " - VEXTRACTF128: 2 occurrences\n - VINSERTF128: 6 occurrences\n - VMOVUPS: 2 occurrences\n",
          title = "Vector unaligned load/store instructions",
          txt = "Detected 10 optimal vector unaligned load/store instructions.\n",
        },
        {
          title = "Type of elements and instruction set",
          txt = "10 SSE or AVX instructions are processing arithmetic or math operations on double precision FP elements in scalar mode (one at a time).\n10 AVX instructions are processing arithmetic or math operations on double precision FP elements in vector mode (four at a time).\n",
        },
        {
          title = "Matching between your loop (in the source code) and the binary loop",
          txt = "The binary loop is composed of 50 FP arithmetical operations:\n - 25: addition or subtraction\n - 25: multiply\nThe binary loop is loading 320 bytes (40 double precision FP elements).\nThe binary loop is storing 80 bytes (10 double precision FP elements).",
        },
        {
          title = "Arithmetic intensity",
          txt = "Arithmetic intensity is 0.12 FP operations per loaded or stored byte.",
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
          txt = "nb instructions    : 78\nnb uops            : 91\nloop length        : 396\nused x86 registers : 11\nused mmx registers : 0\nused xmm registers : 15\nused ymm registers : 15\nused zmm registers : 0\nnb stack references: 0\nADD-SUB / MUL ratio: 1.00\n",
        },
        {
          title = "Front-end",
          txt = "MACRO FUSION NOT POSSIBLE\nFIT IN UOP CACHE\nmicro-operation queue: 22.75 cycles\nfront end            : 22.75 cycles\n",
        },
        {
          title = "Back-end",
          txt = "       | P0    | P1    | P2    | P3    | P4   | P5\n-----------------------------------------------------\nuops   | 20.00 | 20.17 | 17.00 | 17.00 | 6.00 | 19.83\ncycles | 20.00 | 20.17 | 17.00 | 17.00 | 6.00 | 19.83\n\nCycles executing div or sqrt instructions: NA\nLongest recurrence chain latency (RecMII): 1.00\n",
        },
        {
          title = "Cycles summary",
          txt = "Front-end : 22.75\nDispatch  : 20.17\nData deps.: 1.00\nOverall L1: 22.75\n",
        },
        {
          title = "Vectorization ratios",
          txt = "INT\nall    : 0%\nload   : NA (no load vectorizable/vectorized instructions)\nstore  : NA (no store vectorizable/vectorized instructions)\nmul    : NA (no mul vectorizable/vectorized instructions)\nadd-sub: NA (no add-sub vectorizable/vectorized instructions)\nfma    : NA (no fma vectorizable/vectorized instructions)\nother  : 0%\nFP\nall     : 53%\nload    : 42%\nstore   : 66%\nmul     : 50%\nadd-sub : 50%\nfma     : NA (no fma vectorizable/vectorized instructions)\ndiv/sqrt: NA (no div/sqrt vectorizable/vectorized instructions)\nother   : 54%\nINT+FP\nall     : 45%\nload    : 42%\nstore   : 66%\nmul     : 50%\nadd-sub : 50%\nfma     : NA (no fma vectorizable/vectorized instructions)\ndiv/sqrt: NA (no div/sqrt vectorizable/vectorized instructions)\nother   : 31%\n",
        },
        {
          title = "Vector efficiency ratios",
          txt = "INT\nall    : 43%\nload   : NA (no load vectorizable/vectorized instructions)\nstore  : NA (no store vectorizable/vectorized instructions)\nmul    : NA (no mul vectorizable/vectorized instructions)\nadd-sub: NA (no add-sub vectorizable/vectorized instructions)\nfma    : NA (no fma vectorizable/vectorized instructions)\nother  : 43%\nFP\nall     : 48%\nload    : 35%\nstore   : 41%\nmul     : 62%\nadd-sub : 62%\nfma     : NA (no fma vectorizable/vectorized instructions)\ndiv/sqrt: NA (no div/sqrt vectorizable/vectorized instructions)\nother   : 38%\nINT+FP\nall     : 47%\nload    : 35%\nstore   : 41%\nmul     : 62%\nadd-sub : 62%\nfma     : NA (no fma vectorizable/vectorized instructions)\ndiv/sqrt: NA (no div/sqrt vectorizable/vectorized instructions)\nother   : 40%\n",
        },
        {
          title = "Cycles and memory resources usage",
          txt = "Assuming all data fit into the L1 cache, each iteration of the binary loop takes 22.75 cycles. At this rate:\n - 43% of peak load performance is reached (14.07 out of 32.00 bytes loaded per cycle (GB/s @ 1GHz))\n - 21% of peak store performance is reached (3.52 out of 16.00 bytes stored per cycle (GB/s @ 1GHz))\n",
        },
        {
          title = "Front-end bottlenecks",
          txt = "Performance is limited by instruction throughput (loading/decoding program instructions to execution core) (front-end is a bottleneck).\n\nBy removing all these bottlenecks, you can lower the cost of an iteration from 22.75 to 20.17 cycles (1.13x speedup).\n",
        },
        {
          title = "ASM code",
          txt = "In the binary file, the address of the loop is: 1d6f8\n\nInstruction                               | Nb FU | P0   | P1   | P2   | P3   | P4 | P5   | Latency | Recip. throughput\n-----------------------------------------------------------------------------------------------------------------------\nLEA 0x28(%RSI),%RCX                       | 1     | 0.50 | 0.50 | 0    | 0    | 0  | 0    | 1       | 0.50\nLEA 0x28(%RAX),%R11                       | 1     | 0.50 | 0.50 | 0    | 0    | 0  | 0    | 1       | 0.50\nCMP %RCX,%RAX                             | 1     | 0.33 | 0.33 | 0    | 0    | 0  | 0.33 | 1       | 0.33\nLEA 0x20(%RSI),%R8                        | 1     | 0.50 | 0.50 | 0    | 0    | 0  | 0    | 1       | 0.50\nSETAE %R9B                                | 1     | 0.50 | 0    | 0    | 0    | 0  | 0.50 | 1       | 0.50\nCMP %R11,%RSI                             | 1     | 0.33 | 0.33 | 0    | 0    | 0  | 0.33 | 1       | 0.33\nLEA -0xc0(%RDX),%RDI                      | 1     | 0.50 | 0.50 | 0    | 0    | 0  | 0    | 1       | 0.50\nSETAE %R10B                               | 1     | 0.50 | 0    | 0    | 0    | 0  | 0.50 | 1       | 0.50\nOR %R10D,%R9D                             | 1     | 0.33 | 0.33 | 0    | 0    | 0  | 0.33 | 1       | 0.33\nCMP %RDI,%R8                              | 1     | 0.33 | 0.33 | 0    | 0    | 0  | 0.33 | 1       | 0.33\nSETBE %CL                                 | 1     | 0.50 | 0    | 0    | 0    | 0  | 0.50 | 1       | 0.50\nCMP %RDX,%RSI                             | 1     | 0.33 | 0.33 | 0    | 0    | 0  | 0.33 | 1       | 0.33\nSETAE %R11B                               | 1     | 0.50 | 0    | 0    | 0    | 0  | 0.50 | 1       | 0.50\nOR %R11D,%ECX                             | 1     | 0.33 | 0.33 | 0    | 0    | 0  | 0.33 | 1       | 0.33\nTEST %CL,%R9B                             | 1     | 0.33 | 0.33 | 0    | 0    | 0  | 0.33 | 1       | 0.33\nLEA -0x28(%RAX),%R9                       | 1     | 0.50 | 0.50 | 0    | 0    | 0  | 0    | 1       | 0.50\nJE 1d8ce <z_solve_._omp_fn.0+0x286e>      | 1     | 0    | 0    | 0    | 0    | 0  | 1    | 0       | 1-2\nLEA -0x8(%RAX),%R10                       | 1     | 0.50 | 0.50 | 0    | 0    | 0  | 0    | 1       | 0.50\nCMP %R9,%R8                               | 1     | 0.33 | 0.33 | 0    | 0    | 0  | 0.33 | 1       | 0.33\nSETBE %R8B                                | 1     | 0.50 | 0    | 0    | 0    | 0  | 0.50 | 1       | 0.50\nCMP %R10,%RSI                             | 1     | 0.33 | 0.33 | 0    | 0    | 0  | 0.33 | 1       | 0.33\nSETAE %DIL                                | 1     | 0.50 | 0    | 0    | 0    | 0  | 0.50 | 1       | 0.50\nOR %DIL,%R8B                              | 1     | 0.33 | 0.33 | 0    | 0    | 0  | 0.33 | 1       | 0.33\nJE 1d8ce <z_solve_._omp_fn.0+0x286e>      | 1     | 0    | 0    | 0    | 0    | 0  | 1    | 0       | 1-2\nVBROADCASTSD (%RAX),%YMM11                | 2     | 0    | 0    | 0.50 | 0.50 | 0  | 1    | 5       | 1\nVMOVUPD -0x28(%RAX),%XMM2                 | 1     | 0    | 0    | 0.50 | 0.50 | 0  | 0    | 3       | 0.50\nVINSERTF128 $0x1,-0x18(%RAX),%YMM2,%YMM12 | 2     | 0    | 0    | 0.50 | 0.50 | 0  | 1    | 2       | 1\nVMOVUPD -0xc0(%RDX),%XMM3                 | 1     | 0    | 0    | 0.50 | 0.50 | 0  | 0    | 3       | 0.50\nVINSERTF128 $0x1,-0xb0(%RDX),%YMM3,%YMM0  | 2     | 0    | 0    | 0.50 | 0.50 | 0  | 1    | 2       | 1\nVMULPD %YMM11,%YMM0,%YMM9                 | 1     | 1    | 0    | 0    | 0    | 0  | 0    | 5       | 1\nVSUBPD %YMM9,%YMM12,%YMM8                 | 1     | 0    | 1    | 0    | 0    | 0  | 0    | 3       | 1\nVBROADCASTSD 0x8(%RAX),%YMM6              | 2     | 0    | 0    | 0.50 | 0.50 | 0  | 1    | 5       | 1\nVMOVUPD -0x98(%RDX),%XMM1                 | 1     | 0    | 0    | 0.50 | 0.50 | 0  | 0    | 3       | 0.50\nVINSERTF128 $0x1,-0x88(%RDX),%YMM1,%YMM14 | 2     | 0    | 0    | 0.50 | 0.50 | 0  | 1    | 2       | 1\nVMULPD %YMM6,%YMM14,%YMM7                 | 1     | 1    | 0    | 0    | 0    | 0  | 0    | 5       | 1\nVSUBPD %YMM7,%YMM8,%YMM15                 | 1     | 0    | 1    | 0    | 0    | 0  | 0    | 3       | 1\nVBROADCASTSD 0x10(%RAX),%YMM4             | 2     | 0    | 0    | 0.50 | 0.50 | 0  | 1    | 5       | 1\nVMOVUPD -0x70(%RDX),%XMM10                | 1     | 0    | 0    | 0.50 | 0.50 | 0  | 0    | 3       | 0.50\nVINSERTF128 $0x1,-0x60(%RDX),%YMM10,%YMM5 | 2     | 0    | 0    | 0.50 | 0.50 | 0  | 1    | 2       | 1\nVMULPD %YMM4,%YMM5,%YMM2                  | 1     | 1    | 0    | 0    | 0    | 0  | 0    | 5       | 1\nVBROADCASTSD 0x18(%RAX),%YMM11            | 2     | 0    | 0    | 0.50 | 0.50 | 0  | 1    | 5       | 1\nVSUBPD %YMM2,%YMM15,%YMM12                | 1     | 0    | 1    | 0    | 0    | 0  | 0    | 3       | 1\nVMOVUPD -0x48(%RDX),%XMM3                 | 1     | 0    | 0    | 0.50 | 0.50 | 0  | 0    | 3       | 0.50\nVINSERTF128 $0x1,-0x38(%RDX),%YMM3,%YMM0  | 2     | 0    | 0    | 0.50 | 0.50 | 0  | 1    | 2       | 1\nVMULPD %YMM11,%YMM0,%YMM9                 | 1     | 1    | 0    | 0    | 0    | 0  | 0    | 5       | 1\nVBROADCASTSD 0x20(%RAX),%YMM6             | 2     | 0    | 0    | 0.50 | 0.50 | 0  | 1    | 5       | 1\nVMOVUPD -0x20(%RDX),%XMM1                 | 1     | 0    | 0    | 0.50 | 0.50 | 0  | 0    | 3       | 0.50\nVINSERTF128 $0x1,-0x10(%RDX),%YMM1,%YMM14 | 2     | 0    | 0    | 0.50 | 0.50 | 0  | 1    | 2       | 1\nVSUBPD %YMM9,%YMM12,%YMM8                 | 1     | 0    | 1    | 0    | 0    | 0  | 0    | 3       | 1\nVMULPD %YMM6,%YMM14,%YMM7                 | 1     | 1    | 0    | 0    | 0    | 0  | 0    | 5       | 1\nVSUBPD %YMM7,%YMM8,%YMM15                 | 1     | 0    | 1    | 0    | 0    | 0  | 0    | 3       | 1\nVMOVUPS %XMM15,-0x28(%RAX)                | 1     | 0    | 0    | 0.50 | 0.50 | 1  | 0    | 3       | 1\nVEXTRACTF128 $0x1,%YMM15,-0x18(%RAX)      | 2     | 0    | 0    | 0.50 | 0.50 | 1  | 0    | 2       | 1\nVEXTRACTF128 $0x1,%YMM15,0x10(%RSI)       | 2     | 0    | 0    | 0.50 | 0.50 | 1  | 0    | 2       | 1\nVMOVUPS %XMM15,(%RSI)                     | 1     | 0    | 0    | 0.50 | 0.50 | 1  | 0    | 3       | 1\nVMOVSD (%RAX),%XMM12                      | 1     | 0    | 0    | 0.50 | 0.50 | 0  | 0    | 3       | 0.50\nSUB $0x258,%RDX                           | 1     | 0.33 | 0.33 | 0    | 0    | 0  | 0.33 | 1       | 0.33\nVMULSD 0x1b8(%RDX),%XMM12,%XMM3           | 1     | 1    | 0    | 0.50 | 0.50 | 0  | 0    | 5       | 1\nVMOVSD -0x8(%RAX),%XMM0                   | 1     | 0    | 0    | 0.50 | 0.50 | 0  | 0    | 3       | 0.50\nVMOVSD 0x8(%RAX),%XMM9                    | 1     | 0    | 0    | 0.50 | 0.50 | 0  | 0    | 3       | 0.50\nVMULSD 0x1e0(%RDX),%XMM9,%XMM8            | 1     | 1    | 0    | 0.50 | 0.50 | 0  | 0    | 5       | 1\nVMOVSD 0x10(%RAX),%XMM6                   | 1     | 0    | 0    | 0.50 | 0.50 | 0  | 0    | 3       | 0.50\nVSUBSD %XMM3,%XMM0,%XMM11                 | 1     | 0    | 1    | 0    | 0    | 0  | 0    | 3       | 1\nVMULSD 0x208(%RDX),%XMM6,%XMM7            | 1     | 1    | 0    | 0.50 | 0.50 | 0  | 0    | 5       | 1\nVMOVSD 0x18(%RAX),%XMM1                   | 1     | 0    | 0    | 0.50 | 0.50 | 0  | 0    | 3       | 0.50\nVMULSD 0x230(%RDX),%XMM1,%XMM10           | 1     | 1    | 0    | 0.50 | 0.50 | 0  | 0    | 5       | 1\nVSUBSD %XMM8,%XMM11,%XMM14                | 1     | 0    | 1    | 0    | 0    | 0  | 0    | 3       | 1\nVMOVSD 0x20(%RAX),%XMM4                   | 1     | 0    | 0    | 0.50 | 0.50 | 0  | 0    | 3       | 0.50\nVMULSD 0x258(%RDX),%XMM4,%XMM2            | 1     | 1    | 0    | 0.50 | 0.50 | 0  | 0    | 5       | 1\nVSUBSD %XMM7,%XMM14,%XMM15                | 1     | 0    | 1    | 0    | 0    | 0  | 0    | 3       | 1\nVSUBSD %XMM10,%XMM15,%XMM5                | 1     | 0    | 1    | 0    | 0    | 0  | 0    | 3       | 1\nVSUBSD %XMM2,%XMM5,%XMM12                 | 1     | 0    | 1    | 0    | 0    | 0  | 0    | 3       | 1\nVMOVSD %XMM12,-0x8(%RAX)                  | 1     | 0    | 0    | 0.50 | 0.50 | 1  | 0    | 3       | 1\nMOV %R9,%RAX                              | 1     | 0.33 | 0.33 | 0    | 0    | 0  | 0.33 | 1       | 0.33\nVMOVSD %XMM12,0x20(%RSI)                  | 1     | 0    | 0    | 0.50 | 0.50 | 1  | 0    | 3       | 1\nADD %R12,%RSI                             | 1     | 0.33 | 0.33 | 0    | 0    | 0  | 0.33 | 1       | 0.33\nSUB $0x1,%R15D                            | 1     | 0.33 | 0.33 | 0    | 0    | 0  | 0.33 | 1       | 0.33\nJNS 1d6f8 <z_solve_._omp_fn.0+0x2698>     | 1     | 0    | 0    | 0    | 0    | 0  | 1    | 0       | 1-2\n",
        },
      },
      header = {
        "27% of peak computational performance is used (2.20 out of 8.00 FLOP per cycle (GFLOPS @ 1GHz))",
      },
      brief = {
      },
      gain = {
        {
          workaround = " - Try to reorganize arrays of structures to structures of arrays\n - Consider to permute loops (see vectorization gain report)\n - To reference allocatable arrays, use \"allocatable\" instead of \"pointer\" pointers or qualify them with the \"contiguous\" attribute (Fortran 2008)\n - For structures, limit to one indirection. For example, use a_b%c instead of a%b%c with a_b set to a%b before this loop\n",
          title = "Code clean check",
          txt = "Detected a slowdown caused by scalar integer instructions (typically used for address computation).\nBy removing them, you can lower the cost of an iteration from 22.75 to 17.00 cycles (1.34x speedup).",
        },
        {
          workaround = " - Try another compiler or update/tune your current one:\n  * recompile with fassociative-math (included in Ofast or ffast-math) to extend loop vectorization to FP reductions.\n - Remove inter-iterations dependences from your loop and make it unit-stride:\n  * If your arrays have 2 or more dimensions, check whether elements are accessed contiguously and, otherwise, try to permute loops accordingly:\nFortran storage order is column-major: do i do j a(i,j) = b(i,j) (slow, non stride 1) => do i do j a(j,i) = b(i,j) (fast, stride 1)\n  * If your loop streams arrays of structures (AoS), try to use structures of arrays instead (SoA):\ndo i a(i)%x = b(i)%x (slow, non stride 1) => do i a%x(i) = b%x(i) (fast, stride 1)\n",
          details = "45% of SSE/AVX instructions are used in vector version (process two or more data elements in vector registers):\n - 42% of SSE/AVX loads are used in vector version.\n - 66% of SSE/AVX stores are used in vector version.\n - 50% of SSE/AVX addition or subtraction instructions are used in vector version.\n - 50% of SSE/AVX multiply instructions are used in vector version.\n - 31% of SSE/AVX instructions that are not load, store, addition, subtraction nor multiply instructions are used in vector version.\nSince your execution units are vector units, only a fully vectorized loop can use their full power.\n",
          title = "Vectorization",
          txt = "Your loop is poorly vectorized.\nOnly 47% of vector register length is used (average across all SSE/AVX instructions).\nBy fully vectorizing your loop, you can lower the cost of an iteration from 22.75 to 14.07 cycles (1.62x speedup).",
        },
        {
          title = "Execution units bottlenecks",
          txt = "Found no such bottlenecks but see expert reports for more complex bottlenecks.",
        },
      },
      potential = {
      },
    },
    {
      hint = {
        {
          workaround = " - Try to reorganize arrays of structures to structures of arrays\n - Consider to permute loops (see vectorization gain report)\n - Try to remove indirect accesses. If applicable, precompute elements out of the innermost loop.\n",
          details = " - Constant unknown stride: 1 occurrence(s)\n - Constant non-unit stride: 1 occurrence(s)\n - Irregular (variable stride) or indirect: 1 occurrence(s)\nNon-unit stride (uncontiguous) accesses are not efficiently using data caches\n",
          title = "Slow data structures access",
          txt = "Detected data structures (typically arrays) that cannot be efficiently read/written",
        },
        {
          title = "Type of elements and instruction set",
          txt = "50 SSE or AVX instructions are processing arithmetic or math operations on double precision FP elements in scalar mode (one at a time).\n",
        },
        {
          title = "Matching between your loop (in the source code) and the binary loop",
          txt = "The binary loop is composed of 50 FP arithmetical operations:\n - 25: addition or subtraction\n - 25: multiply\nThe binary loop is loading 440 bytes (55 double precision FP elements).\nThe binary loop is storing 80 bytes (10 double precision FP elements).",
        },
        {
          title = "Arithmetic intensity",
          txt = "Arithmetic intensity is 0.10 FP operations per loaded or stored byte.",
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
          txt = "nb instructions    : 120\nnb uops            : 120\nloop length        : 587\nused x86 registers : 11\nused mmx registers : 0\nused xmm registers : 15\nused ymm registers : 0\nused zmm registers : 0\nnb stack references: 0\nADD-SUB / MUL ratio: 1.00\n",
        },
        {
          title = "Front-end",
          txt = "MACRO FUSION NOT POSSIBLE\nFIT IN UOP CACHE\nmicro-operation queue: 30.00 cycles\nfront end            : 30.00 cycles\n",
        },
        {
          title = "Back-end",
          txt = "       | P0    | P1    | P2    | P3    | P4    | P5\n------------------------------------------------------\nuops   | 28.00 | 28.00 | 32.50 | 32.50 | 10.00 | 24.00\ncycles | 28.00 | 28.00 | 32.50 | 32.50 | 10.00 | 24.00\n\nCycles executing div or sqrt instructions: NA\nLongest recurrence chain latency (RecMII): 1.00\n",
        },
        {
          title = "Cycles summary",
          txt = "Front-end : 30.00\nDispatch  : 32.50\nData deps.: 1.00\nOverall L1: 32.50\n",
        },
        {
          title = "Vectorization ratios",
          txt = "INT\nall    : 0%\nload   : NA (no load vectorizable/vectorized instructions)\nstore  : NA (no store vectorizable/vectorized instructions)\nmul    : NA (no mul vectorizable/vectorized instructions)\nadd-sub: NA (no add-sub vectorizable/vectorized instructions)\nfma    : NA (no fma vectorizable/vectorized instructions)\nother  : 0%\nFP\nall     : 0%\nload    : 0%\nstore   : 0%\nmul     : 0%\nadd-sub : 0%\nfma     : NA (no fma vectorizable/vectorized instructions)\ndiv/sqrt: NA (no div/sqrt vectorizable/vectorized instructions)\nother   : NA (no other vectorizable/vectorized instructions)\nINT+FP\nall     : 0%\nload    : 0%\nstore   : 0%\nmul     : 0%\nadd-sub : 0%\nfma     : NA (no fma vectorizable/vectorized instructions)\ndiv/sqrt: NA (no div/sqrt vectorizable/vectorized instructions)\nother   : 0%\n",
        },
        {
          title = "Vector efficiency ratios",
          txt = "INT\nall    : 43%\nload   : NA (no load vectorizable/vectorized instructions)\nstore  : NA (no store vectorizable/vectorized instructions)\nmul    : NA (no mul vectorizable/vectorized instructions)\nadd-sub: NA (no add-sub vectorizable/vectorized instructions)\nfma    : NA (no fma vectorizable/vectorized instructions)\nother  : 43%\nFP\nall     : 25%\nload    : 25%\nstore   : 25%\nmul     : 25%\nadd-sub : 25%\nfma     : NA (no fma vectorizable/vectorized instructions)\ndiv/sqrt: NA (no div/sqrt vectorizable/vectorized instructions)\nother   : NA (no other vectorizable/vectorized instructions)\nINT+FP\nall     : 26%\nload    : 25%\nstore   : 25%\nmul     : 25%\nadd-sub : 25%\nfma     : NA (no fma vectorizable/vectorized instructions)\ndiv/sqrt: NA (no div/sqrt vectorizable/vectorized instructions)\nother   : 43%\n",
        },
        {
          title = "Cycles and memory resources usage",
          txt = "Assuming all data fit into the L1 cache, each iteration of the binary loop takes 32.50 cycles. At this rate:\n - 42% of peak load performance is reached (13.54 out of 32.00 bytes loaded per cycle (GB/s @ 1GHz))\n - 15% of peak store performance is reached (2.46 out of 16.00 bytes stored per cycle (GB/s @ 1GHz))\n",
        },
        {
          title = "Front-end bottlenecks",
          txt = "Found no such bottlenecks.",
        },
        {
          title = "ASM code",
          txt = "In the binary file, the address of the loop is: 1d6f8\n\nInstruction                           | Nb FU | P0   | P1   | P2   | P3   | P4 | P5   | Latency | Recip. throughput\n-------------------------------------------------------------------------------------------------------------------\nLEA 0x28(%RSI),%RCX                   | 1     | 0.50 | 0.50 | 0    | 0    | 0  | 0    | 1       | 0.50\nLEA 0x28(%RAX),%R11                   | 1     | 0.50 | 0.50 | 0    | 0    | 0  | 0    | 1       | 0.50\nCMP %RCX,%RAX                         | 1     | 0.33 | 0.33 | 0    | 0    | 0  | 0.33 | 1       | 0.33\nLEA 0x20(%RSI),%R8                    | 1     | 0.50 | 0.50 | 0    | 0    | 0  | 0    | 1       | 0.50\nSETAE %R9B                            | 1     | 0.50 | 0    | 0    | 0    | 0  | 0.50 | 1       | 0.50\nCMP %R11,%RSI                         | 1     | 0.33 | 0.33 | 0    | 0    | 0  | 0.33 | 1       | 0.33\nLEA -0xc0(%RDX),%RDI                  | 1     | 0.50 | 0.50 | 0    | 0    | 0  | 0    | 1       | 0.50\nSETAE %R10B                           | 1     | 0.50 | 0    | 0    | 0    | 0  | 0.50 | 1       | 0.50\nOR %R10D,%R9D                         | 1     | 0.33 | 0.33 | 0    | 0    | 0  | 0.33 | 1       | 0.33\nCMP %RDI,%R8                          | 1     | 0.33 | 0.33 | 0    | 0    | 0  | 0.33 | 1       | 0.33\nSETBE %CL                             | 1     | 0.50 | 0    | 0    | 0    | 0  | 0.50 | 1       | 0.50\nCMP %RDX,%RSI                         | 1     | 0.33 | 0.33 | 0    | 0    | 0  | 0.33 | 1       | 0.33\nSETAE %R11B                           | 1     | 0.50 | 0    | 0    | 0    | 0  | 0.50 | 1       | 0.50\nOR %R11D,%ECX                         | 1     | 0.33 | 0.33 | 0    | 0    | 0  | 0.33 | 1       | 0.33\nTEST %CL,%R9B                         | 1     | 0.33 | 0.33 | 0    | 0    | 0  | 0.33 | 1       | 0.33\nLEA -0x28(%RAX),%R9                   | 1     | 0.50 | 0.50 | 0    | 0    | 0  | 0    | 1       | 0.50\nJE 1d8ce <z_solve_._omp_fn.0+0x286e>  | 1     | 0    | 0    | 0    | 0    | 0  | 1    | 0       | 1-2\nLEA -0x8(%RAX),%R10                   | 1     | 0.50 | 0.50 | 0    | 0    | 0  | 0    | 1       | 0.50\nCMP %R9,%R8                           | 1     | 0.33 | 0.33 | 0    | 0    | 0  | 0.33 | 1       | 0.33\nSETBE %R8B                            | 1     | 0.50 | 0    | 0    | 0    | 0  | 0.50 | 1       | 0.50\nCMP %R10,%RSI                         | 1     | 0.33 | 0.33 | 0    | 0    | 0  | 0.33 | 1       | 0.33\nSETAE %DIL                            | 1     | 0.50 | 0    | 0    | 0    | 0  | 0.50 | 1       | 0.50\nOR %DIL,%R8B                          | 1     | 0.33 | 0.33 | 0    | 0    | 0  | 0.33 | 1       | 0.33\nJE 1d8ce <z_solve_._omp_fn.0+0x286e>  | 1     | 0    | 0    | 0    | 0    | 0  | 1    | 0       | 1-2\nVMOVSD (%RAX),%XMM12                  | 1     | 0    | 0    | 0.50 | 0.50 | 0  | 0    | 3       | 0.50\nSUB $0x258,%RDX                       | 1     | 0.33 | 0.33 | 0    | 0    | 0  | 0.33 | 1       | 0.33\nVMULSD 0x1b8(%RDX),%XMM12,%XMM3       | 1     | 1    | 0    | 0.50 | 0.50 | 0  | 0    | 5       | 1\nVMOVSD -0x8(%RAX),%XMM0               | 1     | 0    | 0    | 0.50 | 0.50 | 0  | 0    | 3       | 0.50\nVMOVSD 0x8(%RAX),%XMM9                | 1     | 0    | 0    | 0.50 | 0.50 | 0  | 0    | 3       | 0.50\nVMULSD 0x1e0(%RDX),%XMM9,%XMM8        | 1     | 1    | 0    | 0.50 | 0.50 | 0  | 0    | 5       | 1\nVMOVSD 0x10(%RAX),%XMM6               | 1     | 0    | 0    | 0.50 | 0.50 | 0  | 0    | 3       | 0.50\nVSUBSD %XMM3,%XMM0,%XMM11             | 1     | 0    | 1    | 0    | 0    | 0  | 0    | 3       | 1\nVMULSD 0x208(%RDX),%XMM6,%XMM7        | 1     | 1    | 0    | 0.50 | 0.50 | 0  | 0    | 5       | 1\nVMOVSD 0x18(%RAX),%XMM1               | 1     | 0    | 0    | 0.50 | 0.50 | 0  | 0    | 3       | 0.50\nVMULSD 0x230(%RDX),%XMM1,%XMM10       | 1     | 1    | 0    | 0.50 | 0.50 | 0  | 0    | 5       | 1\nVSUBSD %XMM8,%XMM11,%XMM14            | 1     | 0    | 1    | 0    | 0    | 0  | 0    | 3       | 1\nVMOVSD 0x20(%RAX),%XMM4               | 1     | 0    | 0    | 0.50 | 0.50 | 0  | 0    | 3       | 0.50\nVMULSD 0x258(%RDX),%XMM4,%XMM2        | 1     | 1    | 0    | 0.50 | 0.50 | 0  | 0    | 5       | 1\nVSUBSD %XMM7,%XMM14,%XMM15            | 1     | 0    | 1    | 0    | 0    | 0  | 0    | 3       | 1\nVSUBSD %XMM10,%XMM15,%XMM5            | 1     | 0    | 1    | 0    | 0    | 0  | 0    | 3       | 1\nVSUBSD %XMM2,%XMM5,%XMM12             | 1     | 0    | 1    | 0    | 0    | 0  | 0    | 3       | 1\nVMOVSD %XMM12,-0x8(%RAX)              | 1     | 0    | 0    | 0.50 | 0.50 | 1  | 0    | 3       | 1\nMOV %R9,%RAX                          | 1     | 0.33 | 0.33 | 0    | 0    | 0  | 0.33 | 1       | 0.33\nVMOVSD %XMM12,0x20(%RSI)              | 1     | 0    | 0    | 0.50 | 0.50 | 1  | 0    | 3       | 1\nADD %R12,%RSI                         | 1     | 0.33 | 0.33 | 0    | 0    | 0  | 0.33 | 1       | 0.33\nSUB $0x1,%R15D                        | 1     | 0.33 | 0.33 | 0    | 0    | 0  | 0.33 | 1       | 0.33\nJNS 1d6f8 <z_solve_._omp_fn.0+0x2698> | 1     | 0    | 0    | 0    | 0    | 0  | 1    | 0       | 1-2\nVMOVSD (%RAX),%XMM10                  | 1     | 0    | 0    | 0.50 | 0.50 | 0  | 0    | 3       | 0.50\nVMULSD -0xc0(%RDX),%XMM10,%XMM5       | 1     | 1    | 0    | 0.50 | 0.50 | 0  | 0    | 5       | 1\nVMOVSD -0x28(%RAX),%XMM4              | 1     | 0    | 0    | 0.50 | 0.50 | 0  | 0    | 3       | 0.50\nVMOVSD 0x8(%RAX),%XMM12               | 1     | 0    | 0    | 0.50 | 0.50 | 0  | 0    | 3       | 0.50\nVMULSD -0x98(%RDX),%XMM12,%XMM3       | 1     | 1    | 0    | 0.50 | 0.50 | 0  | 0    | 5       | 1\nVMOVSD 0x10(%RAX),%XMM11              | 1     | 0    | 0    | 0.50 | 0.50 | 0  | 0    | 3       | 0.50\nVSUBSD %XMM5,%XMM4,%XMM2              | 1     | 0    | 1    | 0    | 0    | 0  | 0    | 3       | 1\nVMULSD -0x70(%RDX),%XMM11,%XMM9       | 1     | 1    | 0    | 0.50 | 0.50 | 0  | 0    | 5       | 1\nVMOVSD 0x18(%RAX),%XMM1               | 1     | 0    | 0    | 0.50 | 0.50 | 0  | 0    | 3       | 0.50\nVMULSD -0x48(%RDX),%XMM1,%XMM14       | 1     | 1    | 0    | 0.50 | 0.50 | 0  | 0    | 5       | 1\nVSUBSD %XMM3,%XMM2,%XMM0              | 1     | 0    | 1    | 0    | 0    | 0  | 0    | 3       | 1\nVMOVSD 0x20(%RAX),%XMM7               | 1     | 0    | 0    | 0.50 | 0.50 | 0  | 0    | 3       | 0.50\nVMULSD -0x20(%RDX),%XMM7,%XMM15       | 1     | 1    | 0    | 0.50 | 0.50 | 0  | 0    | 5       | 1\nVSUBSD %XMM9,%XMM0,%XMM8              | 1     | 0    | 1    | 0    | 0    | 0  | 0    | 3       | 1\nVSUBSD %XMM14,%XMM8,%XMM6             | 1     | 0    | 1    | 0    | 0    | 0  | 0    | 3       | 1\nVSUBSD %XMM15,%XMM6,%XMM10            | 1     | 0    | 1    | 0    | 0    | 0  | 0    | 3       | 1\nVMOVSD %XMM10,-0x28(%RAX)             | 1     | 0    | 0    | 0.50 | 0.50 | 1  | 0    | 3       | 1\nVMOVSD %XMM10,(%RSI)                  | 1     | 0    | 0    | 0.50 | 0.50 | 1  | 0    | 3       | 1\nVMOVSD (%RAX),%XMM5                   | 1     | 0    | 0    | 0.50 | 0.50 | 0  | 0    | 3       | 0.50\nVMULSD -0xb8(%RDX),%XMM5,%XMM4        | 1     | 1    | 0    | 0.50 | 0.50 | 0  | 0    | 5       | 1\nVMOVSD -0x20(%RAX),%XMM2              | 1     | 0    | 0    | 0.50 | 0.50 | 0  | 0    | 3       | 0.50\nVMOVSD 0x8(%RAX),%XMM3                | 1     | 0    | 0    | 0.50 | 0.50 | 0  | 0    | 3       | 0.50\nVMULSD -0x90(%RDX),%XMM3,%XMM0        | 1     | 1    | 0    | 0.50 | 0.50 | 0  | 0    | 5       | 1\nVMOVSD 0x10(%RAX),%XMM9               | 1     | 0    | 0    | 0.50 | 0.50 | 0  | 0    | 3       | 0.50\nVSUBSD %XMM4,%XMM2,%XMM12             | 1     | 0    | 1    | 0    | 0    | 0  | 0    | 3       | 1\nVMULSD -0x68(%RDX),%XMM9,%XMM8        | 1     | 1    | 0    | 0.50 | 0.50 | 0  | 0    | 5       | 1\nVMOVSD 0x18(%RAX),%XMM1               | 1     | 0    | 0    | 0.50 | 0.50 | 0  | 0    | 3       | 0.50\nVMULSD -0x40(%RDX),%XMM1,%XMM6        | 1     | 1    | 0    | 0.50 | 0.50 | 0  | 0    | 5       | 1\nVSUBSD %XMM0,%XMM12,%XMM11            | 1     | 0    | 1    | 0    | 0    | 0  | 0    | 3       | 1\nVMOVSD 0x20(%RAX),%XMM15              | 1     | 0    | 0    | 0.50 | 0.50 | 0  | 0    | 3       | 0.50\nVMULSD -0x18(%RDX),%XMM15,%XMM10      | 1     | 1    | 0    | 0.50 | 0.50 | 0  | 0    | 5       | 1\nVSUBSD %XMM8,%XMM11,%XMM14            | 1     | 0    | 1    | 0    | 0    | 0  | 0    | 3       | 1\nVSUBSD %XMM6,%XMM14,%XMM7             | 1     | 0    | 1    | 0    | 0    | 0  | 0    | 3       | 1\nVSUBSD %XMM10,%XMM7,%XMM5             | 1     | 0    | 1    | 0    | 0    | 0  | 0    | 3       | 1\nVMOVSD %XMM5,-0x20(%RAX)              | 1     | 0    | 0    | 0.50 | 0.50 | 1  | 0    | 3       | 1\nVMOVSD %XMM5,0x8(%RSI)                | 1     | 0    | 0    | 0.50 | 0.50 | 1  | 0    | 3       | 1\nVMOVSD (%RAX),%XMM4                   | 1     | 0    | 0    | 0.50 | 0.50 | 0  | 0    | 3       | 0.50\nVMULSD -0xb0(%RDX),%XMM4,%XMM2        | 1     | 1    | 0    | 0.50 | 0.50 | 0  | 0    | 5       | 1\nVMOVSD -0x18(%RAX),%XMM12             | 1     | 0    | 0    | 0.50 | 0.50 | 0  | 0    | 3       | 0.50\nVMOVSD 0x8(%RAX),%XMM0                | 1     | 0    | 0    | 0.50 | 0.50 | 0  | 0    | 3       | 0.50\nVMULSD -0x88(%RDX),%XMM0,%XMM11       | 1     | 1    | 0    | 0.50 | 0.50 | 0  | 0    | 5       | 1\nVMOVSD 0x10(%RAX),%XMM8               | 1     | 0    | 0    | 0.50 | 0.50 | 0  | 0    | 3       | 0.50\nVSUBSD %XMM2,%XMM12,%XMM3             | 1     | 0    | 1    | 0    | 0    | 0  | 0    | 3       | 1\nVMULSD -0x60(%RDX),%XMM8,%XMM14       | 1     | 1    | 0    | 0.50 | 0.50 | 0  | 0    | 5       | 1\nVMOVSD 0x18(%RAX),%XMM1               | 1     | 0    | 0    | 0.50 | 0.50 | 0  | 0    | 3       | 0.50\nVMULSD -0x38(%RDX),%XMM1,%XMM7        | 1     | 1    | 0    | 0.50 | 0.50 | 0  | 0    | 5       | 1\nVSUBSD %XMM11,%XMM3,%XMM9             | 1     | 0    | 1    | 0    | 0    | 0  | 0    | 3       | 1\nVMOVSD 0x20(%RAX),%XMM10              | 1     | 0    | 0    | 0.50 | 0.50 | 0  | 0    | 3       | 0.50\nVMULSD -0x10(%RDX),%XMM10,%XMM5       | 1     | 1    | 0    | 0.50 | 0.50 | 0  | 0    | 5       | 1\nVSUBSD %XMM14,%XMM9,%XMM6             | 1     | 0    | 1    | 0    | 0    | 0  | 0    | 3       | 1\nVSUBSD %XMM7,%XMM6,%XMM15             | 1     | 0    | 1    | 0    | 0    | 0  | 0    | 3       | 1\nVSUBSD %XMM5,%XMM15,%XMM4             | 1     | 0    | 1    | 0    | 0    | 0  | 0    | 3       | 1\nVMOVSD %XMM4,-0x18(%RAX)              | 1     | 0    | 0    | 0.50 | 0.50 | 1  | 0    | 3       | 1\nVMOVSD %XMM4,0x10(%RSI)               | 1     | 0    | 0    | 0.50 | 0.50 | 1  | 0    | 3       | 1\nVMOVSD (%RAX),%XMM2                   | 1     | 0    | 0    | 0.50 | 0.50 | 0  | 0    | 3       | 0.50\nVMULSD -0xa8(%RDX),%XMM2,%XMM12       | 1     | 1    | 0    | 0.50 | 0.50 | 0  | 0    | 5       | 1\nVMOVSD -0x10(%RAX),%XMM3              | 1     | 0    | 0    | 0.50 | 0.50 | 0  | 0    | 3       | 0.50\nVMOVSD 0x8(%RAX),%XMM11               | 1     | 0    | 0    | 0.50 | 0.50 | 0  | 0    | 3       | 0.50\nVMULSD -0x80(%RDX),%XMM11,%XMM9       | 1     | 1    | 0    | 0.50 | 0.50 | 0  | 0    | 5       | 1\nVMOVSD 0x10(%RAX),%XMM14              | 1     | 0    | 0    | 0.50 | 0.50 | 0  | 0    | 3       | 0.50\nVSUBSD %XMM12,%XMM3,%XMM0             | 1     | 0    | 1    | 0    | 0    | 0  | 0    | 3       | 1\nVMULSD -0x58(%RDX),%XMM14,%XMM6       | 1     | 1    | 0    | 0.50 | 0.50 | 0  | 0    | 5       | 1\nVMOVSD 0x18(%RAX),%XMM1               | 1     | 0    | 0    | 0.50 | 0.50 | 0  | 0    | 3       | 0.50\nVMULSD -0x30(%RDX),%XMM1,%XMM15       | 1     | 1    | 0    | 0.50 | 0.50 | 0  | 0    | 5       | 1\nVSUBSD %XMM9,%XMM0,%XMM8              | 1     | 0    | 1    | 0    | 0    | 0  | 0    | 3       | 1\nVMOVSD 0x20(%RAX),%XMM5               | 1     | 0    | 0    | 0.50 | 0.50 | 0  | 0    | 3       | 0.50\nVMULSD -0x8(%RDX),%XMM5,%XMM4         | 1     | 1    | 0    | 0.50 | 0.50 | 0  | 0    | 5       | 1\nVSUBSD %XMM6,%XMM8,%XMM7              | 1     | 0    | 1    | 0    | 0    | 0  | 0    | 3       | 1\nVSUBSD %XMM15,%XMM7,%XMM10            | 1     | 0    | 1    | 0    | 0    | 0  | 0    | 3       | 1\nVSUBSD %XMM4,%XMM10,%XMM2             | 1     | 0    | 1    | 0    | 0    | 0  | 0    | 3       | 1\nVMOVSD %XMM2,-0x10(%RAX)              | 1     | 0    | 0    | 0.50 | 0.50 | 1  | 0    | 3       | 1\nVMOVSD %XMM2,0x18(%RSI)               | 1     | 0    | 0    | 0.50 | 0.50 | 1  | 0    | 3       | 1\nJMP 1d808 <z_solve_._omp_fn.0+0x27a8> | 1     | 0    | 0    | 0    | 0    | 0  | 1    | 0       | 2\n",
        },
      },
      header = {
        "19% of peak computational performance is used (1.54 out of 8.00 FLOP per cycle (GFLOPS @ 1GHz))",
      },
      brief = {
      },
      gain = {
        {
          workaround = " - Try another compiler or update/tune your current one:\n  * recompile with fassociative-math (included in Ofast or ffast-math) to extend loop vectorization to FP reductions.\n - Remove inter-iterations dependences from your loop and make it unit-stride:\n  * If your arrays have 2 or more dimensions, check whether elements are accessed contiguously and, otherwise, try to permute loops accordingly:\nFortran storage order is column-major: do i do j a(i,j) = b(i,j) (slow, non stride 1) => do i do j a(j,i) = b(i,j) (fast, stride 1)\n  * If your loop streams arrays of structures (AoS), try to use structures of arrays instead (SoA):\ndo i a(i)%x = b(i)%x (slow, non stride 1) => do i a%x(i) = b%x(i) (fast, stride 1)\n",
          details = "All SSE/AVX instructions are used in scalar version (process only one data element in vector registers).\nSince your execution units are vector units, only a vectorized loop can use their full power.\n",
          title = "Vectorization",
          txt = "Your loop is not vectorized.\nOnly 26% of vector register length is used (average across all SSE/AVX instructions).\nBy vectorizing your loop, you can lower the cost of an iteration from 32.50 to 13.75 cycles (2.36x speedup).",
        },
        {
          workaround = " - Read less array elements\n - Write less array elements\n - Provide more information to your compiler:\n  * hardcode the bounds of the corresponding 'for' loop\n",
          title = "Execution units bottlenecks",
          txt = "Performance is limited by:\n - reading data from caches/RAM (load units are a bottleneck)\n - writing data to caches/RAM (the store unit is a bottleneck)\n\nBy removing all these bottlenecks, you can lower the cost of an iteration from 32.50 to 30.00 cycles (1.08x speedup).\n",
        },
      },
      potential = {
      },
    },
  },
  AVG = {
      hint = {
        {
          title = "Type of elements and instruction set",
          txt = "36 SSE or AVX instructions are processing arithmetic or math operations on double precision FP elements in scalar mode (one at a time).\n3 AVX instructions are processing arithmetic or math operations on double precision FP elements in vector mode (four at a time).\n",
        },
        {
          title = "Matching between your loop (in the source code) and the binary loop",
          txt = "The binary loop is composed of 50 FP arithmetical operations:\n - 25: addition or subtraction\n - 25: multiply\nThe binary loop is loading 400 bytes (50 double precision FP elements).\nThe binary loop is storing 80 bytes (10 double precision FP elements).",
        },
        {
          title = "Arithmetic intensity",
          txt = "Arithmetic intensity is 0.10 FP operations per loaded or stored byte.",
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
          txt = "nb instructions    : 103.67\nnb uops            : 108\nloop length        : 514.33\nused x86 registers : 11\nused mmx registers : 0\nused xmm registers : 15\nused ymm registers : 5\nused zmm registers : 0\nnb stack references: 0\nADD-SUB / MUL ratio: 1.00\n",
        },
        {
          title = "Front-end",
          txt = "MACRO FUSION NOT POSSIBLE\nmicro-operation queue: 27.00 cycles\nfront end            : 27.00 cycles\n",
        },
        {
          title = "Back-end",
          txt = "       | P0    | P1    | P2    | P3    | P4   | P5\n-----------------------------------------------------\nuops   | 25.17 | 25.22 | 27.33 | 27.33 | 8.67 | 20.61\ncycles | 25.17 | 25.22 | 27.33 | 27.33 | 8.67 | 20.61\n\nCycles executing div or sqrt instructions: NA\nLongest recurrence chain latency (RecMII): 1.00\n",
        },
        {
          title = "Cycles summary",
          txt = "Front-end : 27.00\nDispatch  : 28.39\nData deps.: 1.00\nOverall L1: 29.25\n",
        },
        {
          title = "Vectorization ratios",
          txt = "INT\nall    : 0%\nload   : NA (no load vectorizable/vectorized instructions)\nstore  : NA (no store vectorizable/vectorized instructions)\nmul    : NA (no mul vectorizable/vectorized instructions)\nadd-sub: NA (no add-sub vectorizable/vectorized instructions)\nfma    : NA (no fma vectorizable/vectorized instructions)\nother  : 0%\nFP\nall     : 17%\nload    : 14%\nstore   : 22%\nmul     : 16%\nadd-sub : 16%\nfma     : NA (no fma vectorizable/vectorized instructions)\ndiv/sqrt: NA (no div/sqrt vectorizable/vectorized instructions)\nother   : 54%\nINT+FP\nall     : 15%\nload    : 14%\nstore   : 22%\nmul     : 16%\nadd-sub : 16%\nfma     : NA (no fma vectorizable/vectorized instructions)\ndiv/sqrt: NA (no div/sqrt vectorizable/vectorized instructions)\nother   : 10%\n",
        },
        {
          title = "Vector efficiency ratios",
          txt = "INT\nall    : 43%\nload   : NA (no load vectorizable/vectorized instructions)\nstore  : NA (no store vectorizable/vectorized instructions)\nmul    : NA (no mul vectorizable/vectorized instructions)\nadd-sub: NA (no add-sub vectorizable/vectorized instructions)\nfma    : NA (no fma vectorizable/vectorized instructions)\nother  : 43%\nFP\nall     : 32%\nload    : 28%\nstore   : 30%\nmul     : 37%\nadd-sub : 37%\nfma     : NA (no fma vectorizable/vectorized instructions)\ndiv/sqrt: NA (no div/sqrt vectorizable/vectorized instructions)\nother   : 38%\nINT+FP\nall     : 33%\nload    : 28%\nstore   : 30%\nmul     : 37%\nadd-sub : 37%\nfma     : NA (no fma vectorizable/vectorized instructions)\ndiv/sqrt: NA (no div/sqrt vectorizable/vectorized instructions)\nother   : 42%\n",
        },
        {
          title = "Cycles and memory resources usage",
          txt = "Assuming all data fit into the L1 cache, each iteration of the binary loop takes 29.25 cycles. At this rate:\n - 42% of peak load performance is reached (13.71 out of 32.00 bytes loaded per cycle (GB/s @ 1GHz))\n - 17% of peak store performance is reached (2.81 out of 16.00 bytes stored per cycle (GB/s @ 1GHz))\n",
        },
      },
      header = {
        "21% of peak computational performance is used (1.76 out of 8.00 FLOP per cycle (GFLOPS @ 1GHz))",
      },
      brief = {
      },
      gain = {
        {
          workaround = " - Try another compiler or update/tune your current one:\n  * recompile with fassociative-math (included in Ofast or ffast-math) to extend loop vectorization to FP reductions.\n - Remove inter-iterations dependences from your loop and make it unit-stride:\n  * If your arrays have 2 or more dimensions, check whether elements are accessed contiguously and, otherwise, try to permute loops accordingly:\nFortran storage order is column-major: do i do j a(i,j) = b(i,j) (slow, non stride 1) => do i do j a(j,i) = b(i,j) (fast, stride 1)\n  * If your loop streams arrays of structures (AoS), try to use structures of arrays instead (SoA):\ndo i a(i)%x = b(i)%x (slow, non stride 1) => do i a%x(i) = b%x(i) (fast, stride 1)\n",
          details = "15% of SSE/AVX instructions are used in vector version (process two or more data elements in vector registers):\n - 14% of SSE/AVX loads are used in vector version.\n - 22% of SSE/AVX stores are used in vector version.\n - 16% of SSE/AVX addition or subtraction instructions are used in vector version.\n - 16% of SSE/AVX multiply instructions are used in vector version.\n - 10% of SSE/AVX instructions that are not load, store, addition, subtraction nor multiply instructions are used in vector version.\nSince your execution units are vector units, only a fully vectorized loop can use their full power.\n",
          title = "Vectorization",
          txt = "Your loop is not vectorized.\nOnly 33% of vector register length is used (average across all SSE/AVX instructions).\nBy fully vectorizing your loop, you can lower the cost of an iteration from 29.25 to 13.86 cycles (2.11x speedup).",
        },
      },
      potential = {
      },
    },
  common = {
    header = {
      "The loop is defined in /users/user2210/NPB3.4-MZ-MPI/BT-MZ/z_solve.f90:414-420.\n",
      "The related source loop is not unrolled or unrolled with no peel/tail loop.",
      "This loop has 3 execution paths.\n",
      "The presence of multiple execution paths is typically the main/first bottleneck.\nTry to simplify control inside loop: ideally, try to remove all conditional expressions, for example by (if applicable):\n - hoisting them (moving them outside the loop)\n - turning them into conditional moves, MIN or MAX\n\n",
      "Ex: if (x<0) x=0 => x = max(0,x) (Fortran instrinsic procedure)\n",
    },
    nb_paths = 3,
  },
}
