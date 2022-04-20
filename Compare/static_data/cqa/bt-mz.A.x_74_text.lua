_cqa_text_report = {
  paths = {
    {
      hint = {
        {
          details = "These instructions generate more than one micro-operation and only one of them can be decoded during a cycle and the extra micro-operations increase pressure on execution units.\n - ADD: 1 occurrences\n",
          title = "Complex instructions",
          txt = "Detected COMPLEX INSTRUCTIONS.\n",
        },
        {
          title = "Type of elements and instruction set",
          txt = "12 SSE or AVX instructions are processing arithmetic or math operations on double precision FP elements in scalar mode (one at a time).\n",
        },
        {
          title = "Matching between your loop (in the source code) and the binary loop",
          txt = "The binary loop is composed of 12 FP arithmetical operations:\n - 2: addition or subtraction\n - 9: multiply\n - 1: divide\nThe binary loop is loading 296 bytes (37 double precision FP elements).\nThe binary loop is storing 52 bytes (6 double precision FP elements).",
        },
        {
          title = "Arithmetic intensity",
          txt = "Arithmetic intensity is 0.03 FP operations per loaded or stored byte.",
        },
      },
      expert = {
        {
          title = "General properties",
          txt = "nb instructions    : 96\nnb uops            : 97\nloop length        : 521\nused x86 registers : 15\nused mmx registers : 0\nused xmm registers : 16\nused ymm registers : 0\nused zmm registers : 0\nnb stack references: 31\nADD-SUB / MUL ratio: 0.22\n",
        },
        {
          title = "Front-end",
          txt = "MACRO FUSION NOT POSSIBLE\nFIT IN UOP CACHE\nmicro-operation queue: 24.25 cycles\nfront end            : 24.25 cycles\n",
        },
        {
          title = "Back-end",
          txt = "       | P0    | P1    | P2    | P3    | P4   | P5\n-----------------------------------------------------\nuops   | 21.00 | 21.00 | 23.00 | 23.00 | 7.00 | 21.00\ncycles | 21.00 | 21.00 | 23.00 | 23.00 | 7.00 | 21.00\n\nCycles executing div or sqrt instructions: 10.00-22.00\n",
        },
        {
          title = "Cycles summary",
          txt = "Front-end : 24.25\nDispatch  : 23.00\nDIV/SQRT  : 10.00-22.00\nOverall L1: 24.25\n",
        },
        {
          title = "Vectorization ratios",
          txt = "INT\nall    : 0%\nload   : 0%\nstore  : NA (no store vectorizable/vectorized instructions)\nmul    : NA (no mul vectorizable/vectorized instructions)\nadd-sub: 0%\nfma    : NA (no fma vectorizable/vectorized instructions)\nother  : 0%\nFP\nall     : 0%\nload    : 0%\nstore   : 0%\nmul     : 0%\nadd-sub : 0%\nfma     : NA (no fma vectorizable/vectorized instructions)\ndiv/sqrt: 0%\nother   : NA (no other vectorizable/vectorized instructions)\nINT+FP\nall     : 0%\nload    : 0%\nstore   : 0%\nmul     : 0%\nadd-sub : 0%\nfma     : NA (no fma vectorizable/vectorized instructions)\ndiv/sqrt: 0%\nother   : 0%\n",
        },
        {
          title = "Vector efficiency ratios",
          txt = "INT\nall    : 32%\nload   : 33%\nstore  : NA (no store vectorizable/vectorized instructions)\nmul    : NA (no mul vectorizable/vectorized instructions)\nadd-sub: 25%\nfma    : NA (no fma vectorizable/vectorized instructions)\nother  : 31%\nFP\nall     : 25%\nload    : 25%\nstore   : 25%\nmul     : 25%\nadd-sub : 25%\nfma     : NA (no fma vectorizable/vectorized instructions)\ndiv/sqrt: 25%\nother   : NA (no other vectorizable/vectorized instructions)\nINT+FP\nall     : 26%\nload    : 27%\nstore   : 25%\nmul     : 25%\nadd-sub : 25%\nfma     : NA (no fma vectorizable/vectorized instructions)\ndiv/sqrt: 25%\nother   : 31%\n",
        },
        {
          title = "Cycles and memory resources usage",
          txt = "Assuming all data fit into the L1 cache, each iteration of the binary loop takes 24.25 cycles. At this rate:\n - 38% of peak load performance is reached (12.21 out of 32.00 bytes loaded per cycle (GB/s @ 1GHz))\n - 13% of peak store performance is reached (2.14 out of 16.00 bytes stored per cycle (GB/s @ 1GHz))\n",
        },
        {
          title = "Front-end bottlenecks",
          txt = "Performance is limited by instruction throughput (loading/decoding program instructions to execution core) (front-end is a bottleneck).\n\nBy removing all these bottlenecks, you can lower the cost of an iteration from 24.25 to 23.00 cycles (1.05x speedup).\n",
        },
        {
          title = "ASM code",
          txt = "In the binary file, the address of the loop is: c638\n\nInstruction                               | Nb FU | P0   | P1   | P2   | P3   | P4 | P5   | Latency | Recip. throughput\n-----------------------------------------------------------------------------------------------------------------------\nMOV 0x1d8(%RSP),%R8                       | 1     | 0    | 0    | 0.50 | 0.50 | 0  | 0    | 2       | 0.50\nMOVSXD %R14D,%RDX                         | 1     | 0.33 | 0.33 | 0    | 0    | 0  | 0.33 | 1       | 0.33\nMOV 0x1d0(%RSP),%R10                      | 1     | 0    | 0    | 0.50 | 0.50 | 0  | 0    | 2       | 0.50\nMOV 0x188(%RSP),%RDI                      | 1     | 0    | 0    | 0.50 | 0.50 | 0  | 0    | 2       | 0.50\nMOV 0x180(%RSP),%RCX                      | 1     | 0    | 0    | 0.50 | 0.50 | 0  | 0    | 2       | 0.50\nIMUL %R12,%R8                             | 1     | 0    | 1    | 0    | 0    | 0  | 0    | 3       | 1\nMOV 0x1a0(%RSP),%R9                       | 1     | 0    | 0    | 0.50 | 0.50 | 0  | 0    | 2       | 0.50\nIMUL %RDX,%R10                            | 1     | 0    | 1    | 0    | 0    | 0  | 0    | 3       | 1\nADD 0x1e0(%RSP),%R8                       | 1     | 0.33 | 0.33 | 0.50 | 0.50 | 0  | 0.33 | 1       | 0.50\nMOV 0x218(%RSP),%RBX                      | 1     | 0    | 0    | 0.50 | 0.50 | 0  | 0    | 2       | 0.50\nIMUL %RDX,%RCX                            | 1     | 0    | 1    | 0    | 0    | 0  | 0    | 3       | 1\nMOV 0x210(%RSP),%RSI                      | 1     | 0    | 0    | 0.50 | 0.50 | 0  | 0    | 2       | 0.50\nIMUL %R12,%RDI                            | 1     | 0    | 1    | 0    | 0    | 0  | 0    | 3       | 1\nADD 0x190(%RSP),%RDI                      | 1     | 0.33 | 0.33 | 0.50 | 0.50 | 0  | 0.33 | 1       | 0.50\nIMUL %R12,%R9                             | 1     | 0    | 1    | 0    | 0    | 0  | 0    | 3       | 1\nADD 0x128(%RSP),%R9                       | 1     | 0.33 | 0.33 | 0.50 | 0.50 | 0  | 0.33 | 1       | 0.50\nLEA 0x1(%R8,%R10,1),%R11                  | 1     | 0    | 1    | 0    | 0    | 0  | 0    | 3       | 1\nMOV 0x198(%RSP),%R8                       | 1     | 0    | 0    | 0.50 | 0.50 | 0  | 0    | 2       | 0.50\nMOV 0x208(%RSP),%R10                      | 1     | 0    | 0    | 0.50 | 0.50 | 0  | 0    | 2       | 0.50\nLEA (%RBX,%R11,8),%RAX                    | 1     | 0.50 | 0.50 | 0    | 0    | 0  | 0    | 1       | 0.50\nADD %RCX,%RDI                             | 1     | 0.33 | 0.33 | 0    | 0    | 0  | 0.33 | 1       | 0.33\nLEA (%RSI,%RDI,8),%RBX                    | 1     | 0.50 | 0.50 | 0    | 0    | 0  | 0    | 1       | 0.50\nMOV 0x1b0(%RSP),%RCX                      | 1     | 0    | 0    | 0.50 | 0.50 | 0  | 0    | 2       | 0.50\nMOV 0x1a8(%RSP),%RDI                      | 1     | 0    | 0    | 0.50 | 0.50 | 0  | 0    | 2       | 0.50\nIMUL %RDX,%R8                             | 1     | 0    | 1    | 0    | 0    | 0  | 0    | 3       | 1\nMOV 0x200(%RSP),%RSI                      | 1     | 0    | 0    | 0.50 | 0.50 | 0  | 0    | 2       | 0.50\nIMUL %R12,%RCX                            | 1     | 0    | 1    | 0    | 0    | 0  | 0    | 3       | 1\nIMUL %RDX,%RDI                            | 1     | 0    | 1    | 0    | 0    | 0  | 0    | 3       | 1\nADD 0x130(%RSP),%RCX                      | 1     | 0.33 | 0.33 | 0.50 | 0.50 | 0  | 0.33 | 1       | 0.50\nADD %R8,%R9                               | 1     | 0.33 | 0.33 | 0    | 0    | 0  | 0.33 | 1       | 0.33\nMOV 0x1b8(%RSP),%R8                       | 1     | 0    | 0    | 0.50 | 0.50 | 0  | 0    | 2       | 0.50\nLEA (%R10,%R9,8),%R11                     | 1     | 0.50 | 0.50 | 0    | 0    | 0  | 0    | 1       | 0.50\nMOV 0x1c0(%RSP),%R9                       | 1     | 0    | 0    | 0.50 | 0.50 | 0  | 0    | 2       | 0.50\nADD %RDI,%RCX                             | 1     | 0.33 | 0.33 | 0    | 0    | 0  | 0.33 | 1       | 0.33\nMOV 0x148(%RSP),%RDI                      | 1     | 0    | 0    | 0.50 | 0.50 | 0  | 0    | 2       | 0.50\nIMUL %RDX,%R8                             | 1     | 0    | 1    | 0    | 0    | 0  | 0    | 3       | 1\nIMUL %R12,%R9                             | 1     | 0    | 1    | 0    | 0    | 0  | 0    | 3       | 1\nADD 0x138(%RSP),%R9                       | 1     | 0.33 | 0.33 | 0.50 | 0.50 | 0  | 0.33 | 1       | 0.50\nLEA (%RSI,%RCX,8),%R10                    | 1     | 0.50 | 0.50 | 0    | 0    | 0  | 0    | 1       | 0.50\nMOV 0x1f8(%RSP),%RCX                      | 1     | 0    | 0    | 0.50 | 0.50 | 0  | 0    | 2       | 0.50\nIMUL %RDX,%RDI                            | 1     | 0    | 1    | 0    | 0    | 0  | 0    | 3       | 1\nMOV 0x1f0(%RSP),%RSI                      | 1     | 0    | 0    | 0.50 | 0.50 | 0  | 0    | 2       | 0.50\nIMUL 0x168(%RSP),%RDX                     | 1     | 0    | 1    | 0.50 | 0.50 | 0  | 0    | 3       | 1\nADD %R8,%R9                               | 1     | 0.33 | 0.33 | 0    | 0    | 0  | 0.33 | 1       | 0.33\nMOV 0x150(%RSP),%R8                       | 1     | 0    | 0    | 0.50 | 0.50 | 0  | 0    | 2       | 0.50\nLEA (%RCX,%R9,8),%R9                      | 1     | 0.50 | 0.50 | 0    | 0    | 0  | 0    | 1       | 0.50\nMOV 0x170(%RSP),%RCX                      | 1     | 0    | 0    | 0.50 | 0.50 | 0  | 0    | 2       | 0.50\nIMUL %R12,%R8                             | 1     | 0    | 1    | 0    | 0    | 0  | 0    | 3       | 1\nADD 0x120(%RSP),%R8                       | 1     | 0.33 | 0.33 | 0.50 | 0.50 | 0  | 0.33 | 1       | 0.50\nIMUL %R12,%RCX                            | 1     | 0    | 1    | 0    | 0    | 0  | 0    | 3       | 1\nADD 0x178(%RSP),%RCX                      | 1     | 0.33 | 0.33 | 0.50 | 0.50 | 0  | 0.33 | 1       | 0.50\nADD %RDI,%R8                              | 1     | 0.33 | 0.33 | 0    | 0    | 0  | 0.33 | 1       | 0.33\nMOV 0x1e8(%RSP),%RDI                      | 1     | 0    | 0    | 0.50 | 0.50 | 0  | 0    | 2       | 0.50\nLEA (%RSI,%R8,8),%R8                      | 1     | 0.50 | 0.50 | 0    | 0    | 0  | 0    | 1       | 0.50\nADD %RCX,%RDX                             | 1     | 0.33 | 0.33 | 0    | 0    | 0  | 0.33 | 1       | 0.33\nLEA (%RDI,%RDX,8),%RSI                    | 1     | 0.50 | 0.50 | 0    | 0    | 0  | 0    | 1       | 0.50\nXOR %EDX,%EDX                             | 1     | 0    | 0    | 0    | 0    | 0  | 0    | 0       | 0.25\nTEST $0x1,%R13B                           | 1     | 0.33 | 0.33 | 0    | 0    | 0  | 0.33 | 1       | 0.33\nJNE c800 <compute_rhs_._omp_fn.0+0x4b0>   | 1     | 0    | 0    | 0    | 0    | 0  | 1    | 0       | 1-2\nVDIVSD (%RAX),%XMM4,%XMM1                 | 1     | 1    | 0    | 0.50 | 0.50 | 0  | 0    | 10-22   | 10-22\nVMOVSD %XMM1,(%RBX)                       | 1     | 0    | 0    | 0.50 | 0.50 | 1  | 0    | 3       | 1\nVMULSD 0x8(%RAX),%XMM1,%XMM0              | 1     | 1    | 0    | 0.50 | 0.50 | 0  | 0    | 5       | 1\nADD $0x28,%RAX                            | 1     | 0.33 | 0.33 | 0    | 0    | 0  | 0.33 | 1       | 0.33\nMOV $0x1,%EDX                             | 1     | 0.33 | 0.33 | 0    | 0    | 0  | 0.33 | 1       | 0.33\nVMOVSD %XMM0,(%R11)                       | 1     | 0    | 0    | 0.50 | 0.50 | 1  | 0    | 3       | 1\nVMULSD -0x18(%RAX),%XMM1,%XMM2            | 1     | 1    | 0    | 0.50 | 0.50 | 0  | 0    | 5       | 1\nVMOVSD %XMM2,(%R10)                       | 1     | 0    | 0    | 0.50 | 0.50 | 1  | 0    | 3       | 1\nVMULSD -0x10(%RAX),%XMM1,%XMM5            | 1     | 1    | 0    | 0.50 | 0.50 | 0  | 0    | 5       | 1\nVMOVSD %XMM5,(%R9)                        | 1     | 0    | 0    | 0.50 | 0.50 | 1  | 0    | 3       | 1\nVMOVSD -0x20(%RAX),%XMM6                  | 1     | 0    | 0    | 0.50 | 0.50 | 0  | 0    | 3       | 0.50\nVMOVSD -0x18(%RAX),%XMM7                  | 1     | 0    | 0    | 0.50 | 0.50 | 0  | 0    | 3       | 0.50\nVMULSD %XMM6,%XMM6,%XMM9                  | 1     | 1    | 0    | 0    | 0    | 0  | 0    | 5       | 1\nVMOVSD -0x10(%RAX),%XMM8                  | 1     | 0    | 0    | 0.50 | 0.50 | 0  | 0    | 3       | 0.50\nVMULSD %XMM7,%XMM7,%XMM10                 | 1     | 1    | 0    | 0    | 0    | 0  | 0    | 5       | 1\nVMULSD %XMM8,%XMM8,%XMM12                 | 1     | 1    | 0    | 0    | 0    | 0  | 0    | 5       | 1\nVADDSD %XMM10,%XMM9,%XMM11                | 1     | 0    | 1    | 0    | 0    | 0  | 0    | 3       | 1\nVADDSD %XMM12,%XMM11,%XMM13               | 1     | 0    | 1    | 0    | 0    | 0  | 0    | 3       | 1\nVMULSD %XMM3,%XMM13,%XMM14                | 1     | 1    | 0    | 0    | 0    | 0  | 0    | 5       | 1\nVMULSD %XMM1,%XMM14,%XMM15                | 1     | 1    | 0    | 0    | 0    | 0  | 0    | 5       | 1\nVMULSD %XMM15,%XMM1,%XMM1                 | 1     | 1    | 0    | 0    | 0    | 0  | 0    | 5       | 1\nVMOVSD %XMM15,(%R8)                       | 1     | 0    | 0    | 0.50 | 0.50 | 1  | 0    | 3       | 1\nVMOVSD %XMM1,(%RSI)                       | 1     | 0    | 0    | 0.50 | 0.50 | 1  | 0    | 3       | 1\nTEST %R13,%R13                            | 1     | 0.33 | 0.33 | 0    | 0    | 0  | 0.33 | 1       | 0.33\nJE c8e7 <compute_rhs_._omp_fn.0+0x597>    | 1     | 0    | 0    | 0    | 0    | 0  | 1    | 0       | 1-2\nNOP                                       | 1     | 0    | 0    | 0    | 0    | 0  | 0    | 0       | 0.25\nCMP %R15D,0x140(%RSP)                     | 1     | 0.33 | 0.33 | 0.50 | 0.50 | 0  | 0.33 | 1       | 0.50\nJE 1010a <compute_rhs_._omp_fn.0+0x3dba>  | 1     | 0    | 0    | 0    | 0    | 0  | 1    | 0       | 1-2\nADD $0x1,%R14D                            | 1     | 0.33 | 0.33 | 0    | 0    | 0  | 0.33 | 1       | 0.33\nCMP %R14D,0x238(%RSP)                     | 1     | 0.33 | 0.33 | 0.50 | 0.50 | 0  | 0.33 | 1       | 0.50\nJLE 10a21 <compute_rhs_._omp_fn.0+0x46d1> | 1     | 0    | 0    | 0    | 0    | 0  | 1    | 0       | 1-2\nADD $0x1,%R15D                            | 1     | 0.33 | 0.33 | 0    | 0    | 0  | 0.33 | 1       | 0.33\nJMP c638 <compute_rhs_._omp_fn.0+0x2e8>   | 1     | 0    | 0    | 0    | 0    | 0  | 1    | 0       | 2\nADDL $0x1,0x108(%RSP)                     | 2     | 0.33 | 0.33 | 1    | 1    | 1  | 0.33 | 6       | 1\nXOR %R14D,%R14D                           | 1     | 0    | 0    | 0    | 0    | 0  | 0    | 0       | 0.25\nMOVSXD 0x108(%RSP),%R12                   | 1     | 0    | 0    | 0.50 | 0.50 | 0  | 0    | 1       | 0.50\nJMP c907 <compute_rhs_._omp_fn.0+0x5b7>   | 1     | 0    | 0    | 0    | 0    | 0  | 1    | 0       | 2\n",
        },
      },
      header = {
        "6% of peak computational performance is used (0.49 out of 8.00 FLOP per cycle (GFLOPS @ 1GHz))",
      },
      brief = {
      },
      gain = {
        {
          workaround = " - Try to reorganize arrays of structures to structures of arrays\n - Consider to permute loops (see vectorization gain report)\n - To reference allocatable arrays, use \"allocatable\" instead of \"pointer\" pointers or qualify them with the \"contiguous\" attribute (Fortran 2008)\n - For structures, limit to one indirection. For example, use a_b%c instead of a%b%c with a_b set to a%b before this loop\n",
          title = "Code clean check",
          txt = "Detected a slowdown caused by scalar integer instructions (typically used for address computation).\nBy removing them, you can lower the cost of an iteration from 24.25 to 22.00 cycles (1.10x speedup).",
        },
        {
          workaround = " - Try another compiler or update/tune your current one:\n  * recompile with fassociative-math (included in Ofast or ffast-math) to extend loop vectorization to FP reductions.\n - Remove inter-iterations dependences from your loop and make it unit-stride:\n  * If your arrays have 2 or more dimensions, check whether elements are accessed contiguously and, otherwise, try to permute loops accordingly:\nFortran storage order is column-major: do i do j a(i,j) = b(i,j) (slow, non stride 1) => do i do j a(j,i) = b(i,j) (fast, stride 1)\n  * If your loop streams arrays of structures (AoS), try to use structures of arrays instead (SoA):\ndo i a(i)%x = b(i)%x (slow, non stride 1) => do i a%x(i) = b%x(i) (fast, stride 1)\n",
          details = "All SSE/AVX instructions are used in scalar version (process only one data element in vector registers).\nSince your execution units are vector units, only a vectorized loop can use their full power.\n",
          title = "Vectorization",
          txt = "Your loop is not vectorized.\nOnly 26% of vector register length is used (average across all SSE/AVX instructions).\nBy vectorizing your loop, you can lower the cost of an iteration from 24.25 to 11.00 cycles (2.20x speedup).",
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
          details = "These instructions generate more than one micro-operation and only one of them can be decoded during a cycle and the extra micro-operations increase pressure on execution units.\n - ADD: 1 occurrences\n",
          title = "Complex instructions",
          txt = "Detected COMPLEX INSTRUCTIONS.\n",
        },
        {
          title = "Type of elements and instruction set",
          txt = "12 SSE or AVX instructions are processing arithmetic or math operations on double precision FP elements in scalar mode (one at a time).\n",
        },
        {
          title = "Matching between your loop (in the source code) and the binary loop",
          txt = "The binary loop is composed of 12 FP arithmetical operations:\n - 2: addition or subtraction\n - 9: multiply\n - 1: divide\nThe binary loop is loading 296 bytes (37 double precision FP elements).\nThe binary loop is storing 52 bytes (6 double precision FP elements).",
        },
        {
          title = "Arithmetic intensity",
          txt = "Arithmetic intensity is 0.03 FP operations per loaded or stored byte.",
        },
      },
      expert = {
        {
          title = "General properties",
          txt = "nb instructions    : 96\nnb uops            : 97\nloop length        : 521\nused x86 registers : 15\nused mmx registers : 0\nused xmm registers : 16\nused ymm registers : 0\nused zmm registers : 0\nnb stack references: 31\nADD-SUB / MUL ratio: 0.22\n",
        },
        {
          title = "Front-end",
          txt = "MACRO FUSION NOT POSSIBLE\nFIT IN UOP CACHE\nmicro-operation queue: 24.25 cycles\nfront end            : 24.25 cycles\n",
        },
        {
          title = "Back-end",
          txt = "       | P0    | P1    | P2    | P3    | P4   | P5\n-----------------------------------------------------\nuops   | 21.00 | 21.00 | 23.00 | 23.00 | 7.00 | 21.00\ncycles | 21.00 | 21.00 | 23.00 | 23.00 | 7.00 | 21.00\n\nCycles executing div or sqrt instructions: 10.00-22.00\n",
        },
        {
          title = "Cycles summary",
          txt = "Front-end : 24.25\nDispatch  : 23.00\nDIV/SQRT  : 10.00-22.00\nOverall L1: 24.25\n",
        },
        {
          title = "Vectorization ratios",
          txt = "INT\nall    : 0%\nload   : 0%\nstore  : NA (no store vectorizable/vectorized instructions)\nmul    : NA (no mul vectorizable/vectorized instructions)\nadd-sub: 0%\nfma    : NA (no fma vectorizable/vectorized instructions)\nother  : 0%\nFP\nall     : 0%\nload    : 0%\nstore   : 0%\nmul     : 0%\nadd-sub : 0%\nfma     : NA (no fma vectorizable/vectorized instructions)\ndiv/sqrt: 0%\nother   : NA (no other vectorizable/vectorized instructions)\nINT+FP\nall     : 0%\nload    : 0%\nstore   : 0%\nmul     : 0%\nadd-sub : 0%\nfma     : NA (no fma vectorizable/vectorized instructions)\ndiv/sqrt: 0%\nother   : 0%\n",
        },
        {
          title = "Vector efficiency ratios",
          txt = "INT\nall    : 32%\nload   : 33%\nstore  : NA (no store vectorizable/vectorized instructions)\nmul    : NA (no mul vectorizable/vectorized instructions)\nadd-sub: 25%\nfma    : NA (no fma vectorizable/vectorized instructions)\nother  : 31%\nFP\nall     : 25%\nload    : 25%\nstore   : 25%\nmul     : 25%\nadd-sub : 25%\nfma     : NA (no fma vectorizable/vectorized instructions)\ndiv/sqrt: 25%\nother   : NA (no other vectorizable/vectorized instructions)\nINT+FP\nall     : 26%\nload    : 27%\nstore   : 25%\nmul     : 25%\nadd-sub : 25%\nfma     : NA (no fma vectorizable/vectorized instructions)\ndiv/sqrt: 25%\nother   : 31%\n",
        },
        {
          title = "Cycles and memory resources usage",
          txt = "Assuming all data fit into the L1 cache, each iteration of the binary loop takes 24.25 cycles. At this rate:\n - 38% of peak load performance is reached (12.21 out of 32.00 bytes loaded per cycle (GB/s @ 1GHz))\n - 13% of peak store performance is reached (2.14 out of 16.00 bytes stored per cycle (GB/s @ 1GHz))\n",
        },
        {
          title = "Front-end bottlenecks",
          txt = "Performance is limited by instruction throughput (loading/decoding program instructions to execution core) (front-end is a bottleneck).\n\nBy removing all these bottlenecks, you can lower the cost of an iteration from 24.25 to 23.00 cycles (1.05x speedup).\n",
        },
        {
          title = "ASM code",
          txt = "In the binary file, the address of the loop is: c638\n\nInstruction                               | Nb FU | P0   | P1   | P2   | P3   | P4 | P5   | Latency | Recip. throughput\n-----------------------------------------------------------------------------------------------------------------------\nMOV 0x1d8(%RSP),%R8                       | 1     | 0    | 0    | 0.50 | 0.50 | 0  | 0    | 2       | 0.50\nMOVSXD %R14D,%RDX                         | 1     | 0.33 | 0.33 | 0    | 0    | 0  | 0.33 | 1       | 0.33\nMOV 0x1d0(%RSP),%R10                      | 1     | 0    | 0    | 0.50 | 0.50 | 0  | 0    | 2       | 0.50\nMOV 0x188(%RSP),%RDI                      | 1     | 0    | 0    | 0.50 | 0.50 | 0  | 0    | 2       | 0.50\nMOV 0x180(%RSP),%RCX                      | 1     | 0    | 0    | 0.50 | 0.50 | 0  | 0    | 2       | 0.50\nIMUL %R12,%R8                             | 1     | 0    | 1    | 0    | 0    | 0  | 0    | 3       | 1\nMOV 0x1a0(%RSP),%R9                       | 1     | 0    | 0    | 0.50 | 0.50 | 0  | 0    | 2       | 0.50\nIMUL %RDX,%R10                            | 1     | 0    | 1    | 0    | 0    | 0  | 0    | 3       | 1\nADD 0x1e0(%RSP),%R8                       | 1     | 0.33 | 0.33 | 0.50 | 0.50 | 0  | 0.33 | 1       | 0.50\nMOV 0x218(%RSP),%RBX                      | 1     | 0    | 0    | 0.50 | 0.50 | 0  | 0    | 2       | 0.50\nIMUL %RDX,%RCX                            | 1     | 0    | 1    | 0    | 0    | 0  | 0    | 3       | 1\nMOV 0x210(%RSP),%RSI                      | 1     | 0    | 0    | 0.50 | 0.50 | 0  | 0    | 2       | 0.50\nIMUL %R12,%RDI                            | 1     | 0    | 1    | 0    | 0    | 0  | 0    | 3       | 1\nADD 0x190(%RSP),%RDI                      | 1     | 0.33 | 0.33 | 0.50 | 0.50 | 0  | 0.33 | 1       | 0.50\nIMUL %R12,%R9                             | 1     | 0    | 1    | 0    | 0    | 0  | 0    | 3       | 1\nADD 0x128(%RSP),%R9                       | 1     | 0.33 | 0.33 | 0.50 | 0.50 | 0  | 0.33 | 1       | 0.50\nLEA 0x1(%R8,%R10,1),%R11                  | 1     | 0    | 1    | 0    | 0    | 0  | 0    | 3       | 1\nMOV 0x198(%RSP),%R8                       | 1     | 0    | 0    | 0.50 | 0.50 | 0  | 0    | 2       | 0.50\nMOV 0x208(%RSP),%R10                      | 1     | 0    | 0    | 0.50 | 0.50 | 0  | 0    | 2       | 0.50\nLEA (%RBX,%R11,8),%RAX                    | 1     | 0.50 | 0.50 | 0    | 0    | 0  | 0    | 1       | 0.50\nADD %RCX,%RDI                             | 1     | 0.33 | 0.33 | 0    | 0    | 0  | 0.33 | 1       | 0.33\nLEA (%RSI,%RDI,8),%RBX                    | 1     | 0.50 | 0.50 | 0    | 0    | 0  | 0    | 1       | 0.50\nMOV 0x1b0(%RSP),%RCX                      | 1     | 0    | 0    | 0.50 | 0.50 | 0  | 0    | 2       | 0.50\nMOV 0x1a8(%RSP),%RDI                      | 1     | 0    | 0    | 0.50 | 0.50 | 0  | 0    | 2       | 0.50\nIMUL %RDX,%R8                             | 1     | 0    | 1    | 0    | 0    | 0  | 0    | 3       | 1\nMOV 0x200(%RSP),%RSI                      | 1     | 0    | 0    | 0.50 | 0.50 | 0  | 0    | 2       | 0.50\nIMUL %R12,%RCX                            | 1     | 0    | 1    | 0    | 0    | 0  | 0    | 3       | 1\nIMUL %RDX,%RDI                            | 1     | 0    | 1    | 0    | 0    | 0  | 0    | 3       | 1\nADD 0x130(%RSP),%RCX                      | 1     | 0.33 | 0.33 | 0.50 | 0.50 | 0  | 0.33 | 1       | 0.50\nADD %R8,%R9                               | 1     | 0.33 | 0.33 | 0    | 0    | 0  | 0.33 | 1       | 0.33\nMOV 0x1b8(%RSP),%R8                       | 1     | 0    | 0    | 0.50 | 0.50 | 0  | 0    | 2       | 0.50\nLEA (%R10,%R9,8),%R11                     | 1     | 0.50 | 0.50 | 0    | 0    | 0  | 0    | 1       | 0.50\nMOV 0x1c0(%RSP),%R9                       | 1     | 0    | 0    | 0.50 | 0.50 | 0  | 0    | 2       | 0.50\nADD %RDI,%RCX                             | 1     | 0.33 | 0.33 | 0    | 0    | 0  | 0.33 | 1       | 0.33\nMOV 0x148(%RSP),%RDI                      | 1     | 0    | 0    | 0.50 | 0.50 | 0  | 0    | 2       | 0.50\nIMUL %RDX,%R8                             | 1     | 0    | 1    | 0    | 0    | 0  | 0    | 3       | 1\nIMUL %R12,%R9                             | 1     | 0    | 1    | 0    | 0    | 0  | 0    | 3       | 1\nADD 0x138(%RSP),%R9                       | 1     | 0.33 | 0.33 | 0.50 | 0.50 | 0  | 0.33 | 1       | 0.50\nLEA (%RSI,%RCX,8),%R10                    | 1     | 0.50 | 0.50 | 0    | 0    | 0  | 0    | 1       | 0.50\nMOV 0x1f8(%RSP),%RCX                      | 1     | 0    | 0    | 0.50 | 0.50 | 0  | 0    | 2       | 0.50\nIMUL %RDX,%RDI                            | 1     | 0    | 1    | 0    | 0    | 0  | 0    | 3       | 1\nMOV 0x1f0(%RSP),%RSI                      | 1     | 0    | 0    | 0.50 | 0.50 | 0  | 0    | 2       | 0.50\nIMUL 0x168(%RSP),%RDX                     | 1     | 0    | 1    | 0.50 | 0.50 | 0  | 0    | 3       | 1\nADD %R8,%R9                               | 1     | 0.33 | 0.33 | 0    | 0    | 0  | 0.33 | 1       | 0.33\nMOV 0x150(%RSP),%R8                       | 1     | 0    | 0    | 0.50 | 0.50 | 0  | 0    | 2       | 0.50\nLEA (%RCX,%R9,8),%R9                      | 1     | 0.50 | 0.50 | 0    | 0    | 0  | 0    | 1       | 0.50\nMOV 0x170(%RSP),%RCX                      | 1     | 0    | 0    | 0.50 | 0.50 | 0  | 0    | 2       | 0.50\nIMUL %R12,%R8                             | 1     | 0    | 1    | 0    | 0    | 0  | 0    | 3       | 1\nADD 0x120(%RSP),%R8                       | 1     | 0.33 | 0.33 | 0.50 | 0.50 | 0  | 0.33 | 1       | 0.50\nIMUL %R12,%RCX                            | 1     | 0    | 1    | 0    | 0    | 0  | 0    | 3       | 1\nADD 0x178(%RSP),%RCX                      | 1     | 0.33 | 0.33 | 0.50 | 0.50 | 0  | 0.33 | 1       | 0.50\nADD %RDI,%R8                              | 1     | 0.33 | 0.33 | 0    | 0    | 0  | 0.33 | 1       | 0.33\nMOV 0x1e8(%RSP),%RDI                      | 1     | 0    | 0    | 0.50 | 0.50 | 0  | 0    | 2       | 0.50\nLEA (%RSI,%R8,8),%R8                      | 1     | 0.50 | 0.50 | 0    | 0    | 0  | 0    | 1       | 0.50\nADD %RCX,%RDX                             | 1     | 0.33 | 0.33 | 0    | 0    | 0  | 0.33 | 1       | 0.33\nLEA (%RDI,%RDX,8),%RSI                    | 1     | 0.50 | 0.50 | 0    | 0    | 0  | 0    | 1       | 0.50\nXOR %EDX,%EDX                             | 1     | 0    | 0    | 0    | 0    | 0  | 0    | 0       | 0.25\nTEST $0x1,%R13B                           | 1     | 0.33 | 0.33 | 0    | 0    | 0  | 0.33 | 1       | 0.33\nJNE c800 <compute_rhs_._omp_fn.0+0x4b0>   | 1     | 0    | 0    | 0    | 0    | 0  | 1    | 0       | 1-2\nVDIVSD (%RAX),%XMM4,%XMM1                 | 1     | 1    | 0    | 0.50 | 0.50 | 0  | 0    | 10-22   | 10-22\nVMOVSD %XMM1,(%RBX)                       | 1     | 0    | 0    | 0.50 | 0.50 | 1  | 0    | 3       | 1\nVMULSD 0x8(%RAX),%XMM1,%XMM0              | 1     | 1    | 0    | 0.50 | 0.50 | 0  | 0    | 5       | 1\nADD $0x28,%RAX                            | 1     | 0.33 | 0.33 | 0    | 0    | 0  | 0.33 | 1       | 0.33\nMOV $0x1,%EDX                             | 1     | 0.33 | 0.33 | 0    | 0    | 0  | 0.33 | 1       | 0.33\nVMOVSD %XMM0,(%R11)                       | 1     | 0    | 0    | 0.50 | 0.50 | 1  | 0    | 3       | 1\nVMULSD -0x18(%RAX),%XMM1,%XMM2            | 1     | 1    | 0    | 0.50 | 0.50 | 0  | 0    | 5       | 1\nVMOVSD %XMM2,(%R10)                       | 1     | 0    | 0    | 0.50 | 0.50 | 1  | 0    | 3       | 1\nVMULSD -0x10(%RAX),%XMM1,%XMM5            | 1     | 1    | 0    | 0.50 | 0.50 | 0  | 0    | 5       | 1\nVMOVSD %XMM5,(%R9)                        | 1     | 0    | 0    | 0.50 | 0.50 | 1  | 0    | 3       | 1\nVMOVSD -0x20(%RAX),%XMM6                  | 1     | 0    | 0    | 0.50 | 0.50 | 0  | 0    | 3       | 0.50\nVMOVSD -0x18(%RAX),%XMM7                  | 1     | 0    | 0    | 0.50 | 0.50 | 0  | 0    | 3       | 0.50\nVMULSD %XMM6,%XMM6,%XMM9                  | 1     | 1    | 0    | 0    | 0    | 0  | 0    | 5       | 1\nVMOVSD -0x10(%RAX),%XMM8                  | 1     | 0    | 0    | 0.50 | 0.50 | 0  | 0    | 3       | 0.50\nVMULSD %XMM7,%XMM7,%XMM10                 | 1     | 1    | 0    | 0    | 0    | 0  | 0    | 5       | 1\nVMULSD %XMM8,%XMM8,%XMM12                 | 1     | 1    | 0    | 0    | 0    | 0  | 0    | 5       | 1\nVADDSD %XMM10,%XMM9,%XMM11                | 1     | 0    | 1    | 0    | 0    | 0  | 0    | 3       | 1\nVADDSD %XMM12,%XMM11,%XMM13               | 1     | 0    | 1    | 0    | 0    | 0  | 0    | 3       | 1\nVMULSD %XMM3,%XMM13,%XMM14                | 1     | 1    | 0    | 0    | 0    | 0  | 0    | 5       | 1\nVMULSD %XMM1,%XMM14,%XMM15                | 1     | 1    | 0    | 0    | 0    | 0  | 0    | 5       | 1\nVMULSD %XMM15,%XMM1,%XMM1                 | 1     | 1    | 0    | 0    | 0    | 0  | 0    | 5       | 1\nVMOVSD %XMM15,(%R8)                       | 1     | 0    | 0    | 0.50 | 0.50 | 1  | 0    | 3       | 1\nVMOVSD %XMM1,(%RSI)                       | 1     | 0    | 0    | 0.50 | 0.50 | 1  | 0    | 3       | 1\nTEST %R13,%R13                            | 1     | 0.33 | 0.33 | 0    | 0    | 0  | 0.33 | 1       | 0.33\nJE c8e7 <compute_rhs_._omp_fn.0+0x597>    | 1     | 0    | 0    | 0    | 0    | 0  | 1    | 0       | 1-2\nNOP                                       | 1     | 0    | 0    | 0    | 0    | 0  | 0    | 0       | 0.25\nCMP %R15D,0x140(%RSP)                     | 1     | 0.33 | 0.33 | 0.50 | 0.50 | 0  | 0.33 | 1       | 0.50\nJE 1010a <compute_rhs_._omp_fn.0+0x3dba>  | 1     | 0    | 0    | 0    | 0    | 0  | 1    | 0       | 1-2\nADD $0x1,%R14D                            | 1     | 0.33 | 0.33 | 0    | 0    | 0  | 0.33 | 1       | 0.33\nCMP %R14D,0x238(%RSP)                     | 1     | 0.33 | 0.33 | 0.50 | 0.50 | 0  | 0.33 | 1       | 0.50\nJLE 10a21 <compute_rhs_._omp_fn.0+0x46d1> | 1     | 0    | 0    | 0    | 0    | 0  | 1    | 0       | 1-2\nADD $0x1,%R15D                            | 1     | 0.33 | 0.33 | 0    | 0    | 0  | 0.33 | 1       | 0.33\nJMP c638 <compute_rhs_._omp_fn.0+0x2e8>   | 1     | 0    | 0    | 0    | 0    | 0  | 1    | 0       | 2\nADDL $0x1,0x108(%RSP)                     | 2     | 0.33 | 0.33 | 1    | 1    | 1  | 0.33 | 6       | 1\nXOR %R14D,%R14D                           | 1     | 0    | 0    | 0    | 0    | 0  | 0    | 0       | 0.25\nMOVSXD 0x108(%RSP),%R12                   | 1     | 0    | 0    | 0.50 | 0.50 | 0  | 0    | 1       | 0.50\nJMP c907 <compute_rhs_._omp_fn.0+0x5b7>   | 1     | 0    | 0    | 0    | 0    | 0  | 1    | 0       | 2\n",
        },
      },
      header = {
        "6% of peak computational performance is used (0.49 out of 8.00 FLOP per cycle (GFLOPS @ 1GHz))",
      },
      brief = {
      },
      gain = {
        {
          workaround = " - Try to reorganize arrays of structures to structures of arrays\n - Consider to permute loops (see vectorization gain report)\n - To reference allocatable arrays, use \"allocatable\" instead of \"pointer\" pointers or qualify them with the \"contiguous\" attribute (Fortran 2008)\n - For structures, limit to one indirection. For example, use a_b%c instead of a%b%c with a_b set to a%b before this loop\n",
          title = "Code clean check",
          txt = "Detected a slowdown caused by scalar integer instructions (typically used for address computation).\nBy removing them, you can lower the cost of an iteration from 24.25 to 22.00 cycles (1.10x speedup).",
        },
        {
          workaround = " - Try another compiler or update/tune your current one:\n  * recompile with fassociative-math (included in Ofast or ffast-math) to extend loop vectorization to FP reductions.\n - Remove inter-iterations dependences from your loop and make it unit-stride:\n  * If your arrays have 2 or more dimensions, check whether elements are accessed contiguously and, otherwise, try to permute loops accordingly:\nFortran storage order is column-major: do i do j a(i,j) = b(i,j) (slow, non stride 1) => do i do j a(j,i) = b(i,j) (fast, stride 1)\n  * If your loop streams arrays of structures (AoS), try to use structures of arrays instead (SoA):\ndo i a(i)%x = b(i)%x (slow, non stride 1) => do i a%x(i) = b%x(i) (fast, stride 1)\n",
          details = "All SSE/AVX instructions are used in scalar version (process only one data element in vector registers).\nSince your execution units are vector units, only a vectorized loop can use their full power.\n",
          title = "Vectorization",
          txt = "Your loop is not vectorized.\nOnly 26% of vector register length is used (average across all SSE/AVX instructions).\nBy vectorizing your loop, you can lower the cost of an iteration from 24.25 to 11.00 cycles (2.20x speedup).",
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
      "The loop is defined in /users/user2210/NPB3.4-MZ-MPI/BT-MZ/rhs.f90:37-47,402.\n",
      "Warnings:\n - Non-innermost loop: analyzing only self part (ignoring child loops).\n - Ignoring paths for analysis\n - Too many paths. Rerun with max-paths=6\n - RecMII not computed since number of paths is unknown or > max_paths\n - Streams not analyzed since number of paths is unknown or > max_paths\n",
      "Try to simplify control and/or increase the maximum number of paths per function/loop through the 'max-paths-nb' option.\n",
      "This loop has 6 execution paths.\n",
      "The presence of multiple execution paths is typically the main/first bottleneck.\nTry to simplify control inside loop: ideally, try to remove all conditional expressions, for example by (if applicable):\n - hoisting them (moving them outside the loop)\n - turning them into conditional moves, MIN or MAX\n\n",
      "Ex: if (x<0) x=0 => x = max(0,x) (Fortran instrinsic procedure)\n",
    },
    nb_paths = 6,
  },
}
