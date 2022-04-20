_cqa_text_report = {
  paths = {
    {
      hint = {
        {
          details = "These instructions generate more than one micro-operation and only one of them can be decoded during a cycle and the extra micro-operations increase pressure on execution units.\n<ul><li>VEXTRACTF128: 10 occurrences</li><li>VINSERTF128: 10 occurrences</li></ul>",
          title = "Complex instructions",
          txt = "Detected COMPLEX INSTRUCTIONS.\n",
        },
        {
          workaround = "<ul><li>Try to reorganize arrays of structures to structures of arrays</li><li>Consider to permute loops (see vectorization gain report)</li></ul>",
          details = "<ul><li>Constant non-unit stride: 2 occurrence(s)</li></ul>Non-unit stride (uncontiguous) accesses are not efficiently using data caches\n",
          title = "Slow data structures access",
          txt = "Detected data structures (typically arrays) that cannot be efficiently read/written",
        },
        {
          workaround = "Use vector aligned instructions:\n<ol><li>The GNU Fortran compiler does not support allocation alignment and does not feature directives to benefit from aligned data.</li><li>Use another compiler or locally use C code (for instance via libraries)</li></ol>",
          details = "<ul><li>VEXTRACTF128: 10 occurrences</li><li>VINSERTF128: 10 occurrences</li><li>VMOVUPS: 10 occurrences</li></ul>",
          title = "Vector unaligned load/store instructions",
          txt = "Detected 30 optimal vector unaligned load/store instructions.\n",
        },
        {
          title = "Type of elements and instruction set",
          txt = "No instructions are processing arithmetic or math operations on FP elements. This loop is probably writing/copying data or processing integer elements.",
        },
        {
          title = "Matching between your loop (in the source code) and the binary loop",
          txt = "The binary loop does not contain any FP arithmetical operations.\nThe binary loop is loading 320 bytes.\nThe binary loop is storing 320 bytes.",
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
          txt = "<table><tr><td>nb instructions</td><td>54</td></tr><tr><td>nb uops</td><td>73</td></tr><tr><td>loop length</td><td>377</td></tr><tr><td>used x86 registers</td><td>3</td></tr><tr><td>used mmx registers</td><td>0</td></tr><tr><td>used xmm registers</td><td>13</td></tr><tr><td>used ymm registers</td><td>15</td></tr><tr><td>used zmm registers</td><td>0</td></tr><tr><td>nb stack references</td><td>0</td></tr></table>",
        },
        {
          title = "Front-end",
          txt = "ASSUMED MACRO FUSION\nFIT IN UOP CACHE\n<table><tr><td>micro-operation queue</td><td>18.25 cycles</td></tr><tr><td>front end</td><td>18.25 cycles</td></tr></table>",
        },
        {
          title = "Back-end",
          txt = "<table><tr><th>      </th><th>P0</th><th>P1</th><th>P2</th><th>P3</th><th>P4</th><th>P5</th></tr><tr><td>uops</td><td>1.17</td><td>0.83</td><td>20.00</td><td>20.00</td><td>20.00</td><td>21.00</td></tr><tr><td>cycles</td><td>1.17</td><td>0.83</td><td>20.00</td><td>20.00</td><td>20.00</td><td>21.00</td></tr></table>\n<table><tr><td>Cycles executing div or sqrt instructions</td><td>NA</td></tr><tr><td>Longest recurrence chain latency (RecMII)</td><td>1.00</td></tr></table>",
        },
        {
          title = "Cycles summary",
          txt = "<table><tr><td>Front-end</td><td>18.25</td></tr><tr><td>Dispatch</td><td>21.00</td></tr><tr><td>Data deps.</td><td>1.00</td></tr><tr><td>Overall L1</td><td>21.00</td></tr></table>",
        },
        {
          title = "Vectorization ratios",
          txt = "<table><tr><td>all</td><td>100%</td></tr><tr><td>load</td><td>100%</td></tr><tr><td>store</td><td>100%</td></tr><tr><td>mul</td><td>NA (no mul vectorizable/vectorized instructions)</td></tr><tr><td>add-sub</td><td>NA (no add-sub vectorizable/vectorized instructions)</td></tr><tr><td>fma</td><td>NA (no fma vectorizable/vectorized instructions)</td></tr><tr><td>div/sqrt</td><td>NA (no div/sqrt vectorizable/vectorized instructions)</td></tr><tr><td>other</td><td>100%</td></tr></table>",
        },
        {
          title = "Vector efficiency ratios",
          txt = "<table><tr><td>all</td><td>60%</td></tr><tr><td>load</td><td>50%</td></tr><tr><td>store</td><td>50%</td></tr><tr><td>mul</td><td>NA (no mul vectorizable/vectorized instructions)</td></tr><tr><td>add-sub</td><td>NA (no add-sub vectorizable/vectorized instructions)</td></tr><tr><td>fma</td><td>NA (no fma vectorizable/vectorized instructions)</td></tr><tr><td>div/sqrt</td><td>NA (no div/sqrt vectorizable/vectorized instructions)</td></tr><tr><td>other</td><td>75%</td></tr></table>",
        },
        {
          title = "Cycles and memory resources usage",
          txt = "Assuming all data fit into the L1 cache, each iteration of the binary loop takes 21.00 cycles. At this rate:\n<ul><li>47% of peak load performance is reached (15.24 out of 32.00 bytes loaded per cycle (GB/s @ 1GHz))</li><li>95% of peak store performance is reached (15.24 out of 16.00 bytes stored per cycle (GB/s @ 1GHz))</li></ul>",
        },
        {
          title = "Front-end bottlenecks",
          txt = "Found no such bottlenecks.",
        },
        {
          title = "ASM code",
          txt = "In the binary file, the address of the loop is: afe0\n\n<table><tr><th>Instruction</th><th>Nb FU</th><th>P0</th><th>P1</th><th>P2</th><th>P3</th><th>P4</th><th>P5</th><th>Latency</th><th>Recip. throughput</th></tr><tr><td>LEA 0xa0(%RAX),%RDX</td><td>1</td><td>0.50</td><td>0.50</td><td>0</td><td>0</td><td>0</td><td>0</td><td>1</td><td>0.50</td></tr><tr><td>VMOVUPD 0x20(%RAX),%XMM3</td><td>1</td><td>0</td><td>0</td><td>0.50</td><td>0.50</td><td>0</td><td>0</td><td>3</td><td>0.50</td></tr><tr><td>ADD $0x140,%RAX</td><td>1</td><td>0.33</td><td>0.33</td><td>0</td><td>0</td><td>0</td><td>0.33</td><td>1</td><td>0.33</td></tr><tr><td>VINSERTF128 $0x1,-0x110(%RAX),%YMM3,%YMM11</td><td>2</td><td>0</td><td>0</td><td>0.50</td><td>0.50</td><td>0</td><td>1</td><td>2</td><td>1</td></tr><tr><td>VMOVUPD -0x100(%RAX),%XMM5</td><td>1</td><td>0</td><td>0</td><td>0.50</td><td>0.50</td><td>0</td><td>0</td><td>3</td><td>0.50</td></tr><tr><td>VXORPD %YMM0,%YMM11,%YMM14</td><td>1</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0</td><td>1</td><td>1</td><td>1</td></tr><tr><td>VINSERTF128 $0x1,-0xf0(%RAX),%YMM5,%YMM7</td><td>2</td><td>0</td><td>0</td><td>0.50</td><td>0.50</td><td>0</td><td>1</td><td>2</td><td>1</td></tr><tr><td>VXORPD %YMM0,%YMM7,%YMM12</td><td>1</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0</td><td>1</td><td>1</td><td>1</td></tr><tr><td>VMOVUPS %XMM14,-0x120(%RAX)</td><td>1</td><td>0</td><td>0</td><td>0.50</td><td>0.50</td><td>1</td><td>0</td><td>3</td><td>1</td></tr><tr><td>VMOVUPD -0xe0(%RAX),%XMM1</td><td>1</td><td>0</td><td>0</td><td>0.50</td><td>0.50</td><td>0</td><td>0</td><td>3</td><td>0.50</td></tr><tr><td>VEXTRACTF128 $0x1,%YMM12,-0xf0(%RAX)</td><td>2</td><td>0</td><td>0</td><td>0.50</td><td>0.50</td><td>1</td><td>0</td><td>2</td><td>1</td></tr><tr><td>VEXTRACTF128 $0x1,%YMM14,-0x110(%RAX)</td><td>2</td><td>0</td><td>0</td><td>0.50</td><td>0.50</td><td>1</td><td>0</td><td>2</td><td>1</td></tr><tr><td>VMOVUPS %XMM12,-0x100(%RAX)</td><td>1</td><td>0</td><td>0</td><td>0.50</td><td>0.50</td><td>1</td><td>0</td><td>3</td><td>1</td></tr><tr><td>VMOVUPD -0xc0(%RAX),%XMM15</td><td>1</td><td>0</td><td>0</td><td>0.50</td><td>0.50</td><td>0</td><td>0</td><td>3</td><td>0.50</td></tr><tr><td>VINSERTF128 $0x1,-0xd0(%RAX),%YMM1,%YMM9</td><td>2</td><td>0</td><td>0</td><td>0.50</td><td>0.50</td><td>0</td><td>1</td><td>2</td><td>1</td></tr><tr><td>VINSERTF128 $0x1,-0xb0(%RAX),%YMM15,%YMM2</td><td>2</td><td>0</td><td>0</td><td>0.50</td><td>0.50</td><td>0</td><td>1</td><td>2</td><td>1</td></tr><tr><td>VMOVUPD -0x140(%RAX),%XMM4</td><td>1</td><td>0</td><td>0</td><td>0.50</td><td>0.50</td><td>0</td><td>0</td><td>3</td><td>0.50</td></tr><tr><td>VXORPD %YMM0,%YMM9,%YMM8</td><td>1</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0</td><td>1</td><td>1</td><td>1</td></tr><tr><td>VXORPD %YMM0,%YMM2,%YMM10</td><td>1</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0</td><td>1</td><td>1</td><td>1</td></tr><tr><td>VMOVUPS %XMM8,-0xe0(%RAX)</td><td>1</td><td>0</td><td>0</td><td>0.50</td><td>0.50</td><td>1</td><td>0</td><td>3</td><td>1</td></tr><tr><td>VEXTRACTF128 $0x1,%YMM8,-0xd0(%RAX)</td><td>2</td><td>0</td><td>0</td><td>0.50</td><td>0.50</td><td>1</td><td>0</td><td>2</td><td>1</td></tr><tr><td>VMOVUPS %XMM10,-0xc0(%RAX)</td><td>1</td><td>0</td><td>0</td><td>0.50</td><td>0.50</td><td>1</td><td>0</td><td>3</td><td>1</td></tr><tr><td>VEXTRACTF128 $0x1,%YMM10,-0xb0(%RAX)</td><td>2</td><td>0</td><td>0</td><td>0.50</td><td>0.50</td><td>1</td><td>0</td><td>2</td><td>1</td></tr><tr><td>VINSERTF128 $0x1,-0x130(%RAX),%YMM4,%YMM13</td><td>2</td><td>0</td><td>0</td><td>0.50</td><td>0.50</td><td>0</td><td>1</td><td>2</td><td>1</td></tr><tr><td>VXORPD %YMM0,%YMM13,%YMM3</td><td>1</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0</td><td>1</td><td>1</td><td>1</td></tr><tr><td>VMOVUPD -0xa0(%RAX),%XMM13</td><td>1</td><td>0</td><td>0</td><td>0.50</td><td>0.50</td><td>0</td><td>0</td><td>3</td><td>0.50</td></tr><tr><td>VMOVUPS %XMM3,-0x140(%RAX)</td><td>1</td><td>0</td><td>0</td><td>0.50</td><td>0.50</td><td>1</td><td>0</td><td>3</td><td>1</td></tr><tr><td>VEXTRACTF128 $0x1,%YMM3,-0x130(%RAX)</td><td>2</td><td>0</td><td>0</td><td>0.50</td><td>0.50</td><td>1</td><td>0</td><td>2</td><td>1</td></tr><tr><td>VMOVUPD 0x20(%RDX),%XMM11</td><td>1</td><td>0</td><td>0</td><td>0.50</td><td>0.50</td><td>0</td><td>0</td><td>3</td><td>0.50</td></tr><tr><td>VINSERTF128 $0x1,0x10(%RDX),%YMM13,%YMM3</td><td>2</td><td>0</td><td>0</td><td>0.50</td><td>0.50</td><td>0</td><td>1</td><td>2</td><td>1</td></tr><tr><td>VINSERTF128 $0x1,0x30(%RDX),%YMM11,%YMM14</td><td>2</td><td>0</td><td>0</td><td>0.50</td><td>0.50</td><td>0</td><td>1</td><td>2</td><td>1</td></tr><tr><td>VXORPD %YMM0,%YMM3,%YMM11</td><td>1</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0</td><td>1</td><td>1</td><td>1</td></tr><tr><td>VMOVUPD 0x40(%RDX),%XMM5</td><td>1</td><td>0</td><td>0</td><td>0.50</td><td>0.50</td><td>0</td><td>0</td><td>3</td><td>0.50</td></tr><tr><td>VINSERTF128 $0x1,0x50(%RDX),%YMM5,%YMM7</td><td>2</td><td>0</td><td>0</td><td>0.50</td><td>0.50</td><td>0</td><td>1</td><td>2</td><td>1</td></tr><tr><td>VXORPD %YMM0,%YMM14,%YMM12</td><td>1</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0</td><td>1</td><td>1</td><td>1</td></tr><tr><td>VXORPD %YMM0,%YMM7,%YMM9</td><td>1</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0</td><td>1</td><td>1</td><td>1</td></tr><tr><td>VMOVUPD 0x60(%RDX),%XMM1</td><td>1</td><td>0</td><td>0</td><td>0.50</td><td>0.50</td><td>0</td><td>0</td><td>3</td><td>0.50</td></tr><tr><td>VINSERTF128 $0x1,0x70(%RDX),%YMM1,%YMM8</td><td>2</td><td>0</td><td>0</td><td>0.50</td><td>0.50</td><td>0</td><td>1</td><td>2</td><td>1</td></tr><tr><td>VXORPD %YMM0,%YMM8,%YMM15</td><td>1</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0</td><td>1</td><td>1</td><td>1</td></tr><tr><td>VMOVUPD 0x80(%RDX),%XMM2</td><td>1</td><td>0</td><td>0</td><td>0.50</td><td>0.50</td><td>0</td><td>0</td><td>3</td><td>0.50</td></tr><tr><td>VINSERTF128 $0x1,0x90(%RDX),%YMM2,%YMM10</td><td>2</td><td>0</td><td>0</td><td>0.50</td><td>0.50</td><td>0</td><td>1</td><td>2</td><td>1</td></tr><tr><td>VMOVUPS %XMM11,-0xa0(%RAX)</td><td>1</td><td>0</td><td>0</td><td>0.50</td><td>0.50</td><td>1</td><td>0</td><td>3</td><td>1</td></tr><tr><td>VXORPD %YMM0,%YMM10,%YMM4</td><td>1</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0</td><td>1</td><td>1</td><td>1</td></tr><tr><td>VEXTRACTF128 $0x1,%YMM11,0x10(%RDX)</td><td>2</td><td>0</td><td>0</td><td>0.50</td><td>0.50</td><td>1</td><td>0</td><td>2</td><td>1</td></tr><tr><td>VMOVUPS %XMM12,0x20(%RDX)</td><td>1</td><td>0</td><td>0</td><td>0.50</td><td>0.50</td><td>1</td><td>0</td><td>3</td><td>1</td></tr><tr><td>VEXTRACTF128 $0x1,%YMM12,0x30(%RDX)</td><td>2</td><td>0</td><td>0</td><td>0.50</td><td>0.50</td><td>1</td><td>0</td><td>2</td><td>1</td></tr><tr><td>VEXTRACTF128 $0x1,%YMM9,0x50(%RDX)</td><td>2</td><td>0</td><td>0</td><td>0.50</td><td>0.50</td><td>1</td><td>0</td><td>2</td><td>1</td></tr><tr><td>VMOVUPS %XMM9,0x40(%RDX)</td><td>1</td><td>0</td><td>0</td><td>0.50</td><td>0.50</td><td>1</td><td>0</td><td>3</td><td>1</td></tr><tr><td>VEXTRACTF128 $0x1,%YMM15,0x70(%RDX)</td><td>2</td><td>0</td><td>0</td><td>0.50</td><td>0.50</td><td>1</td><td>0</td><td>2</td><td>1</td></tr><tr><td>VEXTRACTF128 $0x1,%YMM4,0x90(%RDX)</td><td>2</td><td>0</td><td>0</td><td>0.50</td><td>0.50</td><td>1</td><td>0</td><td>2</td><td>1</td></tr><tr><td>VMOVUPS %XMM15,0x60(%RDX)</td><td>1</td><td>0</td><td>0</td><td>0.50</td><td>0.50</td><td>1</td><td>0</td><td>3</td><td>1</td></tr><tr><td>VMOVUPS %XMM4,0x80(%RDX)</td><td>1</td><td>0</td><td>0</td><td>0.50</td><td>0.50</td><td>1</td><td>0</td><td>3</td><td>1</td></tr><tr><td>CMP %R12,%RAX</td><td>1</td><td>0.33</td><td>0.33</td><td>0</td><td>0</td><td>0</td><td>0.33</td><td>1</td><td>0.33</td></tr><tr><td>JNE afe0 <exact_rhs_._omp_fn.0+0x3c90></td><td>1</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0</td><td>1</td><td>0</td><td>1-2</td></tr></table>",
        },
      },
      header = {
        "0% of peak computational performance is used (0.00 out of 2.00 FLOP per cycle (GFLOPS @ 1GHz))",
      },
      brief = {
      },
      gain = {
        {
          workaround = "Use vector aligned instructions:\n<ol><li>The GNU Fortran compiler does not support allocation alignment and does not feature directives to benefit from aligned data.</li><li>Use another compiler or locally use C code (for instance via libraries)</li></ol>",
          details = "All SSE/AVX instructions are used in vector version (process two or more data elements in vector registers).\nSince your execution units are vector units, only a fully vectorized loop can use their full power.\n",
          title = "Vectorization",
          txt = "Your loop is vectorized, but using 60% register length (average across all SSE/AVX instructions).\nBy fully vectorizing your loop, you can lower the cost of an iteration from 21.00 to 20.00 cycles (1.05x speedup).",
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
          details = "These instructions generate more than one micro-operation and only one of them can be decoded during a cycle and the extra micro-operations increase pressure on execution units.\n<ul><li>VEXTRACTF128: 10 occurrences</li><li>VINSERTF128: 10 occurrences</li></ul>",
          title = "Complex instructions",
          txt = "Detected COMPLEX INSTRUCTIONS.\n",
        },
        {
          workaround = "<ul><li>Try to reorganize arrays of structures to structures of arrays</li><li>Consider to permute loops (see vectorization gain report)</li></ul>",
          details = "<ul><li>Constant non-unit stride: 2 occurrence(s)</li></ul>Non-unit stride (uncontiguous) accesses are not efficiently using data caches\n",
          title = "Slow data structures access",
          txt = "Detected data structures (typically arrays) that cannot be efficiently read/written",
        },
        {
          workaround = "Use vector aligned instructions:\n<ol><li>The GNU Fortran compiler does not support allocation alignment and does not feature directives to benefit from aligned data.</li><li>Use another compiler or locally use C code (for instance via libraries)</li></ol>",
          details = "<ul><li>VEXTRACTF128: 10 occurrences</li><li>VINSERTF128: 10 occurrences</li><li>VMOVUPS: 10 occurrences</li></ul>",
          title = "Vector unaligned load/store instructions",
          txt = "Detected 30 optimal vector unaligned load/store instructions.\n",
        },
        {
          title = "Type of elements and instruction set",
          txt = "No instructions are processing arithmetic or math operations on FP elements. This loop is probably writing/copying data or processing integer elements.",
        },
        {
          title = "Matching between your loop (in the source code) and the binary loop",
          txt = "The binary loop does not contain any FP arithmetical operations.\nThe binary loop is loading 320 bytes.\nThe binary loop is storing 320 bytes.",
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
          txt = "<table><tr><td>nb instructions</td><td>54</td></tr><tr><td>nb uops</td><td>73</td></tr><tr><td>loop length</td><td>377</td></tr><tr><td>used x86 registers</td><td>3</td></tr><tr><td>used mmx registers</td><td>0</td></tr><tr><td>used xmm registers</td><td>13</td></tr><tr><td>used ymm registers</td><td>15</td></tr><tr><td>used zmm registers</td><td>0</td></tr><tr><td>nb stack references</td><td>0</td></tr></table>",
        },
        {
          title = "Front-end",
          txt = "ASSUMED MACRO FUSION\nFIT IN UOP CACHE\n<table><tr><td>micro-operation queue</td><td>18.25 cycles</td></tr><tr><td>front end</td><td>18.25 cycles</td></tr></table>",
        },
        {
          title = "Back-end",
          txt = "<table><tr><th>      </th><th>P0</th><th>P1</th><th>P2</th><th>P3</th><th>P4</th><th>P5</th></tr><tr><td>uops</td><td>1.17</td><td>0.83</td><td>20.00</td><td>20.00</td><td>20.00</td><td>21.00</td></tr><tr><td>cycles</td><td>1.17</td><td>0.83</td><td>20.00</td><td>20.00</td><td>20.00</td><td>21.00</td></tr></table>\n<table><tr><td>Cycles executing div or sqrt instructions</td><td>NA</td></tr><tr><td>Longest recurrence chain latency (RecMII)</td><td>1.00</td></tr></table>",
        },
        {
          title = "Cycles summary",
          txt = "<table><tr><td>Front-end</td><td>18.25</td></tr><tr><td>Dispatch</td><td>21.00</td></tr><tr><td>Data deps.</td><td>1.00</td></tr><tr><td>Overall L1</td><td>21.00</td></tr></table>",
        },
        {
          title = "Vectorization ratios",
          txt = "<table><tr><td>all</td><td>100%</td></tr><tr><td>load</td><td>100%</td></tr><tr><td>store</td><td>100%</td></tr><tr><td>mul</td><td>NA (no mul vectorizable/vectorized instructions)</td></tr><tr><td>add-sub</td><td>NA (no add-sub vectorizable/vectorized instructions)</td></tr><tr><td>fma</td><td>NA (no fma vectorizable/vectorized instructions)</td></tr><tr><td>div/sqrt</td><td>NA (no div/sqrt vectorizable/vectorized instructions)</td></tr><tr><td>other</td><td>100%</td></tr></table>",
        },
        {
          title = "Vector efficiency ratios",
          txt = "<table><tr><td>all</td><td>60%</td></tr><tr><td>load</td><td>50%</td></tr><tr><td>store</td><td>50%</td></tr><tr><td>mul</td><td>NA (no mul vectorizable/vectorized instructions)</td></tr><tr><td>add-sub</td><td>NA (no add-sub vectorizable/vectorized instructions)</td></tr><tr><td>fma</td><td>NA (no fma vectorizable/vectorized instructions)</td></tr><tr><td>div/sqrt</td><td>NA (no div/sqrt vectorizable/vectorized instructions)</td></tr><tr><td>other</td><td>75%</td></tr></table>",
        },
        {
          title = "Cycles and memory resources usage",
          txt = "Assuming all data fit into the L1 cache, each iteration of the binary loop takes 21.00 cycles. At this rate:\n<ul><li>47% of peak load performance is reached (15.24 out of 32.00 bytes loaded per cycle (GB/s @ 1GHz))</li><li>95% of peak store performance is reached (15.24 out of 16.00 bytes stored per cycle (GB/s @ 1GHz))</li></ul>",
        },
        {
          title = "Front-end bottlenecks",
          txt = "Found no such bottlenecks.",
        },
        {
          title = "ASM code",
          txt = "In the binary file, the address of the loop is: afe0\n\n<table><tr><th>Instruction</th><th>Nb FU</th><th>P0</th><th>P1</th><th>P2</th><th>P3</th><th>P4</th><th>P5</th><th>Latency</th><th>Recip. throughput</th></tr><tr><td>LEA 0xa0(%RAX),%RDX</td><td>1</td><td>0.50</td><td>0.50</td><td>0</td><td>0</td><td>0</td><td>0</td><td>1</td><td>0.50</td></tr><tr><td>VMOVUPD 0x20(%RAX),%XMM3</td><td>1</td><td>0</td><td>0</td><td>0.50</td><td>0.50</td><td>0</td><td>0</td><td>3</td><td>0.50</td></tr><tr><td>ADD $0x140,%RAX</td><td>1</td><td>0.33</td><td>0.33</td><td>0</td><td>0</td><td>0</td><td>0.33</td><td>1</td><td>0.33</td></tr><tr><td>VINSERTF128 $0x1,-0x110(%RAX),%YMM3,%YMM11</td><td>2</td><td>0</td><td>0</td><td>0.50</td><td>0.50</td><td>0</td><td>1</td><td>2</td><td>1</td></tr><tr><td>VMOVUPD -0x100(%RAX),%XMM5</td><td>1</td><td>0</td><td>0</td><td>0.50</td><td>0.50</td><td>0</td><td>0</td><td>3</td><td>0.50</td></tr><tr><td>VXORPD %YMM0,%YMM11,%YMM14</td><td>1</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0</td><td>1</td><td>1</td><td>1</td></tr><tr><td>VINSERTF128 $0x1,-0xf0(%RAX),%YMM5,%YMM7</td><td>2</td><td>0</td><td>0</td><td>0.50</td><td>0.50</td><td>0</td><td>1</td><td>2</td><td>1</td></tr><tr><td>VXORPD %YMM0,%YMM7,%YMM12</td><td>1</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0</td><td>1</td><td>1</td><td>1</td></tr><tr><td>VMOVUPS %XMM14,-0x120(%RAX)</td><td>1</td><td>0</td><td>0</td><td>0.50</td><td>0.50</td><td>1</td><td>0</td><td>3</td><td>1</td></tr><tr><td>VMOVUPD -0xe0(%RAX),%XMM1</td><td>1</td><td>0</td><td>0</td><td>0.50</td><td>0.50</td><td>0</td><td>0</td><td>3</td><td>0.50</td></tr><tr><td>VEXTRACTF128 $0x1,%YMM12,-0xf0(%RAX)</td><td>2</td><td>0</td><td>0</td><td>0.50</td><td>0.50</td><td>1</td><td>0</td><td>2</td><td>1</td></tr><tr><td>VEXTRACTF128 $0x1,%YMM14,-0x110(%RAX)</td><td>2</td><td>0</td><td>0</td><td>0.50</td><td>0.50</td><td>1</td><td>0</td><td>2</td><td>1</td></tr><tr><td>VMOVUPS %XMM12,-0x100(%RAX)</td><td>1</td><td>0</td><td>0</td><td>0.50</td><td>0.50</td><td>1</td><td>0</td><td>3</td><td>1</td></tr><tr><td>VMOVUPD -0xc0(%RAX),%XMM15</td><td>1</td><td>0</td><td>0</td><td>0.50</td><td>0.50</td><td>0</td><td>0</td><td>3</td><td>0.50</td></tr><tr><td>VINSERTF128 $0x1,-0xd0(%RAX),%YMM1,%YMM9</td><td>2</td><td>0</td><td>0</td><td>0.50</td><td>0.50</td><td>0</td><td>1</td><td>2</td><td>1</td></tr><tr><td>VINSERTF128 $0x1,-0xb0(%RAX),%YMM15,%YMM2</td><td>2</td><td>0</td><td>0</td><td>0.50</td><td>0.50</td><td>0</td><td>1</td><td>2</td><td>1</td></tr><tr><td>VMOVUPD -0x140(%RAX),%XMM4</td><td>1</td><td>0</td><td>0</td><td>0.50</td><td>0.50</td><td>0</td><td>0</td><td>3</td><td>0.50</td></tr><tr><td>VXORPD %YMM0,%YMM9,%YMM8</td><td>1</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0</td><td>1</td><td>1</td><td>1</td></tr><tr><td>VXORPD %YMM0,%YMM2,%YMM10</td><td>1</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0</td><td>1</td><td>1</td><td>1</td></tr><tr><td>VMOVUPS %XMM8,-0xe0(%RAX)</td><td>1</td><td>0</td><td>0</td><td>0.50</td><td>0.50</td><td>1</td><td>0</td><td>3</td><td>1</td></tr><tr><td>VEXTRACTF128 $0x1,%YMM8,-0xd0(%RAX)</td><td>2</td><td>0</td><td>0</td><td>0.50</td><td>0.50</td><td>1</td><td>0</td><td>2</td><td>1</td></tr><tr><td>VMOVUPS %XMM10,-0xc0(%RAX)</td><td>1</td><td>0</td><td>0</td><td>0.50</td><td>0.50</td><td>1</td><td>0</td><td>3</td><td>1</td></tr><tr><td>VEXTRACTF128 $0x1,%YMM10,-0xb0(%RAX)</td><td>2</td><td>0</td><td>0</td><td>0.50</td><td>0.50</td><td>1</td><td>0</td><td>2</td><td>1</td></tr><tr><td>VINSERTF128 $0x1,-0x130(%RAX),%YMM4,%YMM13</td><td>2</td><td>0</td><td>0</td><td>0.50</td><td>0.50</td><td>0</td><td>1</td><td>2</td><td>1</td></tr><tr><td>VXORPD %YMM0,%YMM13,%YMM3</td><td>1</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0</td><td>1</td><td>1</td><td>1</td></tr><tr><td>VMOVUPD -0xa0(%RAX),%XMM13</td><td>1</td><td>0</td><td>0</td><td>0.50</td><td>0.50</td><td>0</td><td>0</td><td>3</td><td>0.50</td></tr><tr><td>VMOVUPS %XMM3,-0x140(%RAX)</td><td>1</td><td>0</td><td>0</td><td>0.50</td><td>0.50</td><td>1</td><td>0</td><td>3</td><td>1</td></tr><tr><td>VEXTRACTF128 $0x1,%YMM3,-0x130(%RAX)</td><td>2</td><td>0</td><td>0</td><td>0.50</td><td>0.50</td><td>1</td><td>0</td><td>2</td><td>1</td></tr><tr><td>VMOVUPD 0x20(%RDX),%XMM11</td><td>1</td><td>0</td><td>0</td><td>0.50</td><td>0.50</td><td>0</td><td>0</td><td>3</td><td>0.50</td></tr><tr><td>VINSERTF128 $0x1,0x10(%RDX),%YMM13,%YMM3</td><td>2</td><td>0</td><td>0</td><td>0.50</td><td>0.50</td><td>0</td><td>1</td><td>2</td><td>1</td></tr><tr><td>VINSERTF128 $0x1,0x30(%RDX),%YMM11,%YMM14</td><td>2</td><td>0</td><td>0</td><td>0.50</td><td>0.50</td><td>0</td><td>1</td><td>2</td><td>1</td></tr><tr><td>VXORPD %YMM0,%YMM3,%YMM11</td><td>1</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0</td><td>1</td><td>1</td><td>1</td></tr><tr><td>VMOVUPD 0x40(%RDX),%XMM5</td><td>1</td><td>0</td><td>0</td><td>0.50</td><td>0.50</td><td>0</td><td>0</td><td>3</td><td>0.50</td></tr><tr><td>VINSERTF128 $0x1,0x50(%RDX),%YMM5,%YMM7</td><td>2</td><td>0</td><td>0</td><td>0.50</td><td>0.50</td><td>0</td><td>1</td><td>2</td><td>1</td></tr><tr><td>VXORPD %YMM0,%YMM14,%YMM12</td><td>1</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0</td><td>1</td><td>1</td><td>1</td></tr><tr><td>VXORPD %YMM0,%YMM7,%YMM9</td><td>1</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0</td><td>1</td><td>1</td><td>1</td></tr><tr><td>VMOVUPD 0x60(%RDX),%XMM1</td><td>1</td><td>0</td><td>0</td><td>0.50</td><td>0.50</td><td>0</td><td>0</td><td>3</td><td>0.50</td></tr><tr><td>VINSERTF128 $0x1,0x70(%RDX),%YMM1,%YMM8</td><td>2</td><td>0</td><td>0</td><td>0.50</td><td>0.50</td><td>0</td><td>1</td><td>2</td><td>1</td></tr><tr><td>VXORPD %YMM0,%YMM8,%YMM15</td><td>1</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0</td><td>1</td><td>1</td><td>1</td></tr><tr><td>VMOVUPD 0x80(%RDX),%XMM2</td><td>1</td><td>0</td><td>0</td><td>0.50</td><td>0.50</td><td>0</td><td>0</td><td>3</td><td>0.50</td></tr><tr><td>VINSERTF128 $0x1,0x90(%RDX),%YMM2,%YMM10</td><td>2</td><td>0</td><td>0</td><td>0.50</td><td>0.50</td><td>0</td><td>1</td><td>2</td><td>1</td></tr><tr><td>VMOVUPS %XMM11,-0xa0(%RAX)</td><td>1</td><td>0</td><td>0</td><td>0.50</td><td>0.50</td><td>1</td><td>0</td><td>3</td><td>1</td></tr><tr><td>VXORPD %YMM0,%YMM10,%YMM4</td><td>1</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0</td><td>1</td><td>1</td><td>1</td></tr><tr><td>VEXTRACTF128 $0x1,%YMM11,0x10(%RDX)</td><td>2</td><td>0</td><td>0</td><td>0.50</td><td>0.50</td><td>1</td><td>0</td><td>2</td><td>1</td></tr><tr><td>VMOVUPS %XMM12,0x20(%RDX)</td><td>1</td><td>0</td><td>0</td><td>0.50</td><td>0.50</td><td>1</td><td>0</td><td>3</td><td>1</td></tr><tr><td>VEXTRACTF128 $0x1,%YMM12,0x30(%RDX)</td><td>2</td><td>0</td><td>0</td><td>0.50</td><td>0.50</td><td>1</td><td>0</td><td>2</td><td>1</td></tr><tr><td>VEXTRACTF128 $0x1,%YMM9,0x50(%RDX)</td><td>2</td><td>0</td><td>0</td><td>0.50</td><td>0.50</td><td>1</td><td>0</td><td>2</td><td>1</td></tr><tr><td>VMOVUPS %XMM9,0x40(%RDX)</td><td>1</td><td>0</td><td>0</td><td>0.50</td><td>0.50</td><td>1</td><td>0</td><td>3</td><td>1</td></tr><tr><td>VEXTRACTF128 $0x1,%YMM15,0x70(%RDX)</td><td>2</td><td>0</td><td>0</td><td>0.50</td><td>0.50</td><td>1</td><td>0</td><td>2</td><td>1</td></tr><tr><td>VEXTRACTF128 $0x1,%YMM4,0x90(%RDX)</td><td>2</td><td>0</td><td>0</td><td>0.50</td><td>0.50</td><td>1</td><td>0</td><td>2</td><td>1</td></tr><tr><td>VMOVUPS %XMM15,0x60(%RDX)</td><td>1</td><td>0</td><td>0</td><td>0.50</td><td>0.50</td><td>1</td><td>0</td><td>3</td><td>1</td></tr><tr><td>VMOVUPS %XMM4,0x80(%RDX)</td><td>1</td><td>0</td><td>0</td><td>0.50</td><td>0.50</td><td>1</td><td>0</td><td>3</td><td>1</td></tr><tr><td>CMP %R12,%RAX</td><td>1</td><td>0.33</td><td>0.33</td><td>0</td><td>0</td><td>0</td><td>0.33</td><td>1</td><td>0.33</td></tr><tr><td>JNE afe0 <exact_rhs_._omp_fn.0+0x3c90></td><td>1</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0</td><td>1</td><td>0</td><td>1-2</td></tr></table>",
        },
      },
      header = {
        "0% of peak computational performance is used (0.00 out of 2.00 FLOP per cycle (GFLOPS @ 1GHz))",
      },
      brief = {
      },
      gain = {
        {
          workaround = "Use vector aligned instructions:\n<ol><li>The GNU Fortran compiler does not support allocation alignment and does not feature directives to benefit from aligned data.</li><li>Use another compiler or locally use C code (for instance via libraries)</li></ol>",
          details = "All SSE/AVX instructions are used in vector version (process two or more data elements in vector registers).\nSince your execution units are vector units, only a fully vectorized loop can use their full power.\n",
          title = "Vectorization",
          txt = "Your loop is vectorized, but using 60% register length (average across all SSE/AVX instructions).\nBy fully vectorizing your loop, you can lower the cost of an iteration from 21.00 to 20.00 cycles (1.05x speedup).",
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
      "The loop is defined in /users/user2210/NPB3.4-MZ-MPI/BT-MZ/exact_rhs.f90:347.\n",
      "The related source loop is not unrolled or unrolled with no peel/tail loop.",
    },
    nb_paths = 1,
  },
}
