_cqa_text_report = {
  paths = {
    {
      hint = {
        {
          workaround = "<ul><li>Try to reorganize arrays of structures to structures of arrays</li><li>Consider to permute loops (see vectorization gain report)</li></ul>",
          details = "<ul><li>Constant unknown stride: 2 occurrence(s)</li></ul>Non-unit stride (uncontiguous) accesses are not efficiently using data caches\n",
          title = "Slow data structures access",
          txt = "Detected data structures (typically arrays) that cannot be efficiently read/written",
        },
        {
          workaround = "Use vector aligned instructions:\n<ol><li>align your arrays on 64 bytes boundaries: replace { void *p = malloc (size); } with { void *p; posix_memalign (&amp;p, 64, size); }.</li><li>inform your compiler that your arrays are vector aligned: if array 'foo' is 64 bytes-aligned, define a pointer 'p_foo' as __builtin_assume_aligned (foo, 64) and use it instead of 'foo' in the loop.</li></ol>",
          details = "<ul><li>VEXTRACTF128: 3 occurrences</li><li>VEXTRACTF64X4: 3 occurrences</li></ul>",
          title = "Vector unaligned load/store instructions",
          txt = "Detected 6 suboptimal vector unaligned load/store instructions.\n",
        },
        {
          workaround = "Avoid mixing data with different types. In particular, check if the type of constants is the same as array elements. Use double instead of single precision only when/where needed by numerical stability and avoid mixing precision. In C/C++, FP constants are double precision by default and must be suffixed by 'f' to make them single precision.",
          details = "<ul><li>VCVTSD2SS (FP64 to FP32, scalar): 2 occurrences</li></ul>",
          title = "Conversion instructions",
          txt = "Detected expensive conversion instructions.",
        },
        {
          title = "Type of elements and instruction set",
          txt = "6 SSE or AVX instructions are processing arithmetic or math operations on double precision FP elements in scalar mode (one at a time).\n6 SSE or AVX instructions are processing arithmetic or math operations on double precision FP elements in vector mode (two at a time).\n3 AVX instructions are processing arithmetic or math operations on double precision FP elements in vector mode (four at a time).\n2 AVX-512 instructions are processing arithmetic or math operations on double precision FP elements in vector mode (eight at a time).\n",
        },
        {
          title = "Matching between your loop (in the source code) and the binary loop",
          txt = "The binary loop is composed of 47 FP arithmetical operations:\n<ul><li>26: addition or subtraction (1 inside FMA instructions)</li><li>18: multiply (1 inside FMA instructions)</li><li>2: divide</li><li>1: square root</li></ul>The binary loop is loading 136 bytes (17 double precision FP elements).\nThe binary loop is storing 8 bytes (1 double precision FP elements).",
        },
        {
          title = "Arithmetic intensity",
          txt = "Arithmetic intensity is 0.33 FP operations per loaded or stored byte.",
        },
      },
      expert = {
        {
          title = "General properties",
          txt = "<table><tr><td>nb instructions</td><td>45</td></tr><tr><td>loop length</td><td>221</td></tr><tr><td>used x86 registers</td><td>11</td></tr><tr><td>used mmx registers</td><td>0</td></tr><tr><td>used xmm registers</td><td>13</td></tr><tr><td>used ymm registers</td><td>8</td></tr><tr><td>used zmm registers</td><td>6</td></tr><tr><td>nb stack references</td><td>0</td></tr><tr><td>ADD-SUB / MUL ratio</td><td>3.33</td></tr></table>",
        },
        {
          title = "Front-end",
          txt = "MACRO FUSION NOT POSSIBLE\n<table><tr><td>instruction fetch</td><td>14.00 cycles</td></tr><tr><td>instruction queue</td><td>22.50 cycles</td></tr><tr><td>decoding</td><td>22.50 cycles</td></tr><tr><td>micro-operation queue</td><td>23.00 cycles</td></tr><tr><td>front end</td><td>23.00 cycles</td></tr></table>",
        },
        {
          title = "Back-end",
          txt = "<table><tr><th>      </th><th>P0</th><th>P1</th><th>P2</th><th>P3</th><th>P4</th><th>P5</th><th>P6</th></tr><tr><td>uops</td><td>16.50</td><td>16.50</td><td>2.50</td><td>2.50</td><td>8.00</td><td>8.00</td><td>2.00</td></tr><tr><td>cycles</td><td>16.50</td><td>16.50</td><td>2.50</td><td>2.50</td><td>8.00</td><td>8.00</td><td>2.00</td></tr></table>\n<table><tr><td>Cycles executing div or sqrt instructions</td><td>56.00-97.00</td></tr><tr><td>Longest recurrence chain latency (RecMII)</td><td>1.00</td></tr></table>",
        },
        {
          title = "Cycles summary",
          txt = "<table><tr><td>Front-end</td><td>23.00</td></tr><tr><td>Dispatch</td><td>16.50</td></tr><tr><td>DIV/SQRT</td><td>56.00-97.00</td></tr><tr><td>Data deps.</td><td>1.00</td></tr><tr><td>Overall L1</td><td>56.00-97.00</td></tr></table>",
        },
        {
          title = "Vectorization ratios",
          txt = "INT\n<table><tr><td>all</td><td>0%</td></tr><tr><td>load</td><td>NA (no load vectorizable/vectorized instructions)</td></tr><tr><td>store</td><td>NA (no store vectorizable/vectorized instructions)</td></tr><tr><td>mul</td><td>0%</td></tr><tr><td>add-sub</td><td>0%</td></tr><tr><td>fma</td><td>NA (no fma vectorizable/vectorized instructions)</td></tr><tr><td>other</td><td>0%</td></tr></table>FP\n<table><tr><td>all</td><td>65%</td></tr><tr><td>load</td><td>66%</td></tr><tr><td>store</td><td>0%</td></tr><tr><td>mul</td><td>66%</td></tr><tr><td>add-sub</td><td>90%</td></tr><tr><td>fma</td><td>0%</td></tr><tr><td>div/sqrt</td><td>0%</td></tr><tr><td>other</td><td>75%</td></tr></table>INT+FP\n<table><tr><td>all</td><td>59%</td></tr><tr><td>load</td><td>66%</td></tr><tr><td>store</td><td>0%</td></tr><tr><td>mul</td><td>50%</td></tr><tr><td>add-sub</td><td>81%</td></tr><tr><td>fma</td><td>0%</td></tr><tr><td>div/sqrt</td><td>0%</td></tr><tr><td>other</td><td>66%</td></tr></table>",
        },
        {
          title = "Vector efficiency ratios",
          txt = "INT\n<table><tr><td>all</td><td>8%</td></tr><tr><td>load</td><td>NA (no load vectorizable/vectorized instructions)</td></tr><tr><td>store</td><td>NA (no store vectorizable/vectorized instructions)</td></tr><tr><td>mul</td><td>6%</td></tr><tr><td>add-sub</td><td>6%</td></tr><tr><td>fma</td><td>NA (no fma vectorizable/vectorized instructions)</td></tr><tr><td>other</td><td>12%</td></tr></table>FP\n<table><tr><td>all</td><td>35%</td></tr><tr><td>load</td><td>70%</td></tr><tr><td>store</td><td>6%</td></tr><tr><td>mul</td><td>70%</td></tr><tr><td>add-sub</td><td>31%</td></tr><tr><td>fma</td><td>12%</td></tr><tr><td>div/sqrt</td><td>12%</td></tr><tr><td>other</td><td>31%</td></tr></table>INT+FP\n<table><tr><td>all</td><td>33%</td></tr><tr><td>load</td><td>70%</td></tr><tr><td>store</td><td>6%</td></tr><tr><td>mul</td><td>54%</td></tr><tr><td>add-sub</td><td>28%</td></tr><tr><td>fma</td><td>12%</td></tr><tr><td>div/sqrt</td><td>12%</td></tr><tr><td>other</td><td>29%</td></tr></table>",
        },
        {
          title = "Cycles and memory resources usage",
          txt = "Assuming all data fit into the L1 cache, each iteration of the binary loop takes 97.00 cycles. At this rate:\n<ul><li>1% of peak load performance is reached (1.40 out of 128.00 bytes loaded per cycle (GB/s @ 1GHz))</li><li>0% of peak store performance is reached (0.08 out of 64.00 bytes stored per cycle (GB/s @ 1GHz))</li></ul>",
        },
        {
          title = "Front-end bottlenecks",
          txt = "Found no such bottlenecks.",
        },
        {
          title = "ASM code",
          txt = "In the binary file, the address of the loop is: 4007\n\n<table><tr><th>Instruction</th><th>Nb FU</th><th>P0</th><th>P1</th><th>P2</th><th>P3</th><th>P4</th><th>P5</th><th>P6</th><th>Latency</th><th>Recip. throughput</th></tr><tr><td>LEA (%RAX),%R8D</td><td>1</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0.50</td><td>0.50</td><td>0</td><td>1</td><td>0.50</td></tr><tr><td>IMUL %R13D,%R8D</td><td>1</td><td>0</td><td>0</td><td>0</td><td>0</td><td>1</td><td>0</td><td>0</td><td>3</td><td>1</td></tr><tr><td>ADD %R12D,%R8D</td><td>1</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0.50</td><td>0.50</td><td>0</td><td>1</td><td>0.50</td></tr><tr><td>MOV %R8D,%R9D</td><td>1</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0.50</td><td>0.50</td><td>0</td><td>0</td><td>0.50</td></tr><tr><td>SAL $0x3,%R9D</td><td>1</td><td>0</td><td>0</td><td>0</td><td>0</td><td>1</td><td>0</td><td>0</td><td>1</td><td>1</td></tr><tr><td>ADD %R8D,%R9D</td><td>1</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0.50</td><td>0.50</td><td>0</td><td>1</td><td>0.50</td></tr><tr><td>MOV %R9D,%R9D</td><td>1</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0.50</td><td>0.50</td><td>0</td><td>0</td><td>0.50</td></tr><tr><td>LEA (%RDI,%R9,8),%R10</td><td>1</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0.50</td><td>0.50</td><td>0</td><td>1</td><td>0.50</td></tr><tr><td>VMOVUPD (%R10),%ZMM1</td><td>1</td><td>0</td><td>0</td><td>0.50</td><td>0.50</td><td>0</td><td>0</td><td>0</td><td>5</td><td>0.50</td></tr><tr><td>VEXTRACTF64X4 $0x1,%ZMM1,%YMM0</td><td>1</td><td>1</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0</td><td>3-6</td><td>1</td></tr><tr><td>VADDPD %YMM1,%YMM0,%YMM3</td><td>1</td><td>0.50</td><td>0.50</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0</td><td>6</td><td>0.50</td></tr><tr><td>VMOVUPD 0x8(%R10),%ZMM10</td><td>1</td><td>0</td><td>0</td><td>0.50</td><td>0.50</td><td>0</td><td>0</td><td>0</td><td>5</td><td>0.50</td></tr><tr><td>VMULPD %ZMM5,%ZMM10,%ZMM11</td><td>1</td><td>0.50</td><td>0.50</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0</td><td>6</td><td>0.50</td></tr><tr><td>VEXTRACTF128 $0x1,%YMM3,%XMM6</td><td>1</td><td>1</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0</td><td>3-6</td><td>1</td></tr><tr><td>VADDPD %XMM3,%XMM6,%XMM7</td><td>1</td><td>0.50</td><td>0.50</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0</td><td>6</td><td>0.50</td></tr><tr><td>VMULPD %ZMM4,%ZMM10,%ZMM3</td><td>1</td><td>0.50</td><td>0.50</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0</td><td>6</td><td>0.50</td></tr><tr><td>VEXTRACTF64X4 $0x1,%ZMM11,%YMM12</td><td>1</td><td>1</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0</td><td>3-6</td><td>1</td></tr><tr><td>VADDPD %YMM11,%YMM12,%YMM13</td><td>1</td><td>0.50</td><td>0.50</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0</td><td>6</td><td>0.50</td></tr><tr><td>VHADDPD %XMM7,%XMM7,%XMM8</td><td>3</td><td>1.50</td><td>1.50</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0</td><td>15</td><td>8</td></tr><tr><td>VADDSD 0x40(%R10),%XMM8,%XMM9</td><td>1</td><td>0.50</td><td>0.50</td><td>0.50</td><td>0.50</td><td>0</td><td>0</td><td>0</td><td>6</td><td>0.50</td></tr><tr><td>VEXTRACTF64X4 $0x1,%ZMM3,%YMM2</td><td>1</td><td>1</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0</td><td>3-6</td><td>1</td></tr><tr><td>VADDPD %YMM3,%YMM2,%YMM6</td><td>1</td><td>0.50</td><td>0.50</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0</td><td>6</td><td>0.50</td></tr><tr><td>VEXTRACTF128 $0x1,%YMM13,%XMM14</td><td>1</td><td>1</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0</td><td>3-6</td><td>1</td></tr><tr><td>VADDPD %XMM13,%XMM14,%XMM15</td><td>1</td><td>0.50</td><td>0.50</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0</td><td>6</td><td>0.50</td></tr><tr><td>VEXTRACTF128 $0x1,%YMM6,%XMM7</td><td>1</td><td>1</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0</td><td>3-6</td><td>1</td></tr><tr><td>VADDPD %XMM6,%XMM7,%XMM8</td><td>1</td><td>0.50</td><td>0.50</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0</td><td>6</td><td>0.50</td></tr><tr><td>VHADDPD %XMM15,%XMM15,%XMM1</td><td>3</td><td>1.50</td><td>1.50</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0</td><td>15</td><td>8</td></tr><tr><td>VDIVSD %XMM9,%XMM1,%XMM0</td><td>3</td><td>1</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0</td><td>40-42</td><td>12-32</td></tr><tr><td>VHADDPD %XMM8,%XMM8,%XMM10</td><td>3</td><td>1.50</td><td>1.50</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0</td><td>15</td><td>8</td></tr><tr><td>VDIVSD %XMM9,%XMM10,%XMM11</td><td>3</td><td>1</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0</td><td>40-42</td><td>12-32</td></tr><tr><td>VCVTSD2SS %XMM9,%XMM9,%XMM9</td><td>1</td><td>1</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0</td><td>2</td><td>1</td></tr><tr><td>VMULSD %XMM11,%XMM11,%XMM12</td><td>1</td><td>0.50</td><td>0.50</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0</td><td>6</td><td>0.50</td></tr><tr><td>VMOVSS %XMM9,0x34(%RSP,%RDX,8)</td><td>1</td><td>0</td><td>0</td><td>0.50</td><td>0.50</td><td>0</td><td>0</td><td>1</td><td>2</td><td>1</td></tr><tr><td>VFMADD132SD %XMM0,%XMM12,%XMM0</td><td>1</td><td>0.50</td><td>0.50</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0</td><td>6</td><td>0.50</td></tr><tr><td>VSQRTSD %XMM0,%XMM0,%XMM0</td><td>3</td><td>3</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0</td><td>40-42</td><td>32-33</td></tr><tr><td>VCVTSD2SS %XMM0,%XMM0,%XMM13</td><td>1</td><td>1</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0</td><td>2</td><td>1</td></tr><tr><td>VMOVSS %XMM13,0x30(%RSP,%RDX,8)</td><td>1</td><td>0</td><td>0</td><td>0.50</td><td>0.50</td><td>0</td><td>0</td><td>1</td><td>2</td><td>1</td></tr><tr><td>LEA 0x1(%RDX),%RDX</td><td>1</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0.50</td><td>0.50</td><td>0</td><td>1</td><td>0.50</td></tr><tr><td>CMP $0x1000,%RDX</td><td>1</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0.50</td><td>0.50</td><td>0</td><td>1</td><td>0.50</td></tr><tr><td>JA 419a <save_frame+0x23a></td><td>1</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0</td><td>1</td><td>0</td><td>0</td><td>1-2</td></tr><tr><td>JE 4130 <save_frame+0x1d0></td><td>1</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0</td><td>1</td><td>0</td><td>0</td><td>1-2</td></tr><tr><td>LEA 0x1(%R12),%R12</td><td>1</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0.50</td><td>0.50</td><td>0</td><td>1</td><td>0.50</td></tr><tr><td>LEA (%RCX),%R11D</td><td>1</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0.50</td><td>0.50</td><td>0</td><td>1</td><td>0.50</td></tr><tr><td>CMP %R12,%R11</td><td>1</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0.50</td><td>0.50</td><td>0</td><td>1</td><td>0.50</td></tr><tr><td>JA 4007 <save_frame+0xa7></td><td>1</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0</td><td>1</td><td>0</td><td>0</td><td>1-2</td></tr></table>",
        },
      },
      header = {
        "1% of peak computational performance is used (0.48 out of 32.00 FLOP per cycle (GFLOPS @ 1GHz))",
      },
      brief = {
      },
      gain = {
        {
          workaround = "<ul><li>Try another compiler or update/tune your current one</li><li>Remove inter-iterations dependences from your loop and make it unit-stride:\n<ul><li>If your arrays have 2 or more dimensions, check whether elements are accessed contiguously and, otherwise, try to permute loops accordingly:\nC storage order is row-major: for(i) for(j) a[j][i] = b[j][i]; (slow, non stride 1) =&gt; for(i) for(j) a[i][j] = b[i][j]; (fast, stride 1)</li><li>If your loop streams arrays of structures (AoS), try to use structures of arrays instead (SoA):\nfor(i) a[i].x = b[i].x; (slow, non stride 1) =&gt; for(i) a.x[i] = b.x[i]; (fast, stride 1)</li></ul></li></ul>",
          details = "59% of SSE/AVX instructions are used in vector version (process two or more data elements in vector registers):\n<ul><li>66% of SSE/AVX loads are used in vector version.</li><li>0% of SSE/AVX stores are used in vector version.</li><li>81% of SSE/AVX addition or subtraction instructions are used in vector version.</li><li>50% of SSE/AVX multiply instructions are used in vector version.</li><li>0% of SSE/AVX fused multiply-add instructions are used in vector version.</li><li>0% of SSE/AVX nil are used in vector version.</li><li>66% of SSE/AVX instructions that are not load, store, addition, subtraction nor multiply instructions are used in vector version.</li></ul>Since your execution units are vector units, only a fully vectorized loop can use their full power.\n",
          title = "Vectorization",
          txt = "Your loop is partially vectorized.\nOnly 33% of vector register length is used (average across all SSE/AVX instructions).\nBy fully vectorizing your loop, you can lower the cost of an iteration from 97.00 to 12.12 cycles (8.00x speedup).",
        },
        {
          workaround = "<ul><li>Reduce the number of division or square root instructions:\n<ul><li>If denominator is constant over iterations, use reciprocal (replace x/y with x*(1/y)). Check precision impact. This will be done by your compiler with ffast-math or Ofast</li></ul></li><li>Check whether you really need double precision. If not, switch to single precision to speedup execution</li></ul>",
          title = "Execution units bottlenecks",
          txt = "Performance is limited by execution of divide and square root operations (the divide/square root unit is a bottleneck).\n\nBy removing all these bottlenecks, you can lower the cost of an iteration from 97.00 to 23.00 cycles (4.22x speedup).\n",
        },
      },
      potential = {
        {
          title = "Expensive FP math instructions/calls",
          txt = "Detected performance impact from expensive FP math instructions/calls.\nBy removing/reexpressing them, you can lower the cost of an iteration from 97.00 to 23.00 cycles (4.22x speedup).",
        },
        {
          workaround = "Try to change order in which elements are evaluated (using parentheses) in arithmetic expressions containing both ADD/SUB and MUL operations to enable your compiler to generate FMA instructions wherever possible.\nFor instance a + b*c is a valid FMA (MUL then ADD).\nHowever (a+b)* c cannot be translated into an FMA (ADD then MUL).",
          title = "FMA",
          txt = "Detected 1 FMA (fused multiply-add) operations.\nPresence of both ADD/SUB and MUL operations.",
        },
      },
    },
  },
  AVG = {
      hint = {
        {
          workaround = "<ul><li>Try to reorganize arrays of structures to structures of arrays</li><li>Consider to permute loops (see vectorization gain report)</li></ul>",
          details = "<ul><li>Constant unknown stride: 2 occurrence(s)</li></ul>Non-unit stride (uncontiguous) accesses are not efficiently using data caches\n",
          title = "Slow data structures access",
          txt = "Detected data structures (typically arrays) that cannot be efficiently read/written",
        },
        {
          workaround = "Use vector aligned instructions:\n<ol><li>align your arrays on 64 bytes boundaries: replace { void *p = malloc (size); } with { void *p; posix_memalign (&amp;p, 64, size); }.</li><li>inform your compiler that your arrays are vector aligned: if array 'foo' is 64 bytes-aligned, define a pointer 'p_foo' as __builtin_assume_aligned (foo, 64) and use it instead of 'foo' in the loop.</li></ol>",
          details = "<ul><li>VEXTRACTF128: 3 occurrences</li><li>VEXTRACTF64X4: 3 occurrences</li></ul>",
          title = "Vector unaligned load/store instructions",
          txt = "Detected 6 suboptimal vector unaligned load/store instructions.\n",
        },
        {
          workaround = "Avoid mixing data with different types. In particular, check if the type of constants is the same as array elements. Use double instead of single precision only when/where needed by numerical stability and avoid mixing precision. In C/C++, FP constants are double precision by default and must be suffixed by 'f' to make them single precision.",
          details = "<ul><li>VCVTSD2SS (FP64 to FP32, scalar): 2 occurrences</li></ul>",
          title = "Conversion instructions",
          txt = "Detected expensive conversion instructions.",
        },
        {
          title = "Type of elements and instruction set",
          txt = "6 SSE or AVX instructions are processing arithmetic or math operations on double precision FP elements in scalar mode (one at a time).\n6 SSE or AVX instructions are processing arithmetic or math operations on double precision FP elements in vector mode (two at a time).\n3 AVX instructions are processing arithmetic or math operations on double precision FP elements in vector mode (four at a time).\n2 AVX-512 instructions are processing arithmetic or math operations on double precision FP elements in vector mode (eight at a time).\n",
        },
        {
          title = "Matching between your loop (in the source code) and the binary loop",
          txt = "The binary loop is composed of 47 FP arithmetical operations:\n<ul><li>26: addition or subtraction (1 inside FMA instructions)</li><li>18: multiply (1 inside FMA instructions)</li><li>2: divide</li><li>1: square root</li></ul>The binary loop is loading 136 bytes (17 double precision FP elements).\nThe binary loop is storing 8 bytes (1 double precision FP elements).",
        },
        {
          title = "Arithmetic intensity",
          txt = "Arithmetic intensity is 0.33 FP operations per loaded or stored byte.",
        },
      },
      expert = {
        {
          title = "General properties",
          txt = "<table><tr><td>nb instructions</td><td>45</td></tr><tr><td>loop length</td><td>221</td></tr><tr><td>used x86 registers</td><td>11</td></tr><tr><td>used mmx registers</td><td>0</td></tr><tr><td>used xmm registers</td><td>13</td></tr><tr><td>used ymm registers</td><td>8</td></tr><tr><td>used zmm registers</td><td>6</td></tr><tr><td>nb stack references</td><td>0</td></tr><tr><td>ADD-SUB / MUL ratio</td><td>3.33</td></tr></table>",
        },
        {
          title = "Front-end",
          txt = "MACRO FUSION NOT POSSIBLE\n<table><tr><td>instruction fetch</td><td>14.00 cycles</td></tr><tr><td>instruction queue</td><td>22.50 cycles</td></tr><tr><td>decoding</td><td>22.50 cycles</td></tr><tr><td>micro-operation queue</td><td>23.00 cycles</td></tr><tr><td>front end</td><td>23.00 cycles</td></tr></table>",
        },
        {
          title = "Back-end",
          txt = "<table><tr><th>      </th><th>P0</th><th>P1</th><th>P2</th><th>P3</th><th>P4</th><th>P5</th><th>P6</th></tr><tr><td>uops</td><td>16.50</td><td>16.50</td><td>2.50</td><td>2.50</td><td>8.00</td><td>8.00</td><td>2.00</td></tr><tr><td>cycles</td><td>16.50</td><td>16.50</td><td>2.50</td><td>2.50</td><td>8.00</td><td>8.00</td><td>2.00</td></tr></table>\n<table><tr><td>Cycles executing div or sqrt instructions</td><td>56.00-97.00</td></tr><tr><td>Longest recurrence chain latency (RecMII)</td><td>1.00</td></tr></table>",
        },
        {
          title = "Cycles summary",
          txt = "<table><tr><td>Front-end</td><td>23.00</td></tr><tr><td>Dispatch</td><td>16.50</td></tr><tr><td>DIV/SQRT</td><td>56.00-97.00</td></tr><tr><td>Data deps.</td><td>1.00</td></tr><tr><td>Overall L1</td><td>56.00-97.00</td></tr></table>",
        },
        {
          title = "Vectorization ratios",
          txt = "INT\n<table><tr><td>all</td><td>0%</td></tr><tr><td>load</td><td>NA (no load vectorizable/vectorized instructions)</td></tr><tr><td>store</td><td>NA (no store vectorizable/vectorized instructions)</td></tr><tr><td>mul</td><td>0%</td></tr><tr><td>add-sub</td><td>0%</td></tr><tr><td>fma</td><td>NA (no fma vectorizable/vectorized instructions)</td></tr><tr><td>other</td><td>0%</td></tr></table>FP\n<table><tr><td>all</td><td>65%</td></tr><tr><td>load</td><td>66%</td></tr><tr><td>store</td><td>0%</td></tr><tr><td>mul</td><td>66%</td></tr><tr><td>add-sub</td><td>90%</td></tr><tr><td>fma</td><td>0%</td></tr><tr><td>div/sqrt</td><td>0%</td></tr><tr><td>other</td><td>75%</td></tr></table>INT+FP\n<table><tr><td>all</td><td>59%</td></tr><tr><td>load</td><td>66%</td></tr><tr><td>store</td><td>0%</td></tr><tr><td>mul</td><td>50%</td></tr><tr><td>add-sub</td><td>81%</td></tr><tr><td>fma</td><td>0%</td></tr><tr><td>div/sqrt</td><td>0%</td></tr><tr><td>other</td><td>66%</td></tr></table>",
        },
        {
          title = "Vector efficiency ratios",
          txt = "INT\n<table><tr><td>all</td><td>8%</td></tr><tr><td>load</td><td>NA (no load vectorizable/vectorized instructions)</td></tr><tr><td>store</td><td>NA (no store vectorizable/vectorized instructions)</td></tr><tr><td>mul</td><td>6%</td></tr><tr><td>add-sub</td><td>6%</td></tr><tr><td>fma</td><td>NA (no fma vectorizable/vectorized instructions)</td></tr><tr><td>other</td><td>12%</td></tr></table>FP\n<table><tr><td>all</td><td>35%</td></tr><tr><td>load</td><td>70%</td></tr><tr><td>store</td><td>6%</td></tr><tr><td>mul</td><td>70%</td></tr><tr><td>add-sub</td><td>31%</td></tr><tr><td>fma</td><td>12%</td></tr><tr><td>div/sqrt</td><td>12%</td></tr><tr><td>other</td><td>31%</td></tr></table>INT+FP\n<table><tr><td>all</td><td>33%</td></tr><tr><td>load</td><td>70%</td></tr><tr><td>store</td><td>6%</td></tr><tr><td>mul</td><td>54%</td></tr><tr><td>add-sub</td><td>28%</td></tr><tr><td>fma</td><td>12%</td></tr><tr><td>div/sqrt</td><td>12%</td></tr><tr><td>other</td><td>29%</td></tr></table>",
        },
        {
          title = "Cycles and memory resources usage",
          txt = "Assuming all data fit into the L1 cache, each iteration of the binary loop takes 97.00 cycles. At this rate:\n<ul><li>1% of peak load performance is reached (1.40 out of 128.00 bytes loaded per cycle (GB/s @ 1GHz))</li><li>0% of peak store performance is reached (0.08 out of 64.00 bytes stored per cycle (GB/s @ 1GHz))</li></ul>",
        },
        {
          title = "Front-end bottlenecks",
          txt = "Found no such bottlenecks.",
        },
        {
          title = "ASM code",
          txt = "In the binary file, the address of the loop is: 4007\n\n<table><tr><th>Instruction</th><th>Nb FU</th><th>P0</th><th>P1</th><th>P2</th><th>P3</th><th>P4</th><th>P5</th><th>P6</th><th>Latency</th><th>Recip. throughput</th></tr><tr><td>LEA (%RAX),%R8D</td><td>1</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0.50</td><td>0.50</td><td>0</td><td>1</td><td>0.50</td></tr><tr><td>IMUL %R13D,%R8D</td><td>1</td><td>0</td><td>0</td><td>0</td><td>0</td><td>1</td><td>0</td><td>0</td><td>3</td><td>1</td></tr><tr><td>ADD %R12D,%R8D</td><td>1</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0.50</td><td>0.50</td><td>0</td><td>1</td><td>0.50</td></tr><tr><td>MOV %R8D,%R9D</td><td>1</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0.50</td><td>0.50</td><td>0</td><td>0</td><td>0.50</td></tr><tr><td>SAL $0x3,%R9D</td><td>1</td><td>0</td><td>0</td><td>0</td><td>0</td><td>1</td><td>0</td><td>0</td><td>1</td><td>1</td></tr><tr><td>ADD %R8D,%R9D</td><td>1</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0.50</td><td>0.50</td><td>0</td><td>1</td><td>0.50</td></tr><tr><td>MOV %R9D,%R9D</td><td>1</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0.50</td><td>0.50</td><td>0</td><td>0</td><td>0.50</td></tr><tr><td>LEA (%RDI,%R9,8),%R10</td><td>1</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0.50</td><td>0.50</td><td>0</td><td>1</td><td>0.50</td></tr><tr><td>VMOVUPD (%R10),%ZMM1</td><td>1</td><td>0</td><td>0</td><td>0.50</td><td>0.50</td><td>0</td><td>0</td><td>0</td><td>5</td><td>0.50</td></tr><tr><td>VEXTRACTF64X4 $0x1,%ZMM1,%YMM0</td><td>1</td><td>1</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0</td><td>3-6</td><td>1</td></tr><tr><td>VADDPD %YMM1,%YMM0,%YMM3</td><td>1</td><td>0.50</td><td>0.50</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0</td><td>6</td><td>0.50</td></tr><tr><td>VMOVUPD 0x8(%R10),%ZMM10</td><td>1</td><td>0</td><td>0</td><td>0.50</td><td>0.50</td><td>0</td><td>0</td><td>0</td><td>5</td><td>0.50</td></tr><tr><td>VMULPD %ZMM5,%ZMM10,%ZMM11</td><td>1</td><td>0.50</td><td>0.50</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0</td><td>6</td><td>0.50</td></tr><tr><td>VEXTRACTF128 $0x1,%YMM3,%XMM6</td><td>1</td><td>1</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0</td><td>3-6</td><td>1</td></tr><tr><td>VADDPD %XMM3,%XMM6,%XMM7</td><td>1</td><td>0.50</td><td>0.50</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0</td><td>6</td><td>0.50</td></tr><tr><td>VMULPD %ZMM4,%ZMM10,%ZMM3</td><td>1</td><td>0.50</td><td>0.50</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0</td><td>6</td><td>0.50</td></tr><tr><td>VEXTRACTF64X4 $0x1,%ZMM11,%YMM12</td><td>1</td><td>1</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0</td><td>3-6</td><td>1</td></tr><tr><td>VADDPD %YMM11,%YMM12,%YMM13</td><td>1</td><td>0.50</td><td>0.50</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0</td><td>6</td><td>0.50</td></tr><tr><td>VHADDPD %XMM7,%XMM7,%XMM8</td><td>3</td><td>1.50</td><td>1.50</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0</td><td>15</td><td>8</td></tr><tr><td>VADDSD 0x40(%R10),%XMM8,%XMM9</td><td>1</td><td>0.50</td><td>0.50</td><td>0.50</td><td>0.50</td><td>0</td><td>0</td><td>0</td><td>6</td><td>0.50</td></tr><tr><td>VEXTRACTF64X4 $0x1,%ZMM3,%YMM2</td><td>1</td><td>1</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0</td><td>3-6</td><td>1</td></tr><tr><td>VADDPD %YMM3,%YMM2,%YMM6</td><td>1</td><td>0.50</td><td>0.50</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0</td><td>6</td><td>0.50</td></tr><tr><td>VEXTRACTF128 $0x1,%YMM13,%XMM14</td><td>1</td><td>1</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0</td><td>3-6</td><td>1</td></tr><tr><td>VADDPD %XMM13,%XMM14,%XMM15</td><td>1</td><td>0.50</td><td>0.50</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0</td><td>6</td><td>0.50</td></tr><tr><td>VEXTRACTF128 $0x1,%YMM6,%XMM7</td><td>1</td><td>1</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0</td><td>3-6</td><td>1</td></tr><tr><td>VADDPD %XMM6,%XMM7,%XMM8</td><td>1</td><td>0.50</td><td>0.50</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0</td><td>6</td><td>0.50</td></tr><tr><td>VHADDPD %XMM15,%XMM15,%XMM1</td><td>3</td><td>1.50</td><td>1.50</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0</td><td>15</td><td>8</td></tr><tr><td>VDIVSD %XMM9,%XMM1,%XMM0</td><td>3</td><td>1</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0</td><td>40-42</td><td>12-32</td></tr><tr><td>VHADDPD %XMM8,%XMM8,%XMM10</td><td>3</td><td>1.50</td><td>1.50</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0</td><td>15</td><td>8</td></tr><tr><td>VDIVSD %XMM9,%XMM10,%XMM11</td><td>3</td><td>1</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0</td><td>40-42</td><td>12-32</td></tr><tr><td>VCVTSD2SS %XMM9,%XMM9,%XMM9</td><td>1</td><td>1</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0</td><td>2</td><td>1</td></tr><tr><td>VMULSD %XMM11,%XMM11,%XMM12</td><td>1</td><td>0.50</td><td>0.50</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0</td><td>6</td><td>0.50</td></tr><tr><td>VMOVSS %XMM9,0x34(%RSP,%RDX,8)</td><td>1</td><td>0</td><td>0</td><td>0.50</td><td>0.50</td><td>0</td><td>0</td><td>1</td><td>2</td><td>1</td></tr><tr><td>VFMADD132SD %XMM0,%XMM12,%XMM0</td><td>1</td><td>0.50</td><td>0.50</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0</td><td>6</td><td>0.50</td></tr><tr><td>VSQRTSD %XMM0,%XMM0,%XMM0</td><td>3</td><td>3</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0</td><td>40-42</td><td>32-33</td></tr><tr><td>VCVTSD2SS %XMM0,%XMM0,%XMM13</td><td>1</td><td>1</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0</td><td>2</td><td>1</td></tr><tr><td>VMOVSS %XMM13,0x30(%RSP,%RDX,8)</td><td>1</td><td>0</td><td>0</td><td>0.50</td><td>0.50</td><td>0</td><td>0</td><td>1</td><td>2</td><td>1</td></tr><tr><td>LEA 0x1(%RDX),%RDX</td><td>1</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0.50</td><td>0.50</td><td>0</td><td>1</td><td>0.50</td></tr><tr><td>CMP $0x1000,%RDX</td><td>1</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0.50</td><td>0.50</td><td>0</td><td>1</td><td>0.50</td></tr><tr><td>JA 419a <save_frame+0x23a></td><td>1</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0</td><td>1</td><td>0</td><td>0</td><td>1-2</td></tr><tr><td>JE 4130 <save_frame+0x1d0></td><td>1</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0</td><td>1</td><td>0</td><td>0</td><td>1-2</td></tr><tr><td>LEA 0x1(%R12),%R12</td><td>1</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0.50</td><td>0.50</td><td>0</td><td>1</td><td>0.50</td></tr><tr><td>LEA (%RCX),%R11D</td><td>1</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0.50</td><td>0.50</td><td>0</td><td>1</td><td>0.50</td></tr><tr><td>CMP %R12,%R11</td><td>1</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0.50</td><td>0.50</td><td>0</td><td>1</td><td>0.50</td></tr><tr><td>JA 4007 <save_frame+0xa7></td><td>1</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0</td><td>1</td><td>0</td><td>0</td><td>1-2</td></tr></table>",
        },
      },
      header = {
        "1% of peak computational performance is used (0.48 out of 32.00 FLOP per cycle (GFLOPS @ 1GHz))",
      },
      brief = {
      },
      gain = {
        {
          workaround = "<ul><li>Try another compiler or update/tune your current one</li><li>Remove inter-iterations dependences from your loop and make it unit-stride:\n<ul><li>If your arrays have 2 or more dimensions, check whether elements are accessed contiguously and, otherwise, try to permute loops accordingly:\nC storage order is row-major: for(i) for(j) a[j][i] = b[j][i]; (slow, non stride 1) =&gt; for(i) for(j) a[i][j] = b[i][j]; (fast, stride 1)</li><li>If your loop streams arrays of structures (AoS), try to use structures of arrays instead (SoA):\nfor(i) a[i].x = b[i].x; (slow, non stride 1) =&gt; for(i) a.x[i] = b.x[i]; (fast, stride 1)</li></ul></li></ul>",
          details = "59% of SSE/AVX instructions are used in vector version (process two or more data elements in vector registers):\n<ul><li>66% of SSE/AVX loads are used in vector version.</li><li>0% of SSE/AVX stores are used in vector version.</li><li>81% of SSE/AVX addition or subtraction instructions are used in vector version.</li><li>50% of SSE/AVX multiply instructions are used in vector version.</li><li>0% of SSE/AVX fused multiply-add instructions are used in vector version.</li><li>0% of SSE/AVX nil are used in vector version.</li><li>66% of SSE/AVX instructions that are not load, store, addition, subtraction nor multiply instructions are used in vector version.</li></ul>Since your execution units are vector units, only a fully vectorized loop can use their full power.\n",
          title = "Vectorization",
          txt = "Your loop is partially vectorized.\nOnly 33% of vector register length is used (average across all SSE/AVX instructions).\nBy fully vectorizing your loop, you can lower the cost of an iteration from 97.00 to 12.12 cycles (8.00x speedup).",
        },
        {
          workaround = "<ul><li>Reduce the number of division or square root instructions:\n<ul><li>If denominator is constant over iterations, use reciprocal (replace x/y with x*(1/y)). Check precision impact. This will be done by your compiler with ffast-math or Ofast</li></ul></li><li>Check whether you really need double precision. If not, switch to single precision to speedup execution</li></ul>",
          title = "Execution units bottlenecks",
          txt = "Performance is limited by execution of divide and square root operations (the divide/square root unit is a bottleneck).\n\nBy removing all these bottlenecks, you can lower the cost of an iteration from 97.00 to 23.00 cycles (4.22x speedup).\n",
        },
      },
      potential = {
        {
          title = "Expensive FP math instructions/calls",
          txt = "Detected performance impact from expensive FP math instructions/calls.\nBy removing/reexpressing them, you can lower the cost of an iteration from 97.00 to 23.00 cycles (4.22x speedup).",
        },
        {
          workaround = "Try to change order in which elements are evaluated (using parentheses) in arithmetic expressions containing both ADD/SUB and MUL operations to enable your compiler to generate FMA instructions wherever possible.\nFor instance a + b*c is a valid FMA (MUL then ADD).\nHowever (a+b)* c cannot be translated into an FMA (ADD then MUL).",
          title = "FMA",
          txt = "Detected 1 FMA (fused multiply-add) operations.\nPresence of both ADD/SUB and MUL operations.",
        },
      },
    },
  common = {
    header = {
      "The loop is defined in:\n<ul><li>/users/user2207/lbm_opt/include/lbm_struct.h:130</li><li>/usr/lib/gcc/x86_64-linux-gnu/9/include/avx512fintrin.h:5852,6198,12478,15884</li><li>/usr/lib/gcc/x86_64-linux-gnu/9/include/avxintrin.h:513</li><li>/users/user2207/lbm_opt/src/main.c:84-98</li><li>/users/user2207/lbm_opt/src/lbm_phys.c:39,47,58-59</li></ul>\n",
      "The related source loop is not unrolled or unrolled with no peel/tail loop.",
    },
    nb_paths = 1,
  },
}
