_cqa_text_report = {
  paths = {
    {
      hint = {
        {
          workaround = " - Try to reorganize arrays of structures to structures of arrays\n - Consider to permute loops (see vectorization gain report)\n",
          details = " - Constant unknown stride: 14 occurrence(s)\nNon-unit stride (uncontiguous) accesses are not efficiently using data caches\n",
          title = "Slow data structures access",
          txt = "Detected data structures (typically arrays) that cannot be efficiently read/written",
        },
        {
          workaround = "Use vector aligned instructions:\n 1) The GNU Fortran compiler does not support allocation alignment and does not feature directives to benefit from aligned data.\n 2) Use another compiler or locally use C code (for instance via libraries)\n",
          details = " - VINSERTF128: 10 occurrences\n - VINSERTF64X4: 5 occurrences\n",
          title = "Vector unaligned load/store instructions",
          txt = "Detected 15 suboptimal vector unaligned load/store instructions.\n",
        },
        {
          title = "Type of elements and instruction set",
          txt = "10 AVX-512 instructions are processing arithmetic or math operations on double precision FP elements in vector mode (eight at a time).\n",
        },
        {
          title = "Matching between your loop (in the source code) and the binary loop",
          txt = "The binary loop is composed of 120 FP arithmetical operations:\n - 80: addition or subtraction (40 inside FMA instructions)\n - 40: multiply (all inside FMA instructions)\nThe binary loop is loading 968 bytes (121 double precision FP elements).\nThe binary loop is storing 320 bytes (40 double precision FP elements).",
        },
        {
          title = "Arithmetic intensity",
          txt = "Arithmetic intensity is 0.09 FP operations per loaded or stored byte.",
        },
      },
      expert = {
        {
          title = "General properties",
          txt = "nb instructions    : 78\nloop length        : 511\nused x86 registers : 9\nused mmx registers : 0\nused xmm registers : 12\nused ymm registers : 9\nused zmm registers : 14\nnb stack references: 1\n",
        },
        {
          title = "Front-end",
          txt = "MACRO FUSION NOT POSSIBLE\ninstruction fetch    : 32.00 cycles\ninstruction queue    : 39.00 cycles\ndecoding             : 39.00 cycles\nmicro-operation queue: 39.00 cycles\nfront end            : 39.00 cycles\n",
        },
        {
          title = "Back-end",
          txt = "       | P0    | P1    | P2    | P3    | P4   | P5   | P6\n-----------------------------------------------------------\nuops   | 15.00 | 10.00 | 25.50 | 25.50 | 4.00 | 4.00 | 5.00\ncycles | 15.00 | 10.00 | 25.50 | 25.50 | 4.00 | 4.00 | 5.00\n\nCycles executing div or sqrt instructions: NA\nLongest recurrence chain latency (RecMII): 1.00\n",
        },
        {
          title = "Cycles summary",
          txt = "Front-end : 39.00\nDispatch  : 25.50\nData deps.: 1.00\nOverall L1: 39.00\n",
        },
        {
          title = "Vectorization ratios",
          txt = "all     : 57%\nload    : 33%\nstore   : 100%\nmul     : NA (no mul vectorizable/vectorized instructions)\nadd-sub : 100%\nfma     : 100%\ndiv/sqrt: NA (no div/sqrt vectorizable/vectorized instructions)\nother   : 100%\n",
        },
        {
          title = "Vector efficiency ratios",
          txt = "all     : 42%\nload    : 33%\nstore   : 100%\nmul     : NA (no mul vectorizable/vectorized instructions)\nadd-sub : 100%\nfma     : 100%\ndiv/sqrt: NA (no div/sqrt vectorizable/vectorized instructions)\nother   : 33%\n",
        },
        {
          title = "Cycles and memory resources usage",
          txt = "Assuming all data fit into the L1 cache, each iteration of the binary loop takes 39.00 cycles. At this rate:\n - 19% of peak load performance is reached (24.82 out of 128.00 bytes loaded per cycle (GB/s @ 1GHz))\n - 12% of peak store performance is reached (8.21 out of 64.00 bytes stored per cycle (GB/s @ 1GHz))\n",
        },
        {
          title = "Front-end bottlenecks",
          txt = "Performance is limited by instruction throughput (loading/decoding program instructions to execution core) (front-end is a bottleneck).\n\nBy removing all these bottlenecks, you can lower the cost of an iteration from 39.00 to 32.00 cycles (1.22x speedup).\n",
        },
        {
          title = "ASM code",
          txt = "In the binary file, the address of the loop is: 22118\n\nInstruction                            | Nb FU | P0   | P1   | P2   | P3   | P4   | P5   | P6 | Latency | Recip. throughput\n---------------------------------------------------------------------------------------------------------------------------\nVMOVSD 0x20(%RSI),%XMM5                | 1     | 0    | 0    | 0.50 | 0.50 | 0    | 0    | 0  | 5       | 0.50\nLEA 0x140(%RAX),%RAX                   | 1     | 0    | 0    | 0    | 0    | 0.50 | 0.50 | 0  | 1       | 0.50\nVMOVHPD (%RSI,%R9,1),%XMM5,%XMM8       | 1     | 0    | 0    | 0.50 | 0.50 | 0    | 0    | 0  | 6       | 1.50\nLEA 0x140(%R13),%R13                   | 1     | 0    | 0    | 0    | 0    | 0.50 | 0.50 | 0  | 1       | 0.50\nVMOVUPD 0x10(%RSI),%XMM13              | 1     | 0    | 0    | 0.50 | 0.50 | 0    | 0    | 0  | 5       | 0.50\nVMOVSD (%RSI),%XMM9                    | 1     | 0    | 0    | 0.50 | 0.50 | 0    | 0    | 0  | 5       | 0.50\nVINSERTF128 $0x1,%XMM8,%YMM13,%YMM2    | 1     | 1    | 0    | 0    | 0    | 0    | 0    | 0  | 3-6     | 1\nVMOVSD 0x18(%RDI,%R9,1),%XMM12         | 1     | 0    | 0    | 0.50 | 0.50 | 0    | 0    | 0  | 5       | 0.50\nVMOVHPD 0x8(%RSI),%XMM9,%XMM3          | 1     | 0    | 0    | 0.50 | 0.50 | 0    | 0    | 0  | 6       | 1.50\nVMOVSD 0x10(%RCX),%XMM4                | 1     | 0    | 0    | 0.50 | 0.50 | 0    | 0    | 0  | 5       | 0.50\nVMOVHPD 0x20(%R9,%RDI,1),%XMM12,%XMM10 | 1     | 0    | 0    | 0.50 | 0.50 | 0    | 0    | 0  | 6       | 1.50\nVMOVSD 0x18(%RSI,%R9,1),%XMM5          | 1     | 0    | 0    | 0.50 | 0.50 | 0    | 0    | 0  | 5       | 0.50\nVMOVHPD 0x18(%RCX),%XMM4,%XMM15        | 1     | 0    | 0    | 0.50 | 0.50 | 0    | 0    | 0  | 6       | 1.50\nVMOVSD 0x8(%RSI,%R9,1),%XMM13          | 1     | 0    | 0    | 0.50 | 0.50 | 0    | 0    | 0  | 5       | 0.50\nVMOVHPD 0x20(%R9,%RSI,1),%XMM5,%XMM8   | 1     | 0    | 0    | 0.50 | 0.50 | 0    | 0    | 0  | 6       | 1.50\nVMOVHPD 0x10(%R9,%RSI,1),%XMM13,%XMM9  | 1     | 0    | 0    | 0.50 | 0.50 | 0    | 0    | 0  | 6       | 1.50\nVINSERTF128 $0x1,%XMM3,%YMM10,%YMM14   | 1     | 1    | 0    | 0    | 0    | 0    | 0    | 0  | 3-6     | 1\nVMOVUPD (%RCX),%XMM7                   | 1     | 0    | 0    | 0.50 | 0.50 | 0    | 0    | 0  | 5       | 0.50\nVINSERTF128 $0x1,%XMM8,%YMM9,%YMM3     | 1     | 1    | 0    | 0    | 0    | 0    | 0    | 0  | 3-6     | 1\nVMOVSD (%RDX),%XMM10                   | 1     | 0    | 0    | 0.50 | 0.50 | 0    | 0    | 0  | 5       | 0.50\nVINSERTF64X4 $0x1,%YMM2,%ZMM14,%ZMM17  | 1     | 1    | 0    | 0    | 0    | 0    | 0    | 0  | 3-6     | 1\nVMOVSD 0x8(%RCX,%R9,1),%XMM4           | 1     | 0    | 0    | 0.50 | 0.50 | 0    | 0    | 0  | 5       | 0.50\nVINSERTF128 $0x1,%XMM15,%YMM7,%YMM12   | 1     | 1    | 0    | 0    | 0    | 0    | 0    | 0  | 3-6     | 1\nVMOVSD 0x18(%RCX,%R9,1),%XMM2          | 1     | 0    | 0    | 0.50 | 0.50 | 0    | 0    | 0  | 5       | 0.50\nVMOVHPD 0x8(%RDX),%XMM10,%XMM14        | 1     | 0    | 0    | 0.50 | 0.50 | 0    | 0    | 0  | 6       | 1.50\nVMOVSD 0x20(%RCX),%XMM8                | 1     | 0    | 0    | 0.50 | 0.50 | 0    | 0    | 0  | 5       | 0.50\nVMOVHPD 0x20(%R9,%RCX,1),%XMM2,%XMM7   | 1     | 0    | 0    | 0.50 | 0.50 | 0    | 0    | 0  | 6       | 1.50\nVMOVHPD 0x10(%R9,%RCX,1),%XMM4,%XMM5   | 1     | 0    | 0    | 0.50 | 0.50 | 0    | 0    | 0  | 6       | 1.50\nVMOVHPD (%RCX,%R9,1),%XMM8,%XMM13      | 1     | 0    | 0    | 0.50 | 0.50 | 0    | 0    | 0  | 6       | 1.50\nVMOVSD 0x8(%RDX,%R9,1),%XMM2           | 1     | 0    | 0    | 0.50 | 0.50 | 0    | 0    | 0  | 5       | 0.50\nVINSERTF64X4 $0x1,%YMM12,%ZMM3,%ZMM15  | 1     | 1    | 0    | 0    | 0    | 0    | 0    | 0  | 3-6     | 1\nVMOVSD 0x20(%RDX),%XMM4                | 1     | 0    | 0    | 0.50 | 0.50 | 0    | 0    | 0  | 5       | 0.50\nVINSERTF128 $0x1,%XMM5,%YMM13,%YMM9    | 1     | 1    | 0    | 0    | 0    | 0    | 0    | 0  | 3-6     | 1\nVMOVSD 0x18(%RDX,%R9,1),%XMM12         | 1     | 0    | 0    | 0.50 | 0.50 | 0    | 0    | 0  | 5       | 0.50\nVMOVHPD (%RDX,%R9,1),%XMM4,%XMM5       | 1     | 0    | 0    | 0.50 | 0.50 | 0    | 0    | 0  | 6       | 1.50\nVMOVHPD 0x20(%R9,%RDX,1),%XMM12,%XMM10 | 1     | 0    | 0    | 0.50 | 0.50 | 0    | 0    | 0  | 6       | 1.50\nVINSERTF128 $0x1,%XMM14,%YMM7,%YMM3    | 1     | 1    | 0    | 0    | 0    | 0    | 0    | 0  | 3-6     | 1\nVMOVUPD 0x10(%RDX),%XMM8               | 1     | 0    | 0    | 0.50 | 0.50 | 0    | 0    | 0  | 5       | 0.50\nVMOVHPD 0x10(%R9,%RDX,1),%XMM2,%XMM7   | 1     | 0    | 0    | 0.50 | 0.50 | 0    | 0    | 0  | 6       | 1.50\nVINSERTF128 $0x1,%XMM5,%YMM8,%YMM13    | 1     | 1    | 0    | 0    | 0    | 0    | 0    | 0  | 3-6     | 1\nVINSERTF64X4 $0x1,%YMM3,%ZMM9,%ZMM14   | 1     | 1    | 0    | 0    | 0    | 0    | 0    | 0  | 3-6     | 1\nVMOVUPD -0x20(%RAX),%ZMM12             | 1     | 0    | 0    | 0.50 | 0.50 | 0    | 0    | 0  | 5       | 0.50\nVINSERTF128 $0x1,%XMM10,%YMM7,%YMM9    | 1     | 1    | 0    | 0    | 0    | 0    | 0    | 0  | 3-6     | 1\nVMOVUPD -0x60(%RAX),%ZMM3              | 1     | 0    | 0    | 0.50 | 0.50 | 0    | 0    | 0  | 5       | 0.50\nVINSERTF64X4 $0x1,%YMM9,%ZMM13,%ZMM2   | 1     | 1    | 0    | 0    | 0    | 0    | 0    | 0  | 3-6     | 1\nVSUBPD -0xb0(%RAX),%ZMM3,%ZMM7         | 1     | 0.50 | 0.50 | 0.50 | 0.50 | 0    | 0    | 0  | 6       | 0.50\nLEA (%RSI,%R8,1),%RSI                  | 1     | 0    | 0    | 0    | 0    | 0.50 | 0.50 | 0  | 1       | 0.50\nVSUBPD -0x70(%RAX),%ZMM12,%ZMM5        | 1     | 0.50 | 0.50 | 0.50 | 0.50 | 0    | 0    | 0  | 6       | 0.50\nVMOVUPD 0x20(%RAX),%ZMM10              | 1     | 0    | 0    | 0.50 | 0.50 | 0    | 0    | 0  | 5       | 0.50\nVSUBPD -0x30(%RAX),%ZMM10,%ZMM4        | 1     | 0.50 | 0.50 | 0.50 | 0.50 | 0    | 0    | 0  | 6       | 0.50\nVMOVUPD 0x60(%RAX),%ZMM8               | 1     | 0    | 0    | 0.50 | 0.50 | 0    | 0    | 0  | 5       | 0.50\nVMOVUPD -0xa0(%RAX),%ZMM13             | 1     | 0    | 0    | 0.50 | 0.50 | 0    | 0    | 0  | 5       | 0.50\nVSUBPD 0x10(%RAX),%ZMM8,%ZMM3          | 1     | 0.50 | 0.50 | 0.50 | 0.50 | 0    | 0    | 0  | 6       | 0.50\nVMOVSD 0x8(%RDI,%R9,1),%XMM9           | 1     | 0    | 0    | 0.50 | 0.50 | 0    | 0    | 0  | 5       | 0.50\nVSUBPD -0xf0(%RAX),%ZMM13,%ZMM8        | 1     | 0.50 | 0.50 | 0.50 | 0.50 | 0    | 0    | 0  | 6       | 0.50\nVMOVSD 0x20(%RDI),%XMM10               | 1     | 0    | 0    | 0.50 | 0.50 | 0    | 0    | 0  | 5       | 0.50\nVMOVHPD 0x10(%R9,%RDI,1),%XMM9,%XMM12  | 1     | 0    | 0    | 0.50 | 0.50 | 0    | 0    | 0  | 6       | 1.50\nVMOVHPD (%RDI,%R9,1),%XMM10,%XMM10     | 1     | 0    | 0    | 0.50 | 0.50 | 0    | 0    | 0  | 6       | 1.50\nCMP %RAX,0x328(%RSP)                   | 1     | 0    | 0    | 1    | 0    | 0.50 | 0.50 | 0  | 1       | 1\nVMOVUPD 0x10(%RDI),%XMM13              | 1     | 0    | 0    | 0.50 | 0.50 | 0    | 0    | 0  | 5       | 0.50\nVINSERTF128 $0x1,%XMM12,%YMM10,%YMM12  | 1     | 1    | 0    | 0    | 0    | 0    | 0    | 0  | 3-6     | 1\nVMOVUPD (%RDI),%XMM9                   | 1     | 0    | 0    | 0.50 | 0.50 | 0    | 0    | 0  | 5       | 0.50\nVFNMADD132PD %ZMM11,%ZMM17,%ZMM7       | 1     | 0.50 | 0.50 | 0    | 0    | 0    | 0    | 0  | 6       | 0.50\nVINSERTF128 $0x1,%XMM13,%YMM9,%YMM13   | 1     | 1    | 0    | 0    | 0    | 0    | 0    | 0  | 3-6     | 1\nVFNMADD132PD %ZMM11,%ZMM15,%ZMM5       | 1     | 0.50 | 0.50 | 0    | 0    | 0    | 0    | 0  | 6       | 0.50\nVINSERTF64X4 $0x1,%YMM12,%ZMM13,%ZMM10 | 1     | 1    | 0    | 0    | 0    | 0    | 0    | 0  | 3-6     | 1\nVFNMADD132PD %ZMM11,%ZMM14,%ZMM4       | 1     | 0.50 | 0.50 | 0    | 0    | 0    | 0    | 0  | 6       | 0.50\nVFNMADD132PD %ZMM11,%ZMM10,%ZMM8       | 1     | 0.50 | 0.50 | 0    | 0    | 0    | 0    | 0  | 6       | 0.50\nVFNMADD231PD %ZMM3,%ZMM11,%ZMM2        | 1     | 0.50 | 0.50 | 0    | 0    | 0    | 0    | 0  | 6       | 0.50\nVMOVUPD %ZMM8,-0x140(%R13)             | 1     | 0    | 0    | 0.50 | 0.50 | 0    | 0    | 1  | 2       | 1\nLEA (%RDI,%R8,1),%RDI                  | 1     | 0    | 0    | 0    | 0    | 0.50 | 0.50 | 0  | 1       | 0.50\nVMOVUPD %ZMM7,-0x100(%R13)             | 1     | 0    | 0    | 0.50 | 0.50 | 0    | 0    | 1  | 2       | 1\nLEA (%RCX,%R8,1),%RCX                  | 1     | 0    | 0    | 0    | 0    | 0.50 | 0.50 | 0  | 1       | 0.50\nVMOVUPD %ZMM5,-0xc0(%R13)              | 1     | 0    | 0    | 0.50 | 0.50 | 0    | 0    | 1  | 2       | 1\nLEA (%RDX,%R8,1),%RDX                  | 1     | 0    | 0    | 0    | 0    | 0.50 | 0.50 | 0  | 1       | 0.50\nVMOVUPD %ZMM4,-0x80(%R13)              | 1     | 0    | 0    | 0.50 | 0.50 | 0    | 0    | 1  | 2       | 1\nVMOVUPD %ZMM2,-0x40(%R13)              | 1     | 0    | 0    | 0.50 | 0.50 | 0    | 0    | 1  | 2       | 1\nJNE 22118 <rhs_._omp_fn.0+0x5128>      | 1     | 0    | 0    | 0    | 0    | 0    | 1    | 0  | 0       | 1-2\n",
        },
      },
      header = {
        "9% of peak computational performance is used (3.08 out of 32.00 FLOP per cycle (GFLOPS @ 1GHz))",
      },
      brief = {
      },
      gain = {
        {
          workaround = " - Try to reorganize arrays of structures to structures of arrays\n - Consider to permute loops (see vectorization gain report)\n - To reference allocatable arrays, use \"allocatable\" instead of \"pointer\" pointers or qualify them with the \"contiguous\" attribute (Fortran 2008)\n - For structures, limit to one indirection. For example, use a_b%c instead of a%b%c with a_b set to a%b before this loop\n",
          title = "Code clean check",
          txt = "Detected a slowdown caused by scalar integer instructions (typically used for address computation).\nBy removing them, you can lower the cost of an iteration from 39.00 to 37.00 cycles (1.05x speedup).",
        },
        {
          workaround = " - Try another compiler or update/tune your current one\n - Remove inter-iterations dependences from your loop and make it unit-stride:\n  * If your arrays have 2 or more dimensions, check whether elements are accessed contiguously and, otherwise, try to permute loops accordingly:\nFortran storage order is column-major: do i do j a(i,j) = b(i,j) (slow, non stride 1) => do i do j a(j,i) = b(i,j) (fast, stride 1)\n  * If your loop streams arrays of structures (AoS), try to use structures of arrays instead (SoA):\ndo i a(i)%x = b(i)%x (slow, non stride 1) => do i a%x(i) = b%x(i) (fast, stride 1)\n",
          details = "57% of SSE/AVX instructions are used in vector version (process two or more data elements in vector registers):\n - 33% of SSE/AVX loads are used in vector version.\nSince your execution units are vector units, only a fully vectorized loop can use their full power.\n",
          title = "Vectorization",
          txt = "Your loop is partially vectorized.\nOnly 42% of vector register length is used (average across all SSE/AVX instructions).\nBy fully vectorizing your loop, you can lower the cost of an iteration from 39.00 to 19.00 cycles (2.05x speedup).",
        },
        {
          title = "Execution units bottlenecks",
          txt = "Found no such bottlenecks but see expert reports for more complex bottlenecks.",
        },
      },
      potential = {
        {
          title = "FMA",
          txt = "Detected 40 FMA (fused multiply-add) operations.",
        },
      },
    },
  },
  AVG = {
      hint = {
        {
          workaround = " - Try to reorganize arrays of structures to structures of arrays\n - Consider to permute loops (see vectorization gain report)\n",
          details = " - Constant unknown stride: 14 occurrence(s)\nNon-unit stride (uncontiguous) accesses are not efficiently using data caches\n",
          title = "Slow data structures access",
          txt = "Detected data structures (typically arrays) that cannot be efficiently read/written",
        },
        {
          workaround = "Use vector aligned instructions:\n 1) The GNU Fortran compiler does not support allocation alignment and does not feature directives to benefit from aligned data.\n 2) Use another compiler or locally use C code (for instance via libraries)\n",
          details = " - VINSERTF128: 10 occurrences\n - VINSERTF64X4: 5 occurrences\n",
          title = "Vector unaligned load/store instructions",
          txt = "Detected 15 suboptimal vector unaligned load/store instructions.\n",
        },
        {
          title = "Type of elements and instruction set",
          txt = "10 AVX-512 instructions are processing arithmetic or math operations on double precision FP elements in vector mode (eight at a time).\n",
        },
        {
          title = "Matching between your loop (in the source code) and the binary loop",
          txt = "The binary loop is composed of 120 FP arithmetical operations:\n - 80: addition or subtraction (40 inside FMA instructions)\n - 40: multiply (all inside FMA instructions)\nThe binary loop is loading 968 bytes (121 double precision FP elements).\nThe binary loop is storing 320 bytes (40 double precision FP elements).",
        },
        {
          title = "Arithmetic intensity",
          txt = "Arithmetic intensity is 0.09 FP operations per loaded or stored byte.",
        },
      },
      expert = {
        {
          title = "General properties",
          txt = "nb instructions    : 78\nloop length        : 511\nused x86 registers : 9\nused mmx registers : 0\nused xmm registers : 12\nused ymm registers : 9\nused zmm registers : 14\nnb stack references: 1\n",
        },
        {
          title = "Front-end",
          txt = "MACRO FUSION NOT POSSIBLE\ninstruction fetch    : 32.00 cycles\ninstruction queue    : 39.00 cycles\ndecoding             : 39.00 cycles\nmicro-operation queue: 39.00 cycles\nfront end            : 39.00 cycles\n",
        },
        {
          title = "Back-end",
          txt = "       | P0    | P1    | P2    | P3    | P4   | P5   | P6\n-----------------------------------------------------------\nuops   | 15.00 | 10.00 | 25.50 | 25.50 | 4.00 | 4.00 | 5.00\ncycles | 15.00 | 10.00 | 25.50 | 25.50 | 4.00 | 4.00 | 5.00\n\nCycles executing div or sqrt instructions: NA\nLongest recurrence chain latency (RecMII): 1.00\n",
        },
        {
          title = "Cycles summary",
          txt = "Front-end : 39.00\nDispatch  : 25.50\nData deps.: 1.00\nOverall L1: 39.00\n",
        },
        {
          title = "Vectorization ratios",
          txt = "all     : 57%\nload    : 33%\nstore   : 100%\nmul     : NA (no mul vectorizable/vectorized instructions)\nadd-sub : 100%\nfma     : 100%\ndiv/sqrt: NA (no div/sqrt vectorizable/vectorized instructions)\nother   : 100%\n",
        },
        {
          title = "Vector efficiency ratios",
          txt = "all     : 42%\nload    : 33%\nstore   : 100%\nmul     : NA (no mul vectorizable/vectorized instructions)\nadd-sub : 100%\nfma     : 100%\ndiv/sqrt: NA (no div/sqrt vectorizable/vectorized instructions)\nother   : 33%\n",
        },
        {
          title = "Cycles and memory resources usage",
          txt = "Assuming all data fit into the L1 cache, each iteration of the binary loop takes 39.00 cycles. At this rate:\n - 19% of peak load performance is reached (24.82 out of 128.00 bytes loaded per cycle (GB/s @ 1GHz))\n - 12% of peak store performance is reached (8.21 out of 64.00 bytes stored per cycle (GB/s @ 1GHz))\n",
        },
        {
          title = "Front-end bottlenecks",
          txt = "Performance is limited by instruction throughput (loading/decoding program instructions to execution core) (front-end is a bottleneck).\n\nBy removing all these bottlenecks, you can lower the cost of an iteration from 39.00 to 32.00 cycles (1.22x speedup).\n",
        },
        {
          title = "ASM code",
          txt = "In the binary file, the address of the loop is: 22118\n\nInstruction                            | Nb FU | P0   | P1   | P2   | P3   | P4   | P5   | P6 | Latency | Recip. throughput\n---------------------------------------------------------------------------------------------------------------------------\nVMOVSD 0x20(%RSI),%XMM5                | 1     | 0    | 0    | 0.50 | 0.50 | 0    | 0    | 0  | 5       | 0.50\nLEA 0x140(%RAX),%RAX                   | 1     | 0    | 0    | 0    | 0    | 0.50 | 0.50 | 0  | 1       | 0.50\nVMOVHPD (%RSI,%R9,1),%XMM5,%XMM8       | 1     | 0    | 0    | 0.50 | 0.50 | 0    | 0    | 0  | 6       | 1.50\nLEA 0x140(%R13),%R13                   | 1     | 0    | 0    | 0    | 0    | 0.50 | 0.50 | 0  | 1       | 0.50\nVMOVUPD 0x10(%RSI),%XMM13              | 1     | 0    | 0    | 0.50 | 0.50 | 0    | 0    | 0  | 5       | 0.50\nVMOVSD (%RSI),%XMM9                    | 1     | 0    | 0    | 0.50 | 0.50 | 0    | 0    | 0  | 5       | 0.50\nVINSERTF128 $0x1,%XMM8,%YMM13,%YMM2    | 1     | 1    | 0    | 0    | 0    | 0    | 0    | 0  | 3-6     | 1\nVMOVSD 0x18(%RDI,%R9,1),%XMM12         | 1     | 0    | 0    | 0.50 | 0.50 | 0    | 0    | 0  | 5       | 0.50\nVMOVHPD 0x8(%RSI),%XMM9,%XMM3          | 1     | 0    | 0    | 0.50 | 0.50 | 0    | 0    | 0  | 6       | 1.50\nVMOVSD 0x10(%RCX),%XMM4                | 1     | 0    | 0    | 0.50 | 0.50 | 0    | 0    | 0  | 5       | 0.50\nVMOVHPD 0x20(%R9,%RDI,1),%XMM12,%XMM10 | 1     | 0    | 0    | 0.50 | 0.50 | 0    | 0    | 0  | 6       | 1.50\nVMOVSD 0x18(%RSI,%R9,1),%XMM5          | 1     | 0    | 0    | 0.50 | 0.50 | 0    | 0    | 0  | 5       | 0.50\nVMOVHPD 0x18(%RCX),%XMM4,%XMM15        | 1     | 0    | 0    | 0.50 | 0.50 | 0    | 0    | 0  | 6       | 1.50\nVMOVSD 0x8(%RSI,%R9,1),%XMM13          | 1     | 0    | 0    | 0.50 | 0.50 | 0    | 0    | 0  | 5       | 0.50\nVMOVHPD 0x20(%R9,%RSI,1),%XMM5,%XMM8   | 1     | 0    | 0    | 0.50 | 0.50 | 0    | 0    | 0  | 6       | 1.50\nVMOVHPD 0x10(%R9,%RSI,1),%XMM13,%XMM9  | 1     | 0    | 0    | 0.50 | 0.50 | 0    | 0    | 0  | 6       | 1.50\nVINSERTF128 $0x1,%XMM3,%YMM10,%YMM14   | 1     | 1    | 0    | 0    | 0    | 0    | 0    | 0  | 3-6     | 1\nVMOVUPD (%RCX),%XMM7                   | 1     | 0    | 0    | 0.50 | 0.50 | 0    | 0    | 0  | 5       | 0.50\nVINSERTF128 $0x1,%XMM8,%YMM9,%YMM3     | 1     | 1    | 0    | 0    | 0    | 0    | 0    | 0  | 3-6     | 1\nVMOVSD (%RDX),%XMM10                   | 1     | 0    | 0    | 0.50 | 0.50 | 0    | 0    | 0  | 5       | 0.50\nVINSERTF64X4 $0x1,%YMM2,%ZMM14,%ZMM17  | 1     | 1    | 0    | 0    | 0    | 0    | 0    | 0  | 3-6     | 1\nVMOVSD 0x8(%RCX,%R9,1),%XMM4           | 1     | 0    | 0    | 0.50 | 0.50 | 0    | 0    | 0  | 5       | 0.50\nVINSERTF128 $0x1,%XMM15,%YMM7,%YMM12   | 1     | 1    | 0    | 0    | 0    | 0    | 0    | 0  | 3-6     | 1\nVMOVSD 0x18(%RCX,%R9,1),%XMM2          | 1     | 0    | 0    | 0.50 | 0.50 | 0    | 0    | 0  | 5       | 0.50\nVMOVHPD 0x8(%RDX),%XMM10,%XMM14        | 1     | 0    | 0    | 0.50 | 0.50 | 0    | 0    | 0  | 6       | 1.50\nVMOVSD 0x20(%RCX),%XMM8                | 1     | 0    | 0    | 0.50 | 0.50 | 0    | 0    | 0  | 5       | 0.50\nVMOVHPD 0x20(%R9,%RCX,1),%XMM2,%XMM7   | 1     | 0    | 0    | 0.50 | 0.50 | 0    | 0    | 0  | 6       | 1.50\nVMOVHPD 0x10(%R9,%RCX,1),%XMM4,%XMM5   | 1     | 0    | 0    | 0.50 | 0.50 | 0    | 0    | 0  | 6       | 1.50\nVMOVHPD (%RCX,%R9,1),%XMM8,%XMM13      | 1     | 0    | 0    | 0.50 | 0.50 | 0    | 0    | 0  | 6       | 1.50\nVMOVSD 0x8(%RDX,%R9,1),%XMM2           | 1     | 0    | 0    | 0.50 | 0.50 | 0    | 0    | 0  | 5       | 0.50\nVINSERTF64X4 $0x1,%YMM12,%ZMM3,%ZMM15  | 1     | 1    | 0    | 0    | 0    | 0    | 0    | 0  | 3-6     | 1\nVMOVSD 0x20(%RDX),%XMM4                | 1     | 0    | 0    | 0.50 | 0.50 | 0    | 0    | 0  | 5       | 0.50\nVINSERTF128 $0x1,%XMM5,%YMM13,%YMM9    | 1     | 1    | 0    | 0    | 0    | 0    | 0    | 0  | 3-6     | 1\nVMOVSD 0x18(%RDX,%R9,1),%XMM12         | 1     | 0    | 0    | 0.50 | 0.50 | 0    | 0    | 0  | 5       | 0.50\nVMOVHPD (%RDX,%R9,1),%XMM4,%XMM5       | 1     | 0    | 0    | 0.50 | 0.50 | 0    | 0    | 0  | 6       | 1.50\nVMOVHPD 0x20(%R9,%RDX,1),%XMM12,%XMM10 | 1     | 0    | 0    | 0.50 | 0.50 | 0    | 0    | 0  | 6       | 1.50\nVINSERTF128 $0x1,%XMM14,%YMM7,%YMM3    | 1     | 1    | 0    | 0    | 0    | 0    | 0    | 0  | 3-6     | 1\nVMOVUPD 0x10(%RDX),%XMM8               | 1     | 0    | 0    | 0.50 | 0.50 | 0    | 0    | 0  | 5       | 0.50\nVMOVHPD 0x10(%R9,%RDX,1),%XMM2,%XMM7   | 1     | 0    | 0    | 0.50 | 0.50 | 0    | 0    | 0  | 6       | 1.50\nVINSERTF128 $0x1,%XMM5,%YMM8,%YMM13    | 1     | 1    | 0    | 0    | 0    | 0    | 0    | 0  | 3-6     | 1\nVINSERTF64X4 $0x1,%YMM3,%ZMM9,%ZMM14   | 1     | 1    | 0    | 0    | 0    | 0    | 0    | 0  | 3-6     | 1\nVMOVUPD -0x20(%RAX),%ZMM12             | 1     | 0    | 0    | 0.50 | 0.50 | 0    | 0    | 0  | 5       | 0.50\nVINSERTF128 $0x1,%XMM10,%YMM7,%YMM9    | 1     | 1    | 0    | 0    | 0    | 0    | 0    | 0  | 3-6     | 1\nVMOVUPD -0x60(%RAX),%ZMM3              | 1     | 0    | 0    | 0.50 | 0.50 | 0    | 0    | 0  | 5       | 0.50\nVINSERTF64X4 $0x1,%YMM9,%ZMM13,%ZMM2   | 1     | 1    | 0    | 0    | 0    | 0    | 0    | 0  | 3-6     | 1\nVSUBPD -0xb0(%RAX),%ZMM3,%ZMM7         | 1     | 0.50 | 0.50 | 0.50 | 0.50 | 0    | 0    | 0  | 6       | 0.50\nLEA (%RSI,%R8,1),%RSI                  | 1     | 0    | 0    | 0    | 0    | 0.50 | 0.50 | 0  | 1       | 0.50\nVSUBPD -0x70(%RAX),%ZMM12,%ZMM5        | 1     | 0.50 | 0.50 | 0.50 | 0.50 | 0    | 0    | 0  | 6       | 0.50\nVMOVUPD 0x20(%RAX),%ZMM10              | 1     | 0    | 0    | 0.50 | 0.50 | 0    | 0    | 0  | 5       | 0.50\nVSUBPD -0x30(%RAX),%ZMM10,%ZMM4        | 1     | 0.50 | 0.50 | 0.50 | 0.50 | 0    | 0    | 0  | 6       | 0.50\nVMOVUPD 0x60(%RAX),%ZMM8               | 1     | 0    | 0    | 0.50 | 0.50 | 0    | 0    | 0  | 5       | 0.50\nVMOVUPD -0xa0(%RAX),%ZMM13             | 1     | 0    | 0    | 0.50 | 0.50 | 0    | 0    | 0  | 5       | 0.50\nVSUBPD 0x10(%RAX),%ZMM8,%ZMM3          | 1     | 0.50 | 0.50 | 0.50 | 0.50 | 0    | 0    | 0  | 6       | 0.50\nVMOVSD 0x8(%RDI,%R9,1),%XMM9           | 1     | 0    | 0    | 0.50 | 0.50 | 0    | 0    | 0  | 5       | 0.50\nVSUBPD -0xf0(%RAX),%ZMM13,%ZMM8        | 1     | 0.50 | 0.50 | 0.50 | 0.50 | 0    | 0    | 0  | 6       | 0.50\nVMOVSD 0x20(%RDI),%XMM10               | 1     | 0    | 0    | 0.50 | 0.50 | 0    | 0    | 0  | 5       | 0.50\nVMOVHPD 0x10(%R9,%RDI,1),%XMM9,%XMM12  | 1     | 0    | 0    | 0.50 | 0.50 | 0    | 0    | 0  | 6       | 1.50\nVMOVHPD (%RDI,%R9,1),%XMM10,%XMM10     | 1     | 0    | 0    | 0.50 | 0.50 | 0    | 0    | 0  | 6       | 1.50\nCMP %RAX,0x328(%RSP)                   | 1     | 0    | 0    | 1    | 0    | 0.50 | 0.50 | 0  | 1       | 1\nVMOVUPD 0x10(%RDI),%XMM13              | 1     | 0    | 0    | 0.50 | 0.50 | 0    | 0    | 0  | 5       | 0.50\nVINSERTF128 $0x1,%XMM12,%YMM10,%YMM12  | 1     | 1    | 0    | 0    | 0    | 0    | 0    | 0  | 3-6     | 1\nVMOVUPD (%RDI),%XMM9                   | 1     | 0    | 0    | 0.50 | 0.50 | 0    | 0    | 0  | 5       | 0.50\nVFNMADD132PD %ZMM11,%ZMM17,%ZMM7       | 1     | 0.50 | 0.50 | 0    | 0    | 0    | 0    | 0  | 6       | 0.50\nVINSERTF128 $0x1,%XMM13,%YMM9,%YMM13   | 1     | 1    | 0    | 0    | 0    | 0    | 0    | 0  | 3-6     | 1\nVFNMADD132PD %ZMM11,%ZMM15,%ZMM5       | 1     | 0.50 | 0.50 | 0    | 0    | 0    | 0    | 0  | 6       | 0.50\nVINSERTF64X4 $0x1,%YMM12,%ZMM13,%ZMM10 | 1     | 1    | 0    | 0    | 0    | 0    | 0    | 0  | 3-6     | 1\nVFNMADD132PD %ZMM11,%ZMM14,%ZMM4       | 1     | 0.50 | 0.50 | 0    | 0    | 0    | 0    | 0  | 6       | 0.50\nVFNMADD132PD %ZMM11,%ZMM10,%ZMM8       | 1     | 0.50 | 0.50 | 0    | 0    | 0    | 0    | 0  | 6       | 0.50\nVFNMADD231PD %ZMM3,%ZMM11,%ZMM2        | 1     | 0.50 | 0.50 | 0    | 0    | 0    | 0    | 0  | 6       | 0.50\nVMOVUPD %ZMM8,-0x140(%R13)             | 1     | 0    | 0    | 0.50 | 0.50 | 0    | 0    | 1  | 2       | 1\nLEA (%RDI,%R8,1),%RDI                  | 1     | 0    | 0    | 0    | 0    | 0.50 | 0.50 | 0  | 1       | 0.50\nVMOVUPD %ZMM7,-0x100(%R13)             | 1     | 0    | 0    | 0.50 | 0.50 | 0    | 0    | 1  | 2       | 1\nLEA (%RCX,%R8,1),%RCX                  | 1     | 0    | 0    | 0    | 0    | 0.50 | 0.50 | 0  | 1       | 0.50\nVMOVUPD %ZMM5,-0xc0(%R13)              | 1     | 0    | 0    | 0.50 | 0.50 | 0    | 0    | 1  | 2       | 1\nLEA (%RDX,%R8,1),%RDX                  | 1     | 0    | 0    | 0    | 0    | 0.50 | 0.50 | 0  | 1       | 0.50\nVMOVUPD %ZMM4,-0x80(%R13)              | 1     | 0    | 0    | 0.50 | 0.50 | 0    | 0    | 1  | 2       | 1\nVMOVUPD %ZMM2,-0x40(%R13)              | 1     | 0    | 0    | 0.50 | 0.50 | 0    | 0    | 1  | 2       | 1\nJNE 22118 <rhs_._omp_fn.0+0x5128>      | 1     | 0    | 0    | 0    | 0    | 0    | 1    | 0  | 0       | 1-2\n",
        },
      },
      header = {
        "9% of peak computational performance is used (3.08 out of 32.00 FLOP per cycle (GFLOPS @ 1GHz))",
      },
      brief = {
      },
      gain = {
        {
          workaround = " - Try to reorganize arrays of structures to structures of arrays\n - Consider to permute loops (see vectorization gain report)\n - To reference allocatable arrays, use \"allocatable\" instead of \"pointer\" pointers or qualify them with the \"contiguous\" attribute (Fortran 2008)\n - For structures, limit to one indirection. For example, use a_b%c instead of a%b%c with a_b set to a%b before this loop\n",
          title = "Code clean check",
          txt = "Detected a slowdown caused by scalar integer instructions (typically used for address computation).\nBy removing them, you can lower the cost of an iteration from 39.00 to 37.00 cycles (1.05x speedup).",
        },
        {
          workaround = " - Try another compiler or update/tune your current one\n - Remove inter-iterations dependences from your loop and make it unit-stride:\n  * If your arrays have 2 or more dimensions, check whether elements are accessed contiguously and, otherwise, try to permute loops accordingly:\nFortran storage order is column-major: do i do j a(i,j) = b(i,j) (slow, non stride 1) => do i do j a(j,i) = b(i,j) (fast, stride 1)\n  * If your loop streams arrays of structures (AoS), try to use structures of arrays instead (SoA):\ndo i a(i)%x = b(i)%x (slow, non stride 1) => do i a%x(i) = b%x(i) (fast, stride 1)\n",
          details = "57% of SSE/AVX instructions are used in vector version (process two or more data elements in vector registers):\n - 33% of SSE/AVX loads are used in vector version.\nSince your execution units are vector units, only a fully vectorized loop can use their full power.\n",
          title = "Vectorization",
          txt = "Your loop is partially vectorized.\nOnly 42% of vector register length is used (average across all SSE/AVX instructions).\nBy fully vectorizing your loop, you can lower the cost of an iteration from 39.00 to 19.00 cycles (2.05x speedup).",
        },
        {
          title = "Execution units bottlenecks",
          txt = "Found no such bottlenecks but see expert reports for more complex bottlenecks.",
        },
      },
      potential = {
        {
          title = "FMA",
          txt = "Detected 40 FMA (fused multiply-add) operations.",
        },
      },
    },
  common = {
    header = {
      "The loop is defined in /users/user2222/NPB3.4.1-MZ/NPB3.4-MZ-MPI/LU-MZ/rhs.f90:383.\n",
      "It is main loop of related source loop which is unrolled by 4 (including vectorization).",
    },
    nb_paths = 1,
  },
}
