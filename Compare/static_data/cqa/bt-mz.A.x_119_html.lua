_cqa_text_report = {
  paths = {
    {
      hint = {
        {
          details = "These instructions generate more than one micro-operation and only one of them can be decoded during a cycle and the extra micro-operations increase pressure on execution units.\n<ul><li>VEXTRACTF128: 10 occurrences</li><li>VINSERTF128: 20 occurrences</li></ul>",
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
          details = "<ul><li>VEXTRACTF128: 10 occurrences</li><li>VINSERTF128: 20 occurrences</li><li>VMOVUPS: 10 occurrences</li></ul>",
          title = "Vector unaligned load/store instructions",
          txt = "Detected 40 optimal vector unaligned load/store instructions.\n",
        },
        {
          title = "Type of elements and instruction set",
          txt = "10 AVX instructions are processing arithmetic or math operations on double precision FP elements in vector mode (four at a time).\n",
        },
        {
          title = "Matching between your loop (in the source code) and the binary loop",
          txt = "The binary loop is composed of 40 FP arithmetical operations:\n<ul><li>40: addition or subtraction</li></ul>The binary loop is loading 640 bytes (80 double precision FP elements).\nThe binary loop is storing 320 bytes (40 double precision FP elements).",
        },
        {
          title = "Arithmetic intensity",
          txt = "Arithmetic intensity is 0.04 FP operations per loaded or stored byte.",
        },
      },
      expert = {
        {
          title = "General properties",
          txt = "<table><tr><td>nb instructions</td><td>75</td></tr><tr><td>nb uops</td><td>104</td></tr><tr><td>loop length</td><td>534</td></tr><tr><td>used x86 registers</td><td>4</td></tr><tr><td>used mmx registers</td><td>0</td></tr><tr><td>used xmm registers</td><td>16</td></tr><tr><td>used ymm registers</td><td>16</td></tr><tr><td>used zmm registers</td><td>0</td></tr><tr><td>nb stack references</td><td>0</td></tr></table>",
        },
        {
          title = "Front-end",
          txt = "ASSUMED MACRO FUSION\nFIT IN UOP CACHE\n<table><tr><td>micro-operation queue</td><td>26.00 cycles</td></tr><tr><td>front end</td><td>26.00 cycles</td></tr></table>",
        },
        {
          title = "Back-end",
          txt = "<table><tr><th>      </th><th>P0</th><th>P1</th><th>P2</th><th>P3</th><th>P4</th><th>P5</th></tr><tr><td>uops</td><td>3.00</td><td>10.00</td><td>30.00</td><td>30.00</td><td>20.00</td><td>21.00</td></tr><tr><td>cycles</td><td>3.00</td><td>10.00</td><td>30.00</td><td>30.00</td><td>20.00</td><td>21.00</td></tr></table>\n<table><tr><td>Cycles executing div or sqrt instructions</td><td>NA</td></tr><tr><td>Longest recurrence chain latency (RecMII)</td><td>1.00</td></tr></table>",
        },
        {
          title = "Cycles summary",
          txt = "<table><tr><td>Front-end</td><td>26.00</td></tr><tr><td>Dispatch</td><td>30.00</td></tr><tr><td>Data deps.</td><td>1.00</td></tr><tr><td>Overall L1</td><td>30.00</td></tr></table>",
        },
        {
          title = "Vectorization ratios",
          txt = "<table><tr><td>all</td><td>100%</td></tr><tr><td>load</td><td>100%</td></tr><tr><td>store</td><td>100%</td></tr><tr><td>mul</td><td>NA (no mul vectorizable/vectorized instructions)</td></tr><tr><td>add-sub</td><td>100%</td></tr><tr><td>fma</td><td>NA (no fma vectorizable/vectorized instructions)</td></tr><tr><td>div/sqrt</td><td>NA (no div/sqrt vectorizable/vectorized instructions)</td></tr><tr><td>other</td><td>100%</td></tr></table>",
        },
        {
          title = "Vector efficiency ratios",
          txt = "<table><tr><td>all</td><td>57%</td></tr><tr><td>load</td><td>50%</td></tr><tr><td>store</td><td>50%</td></tr><tr><td>mul</td><td>NA (no mul vectorizable/vectorized instructions)</td></tr><tr><td>add-sub</td><td>100%</td></tr><tr><td>fma</td><td>NA (no fma vectorizable/vectorized instructions)</td></tr><tr><td>div/sqrt</td><td>NA (no div/sqrt vectorizable/vectorized instructions)</td></tr><tr><td>other</td><td>50%</td></tr></table>",
        },
        {
          title = "Cycles and memory resources usage",
          txt = "Assuming all data fit into the L1 cache, each iteration of the binary loop takes 30.00 cycles. At this rate:\n<ul><li>66% of peak load performance is reached (21.33 out of 32.00 bytes loaded per cycle (GB/s @ 1GHz))</li><li>66% of peak store performance is reached (10.67 out of 16.00 bytes stored per cycle (GB/s @ 1GHz))</li></ul>",
        },
        {
          title = "Front-end bottlenecks",
          txt = "Found no such bottlenecks.",
        },
        {
          title = "ASM code",
          txt = "In the binary file, the address of the loop is: 1e1a8\n\n<table><tr><th>Instruction</th><th>Nb FU</th><th>P0</th><th>P1</th><th>P2</th><th>P3</th><th>P4</th><th>P5</th><th>Latency</th><th>Recip. throughput</th></tr><tr><td>VMOVUPD 0x20(%RCX),%XMM11</td><td>1</td><td>0</td><td>0</td><td>0.50</td><td>0.50</td><td>0</td><td>0</td><td>3</td><td>0.50</td></tr><tr><td>VINSERTF128 $0x1,0x30(%RCX),%YMM11,%YMM12</td><td>2</td><td>0</td><td>0</td><td>0.50</td><td>0.50</td><td>0</td><td>1</td><td>2</td><td>1</td></tr><tr><td>LEA 0xa0(%RAX),%RSI</td><td>1</td><td>0.50</td><td>0.50</td><td>0</td><td>0</td><td>0</td><td>0</td><td>1</td><td>0.50</td></tr><tr><td>ADD $0x140,%RAX</td><td>1</td><td>0.33</td><td>0.33</td><td>0</td><td>0</td><td>0</td><td>0.33</td><td>1</td><td>0.33</td></tr><tr><td>VMOVUPD 0x40(%RCX),%XMM1</td><td>1</td><td>0</td><td>0</td><td>0.50</td><td>0.50</td><td>0</td><td>0</td><td>3</td><td>0.50</td></tr><tr><td>VINSERTF128 $0x1,0x50(%RCX),%YMM1,%YMM3</td><td>2</td><td>0</td><td>0</td><td>0.50</td><td>0.50</td><td>0</td><td>1</td><td>2</td><td>1</td></tr><tr><td>ADD $0x140,%RCX</td><td>1</td><td>0.33</td><td>0.33</td><td>0</td><td>0</td><td>0</td><td>0.33</td><td>1</td><td>0.33</td></tr><tr><td>VMOVUPD -0xe0(%RCX),%XMM8</td><td>1</td><td>0</td><td>0</td><td>0.50</td><td>0.50</td><td>0</td><td>0</td><td>3</td><td>0.50</td></tr><tr><td>VINSERTF128 $0x1,-0xd0(%RCX),%YMM8,%YMM5</td><td>2</td><td>0</td><td>0</td><td>0.50</td><td>0.50</td><td>0</td><td>1</td><td>2</td><td>1</td></tr><tr><td>VMOVUPD -0x140(%RCX),%XMM1</td><td>1</td><td>0</td><td>0</td><td>0.50</td><td>0.50</td><td>0</td><td>0</td><td>3</td><td>0.50</td></tr><tr><td>VMOVUPD -0x120(%RAX),%XMM6</td><td>1</td><td>0</td><td>0</td><td>0.50</td><td>0.50</td><td>0</td><td>0</td><td>3</td><td>0.50</td></tr><tr><td>VINSERTF128 $0x1,-0x110(%RAX),%YMM6,%YMM9</td><td>2</td><td>0</td><td>0</td><td>0.50</td><td>0.50</td><td>0</td><td>1</td><td>2</td><td>1</td></tr><tr><td>VADDPD %YMM12,%YMM9,%YMM13</td><td>1</td><td>0</td><td>1</td><td>0</td><td>0</td><td>0</td><td>0</td><td>3</td><td>1</td></tr><tr><td>VMOVUPD -0xc0(%RCX),%XMM6</td><td>1</td><td>0</td><td>0</td><td>0.50</td><td>0.50</td><td>0</td><td>0</td><td>3</td><td>0.50</td></tr><tr><td>VINSERTF128 $0x1,-0xb0(%RCX),%YMM6,%YMM11</td><td>2</td><td>0</td><td>0</td><td>0.50</td><td>0.50</td><td>0</td><td>1</td><td>2</td><td>1</td></tr><tr><td>VMOVUPD -0x100(%RAX),%XMM14</td><td>1</td><td>0</td><td>0</td><td>0.50</td><td>0.50</td><td>0</td><td>0</td><td>3</td><td>0.50</td></tr><tr><td>VINSERTF128 $0x1,-0xf0(%RAX),%YMM14,%YMM15</td><td>2</td><td>0</td><td>0</td><td>0.50</td><td>0.50</td><td>0</td><td>1</td><td>2</td><td>1</td></tr><tr><td>VADDPD %YMM3,%YMM15,%YMM2</td><td>1</td><td>0</td><td>1</td><td>0</td><td>0</td><td>0</td><td>0</td><td>3</td><td>1</td></tr><tr><td>VINSERTF128 $0x1,-0x130(%RCX),%YMM1,%YMM3</td><td>2</td><td>0</td><td>0</td><td>0.50</td><td>0.50</td><td>0</td><td>1</td><td>2</td><td>1</td></tr><tr><td>VMOVUPD -0xe0(%RAX),%XMM0</td><td>1</td><td>0</td><td>0</td><td>0.50</td><td>0.50</td><td>0</td><td>0</td><td>3</td><td>0.50</td></tr><tr><td>VMOVUPS %XMM13,-0x120(%RAX)</td><td>1</td><td>0</td><td>0</td><td>0.50</td><td>0.50</td><td>1</td><td>0</td><td>3</td><td>1</td></tr><tr><td>VINSERTF128 $0x1,-0xd0(%RAX),%YMM0,%YMM4</td><td>2</td><td>0</td><td>0</td><td>0.50</td><td>0.50</td><td>0</td><td>1</td><td>2</td><td>1</td></tr><tr><td>VADDPD %YMM5,%YMM4,%YMM10</td><td>1</td><td>0</td><td>1</td><td>0</td><td>0</td><td>0</td><td>0</td><td>3</td><td>1</td></tr><tr><td>VMOVUPD -0xc0(%RAX),%XMM7</td><td>1</td><td>0</td><td>0</td><td>0.50</td><td>0.50</td><td>0</td><td>0</td><td>3</td><td>0.50</td></tr><tr><td>VINSERTF128 $0x1,-0xb0(%RAX),%YMM7,%YMM9</td><td>2</td><td>0</td><td>0</td><td>0.50</td><td>0.50</td><td>0</td><td>1</td><td>2</td><td>1</td></tr><tr><td>VADDPD %YMM11,%YMM9,%YMM12</td><td>1</td><td>0</td><td>1</td><td>0</td><td>0</td><td>0</td><td>0</td><td>3</td><td>1</td></tr><tr><td>VEXTRACTF128 $0x1,%YMM13,-0x110(%RAX)</td><td>2</td><td>0</td><td>0</td><td>0.50</td><td>0.50</td><td>1</td><td>0</td><td>2</td><td>1</td></tr><tr><td>VMOVUPD -0x140(%RAX),%XMM14</td><td>1</td><td>0</td><td>0</td><td>0.50</td><td>0.50</td><td>0</td><td>0</td><td>3</td><td>0.50</td></tr><tr><td>VINSERTF128 $0x1,-0x130(%RAX),%YMM14,%YMM15</td><td>2</td><td>0</td><td>0</td><td>0.50</td><td>0.50</td><td>0</td><td>1</td><td>2</td><td>1</td></tr><tr><td>VADDPD %YMM3,%YMM15,%YMM0</td><td>1</td><td>0</td><td>1</td><td>0</td><td>0</td><td>0</td><td>0</td><td>3</td><td>1</td></tr><tr><td>VMOVUPS %XMM2,-0x100(%RAX)</td><td>1</td><td>0</td><td>0</td><td>0.50</td><td>0.50</td><td>1</td><td>0</td><td>3</td><td>1</td></tr><tr><td>VMOVUPS %XMM10,-0xe0(%RAX)</td><td>1</td><td>0</td><td>0</td><td>0.50</td><td>0.50</td><td>1</td><td>0</td><td>3</td><td>1</td></tr><tr><td>VEXTRACTF128 $0x1,%YMM10,-0xd0(%RAX)</td><td>2</td><td>0</td><td>0</td><td>0.50</td><td>0.50</td><td>1</td><td>0</td><td>2</td><td>1</td></tr><tr><td>VEXTRACTF128 $0x1,%YMM2,-0xf0(%RAX)</td><td>2</td><td>0</td><td>0</td><td>0.50</td><td>0.50</td><td>1</td><td>0</td><td>2</td><td>1</td></tr><tr><td>VMOVUPS %XMM12,-0xc0(%RAX)</td><td>1</td><td>0</td><td>0</td><td>0.50</td><td>0.50</td><td>1</td><td>0</td><td>3</td><td>1</td></tr><tr><td>VEXTRACTF128 $0x1,%YMM12,-0xb0(%RAX)</td><td>2</td><td>0</td><td>0</td><td>0.50</td><td>0.50</td><td>1</td><td>0</td><td>2</td><td>1</td></tr><tr><td>VMOVUPS %XMM0,-0x140(%RAX)</td><td>1</td><td>0</td><td>0</td><td>0.50</td><td>0.50</td><td>1</td><td>0</td><td>3</td><td>1</td></tr><tr><td>VEXTRACTF128 $0x1,%YMM0,-0x130(%RAX)</td><td>2</td><td>0</td><td>0</td><td>0.50</td><td>0.50</td><td>1</td><td>0</td><td>2</td><td>1</td></tr><tr><td>VMOVUPD 0x20(%RSI),%XMM13</td><td>1</td><td>0</td><td>0</td><td>0.50</td><td>0.50</td><td>0</td><td>0</td><td>3</td><td>0.50</td></tr><tr><td>VINSERTF128 $0x1,0x30(%RSI),%YMM13,%YMM2</td><td>2</td><td>0</td><td>0</td><td>0.50</td><td>0.50</td><td>0</td><td>1</td><td>2</td><td>1</td></tr><tr><td>VMOVUPD -0x80(%RCX),%XMM4</td><td>1</td><td>0</td><td>0</td><td>0.50</td><td>0.50</td><td>0</td><td>0</td><td>3</td><td>0.50</td></tr><tr><td>VINSERTF128 $0x1,-0x70(%RCX),%YMM4,%YMM8</td><td>2</td><td>0</td><td>0</td><td>0.50</td><td>0.50</td><td>0</td><td>1</td><td>2</td><td>1</td></tr><tr><td>VADDPD %YMM8,%YMM2,%YMM10</td><td>1</td><td>0</td><td>1</td><td>0</td><td>0</td><td>0</td><td>0</td><td>3</td><td>1</td></tr><tr><td>VMOVUPD -0x60(%RCX),%XMM9</td><td>1</td><td>0</td><td>0</td><td>0.50</td><td>0.50</td><td>0</td><td>0</td><td>3</td><td>0.50</td></tr><tr><td>VINSERTF128 $0x1,-0x50(%RCX),%YMM9,%YMM6</td><td>2</td><td>0</td><td>0</td><td>0.50</td><td>0.50</td><td>0</td><td>1</td><td>2</td><td>1</td></tr><tr><td>VMOVUPD 0x40(%RSI),%XMM5</td><td>1</td><td>0</td><td>0</td><td>0.50</td><td>0.50</td><td>0</td><td>0</td><td>3</td><td>0.50</td></tr><tr><td>VINSERTF128 $0x1,0x50(%RSI),%YMM5,%YMM7</td><td>2</td><td>0</td><td>0</td><td>0.50</td><td>0.50</td><td>0</td><td>1</td><td>2</td><td>1</td></tr><tr><td>VADDPD %YMM6,%YMM7,%YMM11</td><td>1</td><td>0</td><td>1</td><td>0</td><td>0</td><td>0</td><td>0</td><td>3</td><td>1</td></tr><tr><td>VMOVUPD -0xa0(%RAX),%XMM5</td><td>1</td><td>0</td><td>0</td><td>0.50</td><td>0.50</td><td>0</td><td>0</td><td>3</td><td>0.50</td></tr><tr><td>VINSERTF128 $0x1,0x10(%RSI),%YMM5,%YMM7</td><td>2</td><td>0</td><td>0</td><td>0.50</td><td>0.50</td><td>0</td><td>1</td><td>2</td><td>1</td></tr><tr><td>VMOVUPD -0xa0(%RCX),%XMM9</td><td>1</td><td>0</td><td>0</td><td>0.50</td><td>0.50</td><td>0</td><td>0</td><td>3</td><td>0.50</td></tr><tr><td>VINSERTF128 $0x1,-0x90(%RCX),%YMM9,%YMM6</td><td>2</td><td>0</td><td>0</td><td>0.50</td><td>0.50</td><td>0</td><td>1</td><td>2</td><td>1</td></tr><tr><td>VMOVUPD 0x60(%RSI),%XMM12</td><td>1</td><td>0</td><td>0</td><td>0.50</td><td>0.50</td><td>0</td><td>0</td><td>3</td><td>0.50</td></tr><tr><td>VINSERTF128 $0x1,0x70(%RSI),%YMM12,%YMM14</td><td>2</td><td>0</td><td>0</td><td>0.50</td><td>0.50</td><td>0</td><td>1</td><td>2</td><td>1</td></tr><tr><td>VADDPD %YMM6,%YMM7,%YMM12</td><td>1</td><td>0</td><td>1</td><td>0</td><td>0</td><td>0</td><td>0</td><td>3</td><td>1</td></tr><tr><td>VMOVUPD -0x40(%RCX),%XMM15</td><td>1</td><td>0</td><td>0</td><td>0.50</td><td>0.50</td><td>0</td><td>0</td><td>3</td><td>0.50</td></tr><tr><td>VINSERTF128 $0x1,-0x30(%RCX),%YMM15,%YMM1</td><td>2</td><td>0</td><td>0</td><td>0.50</td><td>0.50</td><td>0</td><td>1</td><td>2</td><td>1</td></tr><tr><td>VADDPD %YMM1,%YMM14,%YMM3</td><td>1</td><td>0</td><td>1</td><td>0</td><td>0</td><td>0</td><td>0</td><td>3</td><td>1</td></tr><tr><td>VMOVUPD -0x20(%RCX),%XMM2</td><td>1</td><td>0</td><td>0</td><td>0.50</td><td>0.50</td><td>0</td><td>0</td><td>3</td><td>0.50</td></tr><tr><td>VINSERTF128 $0x1,-0x10(%RCX),%YMM2,%YMM4</td><td>2</td><td>0</td><td>0</td><td>0.50</td><td>0.50</td><td>0</td><td>1</td><td>2</td><td>1</td></tr><tr><td>VMOVUPD 0x80(%RSI),%XMM0</td><td>1</td><td>0</td><td>0</td><td>0.50</td><td>0.50</td><td>0</td><td>0</td><td>3</td><td>0.50</td></tr><tr><td>VINSERTF128 $0x1,0x90(%RSI),%YMM0,%YMM13</td><td>2</td><td>0</td><td>0</td><td>0.50</td><td>0.50</td><td>0</td><td>1</td><td>2</td><td>1</td></tr><tr><td>VADDPD %YMM4,%YMM13,%YMM8</td><td>1</td><td>0</td><td>1</td><td>0</td><td>0</td><td>0</td><td>0</td><td>3</td><td>1</td></tr><tr><td>VMOVUPS %XMM12,-0xa0(%RAX)</td><td>1</td><td>0</td><td>0</td><td>0.50</td><td>0.50</td><td>1</td><td>0</td><td>3</td><td>1</td></tr><tr><td>VMOVUPS %XMM10,0x20(%RSI)</td><td>1</td><td>0</td><td>0</td><td>0.50</td><td>0.50</td><td>1</td><td>0</td><td>3</td><td>1</td></tr><tr><td>VEXTRACTF128 $0x1,%YMM12,0x10(%RSI)</td><td>2</td><td>0</td><td>0</td><td>0.50</td><td>0.50</td><td>1</td><td>0</td><td>2</td><td>1</td></tr><tr><td>VEXTRACTF128 $0x1,%YMM10,0x30(%RSI)</td><td>2</td><td>0</td><td>0</td><td>0.50</td><td>0.50</td><td>1</td><td>0</td><td>2</td><td>1</td></tr><tr><td>VEXTRACTF128 $0x1,%YMM11,0x50(%RSI)</td><td>2</td><td>0</td><td>0</td><td>0.50</td><td>0.50</td><td>1</td><td>0</td><td>2</td><td>1</td></tr><tr><td>VMOVUPS %XMM11,0x40(%RSI)</td><td>1</td><td>0</td><td>0</td><td>0.50</td><td>0.50</td><td>1</td><td>0</td><td>3</td><td>1</td></tr><tr><td>VEXTRACTF128 $0x1,%YMM3,0x70(%RSI)</td><td>2</td><td>0</td><td>0</td><td>0.50</td><td>0.50</td><td>1</td><td>0</td><td>2</td><td>1</td></tr><tr><td>VEXTRACTF128 $0x1,%YMM8,0x90(%RSI)</td><td>2</td><td>0</td><td>0</td><td>0.50</td><td>0.50</td><td>1</td><td>0</td><td>2</td><td>1</td></tr><tr><td>VMOVUPS %XMM3,0x60(%RSI)</td><td>1</td><td>0</td><td>0</td><td>0.50</td><td>0.50</td><td>1</td><td>0</td><td>3</td><td>1</td></tr><tr><td>VMOVUPS %XMM8,0x80(%RSI)</td><td>1</td><td>0</td><td>0</td><td>0.50</td><td>0.50</td><td>1</td><td>0</td><td>3</td><td>1</td></tr><tr><td>CMP %RBX,%RAX</td><td>1</td><td>0.33</td><td>0.33</td><td>0</td><td>0</td><td>0</td><td>0.33</td><td>1</td><td>0.33</td></tr><tr><td>JNE 1e1a8 <add_._omp_fn.0+0x2e8></td><td>1</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0</td><td>1</td><td>0</td><td>1-2</td></tr></table>",
        },
      },
      header = {
        "16% of peak computational performance is used (1.33 out of 8.00 FLOP per cycle (GFLOPS @ 1GHz))",
      },
      brief = {
      },
      gain = {
        {
          workaround = "Use vector aligned instructions:\n<ol><li>The GNU Fortran compiler does not support allocation alignment and does not feature directives to benefit from aligned data.</li><li>Use another compiler or locally use C code (for instance via libraries)</li></ol>",
          details = "All SSE/AVX instructions are used in vector version (process two or more data elements in vector registers).\nSince your execution units are vector units, only a fully vectorized loop can use their full power.\n",
          title = "Vectorization",
          txt = "Your loop is vectorized, but using 57% register length (average across all SSE/AVX instructions).\nBy fully vectorizing your loop, you can lower the cost of an iteration from 30.00 to 20.00 cycles (1.50x speedup).",
        },
        {
          workaround = "<ul><li>Read less array elements\nAll SSE and/or AVX registers are used:\nin that case, try to relax register pressure by reducing the unroll factor or splitting your loop</li><li>Write less array elements</li><li>Provide more information to your compiler:\n<ul><li>hardcode the bounds of the corresponding 'for' loop</li></ul></li></ul>",
          title = "Execution units bottlenecks",
          txt = "Performance is limited by:\n<ul><li>reading data from caches/RAM (load units are a bottleneck)</li><li>writing data to caches/RAM (the store unit is a bottleneck)</li></ul>\nBy removing all these bottlenecks, you can lower the cost of an iteration from 30.00 to 26.00 cycles (1.15x speedup).\n",
        },
      },
      potential = {
      },
    },
  },
  AVG = {
      hint = {
        {
          details = "These instructions generate more than one micro-operation and only one of them can be decoded during a cycle and the extra micro-operations increase pressure on execution units.\n<ul><li>VEXTRACTF128: 10 occurrences</li><li>VINSERTF128: 20 occurrences</li></ul>",
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
          details = "<ul><li>VEXTRACTF128: 10 occurrences</li><li>VINSERTF128: 20 occurrences</li><li>VMOVUPS: 10 occurrences</li></ul>",
          title = "Vector unaligned load/store instructions",
          txt = "Detected 40 optimal vector unaligned load/store instructions.\n",
        },
        {
          title = "Type of elements and instruction set",
          txt = "10 AVX instructions are processing arithmetic or math operations on double precision FP elements in vector mode (four at a time).\n",
        },
        {
          title = "Matching between your loop (in the source code) and the binary loop",
          txt = "The binary loop is composed of 40 FP arithmetical operations:\n<ul><li>40: addition or subtraction</li></ul>The binary loop is loading 640 bytes (80 double precision FP elements).\nThe binary loop is storing 320 bytes (40 double precision FP elements).",
        },
        {
          title = "Arithmetic intensity",
          txt = "Arithmetic intensity is 0.04 FP operations per loaded or stored byte.",
        },
      },
      expert = {
        {
          title = "General properties",
          txt = "<table><tr><td>nb instructions</td><td>75</td></tr><tr><td>nb uops</td><td>104</td></tr><tr><td>loop length</td><td>534</td></tr><tr><td>used x86 registers</td><td>4</td></tr><tr><td>used mmx registers</td><td>0</td></tr><tr><td>used xmm registers</td><td>16</td></tr><tr><td>used ymm registers</td><td>16</td></tr><tr><td>used zmm registers</td><td>0</td></tr><tr><td>nb stack references</td><td>0</td></tr></table>",
        },
        {
          title = "Front-end",
          txt = "ASSUMED MACRO FUSION\nFIT IN UOP CACHE\n<table><tr><td>micro-operation queue</td><td>26.00 cycles</td></tr><tr><td>front end</td><td>26.00 cycles</td></tr></table>",
        },
        {
          title = "Back-end",
          txt = "<table><tr><th>      </th><th>P0</th><th>P1</th><th>P2</th><th>P3</th><th>P4</th><th>P5</th></tr><tr><td>uops</td><td>3.00</td><td>10.00</td><td>30.00</td><td>30.00</td><td>20.00</td><td>21.00</td></tr><tr><td>cycles</td><td>3.00</td><td>10.00</td><td>30.00</td><td>30.00</td><td>20.00</td><td>21.00</td></tr></table>\n<table><tr><td>Cycles executing div or sqrt instructions</td><td>NA</td></tr><tr><td>Longest recurrence chain latency (RecMII)</td><td>1.00</td></tr></table>",
        },
        {
          title = "Cycles summary",
          txt = "<table><tr><td>Front-end</td><td>26.00</td></tr><tr><td>Dispatch</td><td>30.00</td></tr><tr><td>Data deps.</td><td>1.00</td></tr><tr><td>Overall L1</td><td>30.00</td></tr></table>",
        },
        {
          title = "Vectorization ratios",
          txt = "<table><tr><td>all</td><td>100%</td></tr><tr><td>load</td><td>100%</td></tr><tr><td>store</td><td>100%</td></tr><tr><td>mul</td><td>NA (no mul vectorizable/vectorized instructions)</td></tr><tr><td>add-sub</td><td>100%</td></tr><tr><td>fma</td><td>NA (no fma vectorizable/vectorized instructions)</td></tr><tr><td>div/sqrt</td><td>NA (no div/sqrt vectorizable/vectorized instructions)</td></tr><tr><td>other</td><td>100%</td></tr></table>",
        },
        {
          title = "Vector efficiency ratios",
          txt = "<table><tr><td>all</td><td>57%</td></tr><tr><td>load</td><td>50%</td></tr><tr><td>store</td><td>50%</td></tr><tr><td>mul</td><td>NA (no mul vectorizable/vectorized instructions)</td></tr><tr><td>add-sub</td><td>100%</td></tr><tr><td>fma</td><td>NA (no fma vectorizable/vectorized instructions)</td></tr><tr><td>div/sqrt</td><td>NA (no div/sqrt vectorizable/vectorized instructions)</td></tr><tr><td>other</td><td>50%</td></tr></table>",
        },
        {
          title = "Cycles and memory resources usage",
          txt = "Assuming all data fit into the L1 cache, each iteration of the binary loop takes 30.00 cycles. At this rate:\n<ul><li>66% of peak load performance is reached (21.33 out of 32.00 bytes loaded per cycle (GB/s @ 1GHz))</li><li>66% of peak store performance is reached (10.67 out of 16.00 bytes stored per cycle (GB/s @ 1GHz))</li></ul>",
        },
        {
          title = "Front-end bottlenecks",
          txt = "Found no such bottlenecks.",
        },
        {
          title = "ASM code",
          txt = "In the binary file, the address of the loop is: 1e1a8\n\n<table><tr><th>Instruction</th><th>Nb FU</th><th>P0</th><th>P1</th><th>P2</th><th>P3</th><th>P4</th><th>P5</th><th>Latency</th><th>Recip. throughput</th></tr><tr><td>VMOVUPD 0x20(%RCX),%XMM11</td><td>1</td><td>0</td><td>0</td><td>0.50</td><td>0.50</td><td>0</td><td>0</td><td>3</td><td>0.50</td></tr><tr><td>VINSERTF128 $0x1,0x30(%RCX),%YMM11,%YMM12</td><td>2</td><td>0</td><td>0</td><td>0.50</td><td>0.50</td><td>0</td><td>1</td><td>2</td><td>1</td></tr><tr><td>LEA 0xa0(%RAX),%RSI</td><td>1</td><td>0.50</td><td>0.50</td><td>0</td><td>0</td><td>0</td><td>0</td><td>1</td><td>0.50</td></tr><tr><td>ADD $0x140,%RAX</td><td>1</td><td>0.33</td><td>0.33</td><td>0</td><td>0</td><td>0</td><td>0.33</td><td>1</td><td>0.33</td></tr><tr><td>VMOVUPD 0x40(%RCX),%XMM1</td><td>1</td><td>0</td><td>0</td><td>0.50</td><td>0.50</td><td>0</td><td>0</td><td>3</td><td>0.50</td></tr><tr><td>VINSERTF128 $0x1,0x50(%RCX),%YMM1,%YMM3</td><td>2</td><td>0</td><td>0</td><td>0.50</td><td>0.50</td><td>0</td><td>1</td><td>2</td><td>1</td></tr><tr><td>ADD $0x140,%RCX</td><td>1</td><td>0.33</td><td>0.33</td><td>0</td><td>0</td><td>0</td><td>0.33</td><td>1</td><td>0.33</td></tr><tr><td>VMOVUPD -0xe0(%RCX),%XMM8</td><td>1</td><td>0</td><td>0</td><td>0.50</td><td>0.50</td><td>0</td><td>0</td><td>3</td><td>0.50</td></tr><tr><td>VINSERTF128 $0x1,-0xd0(%RCX),%YMM8,%YMM5</td><td>2</td><td>0</td><td>0</td><td>0.50</td><td>0.50</td><td>0</td><td>1</td><td>2</td><td>1</td></tr><tr><td>VMOVUPD -0x140(%RCX),%XMM1</td><td>1</td><td>0</td><td>0</td><td>0.50</td><td>0.50</td><td>0</td><td>0</td><td>3</td><td>0.50</td></tr><tr><td>VMOVUPD -0x120(%RAX),%XMM6</td><td>1</td><td>0</td><td>0</td><td>0.50</td><td>0.50</td><td>0</td><td>0</td><td>3</td><td>0.50</td></tr><tr><td>VINSERTF128 $0x1,-0x110(%RAX),%YMM6,%YMM9</td><td>2</td><td>0</td><td>0</td><td>0.50</td><td>0.50</td><td>0</td><td>1</td><td>2</td><td>1</td></tr><tr><td>VADDPD %YMM12,%YMM9,%YMM13</td><td>1</td><td>0</td><td>1</td><td>0</td><td>0</td><td>0</td><td>0</td><td>3</td><td>1</td></tr><tr><td>VMOVUPD -0xc0(%RCX),%XMM6</td><td>1</td><td>0</td><td>0</td><td>0.50</td><td>0.50</td><td>0</td><td>0</td><td>3</td><td>0.50</td></tr><tr><td>VINSERTF128 $0x1,-0xb0(%RCX),%YMM6,%YMM11</td><td>2</td><td>0</td><td>0</td><td>0.50</td><td>0.50</td><td>0</td><td>1</td><td>2</td><td>1</td></tr><tr><td>VMOVUPD -0x100(%RAX),%XMM14</td><td>1</td><td>0</td><td>0</td><td>0.50</td><td>0.50</td><td>0</td><td>0</td><td>3</td><td>0.50</td></tr><tr><td>VINSERTF128 $0x1,-0xf0(%RAX),%YMM14,%YMM15</td><td>2</td><td>0</td><td>0</td><td>0.50</td><td>0.50</td><td>0</td><td>1</td><td>2</td><td>1</td></tr><tr><td>VADDPD %YMM3,%YMM15,%YMM2</td><td>1</td><td>0</td><td>1</td><td>0</td><td>0</td><td>0</td><td>0</td><td>3</td><td>1</td></tr><tr><td>VINSERTF128 $0x1,-0x130(%RCX),%YMM1,%YMM3</td><td>2</td><td>0</td><td>0</td><td>0.50</td><td>0.50</td><td>0</td><td>1</td><td>2</td><td>1</td></tr><tr><td>VMOVUPD -0xe0(%RAX),%XMM0</td><td>1</td><td>0</td><td>0</td><td>0.50</td><td>0.50</td><td>0</td><td>0</td><td>3</td><td>0.50</td></tr><tr><td>VMOVUPS %XMM13,-0x120(%RAX)</td><td>1</td><td>0</td><td>0</td><td>0.50</td><td>0.50</td><td>1</td><td>0</td><td>3</td><td>1</td></tr><tr><td>VINSERTF128 $0x1,-0xd0(%RAX),%YMM0,%YMM4</td><td>2</td><td>0</td><td>0</td><td>0.50</td><td>0.50</td><td>0</td><td>1</td><td>2</td><td>1</td></tr><tr><td>VADDPD %YMM5,%YMM4,%YMM10</td><td>1</td><td>0</td><td>1</td><td>0</td><td>0</td><td>0</td><td>0</td><td>3</td><td>1</td></tr><tr><td>VMOVUPD -0xc0(%RAX),%XMM7</td><td>1</td><td>0</td><td>0</td><td>0.50</td><td>0.50</td><td>0</td><td>0</td><td>3</td><td>0.50</td></tr><tr><td>VINSERTF128 $0x1,-0xb0(%RAX),%YMM7,%YMM9</td><td>2</td><td>0</td><td>0</td><td>0.50</td><td>0.50</td><td>0</td><td>1</td><td>2</td><td>1</td></tr><tr><td>VADDPD %YMM11,%YMM9,%YMM12</td><td>1</td><td>0</td><td>1</td><td>0</td><td>0</td><td>0</td><td>0</td><td>3</td><td>1</td></tr><tr><td>VEXTRACTF128 $0x1,%YMM13,-0x110(%RAX)</td><td>2</td><td>0</td><td>0</td><td>0.50</td><td>0.50</td><td>1</td><td>0</td><td>2</td><td>1</td></tr><tr><td>VMOVUPD -0x140(%RAX),%XMM14</td><td>1</td><td>0</td><td>0</td><td>0.50</td><td>0.50</td><td>0</td><td>0</td><td>3</td><td>0.50</td></tr><tr><td>VINSERTF128 $0x1,-0x130(%RAX),%YMM14,%YMM15</td><td>2</td><td>0</td><td>0</td><td>0.50</td><td>0.50</td><td>0</td><td>1</td><td>2</td><td>1</td></tr><tr><td>VADDPD %YMM3,%YMM15,%YMM0</td><td>1</td><td>0</td><td>1</td><td>0</td><td>0</td><td>0</td><td>0</td><td>3</td><td>1</td></tr><tr><td>VMOVUPS %XMM2,-0x100(%RAX)</td><td>1</td><td>0</td><td>0</td><td>0.50</td><td>0.50</td><td>1</td><td>0</td><td>3</td><td>1</td></tr><tr><td>VMOVUPS %XMM10,-0xe0(%RAX)</td><td>1</td><td>0</td><td>0</td><td>0.50</td><td>0.50</td><td>1</td><td>0</td><td>3</td><td>1</td></tr><tr><td>VEXTRACTF128 $0x1,%YMM10,-0xd0(%RAX)</td><td>2</td><td>0</td><td>0</td><td>0.50</td><td>0.50</td><td>1</td><td>0</td><td>2</td><td>1</td></tr><tr><td>VEXTRACTF128 $0x1,%YMM2,-0xf0(%RAX)</td><td>2</td><td>0</td><td>0</td><td>0.50</td><td>0.50</td><td>1</td><td>0</td><td>2</td><td>1</td></tr><tr><td>VMOVUPS %XMM12,-0xc0(%RAX)</td><td>1</td><td>0</td><td>0</td><td>0.50</td><td>0.50</td><td>1</td><td>0</td><td>3</td><td>1</td></tr><tr><td>VEXTRACTF128 $0x1,%YMM12,-0xb0(%RAX)</td><td>2</td><td>0</td><td>0</td><td>0.50</td><td>0.50</td><td>1</td><td>0</td><td>2</td><td>1</td></tr><tr><td>VMOVUPS %XMM0,-0x140(%RAX)</td><td>1</td><td>0</td><td>0</td><td>0.50</td><td>0.50</td><td>1</td><td>0</td><td>3</td><td>1</td></tr><tr><td>VEXTRACTF128 $0x1,%YMM0,-0x130(%RAX)</td><td>2</td><td>0</td><td>0</td><td>0.50</td><td>0.50</td><td>1</td><td>0</td><td>2</td><td>1</td></tr><tr><td>VMOVUPD 0x20(%RSI),%XMM13</td><td>1</td><td>0</td><td>0</td><td>0.50</td><td>0.50</td><td>0</td><td>0</td><td>3</td><td>0.50</td></tr><tr><td>VINSERTF128 $0x1,0x30(%RSI),%YMM13,%YMM2</td><td>2</td><td>0</td><td>0</td><td>0.50</td><td>0.50</td><td>0</td><td>1</td><td>2</td><td>1</td></tr><tr><td>VMOVUPD -0x80(%RCX),%XMM4</td><td>1</td><td>0</td><td>0</td><td>0.50</td><td>0.50</td><td>0</td><td>0</td><td>3</td><td>0.50</td></tr><tr><td>VINSERTF128 $0x1,-0x70(%RCX),%YMM4,%YMM8</td><td>2</td><td>0</td><td>0</td><td>0.50</td><td>0.50</td><td>0</td><td>1</td><td>2</td><td>1</td></tr><tr><td>VADDPD %YMM8,%YMM2,%YMM10</td><td>1</td><td>0</td><td>1</td><td>0</td><td>0</td><td>0</td><td>0</td><td>3</td><td>1</td></tr><tr><td>VMOVUPD -0x60(%RCX),%XMM9</td><td>1</td><td>0</td><td>0</td><td>0.50</td><td>0.50</td><td>0</td><td>0</td><td>3</td><td>0.50</td></tr><tr><td>VINSERTF128 $0x1,-0x50(%RCX),%YMM9,%YMM6</td><td>2</td><td>0</td><td>0</td><td>0.50</td><td>0.50</td><td>0</td><td>1</td><td>2</td><td>1</td></tr><tr><td>VMOVUPD 0x40(%RSI),%XMM5</td><td>1</td><td>0</td><td>0</td><td>0.50</td><td>0.50</td><td>0</td><td>0</td><td>3</td><td>0.50</td></tr><tr><td>VINSERTF128 $0x1,0x50(%RSI),%YMM5,%YMM7</td><td>2</td><td>0</td><td>0</td><td>0.50</td><td>0.50</td><td>0</td><td>1</td><td>2</td><td>1</td></tr><tr><td>VADDPD %YMM6,%YMM7,%YMM11</td><td>1</td><td>0</td><td>1</td><td>0</td><td>0</td><td>0</td><td>0</td><td>3</td><td>1</td></tr><tr><td>VMOVUPD -0xa0(%RAX),%XMM5</td><td>1</td><td>0</td><td>0</td><td>0.50</td><td>0.50</td><td>0</td><td>0</td><td>3</td><td>0.50</td></tr><tr><td>VINSERTF128 $0x1,0x10(%RSI),%YMM5,%YMM7</td><td>2</td><td>0</td><td>0</td><td>0.50</td><td>0.50</td><td>0</td><td>1</td><td>2</td><td>1</td></tr><tr><td>VMOVUPD -0xa0(%RCX),%XMM9</td><td>1</td><td>0</td><td>0</td><td>0.50</td><td>0.50</td><td>0</td><td>0</td><td>3</td><td>0.50</td></tr><tr><td>VINSERTF128 $0x1,-0x90(%RCX),%YMM9,%YMM6</td><td>2</td><td>0</td><td>0</td><td>0.50</td><td>0.50</td><td>0</td><td>1</td><td>2</td><td>1</td></tr><tr><td>VMOVUPD 0x60(%RSI),%XMM12</td><td>1</td><td>0</td><td>0</td><td>0.50</td><td>0.50</td><td>0</td><td>0</td><td>3</td><td>0.50</td></tr><tr><td>VINSERTF128 $0x1,0x70(%RSI),%YMM12,%YMM14</td><td>2</td><td>0</td><td>0</td><td>0.50</td><td>0.50</td><td>0</td><td>1</td><td>2</td><td>1</td></tr><tr><td>VADDPD %YMM6,%YMM7,%YMM12</td><td>1</td><td>0</td><td>1</td><td>0</td><td>0</td><td>0</td><td>0</td><td>3</td><td>1</td></tr><tr><td>VMOVUPD -0x40(%RCX),%XMM15</td><td>1</td><td>0</td><td>0</td><td>0.50</td><td>0.50</td><td>0</td><td>0</td><td>3</td><td>0.50</td></tr><tr><td>VINSERTF128 $0x1,-0x30(%RCX),%YMM15,%YMM1</td><td>2</td><td>0</td><td>0</td><td>0.50</td><td>0.50</td><td>0</td><td>1</td><td>2</td><td>1</td></tr><tr><td>VADDPD %YMM1,%YMM14,%YMM3</td><td>1</td><td>0</td><td>1</td><td>0</td><td>0</td><td>0</td><td>0</td><td>3</td><td>1</td></tr><tr><td>VMOVUPD -0x20(%RCX),%XMM2</td><td>1</td><td>0</td><td>0</td><td>0.50</td><td>0.50</td><td>0</td><td>0</td><td>3</td><td>0.50</td></tr><tr><td>VINSERTF128 $0x1,-0x10(%RCX),%YMM2,%YMM4</td><td>2</td><td>0</td><td>0</td><td>0.50</td><td>0.50</td><td>0</td><td>1</td><td>2</td><td>1</td></tr><tr><td>VMOVUPD 0x80(%RSI),%XMM0</td><td>1</td><td>0</td><td>0</td><td>0.50</td><td>0.50</td><td>0</td><td>0</td><td>3</td><td>0.50</td></tr><tr><td>VINSERTF128 $0x1,0x90(%RSI),%YMM0,%YMM13</td><td>2</td><td>0</td><td>0</td><td>0.50</td><td>0.50</td><td>0</td><td>1</td><td>2</td><td>1</td></tr><tr><td>VADDPD %YMM4,%YMM13,%YMM8</td><td>1</td><td>0</td><td>1</td><td>0</td><td>0</td><td>0</td><td>0</td><td>3</td><td>1</td></tr><tr><td>VMOVUPS %XMM12,-0xa0(%RAX)</td><td>1</td><td>0</td><td>0</td><td>0.50</td><td>0.50</td><td>1</td><td>0</td><td>3</td><td>1</td></tr><tr><td>VMOVUPS %XMM10,0x20(%RSI)</td><td>1</td><td>0</td><td>0</td><td>0.50</td><td>0.50</td><td>1</td><td>0</td><td>3</td><td>1</td></tr><tr><td>VEXTRACTF128 $0x1,%YMM12,0x10(%RSI)</td><td>2</td><td>0</td><td>0</td><td>0.50</td><td>0.50</td><td>1</td><td>0</td><td>2</td><td>1</td></tr><tr><td>VEXTRACTF128 $0x1,%YMM10,0x30(%RSI)</td><td>2</td><td>0</td><td>0</td><td>0.50</td><td>0.50</td><td>1</td><td>0</td><td>2</td><td>1</td></tr><tr><td>VEXTRACTF128 $0x1,%YMM11,0x50(%RSI)</td><td>2</td><td>0</td><td>0</td><td>0.50</td><td>0.50</td><td>1</td><td>0</td><td>2</td><td>1</td></tr><tr><td>VMOVUPS %XMM11,0x40(%RSI)</td><td>1</td><td>0</td><td>0</td><td>0.50</td><td>0.50</td><td>1</td><td>0</td><td>3</td><td>1</td></tr><tr><td>VEXTRACTF128 $0x1,%YMM3,0x70(%RSI)</td><td>2</td><td>0</td><td>0</td><td>0.50</td><td>0.50</td><td>1</td><td>0</td><td>2</td><td>1</td></tr><tr><td>VEXTRACTF128 $0x1,%YMM8,0x90(%RSI)</td><td>2</td><td>0</td><td>0</td><td>0.50</td><td>0.50</td><td>1</td><td>0</td><td>2</td><td>1</td></tr><tr><td>VMOVUPS %XMM3,0x60(%RSI)</td><td>1</td><td>0</td><td>0</td><td>0.50</td><td>0.50</td><td>1</td><td>0</td><td>3</td><td>1</td></tr><tr><td>VMOVUPS %XMM8,0x80(%RSI)</td><td>1</td><td>0</td><td>0</td><td>0.50</td><td>0.50</td><td>1</td><td>0</td><td>3</td><td>1</td></tr><tr><td>CMP %RBX,%RAX</td><td>1</td><td>0.33</td><td>0.33</td><td>0</td><td>0</td><td>0</td><td>0.33</td><td>1</td><td>0.33</td></tr><tr><td>JNE 1e1a8 <add_._omp_fn.0+0x2e8></td><td>1</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0</td><td>1</td><td>0</td><td>1-2</td></tr></table>",
        },
      },
      header = {
        "16% of peak computational performance is used (1.33 out of 8.00 FLOP per cycle (GFLOPS @ 1GHz))",
      },
      brief = {
      },
      gain = {
        {
          workaround = "Use vector aligned instructions:\n<ol><li>The GNU Fortran compiler does not support allocation alignment and does not feature directives to benefit from aligned data.</li><li>Use another compiler or locally use C code (for instance via libraries)</li></ol>",
          details = "All SSE/AVX instructions are used in vector version (process two or more data elements in vector registers).\nSince your execution units are vector units, only a fully vectorized loop can use their full power.\n",
          title = "Vectorization",
          txt = "Your loop is vectorized, but using 57% register length (average across all SSE/AVX instructions).\nBy fully vectorizing your loop, you can lower the cost of an iteration from 30.00 to 20.00 cycles (1.50x speedup).",
        },
        {
          workaround = "<ul><li>Read less array elements\nAll SSE and/or AVX registers are used:\nin that case, try to relax register pressure by reducing the unroll factor or splitting your loop</li><li>Write less array elements</li><li>Provide more information to your compiler:\n<ul><li>hardcode the bounds of the corresponding 'for' loop</li></ul></li></ul>",
          title = "Execution units bottlenecks",
          txt = "Performance is limited by:\n<ul><li>reading data from caches/RAM (load units are a bottleneck)</li><li>writing data to caches/RAM (the store unit is a bottleneck)</li></ul>\nBy removing all these bottlenecks, you can lower the cost of an iteration from 30.00 to 26.00 cycles (1.15x speedup).\n",
        },
      },
      potential = {
      },
    },
  common = {
    header = {
      "The loop is defined in /users/user2210/NPB3.4-MZ-MPI/BT-MZ/add.f90:29.\n",
      "It is main loop of related source loop which is unrolled by 2 (including vectorization).",
    },
    nb_paths = 1,
  },
}
