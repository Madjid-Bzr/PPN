_cqa_text_report = {
  paths = {
    {
      hint = {
        {
          workaround = "<ul><li>Try to reorganize arrays of structures to structures of arrays</li><li>Consider to permute loops (see vectorization gain report)</li></ul>",
          details = "<ul><li>Constant unknown stride: 6 occurrence(s)</li></ul>Non-unit stride (uncontiguous) accesses are not efficiently using data caches\n",
          title = "Slow data structures access",
          txt = "Detected data structures (typically arrays) that cannot be efficiently read/written",
        },
        {
          workaround = "Use vector aligned instructions:\n<ol><li>The GNU Fortran compiler does not support allocation alignment and does not feature directives to benefit from aligned data.</li><li>Use another compiler or locally use C code (for instance via libraries)</li></ol>",
          details = "<ul><li>VMOVUPS: 10 occurrences</li></ul>",
          title = "Vector unaligned load/store instructions",
          txt = "Detected 10 optimal vector unaligned load/store instructions.\n",
        },
        {
          title = "Type of elements and instruction set",
          txt = "No instructions are processing arithmetic or math operations on FP elements. This loop is probably writing/copying data or processing integer elements.",
        },
        {
          title = "Matching between your loop (in the source code) and the binary loop",
          txt = "The binary loop does not contain any FP arithmetical operations.\nThe binary loop is loading 160 bytes.\nThe binary loop is storing 160 bytes.",
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
          txt = "<table><tr><td>nb instructions</td><td>31</td></tr><tr><td>nb uops</td><td>30</td></tr><tr><td>loop length</td><td>176</td></tr><tr><td>used x86 registers</td><td>6</td></tr><tr><td>used mmx registers</td><td>0</td></tr><tr><td>used xmm registers</td><td>16</td></tr><tr><td>used ymm registers</td><td>0</td></tr><tr><td>used zmm registers</td><td>0</td></tr><tr><td>nb stack references</td><td>0</td></tr></table>",
        },
        {
          title = "Front-end",
          txt = "ASSUMED MACRO FUSION\nFIT IN UOP CACHE\n<table><tr><td>micro-operation queue</td><td>9.00 cycles</td></tr><tr><td>front end</td><td>9.00 cycles</td></tr></table>",
        },
        {
          title = "Back-end",
          txt = "<table><tr><th>      </th><th>P0</th><th>P1</th><th>P2</th><th>P3</th><th>P4</th><th>P5</th></tr><tr><td>uops</td><td>1.67</td><td>1.33</td><td>13.00</td><td>13.00</td><td>10.00</td><td>7.00</td></tr><tr><td>cycles</td><td>1.67</td><td>1.33</td><td>13.00</td><td>13.00</td><td>10.00</td><td>7.00</td></tr></table>\n<table><tr><td>Cycles executing div or sqrt instructions</td><td>NA</td></tr><tr><td>Longest recurrence chain latency (RecMII)</td><td>1.00</td></tr></table>",
        },
        {
          title = "Cycles summary",
          txt = "<table><tr><td>Front-end</td><td>9.00</td></tr><tr><td>Dispatch</td><td>13.00</td></tr><tr><td>Data deps.</td><td>1.00</td></tr><tr><td>Overall L1</td><td>13.00</td></tr></table>",
        },
        {
          title = "Vectorization ratios",
          txt = "<table><tr><td>all</td><td>53%</td></tr><tr><td>load</td><td>25%</td></tr><tr><td>store</td><td>100%</td></tr><tr><td>mul</td><td>NA (no mul vectorizable/vectorized instructions)</td></tr><tr><td>add-sub</td><td>NA (no add-sub vectorizable/vectorized instructions)</td></tr><tr><td>fma</td><td>NA (no fma vectorizable/vectorized instructions)</td></tr><tr><td>div/sqrt</td><td>NA (no div/sqrt vectorizable/vectorized instructions)</td></tr><tr><td>other</td><td>NA (no other vectorizable/vectorized instructions)</td></tr></table>",
        },
        {
          title = "Vector efficiency ratios",
          txt = "<table><tr><td>all</td><td>38%</td></tr><tr><td>load</td><td>31%</td></tr><tr><td>store</td><td>50%</td></tr><tr><td>mul</td><td>NA (no mul vectorizable/vectorized instructions)</td></tr><tr><td>add-sub</td><td>NA (no add-sub vectorizable/vectorized instructions)</td></tr><tr><td>fma</td><td>NA (no fma vectorizable/vectorized instructions)</td></tr><tr><td>div/sqrt</td><td>NA (no div/sqrt vectorizable/vectorized instructions)</td></tr><tr><td>other</td><td>NA (no other vectorizable/vectorized instructions)</td></tr></table>",
        },
        {
          title = "Cycles and memory resources usage",
          txt = "Assuming all data fit into the L1 cache, each iteration of the binary loop takes 13.00 cycles. At this rate:\n<ul><li>38% of peak load performance is reached (12.31 out of 32.00 bytes loaded per cycle (GB/s @ 1GHz))</li><li>76% of peak store performance is reached (12.31 out of 16.00 bytes stored per cycle (GB/s @ 1GHz))</li></ul>",
        },
        {
          title = "Front-end bottlenecks",
          txt = "Found no such bottlenecks.",
        },
        {
          title = "ASM code",
          txt = "In the binary file, the address of the loop is: 1d0d0\n\n<table><tr><th>Instruction</th><th>Nb FU</th><th>P0</th><th>P1</th><th>P2</th><th>P3</th><th>P4</th><th>P5</th><th>Latency</th><th>Recip. throughput</th></tr><tr><td>VMOVSD 0x8(%R15,%R14,1),%XMM14</td><td>1</td><td>0</td><td>0</td><td>0.50</td><td>0.50</td><td>0</td><td>0</td><td>3</td><td>0.50</td></tr><tr><td>ADD $0xa0,%RAX</td><td>1</td><td>0.33</td><td>0.33</td><td>0</td><td>0</td><td>0</td><td>0.33</td><td>1</td><td>0.33</td></tr><tr><td>VMOVSD 0x20(%R15),%XMM7</td><td>1</td><td>0</td><td>0</td><td>0.50</td><td>0.50</td><td>0</td><td>0</td><td>3</td><td>0.50</td></tr><tr><td>VMOVSD 0x18(%R15,%R14,1),%XMM5</td><td>1</td><td>0</td><td>0</td><td>0.50</td><td>0.50</td><td>0</td><td>0</td><td>3</td><td>0.50</td></tr><tr><td>VMOVHPD 0x10(%R14,%R15,1),%XMM14,%XMM6</td><td>1</td><td>0</td><td>0</td><td>0.50</td><td>0.50</td><td>0</td><td>1</td><td>3</td><td>1</td></tr><tr><td>VMOVSD 0x20(%RSI),%XMM2</td><td>1</td><td>0</td><td>0</td><td>0.50</td><td>0.50</td><td>0</td><td>0</td><td>3</td><td>0.50</td></tr><tr><td>VMOVHPD (%R15,%R14,1),%XMM7,%XMM15</td><td>1</td><td>0</td><td>0</td><td>0.50</td><td>0.50</td><td>0</td><td>1</td><td>3</td><td>1</td></tr><tr><td>VMOVSD 0x18(%RSI,%R14,1),%XMM0</td><td>1</td><td>0</td><td>0</td><td>0.50</td><td>0.50</td><td>0</td><td>0</td><td>3</td><td>0.50</td></tr><tr><td>VMOVHPD 0x20(%R14,%R15,1),%XMM5,%XMM4</td><td>1</td><td>0</td><td>0</td><td>0.50</td><td>0.50</td><td>0</td><td>1</td><td>3</td><td>1</td></tr><tr><td>VMOVSD 0x8(%RSI,%R14,1),%XMM9</td><td>1</td><td>0</td><td>0</td><td>0.50</td><td>0.50</td><td>0</td><td>0</td><td>3</td><td>0.50</td></tr><tr><td>VMOVHPD (%RSI,%R14,1),%XMM2,%XMM12</td><td>1</td><td>0</td><td>0</td><td>0.50</td><td>0.50</td><td>0</td><td>1</td><td>3</td><td>1</td></tr><tr><td>VMOVUPD (%RSI),%XMM10</td><td>1</td><td>0</td><td>0</td><td>0.50</td><td>0.50</td><td>0</td><td>0</td><td>3</td><td>0.50</td></tr><tr><td>VMOVHPD 0x20(%R14,%RSI,1),%XMM0,%XMM11</td><td>1</td><td>0</td><td>0</td><td>0.50</td><td>0.50</td><td>0</td><td>1</td><td>3</td><td>1</td></tr><tr><td>VMOVUPD 0x10(%RSI),%XMM3</td><td>1</td><td>0</td><td>0</td><td>0.50</td><td>0.50</td><td>0</td><td>0</td><td>3</td><td>0.50</td></tr><tr><td>VMOVHPD 0x10(%R14,%RSI,1),%XMM9,%XMM1</td><td>1</td><td>0</td><td>0</td><td>0.50</td><td>0.50</td><td>0</td><td>1</td><td>3</td><td>1</td></tr><tr><td>ADD %RDX,%RSI</td><td>1</td><td>0.33</td><td>0.33</td><td>0</td><td>0</td><td>0</td><td>0.33</td><td>1</td><td>0.33</td></tr><tr><td>VMOVUPD 0x10(%R15),%XMM8</td><td>1</td><td>0</td><td>0</td><td>0.50</td><td>0.50</td><td>0</td><td>0</td><td>3</td><td>0.50</td></tr><tr><td>VMOVUPD (%R15),%XMM13</td><td>1</td><td>0</td><td>0</td><td>0.50</td><td>0.50</td><td>0</td><td>0</td><td>3</td><td>0.50</td></tr><tr><td>VMOVUPS %XMM15,-0x80(%RAX)</td><td>1</td><td>0</td><td>0</td><td>0.50</td><td>0.50</td><td>1</td><td>0</td><td>3</td><td>1</td></tr><tr><td>ADD %RDX,%R15</td><td>1</td><td>0.33</td><td>0.33</td><td>0</td><td>0</td><td>0</td><td>0.33</td><td>1</td><td>0.33</td></tr><tr><td>VMOVUPS %XMM8,-0x90(%RAX)</td><td>1</td><td>0</td><td>0</td><td>0.50</td><td>0.50</td><td>1</td><td>0</td><td>3</td><td>1</td></tr><tr><td>VMOVUPS %XMM13,-0xa0(%RAX)</td><td>1</td><td>0</td><td>0</td><td>0.50</td><td>0.50</td><td>1</td><td>0</td><td>3</td><td>1</td></tr><tr><td>VMOVUPS %XMM6,-0x70(%RAX)</td><td>1</td><td>0</td><td>0</td><td>0.50</td><td>0.50</td><td>1</td><td>0</td><td>3</td><td>1</td></tr><tr><td>VMOVUPS %XMM4,-0x60(%RAX)</td><td>1</td><td>0</td><td>0</td><td>0.50</td><td>0.50</td><td>1</td><td>0</td><td>3</td><td>1</td></tr><tr><td>VMOVUPS %XMM10,-0x50(%RAX)</td><td>1</td><td>0</td><td>0</td><td>0.50</td><td>0.50</td><td>1</td><td>0</td><td>3</td><td>1</td></tr><tr><td>VMOVUPS %XMM3,-0x40(%RAX)</td><td>1</td><td>0</td><td>0</td><td>0.50</td><td>0.50</td><td>1</td><td>0</td><td>3</td><td>1</td></tr><tr><td>VMOVUPS %XMM12,-0x30(%RAX)</td><td>1</td><td>0</td><td>0</td><td>0.50</td><td>0.50</td><td>1</td><td>0</td><td>3</td><td>1</td></tr><tr><td>VMOVUPS %XMM1,-0x20(%RAX)</td><td>1</td><td>0</td><td>0</td><td>0.50</td><td>0.50</td><td>1</td><td>0</td><td>3</td><td>1</td></tr><tr><td>VMOVUPS %XMM11,-0x10(%RAX)</td><td>1</td><td>0</td><td>0</td><td>0.50</td><td>0.50</td><td>1</td><td>0</td><td>3</td><td>1</td></tr><tr><td>CMP %RAX,%R11</td><td>1</td><td>0.33</td><td>0.33</td><td>0</td><td>0</td><td>0</td><td>0.33</td><td>1</td><td>0.33</td></tr><tr><td>JNE 1d0d0 <z_solve_._omp_fn.0+0x2070></td><td>1</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0</td><td>1</td><td>0</td><td>1-2</td></tr></table>",
        },
      },
      header = {
        "0% of peak computational performance is used (0.00 out of 2.00 FLOP per cycle (GFLOPS @ 1GHz))",
      },
      brief = {
      },
      gain = {
        {
          workaround = "<ul><li>Try another compiler or update/tune your current one:\n<ul><li>recompile with fassociative-math (included in Ofast or ffast-math) to extend loop vectorization to FP reductions.</li></ul></li><li>Remove inter-iterations dependences from your loop and make it unit-stride:\n<ul><li>If your arrays have 2 or more dimensions, check whether elements are accessed contiguously and, otherwise, try to permute loops accordingly:\nFortran storage order is column-major: do i do j a(i,j) = b(i,j) (slow, non stride 1) =&gt; do i do j a(j,i) = b(i,j) (fast, stride 1)</li><li>If your loop streams arrays of structures (AoS), try to use structures of arrays instead (SoA):\ndo i a(i)%x = b(i)%x (slow, non stride 1) =&gt; do i a%x(i) = b%x(i) (fast, stride 1)</li></ul></li></ul>",
          details = "53% of SSE/AVX instructions are used in vector version (process two or more data elements in vector registers):\n<ul><li>25% of SSE/AVX loads are used in vector version.</li></ul>Since your execution units are vector units, only a fully vectorized loop can use their full power.\n",
          title = "Vectorization",
          txt = "Your loop is partially vectorized.\nOnly 38% of vector register length is used (average across all SSE/AVX instructions).\nBy fully vectorizing your loop, you can lower the cost of an iteration from 13.00 to 10.00 cycles (1.30x speedup).",
        },
        {
          workaround = "<ul><li>Read less array elements\nAll SSE and/or AVX registers are used:\nin that case, try to relax register pressure by reducing the unroll factor or splitting your loop</li><li>Write less array elements</li><li>Provide more information to your compiler:\n<ul><li>hardcode the bounds of the corresponding 'for' loop</li></ul></li></ul>",
          title = "Execution units bottlenecks",
          txt = "Performance is limited by:\n<ul><li>reading data from caches/RAM (load units are a bottleneck)</li><li>writing data to caches/RAM (the store unit is a bottleneck)</li></ul>\nBy removing all these bottlenecks, you can lower the cost of an iteration from 13.00 to 10.00 cycles (1.30x speedup).\n",
        },
      },
      potential = {
      },
    },
  },
  AVG = {
      hint = {
        {
          workaround = "<ul><li>Try to reorganize arrays of structures to structures of arrays</li><li>Consider to permute loops (see vectorization gain report)</li></ul>",
          details = "<ul><li>Constant unknown stride: 6 occurrence(s)</li></ul>Non-unit stride (uncontiguous) accesses are not efficiently using data caches\n",
          title = "Slow data structures access",
          txt = "Detected data structures (typically arrays) that cannot be efficiently read/written",
        },
        {
          workaround = "Use vector aligned instructions:\n<ol><li>The GNU Fortran compiler does not support allocation alignment and does not feature directives to benefit from aligned data.</li><li>Use another compiler or locally use C code (for instance via libraries)</li></ol>",
          details = "<ul><li>VMOVUPS: 10 occurrences</li></ul>",
          title = "Vector unaligned load/store instructions",
          txt = "Detected 10 optimal vector unaligned load/store instructions.\n",
        },
        {
          title = "Type of elements and instruction set",
          txt = "No instructions are processing arithmetic or math operations on FP elements. This loop is probably writing/copying data or processing integer elements.",
        },
        {
          title = "Matching between your loop (in the source code) and the binary loop",
          txt = "The binary loop does not contain any FP arithmetical operations.\nThe binary loop is loading 160 bytes.\nThe binary loop is storing 160 bytes.",
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
          txt = "<table><tr><td>nb instructions</td><td>31</td></tr><tr><td>nb uops</td><td>30</td></tr><tr><td>loop length</td><td>176</td></tr><tr><td>used x86 registers</td><td>6</td></tr><tr><td>used mmx registers</td><td>0</td></tr><tr><td>used xmm registers</td><td>16</td></tr><tr><td>used ymm registers</td><td>0</td></tr><tr><td>used zmm registers</td><td>0</td></tr><tr><td>nb stack references</td><td>0</td></tr></table>",
        },
        {
          title = "Front-end",
          txt = "ASSUMED MACRO FUSION\nFIT IN UOP CACHE\n<table><tr><td>micro-operation queue</td><td>9.00 cycles</td></tr><tr><td>front end</td><td>9.00 cycles</td></tr></table>",
        },
        {
          title = "Back-end",
          txt = "<table><tr><th>      </th><th>P0</th><th>P1</th><th>P2</th><th>P3</th><th>P4</th><th>P5</th></tr><tr><td>uops</td><td>1.67</td><td>1.33</td><td>13.00</td><td>13.00</td><td>10.00</td><td>7.00</td></tr><tr><td>cycles</td><td>1.67</td><td>1.33</td><td>13.00</td><td>13.00</td><td>10.00</td><td>7.00</td></tr></table>\n<table><tr><td>Cycles executing div or sqrt instructions</td><td>NA</td></tr><tr><td>Longest recurrence chain latency (RecMII)</td><td>1.00</td></tr></table>",
        },
        {
          title = "Cycles summary",
          txt = "<table><tr><td>Front-end</td><td>9.00</td></tr><tr><td>Dispatch</td><td>13.00</td></tr><tr><td>Data deps.</td><td>1.00</td></tr><tr><td>Overall L1</td><td>13.00</td></tr></table>",
        },
        {
          title = "Vectorization ratios",
          txt = "<table><tr><td>all</td><td>53%</td></tr><tr><td>load</td><td>25%</td></tr><tr><td>store</td><td>100%</td></tr><tr><td>mul</td><td>NA (no mul vectorizable/vectorized instructions)</td></tr><tr><td>add-sub</td><td>NA (no add-sub vectorizable/vectorized instructions)</td></tr><tr><td>fma</td><td>NA (no fma vectorizable/vectorized instructions)</td></tr><tr><td>div/sqrt</td><td>NA (no div/sqrt vectorizable/vectorized instructions)</td></tr><tr><td>other</td><td>NA (no other vectorizable/vectorized instructions)</td></tr></table>",
        },
        {
          title = "Vector efficiency ratios",
          txt = "<table><tr><td>all</td><td>38%</td></tr><tr><td>load</td><td>31%</td></tr><tr><td>store</td><td>50%</td></tr><tr><td>mul</td><td>NA (no mul vectorizable/vectorized instructions)</td></tr><tr><td>add-sub</td><td>NA (no add-sub vectorizable/vectorized instructions)</td></tr><tr><td>fma</td><td>NA (no fma vectorizable/vectorized instructions)</td></tr><tr><td>div/sqrt</td><td>NA (no div/sqrt vectorizable/vectorized instructions)</td></tr><tr><td>other</td><td>NA (no other vectorizable/vectorized instructions)</td></tr></table>",
        },
        {
          title = "Cycles and memory resources usage",
          txt = "Assuming all data fit into the L1 cache, each iteration of the binary loop takes 13.00 cycles. At this rate:\n<ul><li>38% of peak load performance is reached (12.31 out of 32.00 bytes loaded per cycle (GB/s @ 1GHz))</li><li>76% of peak store performance is reached (12.31 out of 16.00 bytes stored per cycle (GB/s @ 1GHz))</li></ul>",
        },
        {
          title = "Front-end bottlenecks",
          txt = "Found no such bottlenecks.",
        },
        {
          title = "ASM code",
          txt = "In the binary file, the address of the loop is: 1d0d0\n\n<table><tr><th>Instruction</th><th>Nb FU</th><th>P0</th><th>P1</th><th>P2</th><th>P3</th><th>P4</th><th>P5</th><th>Latency</th><th>Recip. throughput</th></tr><tr><td>VMOVSD 0x8(%R15,%R14,1),%XMM14</td><td>1</td><td>0</td><td>0</td><td>0.50</td><td>0.50</td><td>0</td><td>0</td><td>3</td><td>0.50</td></tr><tr><td>ADD $0xa0,%RAX</td><td>1</td><td>0.33</td><td>0.33</td><td>0</td><td>0</td><td>0</td><td>0.33</td><td>1</td><td>0.33</td></tr><tr><td>VMOVSD 0x20(%R15),%XMM7</td><td>1</td><td>0</td><td>0</td><td>0.50</td><td>0.50</td><td>0</td><td>0</td><td>3</td><td>0.50</td></tr><tr><td>VMOVSD 0x18(%R15,%R14,1),%XMM5</td><td>1</td><td>0</td><td>0</td><td>0.50</td><td>0.50</td><td>0</td><td>0</td><td>3</td><td>0.50</td></tr><tr><td>VMOVHPD 0x10(%R14,%R15,1),%XMM14,%XMM6</td><td>1</td><td>0</td><td>0</td><td>0.50</td><td>0.50</td><td>0</td><td>1</td><td>3</td><td>1</td></tr><tr><td>VMOVSD 0x20(%RSI),%XMM2</td><td>1</td><td>0</td><td>0</td><td>0.50</td><td>0.50</td><td>0</td><td>0</td><td>3</td><td>0.50</td></tr><tr><td>VMOVHPD (%R15,%R14,1),%XMM7,%XMM15</td><td>1</td><td>0</td><td>0</td><td>0.50</td><td>0.50</td><td>0</td><td>1</td><td>3</td><td>1</td></tr><tr><td>VMOVSD 0x18(%RSI,%R14,1),%XMM0</td><td>1</td><td>0</td><td>0</td><td>0.50</td><td>0.50</td><td>0</td><td>0</td><td>3</td><td>0.50</td></tr><tr><td>VMOVHPD 0x20(%R14,%R15,1),%XMM5,%XMM4</td><td>1</td><td>0</td><td>0</td><td>0.50</td><td>0.50</td><td>0</td><td>1</td><td>3</td><td>1</td></tr><tr><td>VMOVSD 0x8(%RSI,%R14,1),%XMM9</td><td>1</td><td>0</td><td>0</td><td>0.50</td><td>0.50</td><td>0</td><td>0</td><td>3</td><td>0.50</td></tr><tr><td>VMOVHPD (%RSI,%R14,1),%XMM2,%XMM12</td><td>1</td><td>0</td><td>0</td><td>0.50</td><td>0.50</td><td>0</td><td>1</td><td>3</td><td>1</td></tr><tr><td>VMOVUPD (%RSI),%XMM10</td><td>1</td><td>0</td><td>0</td><td>0.50</td><td>0.50</td><td>0</td><td>0</td><td>3</td><td>0.50</td></tr><tr><td>VMOVHPD 0x20(%R14,%RSI,1),%XMM0,%XMM11</td><td>1</td><td>0</td><td>0</td><td>0.50</td><td>0.50</td><td>0</td><td>1</td><td>3</td><td>1</td></tr><tr><td>VMOVUPD 0x10(%RSI),%XMM3</td><td>1</td><td>0</td><td>0</td><td>0.50</td><td>0.50</td><td>0</td><td>0</td><td>3</td><td>0.50</td></tr><tr><td>VMOVHPD 0x10(%R14,%RSI,1),%XMM9,%XMM1</td><td>1</td><td>0</td><td>0</td><td>0.50</td><td>0.50</td><td>0</td><td>1</td><td>3</td><td>1</td></tr><tr><td>ADD %RDX,%RSI</td><td>1</td><td>0.33</td><td>0.33</td><td>0</td><td>0</td><td>0</td><td>0.33</td><td>1</td><td>0.33</td></tr><tr><td>VMOVUPD 0x10(%R15),%XMM8</td><td>1</td><td>0</td><td>0</td><td>0.50</td><td>0.50</td><td>0</td><td>0</td><td>3</td><td>0.50</td></tr><tr><td>VMOVUPD (%R15),%XMM13</td><td>1</td><td>0</td><td>0</td><td>0.50</td><td>0.50</td><td>0</td><td>0</td><td>3</td><td>0.50</td></tr><tr><td>VMOVUPS %XMM15,-0x80(%RAX)</td><td>1</td><td>0</td><td>0</td><td>0.50</td><td>0.50</td><td>1</td><td>0</td><td>3</td><td>1</td></tr><tr><td>ADD %RDX,%R15</td><td>1</td><td>0.33</td><td>0.33</td><td>0</td><td>0</td><td>0</td><td>0.33</td><td>1</td><td>0.33</td></tr><tr><td>VMOVUPS %XMM8,-0x90(%RAX)</td><td>1</td><td>0</td><td>0</td><td>0.50</td><td>0.50</td><td>1</td><td>0</td><td>3</td><td>1</td></tr><tr><td>VMOVUPS %XMM13,-0xa0(%RAX)</td><td>1</td><td>0</td><td>0</td><td>0.50</td><td>0.50</td><td>1</td><td>0</td><td>3</td><td>1</td></tr><tr><td>VMOVUPS %XMM6,-0x70(%RAX)</td><td>1</td><td>0</td><td>0</td><td>0.50</td><td>0.50</td><td>1</td><td>0</td><td>3</td><td>1</td></tr><tr><td>VMOVUPS %XMM4,-0x60(%RAX)</td><td>1</td><td>0</td><td>0</td><td>0.50</td><td>0.50</td><td>1</td><td>0</td><td>3</td><td>1</td></tr><tr><td>VMOVUPS %XMM10,-0x50(%RAX)</td><td>1</td><td>0</td><td>0</td><td>0.50</td><td>0.50</td><td>1</td><td>0</td><td>3</td><td>1</td></tr><tr><td>VMOVUPS %XMM3,-0x40(%RAX)</td><td>1</td><td>0</td><td>0</td><td>0.50</td><td>0.50</td><td>1</td><td>0</td><td>3</td><td>1</td></tr><tr><td>VMOVUPS %XMM12,-0x30(%RAX)</td><td>1</td><td>0</td><td>0</td><td>0.50</td><td>0.50</td><td>1</td><td>0</td><td>3</td><td>1</td></tr><tr><td>VMOVUPS %XMM1,-0x20(%RAX)</td><td>1</td><td>0</td><td>0</td><td>0.50</td><td>0.50</td><td>1</td><td>0</td><td>3</td><td>1</td></tr><tr><td>VMOVUPS %XMM11,-0x10(%RAX)</td><td>1</td><td>0</td><td>0</td><td>0.50</td><td>0.50</td><td>1</td><td>0</td><td>3</td><td>1</td></tr><tr><td>CMP %RAX,%R11</td><td>1</td><td>0.33</td><td>0.33</td><td>0</td><td>0</td><td>0</td><td>0.33</td><td>1</td><td>0.33</td></tr><tr><td>JNE 1d0d0 <z_solve_._omp_fn.0+0x2070></td><td>1</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0</td><td>1</td><td>0</td><td>1-2</td></tr></table>",
        },
      },
      header = {
        "0% of peak computational performance is used (0.00 out of 2.00 FLOP per cycle (GFLOPS @ 1GHz))",
      },
      brief = {
      },
      gain = {
        {
          workaround = "<ul><li>Try another compiler or update/tune your current one:\n<ul><li>recompile with fassociative-math (included in Ofast or ffast-math) to extend loop vectorization to FP reductions.</li></ul></li><li>Remove inter-iterations dependences from your loop and make it unit-stride:\n<ul><li>If your arrays have 2 or more dimensions, check whether elements are accessed contiguously and, otherwise, try to permute loops accordingly:\nFortran storage order is column-major: do i do j a(i,j) = b(i,j) (slow, non stride 1) =&gt; do i do j a(j,i) = b(i,j) (fast, stride 1)</li><li>If your loop streams arrays of structures (AoS), try to use structures of arrays instead (SoA):\ndo i a(i)%x = b(i)%x (slow, non stride 1) =&gt; do i a%x(i) = b%x(i) (fast, stride 1)</li></ul></li></ul>",
          details = "53% of SSE/AVX instructions are used in vector version (process two or more data elements in vector registers):\n<ul><li>25% of SSE/AVX loads are used in vector version.</li></ul>Since your execution units are vector units, only a fully vectorized loop can use their full power.\n",
          title = "Vectorization",
          txt = "Your loop is partially vectorized.\nOnly 38% of vector register length is used (average across all SSE/AVX instructions).\nBy fully vectorizing your loop, you can lower the cost of an iteration from 13.00 to 10.00 cycles (1.30x speedup).",
        },
        {
          workaround = "<ul><li>Read less array elements\nAll SSE and/or AVX registers are used:\nin that case, try to relax register pressure by reducing the unroll factor or splitting your loop</li><li>Write less array elements</li><li>Provide more information to your compiler:\n<ul><li>hardcode the bounds of the corresponding 'for' loop</li></ul></li></ul>",
          title = "Execution units bottlenecks",
          txt = "Performance is limited by:\n<ul><li>reading data from caches/RAM (load units are a bottleneck)</li><li>writing data to caches/RAM (the store unit is a bottleneck)</li></ul>\nBy removing all these bottlenecks, you can lower the cost of an iteration from 13.00 to 10.00 cycles (1.30x speedup).\n",
        },
      },
      potential = {
      },
    },
  common = {
    header = {
      "The loop is defined in /users/user2210/NPB3.4-MZ-MPI/BT-MZ/z_solve.f90:313.\n",
      "The related source loop is not unrolled or unrolled with no peel/tail loop.",
    },
    nb_paths = 1,
  },
}
