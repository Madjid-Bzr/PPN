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
      },
      expert = {
        {
          title = "General properties",
          txt = "<table><tr><td>nb instructions</td><td>44</td></tr><tr><td>nb uops</td><td>63</td></tr><tr><td>loop length</td><td>327</td></tr><tr><td>used x86 registers</td><td>3</td></tr><tr><td>used mmx registers</td><td>0</td></tr><tr><td>used xmm registers</td><td>16</td></tr><tr><td>used ymm registers</td><td>16</td></tr><tr><td>used zmm registers</td><td>0</td></tr><tr><td>nb stack references</td><td>0</td></tr></table>",
        },
        {
          title = "Front-end",
          txt = "ASSUMED MACRO FUSION\nFIT IN UOP CACHE\n<table><tr><td>micro-operation queue</td><td>15.75 cycles</td></tr><tr><td>front end</td><td>15.75 cycles</td></tr></table>",
        },
        {
          title = "Back-end",
          txt = "<table><tr><th>      </th><th>P0</th><th>P1</th><th>P2</th><th>P3</th><th>P4</th><th>P5</th></tr><tr><td>uops</td><td>1.00</td><td>1.00</td><td>20.00</td><td>20.00</td><td>20.00</td><td>11.00</td></tr><tr><td>cycles</td><td>1.00</td><td>1.00</td><td>20.00</td><td>20.00</td><td>20.00</td><td>11.00</td></tr></table>\n<table><tr><td>Cycles executing div or sqrt instructions</td><td>NA</td></tr><tr><td>Longest recurrence chain latency (RecMII)</td><td>1.00</td></tr></table>",
        },
        {
          title = "Cycles summary",
          txt = "<table><tr><td>Front-end</td><td>15.75</td></tr><tr><td>Dispatch</td><td>20.00</td></tr><tr><td>Data deps.</td><td>1.00</td></tr><tr><td>Overall L1</td><td>20.00</td></tr></table>",
        },
        {
          title = "Vectorization ratios",
          txt = "<table><tr><td>all</td><td>100%</td></tr><tr><td>load</td><td>100%</td></tr><tr><td>store</td><td>100%</td></tr><tr><td>mul</td><td>NA (no mul vectorizable/vectorized instructions)</td></tr><tr><td>add-sub</td><td>NA (no add-sub vectorizable/vectorized instructions)</td></tr><tr><td>fma</td><td>NA (no fma vectorizable/vectorized instructions)</td></tr><tr><td>div/sqrt</td><td>NA (no div/sqrt vectorizable/vectorized instructions)</td></tr><tr><td>other</td><td>100%</td></tr></table>",
        },
        {
          title = "Vector efficiency ratios",
          txt = "<table><tr><td>all</td><td>50%</td></tr><tr><td>load</td><td>50%</td></tr><tr><td>store</td><td>50%</td></tr><tr><td>mul</td><td>NA (no mul vectorizable/vectorized instructions)</td></tr><tr><td>add-sub</td><td>NA (no add-sub vectorizable/vectorized instructions)</td></tr><tr><td>fma</td><td>NA (no fma vectorizable/vectorized instructions)</td></tr><tr><td>div/sqrt</td><td>NA (no div/sqrt vectorizable/vectorized instructions)</td></tr><tr><td>other</td><td>50%</td></tr></table>",
        },
        {
          title = "Cycles and memory resources usage",
          txt = "Assuming all data fit into the L1 cache, each iteration of the binary loop takes 20.00 cycles. At this rate:\n<ul><li>50% of peak load performance is reached (16.00 out of 32.00 bytes loaded per cycle (GB/s @ 1GHz))</li><li>100% of peak store performance is reached (16.00 out of 16.00 bytes stored per cycle (GB/s @ 1GHz))</li></ul>",
        },
        {
          title = "Front-end bottlenecks",
          txt = "Found no such bottlenecks.",
        },
        {
          title = "ASM code",
          txt = "In the binary file, the address of the loop is: 10350\n\n<table><tr><th>Instruction</th><th>Nb FU</th><th>P0</th><th>P1</th><th>P2</th><th>P3</th><th>P4</th><th>P5</th><th>Latency</th><th>Recip. throughput</th></tr><tr><td>VMOVUPD (%RDX),%XMM15</td><td>1</td><td>0</td><td>0</td><td>0.50</td><td>0.50</td><td>0</td><td>0</td><td>3</td><td>0.50</td></tr><tr><td>ADD $0x140,%RAX</td><td>1</td><td>0.33</td><td>0.33</td><td>0</td><td>0</td><td>0</td><td>0.33</td><td>1</td><td>0.33</td></tr><tr><td>VINSERTF128 $0x1,0x10(%RDX),%YMM15,%YMM4</td><td>2</td><td>0</td><td>0</td><td>0.50</td><td>0.50</td><td>0</td><td>1</td><td>2</td><td>1</td></tr><tr><td>ADD $0x140,%RDX</td><td>1</td><td>0.33</td><td>0.33</td><td>0</td><td>0</td><td>0</td><td>0.33</td><td>1</td><td>0.33</td></tr><tr><td>VMOVUPD -0x120(%RDX),%XMM1</td><td>1</td><td>0</td><td>0</td><td>0.50</td><td>0.50</td><td>0</td><td>0</td><td>3</td><td>0.50</td></tr><tr><td>VINSERTF128 $0x1,-0x110(%RDX),%YMM1,%YMM3</td><td>2</td><td>0</td><td>0</td><td>0.50</td><td>0.50</td><td>0</td><td>1</td><td>2</td><td>1</td></tr><tr><td>VMOVUPD -0x100(%RDX),%XMM2</td><td>1</td><td>0</td><td>0</td><td>0.50</td><td>0.50</td><td>0</td><td>0</td><td>3</td><td>0.50</td></tr><tr><td>VINSERTF128 $0x1,-0xf0(%RDX),%YMM2,%YMM5</td><td>2</td><td>0</td><td>0</td><td>0.50</td><td>0.50</td><td>0</td><td>1</td><td>2</td><td>1</td></tr><tr><td>VMOVUPD -0xe0(%RDX),%XMM6</td><td>1</td><td>0</td><td>0</td><td>0.50</td><td>0.50</td><td>0</td><td>0</td><td>3</td><td>0.50</td></tr><tr><td>VINSERTF128 $0x1,-0xd0(%RDX),%YMM6,%YMM7</td><td>2</td><td>0</td><td>0</td><td>0.50</td><td>0.50</td><td>0</td><td>1</td><td>2</td><td>1</td></tr><tr><td>VMOVUPD -0xc0(%RDX),%XMM0</td><td>1</td><td>0</td><td>0</td><td>0.50</td><td>0.50</td><td>0</td><td>0</td><td>3</td><td>0.50</td></tr><tr><td>VINSERTF128 $0x1,-0xb0(%RDX),%YMM0,%YMM8</td><td>2</td><td>0</td><td>0</td><td>0.50</td><td>0.50</td><td>0</td><td>1</td><td>2</td><td>1</td></tr><tr><td>VMOVUPS %XMM4,-0x140(%RAX)</td><td>1</td><td>0</td><td>0</td><td>0.50</td><td>0.50</td><td>1</td><td>0</td><td>3</td><td>1</td></tr><tr><td>VEXTRACTF128 $0x1,%YMM4,-0x130(%RAX)</td><td>2</td><td>0</td><td>0</td><td>0.50</td><td>0.50</td><td>1</td><td>0</td><td>2</td><td>1</td></tr><tr><td>VMOVUPS %XMM3,-0x120(%RAX)</td><td>1</td><td>0</td><td>0</td><td>0.50</td><td>0.50</td><td>1</td><td>0</td><td>3</td><td>1</td></tr><tr><td>VEXTRACTF128 $0x1,%YMM3,-0x110(%RAX)</td><td>2</td><td>0</td><td>0</td><td>0.50</td><td>0.50</td><td>1</td><td>0</td><td>2</td><td>1</td></tr><tr><td>VEXTRACTF128 $0x1,%YMM5,-0xf0(%RAX)</td><td>2</td><td>0</td><td>0</td><td>0.50</td><td>0.50</td><td>1</td><td>0</td><td>2</td><td>1</td></tr><tr><td>VEXTRACTF128 $0x1,%YMM7,-0xd0(%RAX)</td><td>2</td><td>0</td><td>0</td><td>0.50</td><td>0.50</td><td>1</td><td>0</td><td>2</td><td>1</td></tr><tr><td>VMOVUPS %XMM5,-0x100(%RAX)</td><td>1</td><td>0</td><td>0</td><td>0.50</td><td>0.50</td><td>1</td><td>0</td><td>3</td><td>1</td></tr><tr><td>VEXTRACTF128 $0x1,%YMM8,-0xb0(%RAX)</td><td>2</td><td>0</td><td>0</td><td>0.50</td><td>0.50</td><td>1</td><td>0</td><td>2</td><td>1</td></tr><tr><td>VMOVUPS %XMM7,-0xe0(%RAX)</td><td>1</td><td>0</td><td>0</td><td>0.50</td><td>0.50</td><td>1</td><td>0</td><td>3</td><td>1</td></tr><tr><td>VMOVUPS %XMM8,-0xc0(%RAX)</td><td>1</td><td>0</td><td>0</td><td>0.50</td><td>0.50</td><td>1</td><td>0</td><td>3</td><td>1</td></tr><tr><td>VMOVUPD -0xa0(%RDX),%XMM9</td><td>1</td><td>0</td><td>0</td><td>0.50</td><td>0.50</td><td>0</td><td>0</td><td>3</td><td>0.50</td></tr><tr><td>VINSERTF128 $0x1,-0x90(%RDX),%YMM9,%YMM10</td><td>2</td><td>0</td><td>0</td><td>0.50</td><td>0.50</td><td>0</td><td>1</td><td>2</td><td>1</td></tr><tr><td>VMOVUPD -0x80(%RDX),%XMM11</td><td>1</td><td>0</td><td>0</td><td>0.50</td><td>0.50</td><td>0</td><td>0</td><td>3</td><td>0.50</td></tr><tr><td>VINSERTF128 $0x1,-0x70(%RDX),%YMM11,%YMM12</td><td>2</td><td>0</td><td>0</td><td>0.50</td><td>0.50</td><td>0</td><td>1</td><td>2</td><td>1</td></tr><tr><td>VMOVUPD -0x60(%RDX),%XMM13</td><td>1</td><td>0</td><td>0</td><td>0.50</td><td>0.50</td><td>0</td><td>0</td><td>3</td><td>0.50</td></tr><tr><td>VINSERTF128 $0x1,-0x50(%RDX),%YMM13,%YMM14</td><td>2</td><td>0</td><td>0</td><td>0.50</td><td>0.50</td><td>0</td><td>1</td><td>2</td><td>1</td></tr><tr><td>VMOVUPD -0x40(%RDX),%XMM15</td><td>1</td><td>0</td><td>0</td><td>0.50</td><td>0.50</td><td>0</td><td>0</td><td>3</td><td>0.50</td></tr><tr><td>VINSERTF128 $0x1,-0x30(%RDX),%YMM15,%YMM4</td><td>2</td><td>0</td><td>0</td><td>0.50</td><td>0.50</td><td>0</td><td>1</td><td>2</td><td>1</td></tr><tr><td>VMOVUPD -0x20(%RDX),%XMM1</td><td>1</td><td>0</td><td>0</td><td>0.50</td><td>0.50</td><td>0</td><td>0</td><td>3</td><td>0.50</td></tr><tr><td>VINSERTF128 $0x1,-0x10(%RDX),%YMM1,%YMM3</td><td>2</td><td>0</td><td>0</td><td>0.50</td><td>0.50</td><td>0</td><td>1</td><td>2</td><td>1</td></tr><tr><td>VMOVUPS %XMM10,-0xa0(%RAX)</td><td>1</td><td>0</td><td>0</td><td>0.50</td><td>0.50</td><td>1</td><td>0</td><td>3</td><td>1</td></tr><tr><td>VEXTRACTF128 $0x1,%YMM10,-0x90(%RAX)</td><td>2</td><td>0</td><td>0</td><td>0.50</td><td>0.50</td><td>1</td><td>0</td><td>2</td><td>1</td></tr><tr><td>VMOVUPS %XMM12,-0x80(%RAX)</td><td>1</td><td>0</td><td>0</td><td>0.50</td><td>0.50</td><td>1</td><td>0</td><td>3</td><td>1</td></tr><tr><td>VEXTRACTF128 $0x1,%YMM12,-0x70(%RAX)</td><td>2</td><td>0</td><td>0</td><td>0.50</td><td>0.50</td><td>1</td><td>0</td><td>2</td><td>1</td></tr><tr><td>VEXTRACTF128 $0x1,%YMM14,-0x50(%RAX)</td><td>2</td><td>0</td><td>0</td><td>0.50</td><td>0.50</td><td>1</td><td>0</td><td>2</td><td>1</td></tr><tr><td>VEXTRACTF128 $0x1,%YMM4,-0x30(%RAX)</td><td>2</td><td>0</td><td>0</td><td>0.50</td><td>0.50</td><td>1</td><td>0</td><td>2</td><td>1</td></tr><tr><td>VMOVUPS %XMM14,-0x60(%RAX)</td><td>1</td><td>0</td><td>0</td><td>0.50</td><td>0.50</td><td>1</td><td>0</td><td>3</td><td>1</td></tr><tr><td>VEXTRACTF128 $0x1,%YMM3,-0x10(%RAX)</td><td>2</td><td>0</td><td>0</td><td>0.50</td><td>0.50</td><td>1</td><td>0</td><td>2</td><td>1</td></tr><tr><td>VMOVUPS %XMM4,-0x40(%RAX)</td><td>1</td><td>0</td><td>0</td><td>0.50</td><td>0.50</td><td>1</td><td>0</td><td>3</td><td>1</td></tr><tr><td>VMOVUPS %XMM3,-0x20(%RAX)</td><td>1</td><td>0</td><td>0</td><td>0.50</td><td>0.50</td><td>1</td><td>0</td><td>3</td><td>1</td></tr><tr><td>CMP %RAX,%R9</td><td>1</td><td>0.33</td><td>0.33</td><td>0</td><td>0</td><td>0</td><td>0.33</td><td>1</td><td>0.33</td></tr><tr><td>JNE 10350 <compute_rhs_._omp_fn.0+0x4000></td><td>1</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0</td><td>1</td><td>0</td><td>1-2</td></tr></table>",
        },
      },
      header = {
        "0% of peak computational performance is used (0.00 out of 2.00 FLOP per cycle (GFLOPS @ 1GHz))",
      },
      brief = {
      },
      gain = {
        {
          details = "All SSE/AVX instructions are used in vector version (process two or more data elements in vector registers).\n",
          title = "Vectorization",
          txt = "Your loop is vectorized, but using only 128 out of 256 bits (SSE/AVX-128 instructions on AVX/AVX2 processors).\n",
        },
        {
          workaround = "<ul><li>Read less array elements\nAll SSE and/or AVX registers are used:\nin that case, try to relax register pressure by reducing the unroll factor or splitting your loop</li><li>Write less array elements</li><li>Provide more information to your compiler:\n<ul><li>hardcode the bounds of the corresponding 'for' loop</li></ul></li></ul>",
          title = "Execution units bottlenecks",
          txt = "Performance is limited by:\n<ul><li>reading data from caches/RAM (load units are a bottleneck)</li><li>writing data to caches/RAM (the store unit is a bottleneck)</li></ul>",
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
      },
      expert = {
        {
          title = "General properties",
          txt = "<table><tr><td>nb instructions</td><td>44</td></tr><tr><td>nb uops</td><td>63</td></tr><tr><td>loop length</td><td>327</td></tr><tr><td>used x86 registers</td><td>3</td></tr><tr><td>used mmx registers</td><td>0</td></tr><tr><td>used xmm registers</td><td>16</td></tr><tr><td>used ymm registers</td><td>16</td></tr><tr><td>used zmm registers</td><td>0</td></tr><tr><td>nb stack references</td><td>0</td></tr></table>",
        },
        {
          title = "Front-end",
          txt = "ASSUMED MACRO FUSION\nFIT IN UOP CACHE\n<table><tr><td>micro-operation queue</td><td>15.75 cycles</td></tr><tr><td>front end</td><td>15.75 cycles</td></tr></table>",
        },
        {
          title = "Back-end",
          txt = "<table><tr><th>      </th><th>P0</th><th>P1</th><th>P2</th><th>P3</th><th>P4</th><th>P5</th></tr><tr><td>uops</td><td>1.00</td><td>1.00</td><td>20.00</td><td>20.00</td><td>20.00</td><td>11.00</td></tr><tr><td>cycles</td><td>1.00</td><td>1.00</td><td>20.00</td><td>20.00</td><td>20.00</td><td>11.00</td></tr></table>\n<table><tr><td>Cycles executing div or sqrt instructions</td><td>NA</td></tr><tr><td>Longest recurrence chain latency (RecMII)</td><td>1.00</td></tr></table>",
        },
        {
          title = "Cycles summary",
          txt = "<table><tr><td>Front-end</td><td>15.75</td></tr><tr><td>Dispatch</td><td>20.00</td></tr><tr><td>Data deps.</td><td>1.00</td></tr><tr><td>Overall L1</td><td>20.00</td></tr></table>",
        },
        {
          title = "Vectorization ratios",
          txt = "<table><tr><td>all</td><td>100%</td></tr><tr><td>load</td><td>100%</td></tr><tr><td>store</td><td>100%</td></tr><tr><td>mul</td><td>NA (no mul vectorizable/vectorized instructions)</td></tr><tr><td>add-sub</td><td>NA (no add-sub vectorizable/vectorized instructions)</td></tr><tr><td>fma</td><td>NA (no fma vectorizable/vectorized instructions)</td></tr><tr><td>div/sqrt</td><td>NA (no div/sqrt vectorizable/vectorized instructions)</td></tr><tr><td>other</td><td>100%</td></tr></table>",
        },
        {
          title = "Vector efficiency ratios",
          txt = "<table><tr><td>all</td><td>50%</td></tr><tr><td>load</td><td>50%</td></tr><tr><td>store</td><td>50%</td></tr><tr><td>mul</td><td>NA (no mul vectorizable/vectorized instructions)</td></tr><tr><td>add-sub</td><td>NA (no add-sub vectorizable/vectorized instructions)</td></tr><tr><td>fma</td><td>NA (no fma vectorizable/vectorized instructions)</td></tr><tr><td>div/sqrt</td><td>NA (no div/sqrt vectorizable/vectorized instructions)</td></tr><tr><td>other</td><td>50%</td></tr></table>",
        },
        {
          title = "Cycles and memory resources usage",
          txt = "Assuming all data fit into the L1 cache, each iteration of the binary loop takes 20.00 cycles. At this rate:\n<ul><li>50% of peak load performance is reached (16.00 out of 32.00 bytes loaded per cycle (GB/s @ 1GHz))</li><li>100% of peak store performance is reached (16.00 out of 16.00 bytes stored per cycle (GB/s @ 1GHz))</li></ul>",
        },
        {
          title = "Front-end bottlenecks",
          txt = "Found no such bottlenecks.",
        },
        {
          title = "ASM code",
          txt = "In the binary file, the address of the loop is: 10350\n\n<table><tr><th>Instruction</th><th>Nb FU</th><th>P0</th><th>P1</th><th>P2</th><th>P3</th><th>P4</th><th>P5</th><th>Latency</th><th>Recip. throughput</th></tr><tr><td>VMOVUPD (%RDX),%XMM15</td><td>1</td><td>0</td><td>0</td><td>0.50</td><td>0.50</td><td>0</td><td>0</td><td>3</td><td>0.50</td></tr><tr><td>ADD $0x140,%RAX</td><td>1</td><td>0.33</td><td>0.33</td><td>0</td><td>0</td><td>0</td><td>0.33</td><td>1</td><td>0.33</td></tr><tr><td>VINSERTF128 $0x1,0x10(%RDX),%YMM15,%YMM4</td><td>2</td><td>0</td><td>0</td><td>0.50</td><td>0.50</td><td>0</td><td>1</td><td>2</td><td>1</td></tr><tr><td>ADD $0x140,%RDX</td><td>1</td><td>0.33</td><td>0.33</td><td>0</td><td>0</td><td>0</td><td>0.33</td><td>1</td><td>0.33</td></tr><tr><td>VMOVUPD -0x120(%RDX),%XMM1</td><td>1</td><td>0</td><td>0</td><td>0.50</td><td>0.50</td><td>0</td><td>0</td><td>3</td><td>0.50</td></tr><tr><td>VINSERTF128 $0x1,-0x110(%RDX),%YMM1,%YMM3</td><td>2</td><td>0</td><td>0</td><td>0.50</td><td>0.50</td><td>0</td><td>1</td><td>2</td><td>1</td></tr><tr><td>VMOVUPD -0x100(%RDX),%XMM2</td><td>1</td><td>0</td><td>0</td><td>0.50</td><td>0.50</td><td>0</td><td>0</td><td>3</td><td>0.50</td></tr><tr><td>VINSERTF128 $0x1,-0xf0(%RDX),%YMM2,%YMM5</td><td>2</td><td>0</td><td>0</td><td>0.50</td><td>0.50</td><td>0</td><td>1</td><td>2</td><td>1</td></tr><tr><td>VMOVUPD -0xe0(%RDX),%XMM6</td><td>1</td><td>0</td><td>0</td><td>0.50</td><td>0.50</td><td>0</td><td>0</td><td>3</td><td>0.50</td></tr><tr><td>VINSERTF128 $0x1,-0xd0(%RDX),%YMM6,%YMM7</td><td>2</td><td>0</td><td>0</td><td>0.50</td><td>0.50</td><td>0</td><td>1</td><td>2</td><td>1</td></tr><tr><td>VMOVUPD -0xc0(%RDX),%XMM0</td><td>1</td><td>0</td><td>0</td><td>0.50</td><td>0.50</td><td>0</td><td>0</td><td>3</td><td>0.50</td></tr><tr><td>VINSERTF128 $0x1,-0xb0(%RDX),%YMM0,%YMM8</td><td>2</td><td>0</td><td>0</td><td>0.50</td><td>0.50</td><td>0</td><td>1</td><td>2</td><td>1</td></tr><tr><td>VMOVUPS %XMM4,-0x140(%RAX)</td><td>1</td><td>0</td><td>0</td><td>0.50</td><td>0.50</td><td>1</td><td>0</td><td>3</td><td>1</td></tr><tr><td>VEXTRACTF128 $0x1,%YMM4,-0x130(%RAX)</td><td>2</td><td>0</td><td>0</td><td>0.50</td><td>0.50</td><td>1</td><td>0</td><td>2</td><td>1</td></tr><tr><td>VMOVUPS %XMM3,-0x120(%RAX)</td><td>1</td><td>0</td><td>0</td><td>0.50</td><td>0.50</td><td>1</td><td>0</td><td>3</td><td>1</td></tr><tr><td>VEXTRACTF128 $0x1,%YMM3,-0x110(%RAX)</td><td>2</td><td>0</td><td>0</td><td>0.50</td><td>0.50</td><td>1</td><td>0</td><td>2</td><td>1</td></tr><tr><td>VEXTRACTF128 $0x1,%YMM5,-0xf0(%RAX)</td><td>2</td><td>0</td><td>0</td><td>0.50</td><td>0.50</td><td>1</td><td>0</td><td>2</td><td>1</td></tr><tr><td>VEXTRACTF128 $0x1,%YMM7,-0xd0(%RAX)</td><td>2</td><td>0</td><td>0</td><td>0.50</td><td>0.50</td><td>1</td><td>0</td><td>2</td><td>1</td></tr><tr><td>VMOVUPS %XMM5,-0x100(%RAX)</td><td>1</td><td>0</td><td>0</td><td>0.50</td><td>0.50</td><td>1</td><td>0</td><td>3</td><td>1</td></tr><tr><td>VEXTRACTF128 $0x1,%YMM8,-0xb0(%RAX)</td><td>2</td><td>0</td><td>0</td><td>0.50</td><td>0.50</td><td>1</td><td>0</td><td>2</td><td>1</td></tr><tr><td>VMOVUPS %XMM7,-0xe0(%RAX)</td><td>1</td><td>0</td><td>0</td><td>0.50</td><td>0.50</td><td>1</td><td>0</td><td>3</td><td>1</td></tr><tr><td>VMOVUPS %XMM8,-0xc0(%RAX)</td><td>1</td><td>0</td><td>0</td><td>0.50</td><td>0.50</td><td>1</td><td>0</td><td>3</td><td>1</td></tr><tr><td>VMOVUPD -0xa0(%RDX),%XMM9</td><td>1</td><td>0</td><td>0</td><td>0.50</td><td>0.50</td><td>0</td><td>0</td><td>3</td><td>0.50</td></tr><tr><td>VINSERTF128 $0x1,-0x90(%RDX),%YMM9,%YMM10</td><td>2</td><td>0</td><td>0</td><td>0.50</td><td>0.50</td><td>0</td><td>1</td><td>2</td><td>1</td></tr><tr><td>VMOVUPD -0x80(%RDX),%XMM11</td><td>1</td><td>0</td><td>0</td><td>0.50</td><td>0.50</td><td>0</td><td>0</td><td>3</td><td>0.50</td></tr><tr><td>VINSERTF128 $0x1,-0x70(%RDX),%YMM11,%YMM12</td><td>2</td><td>0</td><td>0</td><td>0.50</td><td>0.50</td><td>0</td><td>1</td><td>2</td><td>1</td></tr><tr><td>VMOVUPD -0x60(%RDX),%XMM13</td><td>1</td><td>0</td><td>0</td><td>0.50</td><td>0.50</td><td>0</td><td>0</td><td>3</td><td>0.50</td></tr><tr><td>VINSERTF128 $0x1,-0x50(%RDX),%YMM13,%YMM14</td><td>2</td><td>0</td><td>0</td><td>0.50</td><td>0.50</td><td>0</td><td>1</td><td>2</td><td>1</td></tr><tr><td>VMOVUPD -0x40(%RDX),%XMM15</td><td>1</td><td>0</td><td>0</td><td>0.50</td><td>0.50</td><td>0</td><td>0</td><td>3</td><td>0.50</td></tr><tr><td>VINSERTF128 $0x1,-0x30(%RDX),%YMM15,%YMM4</td><td>2</td><td>0</td><td>0</td><td>0.50</td><td>0.50</td><td>0</td><td>1</td><td>2</td><td>1</td></tr><tr><td>VMOVUPD -0x20(%RDX),%XMM1</td><td>1</td><td>0</td><td>0</td><td>0.50</td><td>0.50</td><td>0</td><td>0</td><td>3</td><td>0.50</td></tr><tr><td>VINSERTF128 $0x1,-0x10(%RDX),%YMM1,%YMM3</td><td>2</td><td>0</td><td>0</td><td>0.50</td><td>0.50</td><td>0</td><td>1</td><td>2</td><td>1</td></tr><tr><td>VMOVUPS %XMM10,-0xa0(%RAX)</td><td>1</td><td>0</td><td>0</td><td>0.50</td><td>0.50</td><td>1</td><td>0</td><td>3</td><td>1</td></tr><tr><td>VEXTRACTF128 $0x1,%YMM10,-0x90(%RAX)</td><td>2</td><td>0</td><td>0</td><td>0.50</td><td>0.50</td><td>1</td><td>0</td><td>2</td><td>1</td></tr><tr><td>VMOVUPS %XMM12,-0x80(%RAX)</td><td>1</td><td>0</td><td>0</td><td>0.50</td><td>0.50</td><td>1</td><td>0</td><td>3</td><td>1</td></tr><tr><td>VEXTRACTF128 $0x1,%YMM12,-0x70(%RAX)</td><td>2</td><td>0</td><td>0</td><td>0.50</td><td>0.50</td><td>1</td><td>0</td><td>2</td><td>1</td></tr><tr><td>VEXTRACTF128 $0x1,%YMM14,-0x50(%RAX)</td><td>2</td><td>0</td><td>0</td><td>0.50</td><td>0.50</td><td>1</td><td>0</td><td>2</td><td>1</td></tr><tr><td>VEXTRACTF128 $0x1,%YMM4,-0x30(%RAX)</td><td>2</td><td>0</td><td>0</td><td>0.50</td><td>0.50</td><td>1</td><td>0</td><td>2</td><td>1</td></tr><tr><td>VMOVUPS %XMM14,-0x60(%RAX)</td><td>1</td><td>0</td><td>0</td><td>0.50</td><td>0.50</td><td>1</td><td>0</td><td>3</td><td>1</td></tr><tr><td>VEXTRACTF128 $0x1,%YMM3,-0x10(%RAX)</td><td>2</td><td>0</td><td>0</td><td>0.50</td><td>0.50</td><td>1</td><td>0</td><td>2</td><td>1</td></tr><tr><td>VMOVUPS %XMM4,-0x40(%RAX)</td><td>1</td><td>0</td><td>0</td><td>0.50</td><td>0.50</td><td>1</td><td>0</td><td>3</td><td>1</td></tr><tr><td>VMOVUPS %XMM3,-0x20(%RAX)</td><td>1</td><td>0</td><td>0</td><td>0.50</td><td>0.50</td><td>1</td><td>0</td><td>3</td><td>1</td></tr><tr><td>CMP %RAX,%R9</td><td>1</td><td>0.33</td><td>0.33</td><td>0</td><td>0</td><td>0</td><td>0.33</td><td>1</td><td>0.33</td></tr><tr><td>JNE 10350 <compute_rhs_._omp_fn.0+0x4000></td><td>1</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0</td><td>1</td><td>0</td><td>1-2</td></tr></table>",
        },
      },
      header = {
        "0% of peak computational performance is used (0.00 out of 2.00 FLOP per cycle (GFLOPS @ 1GHz))",
      },
      brief = {
      },
      gain = {
        {
          details = "All SSE/AVX instructions are used in vector version (process two or more data elements in vector registers).\n",
          title = "Vectorization",
          txt = "Your loop is vectorized, but using only 128 out of 256 bits (SSE/AVX-128 instructions on AVX/AVX2 processors).\n",
        },
        {
          workaround = "<ul><li>Read less array elements\nAll SSE and/or AVX registers are used:\nin that case, try to relax register pressure by reducing the unroll factor or splitting your loop</li><li>Write less array elements</li><li>Provide more information to your compiler:\n<ul><li>hardcode the bounds of the corresponding 'for' loop</li></ul></li></ul>",
          title = "Execution units bottlenecks",
          txt = "Performance is limited by:\n<ul><li>reading data from caches/RAM (load units are a bottleneck)</li><li>writing data to caches/RAM (the store unit is a bottleneck)</li></ul>",
        },
      },
      potential = {
      },
    },
  common = {
    header = {
      "The loop is defined in /users/user2210/NPB3.4-MZ-MPI/BT-MZ/rhs.f90:64.\n",
      "It is main loop of related source loop which is unrolled by 2 (including vectorization).",
    },
    nb_paths = 1,
  },
}
