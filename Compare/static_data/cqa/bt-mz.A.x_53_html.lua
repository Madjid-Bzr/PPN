_cqa_text_report = {
  paths = {
    {
      hint = {
        {
          title = "Type of elements and instruction set",
          txt = "40 SSE or AVX instructions are processing arithmetic or math operations on double precision FP elements in scalar mode (one at a time).\n",
        },
        {
          title = "Matching between your loop (in the source code) and the binary loop",
          txt = "The binary loop is composed of 40 FP arithmetical operations:\n<ul><li>20: addition or subtraction</li><li>20: multiply</li></ul>The binary loop is loading 240 bytes (30 double precision FP elements).\nThe binary loop is storing 40 bytes (5 double precision FP elements).",
        },
        {
          title = "Arithmetic intensity",
          txt = "Arithmetic intensity is 0.14 FP operations per loaded or stored byte.",
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
          txt = "<table><tr><td>nb instructions</td><td>57</td></tr><tr><td>nb uops</td><td>56</td></tr><tr><td>loop length</td><td>298</td></tr><tr><td>used x86 registers</td><td>6</td></tr><tr><td>used mmx registers</td><td>0</td></tr><tr><td>used xmm registers</td><td>14</td></tr><tr><td>used ymm registers</td><td>0</td></tr><tr><td>used zmm registers</td><td>0</td></tr><tr><td>nb stack references</td><td>0</td></tr><tr><td>ADD-SUB / MUL ratio</td><td>1.00</td></tr></table>",
        },
        {
          title = "Front-end",
          txt = "ASSUMED MACRO FUSION\nFIT IN UOP CACHE\n<table><tr><td>micro-operation queue</td><td>14.00 cycles</td></tr><tr><td>front end</td><td>14.00 cycles</td></tr></table>",
        },
        {
          title = "Back-end",
          txt = "<table><tr><th>      </th><th>P0</th><th>P1</th><th>P2</th><th>P3</th><th>P4</th><th>P5</th></tr><tr><td>uops</td><td>20.00</td><td>20.00</td><td>17.50</td><td>17.50</td><td>5.00</td><td>6.00</td></tr><tr><td>cycles</td><td>20.00</td><td>20.00</td><td>17.50</td><td>17.50</td><td>5.00</td><td>6.00</td></tr></table>\n<table><tr><td>Cycles executing div or sqrt instructions</td><td>NA</td></tr><tr><td>Longest recurrence chain latency (RecMII)</td><td>1.00</td></tr></table>",
        },
        {
          title = "Cycles summary",
          txt = "<table><tr><td>Front-end</td><td>14.00</td></tr><tr><td>Dispatch</td><td>20.00</td></tr><tr><td>Data deps.</td><td>1.00</td></tr><tr><td>Overall L1</td><td>20.00</td></tr></table>",
        },
        {
          title = "Vectorization ratios",
          txt = "<table><tr><td>all</td><td>0%</td></tr><tr><td>load</td><td>0%</td></tr><tr><td>store</td><td>0%</td></tr><tr><td>mul</td><td>0%</td></tr><tr><td>add-sub</td><td>0%</td></tr><tr><td>fma</td><td>NA (no fma vectorizable/vectorized instructions)</td></tr><tr><td>div/sqrt</td><td>NA (no div/sqrt vectorizable/vectorized instructions)</td></tr><tr><td>other</td><td>NA (no other vectorizable/vectorized instructions)</td></tr></table>",
        },
        {
          title = "Vector efficiency ratios",
          txt = "<table><tr><td>all</td><td>25%</td></tr><tr><td>load</td><td>25%</td></tr><tr><td>store</td><td>25%</td></tr><tr><td>mul</td><td>25%</td></tr><tr><td>add-sub</td><td>25%</td></tr><tr><td>fma</td><td>NA (no fma vectorizable/vectorized instructions)</td></tr><tr><td>div/sqrt</td><td>NA (no div/sqrt vectorizable/vectorized instructions)</td></tr><tr><td>other</td><td>NA (no other vectorizable/vectorized instructions)</td></tr></table>",
        },
        {
          title = "Cycles and memory resources usage",
          txt = "Assuming all data fit into the L1 cache, each iteration of the binary loop takes 20.00 cycles. At this rate:\n<ul><li>37% of peak load performance is reached (12.00 out of 32.00 bytes loaded per cycle (GB/s @ 1GHz))</li><li>12% of peak store performance is reached (2.00 out of 16.00 bytes stored per cycle (GB/s @ 1GHz))</li></ul>",
        },
        {
          title = "Front-end bottlenecks",
          txt = "Found no such bottlenecks.",
        },
        {
          title = "ASM code",
          txt = "In the binary file, the address of the loop is: fbf0\n\n<table><tr><th>Instruction</th><th>Nb FU</th><th>P0</th><th>P1</th><th>P2</th><th>P3</th><th>P4</th><th>P5</th><th>Latency</th><th>Recip. throughput</th></tr><tr><td>VMOVSD (%RAX),%XMM2</td><td>1</td><td>0</td><td>0</td><td>0.50</td><td>0.50</td><td>0</td><td>0</td><td>3</td><td>0.50</td></tr><tr><td>ADD $0x28,%RAX</td><td>1</td><td>0.33</td><td>0.33</td><td>0</td><td>0</td><td>0</td><td>0.33</td><td>1</td><td>0.33</td></tr><tr><td>ADD $0x28,%R15</td><td>1</td><td>0.33</td><td>0.33</td><td>0</td><td>0</td><td>0</td><td>0.33</td><td>1</td><td>0.33</td></tr><tr><td>ADD $0x28,%RBX</td><td>1</td><td>0.33</td><td>0.33</td><td>0</td><td>0</td><td>0</td><td>0.33</td><td>1</td><td>0.33</td></tr><tr><td>VMULSD -0x28(%R15),%XMM13,%XMM12</td><td>1</td><td>1</td><td>0</td><td>0.50</td><td>0.50</td><td>0</td><td>0</td><td>5</td><td>1</td></tr><tr><td>ADD $0x28,%R9</td><td>1</td><td>0.33</td><td>0.33</td><td>0</td><td>0</td><td>0</td><td>0.33</td><td>1</td><td>0.33</td></tr><tr><td>ADD $0x28,%RDX</td><td>1</td><td>0.33</td><td>0.33</td><td>0</td><td>0</td><td>0</td><td>0.33</td><td>1</td><td>0.33</td></tr><tr><td>VMULSD -0x28(%RBX),%XMM4,%XMM8</td><td>1</td><td>1</td><td>0</td><td>0.50</td><td>0.50</td><td>0</td><td>0</td><td>5</td><td>1</td></tr><tr><td>VMULSD -0x28(%R9),%XMM4,%XMM0</td><td>1</td><td>1</td><td>0</td><td>0.50</td><td>0.50</td><td>0</td><td>0</td><td>5</td><td>1</td></tr><tr><td>VSUBSD %XMM8,%XMM12,%XMM7</td><td>1</td><td>0</td><td>1</td><td>0</td><td>0</td><td>0</td><td>0</td><td>3</td><td>1</td></tr><tr><td>VSUBSD %XMM0,%XMM7,%XMM3</td><td>1</td><td>0</td><td>1</td><td>0</td><td>0</td><td>0</td><td>0</td><td>3</td><td>1</td></tr><tr><td>VADDSD -0x28(%RDX),%XMM3,%XMM11</td><td>1</td><td>0</td><td>1</td><td>0.50</td><td>0.50</td><td>0</td><td>0</td><td>3</td><td>1</td></tr><tr><td>VMULSD 0x1cd01(%RIP),%XMM11,%XMM14</td><td>1</td><td>1</td><td>0</td><td>0.50</td><td>0.50</td><td>0</td><td>0</td><td>5</td><td>1</td></tr><tr><td>VMOVSD -0x20(%RAX),%XMM3</td><td>1</td><td>0</td><td>0</td><td>0.50</td><td>0.50</td><td>0</td><td>0</td><td>3</td><td>0.50</td></tr><tr><td>VSUBSD %XMM14,%XMM2,%XMM10</td><td>1</td><td>0</td><td>1</td><td>0</td><td>0</td><td>0</td><td>0</td><td>3</td><td>1</td></tr><tr><td>VMOVSD %XMM10,-0x28(%RAX)</td><td>1</td><td>0</td><td>0</td><td>0.50</td><td>0.50</td><td>1</td><td>0</td><td>3</td><td>1</td></tr><tr><td>VMULSD -0x20(%R15),%XMM13,%XMM9</td><td>1</td><td>1</td><td>0</td><td>0.50</td><td>0.50</td><td>0</td><td>0</td><td>5</td><td>1</td></tr><tr><td>VMULSD -0x20(%RBX),%XMM4,%XMM15</td><td>1</td><td>1</td><td>0</td><td>0.50</td><td>0.50</td><td>0</td><td>0</td><td>5</td><td>1</td></tr><tr><td>VMULSD -0x20(%R9),%XMM4,%XMM12</td><td>1</td><td>1</td><td>0</td><td>0.50</td><td>0.50</td><td>0</td><td>0</td><td>5</td><td>1</td></tr><tr><td>VSUBSD %XMM15,%XMM9,%XMM1</td><td>1</td><td>0</td><td>1</td><td>0</td><td>0</td><td>0</td><td>0</td><td>3</td><td>1</td></tr><tr><td>VSUBSD %XMM12,%XMM1,%XMM8</td><td>1</td><td>0</td><td>1</td><td>0</td><td>0</td><td>0</td><td>0</td><td>3</td><td>1</td></tr><tr><td>VADDSD -0x20(%RDX),%XMM8,%XMM7</td><td>1</td><td>0</td><td>1</td><td>0.50</td><td>0.50</td><td>0</td><td>0</td><td>3</td><td>1</td></tr><tr><td>VMULSD 0x1ccca(%RIP),%XMM7,%XMM0</td><td>1</td><td>1</td><td>0</td><td>0.50</td><td>0.50</td><td>0</td><td>0</td><td>5</td><td>1</td></tr><tr><td>VMOVSD -0x18(%RAX),%XMM8</td><td>1</td><td>0</td><td>0</td><td>0.50</td><td>0.50</td><td>0</td><td>0</td><td>3</td><td>0.50</td></tr><tr><td>VSUBSD %XMM0,%XMM3,%XMM11</td><td>1</td><td>0</td><td>1</td><td>0</td><td>0</td><td>0</td><td>0</td><td>3</td><td>1</td></tr><tr><td>VMOVSD %XMM11,-0x20(%RAX)</td><td>1</td><td>0</td><td>0</td><td>0.50</td><td>0.50</td><td>1</td><td>0</td><td>3</td><td>1</td></tr><tr><td>VMULSD -0x18(%R15),%XMM13,%XMM14</td><td>1</td><td>1</td><td>0</td><td>0.50</td><td>0.50</td><td>0</td><td>0</td><td>5</td><td>1</td></tr><tr><td>VMULSD -0x18(%RBX),%XMM4,%XMM2</td><td>1</td><td>1</td><td>0</td><td>0.50</td><td>0.50</td><td>0</td><td>0</td><td>5</td><td>1</td></tr><tr><td>VMULSD -0x18(%R9),%XMM4,%XMM9</td><td>1</td><td>1</td><td>0</td><td>0.50</td><td>0.50</td><td>0</td><td>0</td><td>5</td><td>1</td></tr><tr><td>VSUBSD %XMM2,%XMM14,%XMM10</td><td>1</td><td>0</td><td>1</td><td>0</td><td>0</td><td>0</td><td>0</td><td>3</td><td>1</td></tr><tr><td>VSUBSD %XMM9,%XMM10,%XMM15</td><td>1</td><td>0</td><td>1</td><td>0</td><td>0</td><td>0</td><td>0</td><td>3</td><td>1</td></tr><tr><td>VADDSD -0x18(%RDX),%XMM15,%XMM1</td><td>1</td><td>0</td><td>1</td><td>0.50</td><td>0.50</td><td>0</td><td>0</td><td>3</td><td>1</td></tr><tr><td>VMULSD 0x1cc95(%RIP),%XMM1,%XMM12</td><td>1</td><td>1</td><td>0</td><td>0.50</td><td>0.50</td><td>0</td><td>0</td><td>5</td><td>1</td></tr><tr><td>VMOVSD -0x10(%RAX),%XMM15</td><td>1</td><td>0</td><td>0</td><td>0.50</td><td>0.50</td><td>0</td><td>0</td><td>3</td><td>0.50</td></tr><tr><td>VSUBSD %XMM12,%XMM8,%XMM7</td><td>1</td><td>0</td><td>1</td><td>0</td><td>0</td><td>0</td><td>0</td><td>3</td><td>1</td></tr><tr><td>VMOVSD %XMM7,-0x18(%RAX)</td><td>1</td><td>0</td><td>0</td><td>0.50</td><td>0.50</td><td>1</td><td>0</td><td>3</td><td>1</td></tr><tr><td>VMULSD -0x10(%R15),%XMM13,%XMM0</td><td>1</td><td>1</td><td>0</td><td>0.50</td><td>0.50</td><td>0</td><td>0</td><td>5</td><td>1</td></tr><tr><td>VMULSD -0x10(%RBX),%XMM4,%XMM3</td><td>1</td><td>1</td><td>0</td><td>0.50</td><td>0.50</td><td>0</td><td>0</td><td>5</td><td>1</td></tr><tr><td>VMULSD -0x10(%R9),%XMM4,%XMM14</td><td>1</td><td>1</td><td>0</td><td>0.50</td><td>0.50</td><td>0</td><td>0</td><td>5</td><td>1</td></tr><tr><td>VSUBSD %XMM3,%XMM0,%XMM11</td><td>1</td><td>0</td><td>1</td><td>0</td><td>0</td><td>0</td><td>0</td><td>3</td><td>1</td></tr><tr><td>VSUBSD %XMM14,%XMM11,%XMM2</td><td>1</td><td>0</td><td>1</td><td>0</td><td>0</td><td>0</td><td>0</td><td>3</td><td>1</td></tr><tr><td>VADDSD -0x10(%RDX),%XMM2,%XMM10</td><td>1</td><td>0</td><td>1</td><td>0.50</td><td>0.50</td><td>0</td><td>0</td><td>3</td><td>1</td></tr><tr><td>VMULSD 0x1cc5f(%RIP),%XMM10,%XMM9</td><td>1</td><td>1</td><td>0</td><td>0.50</td><td>0.50</td><td>0</td><td>0</td><td>5</td><td>1</td></tr><tr><td>VSUBSD %XMM9,%XMM15,%XMM1</td><td>1</td><td>0</td><td>1</td><td>0</td><td>0</td><td>0</td><td>0</td><td>3</td><td>1</td></tr><tr><td>VMOVSD %XMM1,-0x10(%RAX)</td><td>1</td><td>0</td><td>0</td><td>0.50</td><td>0.50</td><td>1</td><td>0</td><td>3</td><td>1</td></tr><tr><td>VMULSD -0x8(%R15),%XMM13,%XMM12</td><td>1</td><td>1</td><td>0</td><td>0.50</td><td>0.50</td><td>0</td><td>0</td><td>5</td><td>1</td></tr><tr><td>VMULSD -0x8(%RBX),%XMM4,%XMM8</td><td>1</td><td>1</td><td>0</td><td>0.50</td><td>0.50</td><td>0</td><td>0</td><td>5</td><td>1</td></tr><tr><td>VMULSD -0x8(%R9),%XMM4,%XMM0</td><td>1</td><td>1</td><td>0</td><td>0.50</td><td>0.50</td><td>0</td><td>0</td><td>5</td><td>1</td></tr><tr><td>VSUBSD %XMM8,%XMM12,%XMM7</td><td>1</td><td>0</td><td>1</td><td>0</td><td>0</td><td>0</td><td>0</td><td>3</td><td>1</td></tr><tr><td>VSUBSD %XMM0,%XMM7,%XMM3</td><td>1</td><td>0</td><td>1</td><td>0</td><td>0</td><td>0</td><td>0</td><td>3</td><td>1</td></tr><tr><td>VADDSD -0x8(%RDX),%XMM3,%XMM11</td><td>1</td><td>0</td><td>1</td><td>0.50</td><td>0.50</td><td>0</td><td>0</td><td>3</td><td>1</td></tr><tr><td>VMULSD 0x1cc2e(%RIP),%XMM11,%XMM14</td><td>1</td><td>1</td><td>0</td><td>0.50</td><td>0.50</td><td>0</td><td>0</td><td>5</td><td>1</td></tr><tr><td>VMOVSD -0x8(%RAX),%XMM2</td><td>1</td><td>0</td><td>0</td><td>0.50</td><td>0.50</td><td>0</td><td>0</td><td>3</td><td>0.50</td></tr><tr><td>VSUBSD %XMM14,%XMM2,%XMM10</td><td>1</td><td>0</td><td>1</td><td>0</td><td>0</td><td>0</td><td>0</td><td>3</td><td>1</td></tr><tr><td>VMOVSD %XMM10,-0x8(%RAX)</td><td>1</td><td>0</td><td>0</td><td>0.50</td><td>0.50</td><td>1</td><td>0</td><td>3</td><td>1</td></tr><tr><td>CMP %R10,%RAX</td><td>1</td><td>0.33</td><td>0.33</td><td>0</td><td>0</td><td>0</td><td>0.33</td><td>1</td><td>0.33</td></tr><tr><td>JNE fbf0 <compute_rhs_._omp_fn.0+0x38a0></td><td>1</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0</td><td>1</td><td>0</td><td>1-2</td></tr></table>",
        },
      },
      header = {
        "25% of peak computational performance is used (2.00 out of 8.00 FLOP per cycle (GFLOPS @ 1GHz))",
      },
      brief = {
      },
      gain = {
        {
          workaround = "<ul><li>Try another compiler or update/tune your current one:\n<ul><li>recompile with fassociative-math (included in Ofast or ffast-math) to extend loop vectorization to FP reductions.</li></ul></li><li>Remove inter-iterations dependences from your loop and make it unit-stride:\n<ul><li>If your arrays have 2 or more dimensions, check whether elements are accessed contiguously and, otherwise, try to permute loops accordingly:\nFortran storage order is column-major: do i do j a(i,j) = b(i,j) (slow, non stride 1) =&gt; do i do j a(j,i) = b(i,j) (fast, stride 1)</li><li>If your loop streams arrays of structures (AoS), try to use structures of arrays instead (SoA):\ndo i a(i)%x = b(i)%x (slow, non stride 1) =&gt; do i a%x(i) = b%x(i) (fast, stride 1)</li></ul></li></ul>",
          details = "All SSE/AVX instructions are used in scalar version (process only one data element in vector registers).\nSince your execution units are vector units, only a vectorized loop can use their full power.\n",
          title = "Vectorization",
          txt = "Your loop is not vectorized.\n4 data elements could be processed at once in vector registers.\nBy vectorizing your loop, you can lower the cost of an iteration from 20.00 to 7.50 cycles (2.67x speedup).",
        },
        {
          workaround = "<ul><li>Reduce the number of FP add instructions</li><li>Reduce the number of FP multiply instructions</li></ul>",
          title = "Execution units bottlenecks",
          txt = "Performance is limited by:\n<ul><li>execution of FP add operations (the FP add unit is a bottleneck)</li><li>execution of FP multiply operations (the FP multiply unit is a bottleneck)</li></ul>\nBy removing all these bottlenecks, you can lower the cost of an iteration from 20.00 to 17.50 cycles (1.14x speedup).\n",
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
          txt = "40 SSE or AVX instructions are processing arithmetic or math operations on double precision FP elements in scalar mode (one at a time).\n",
        },
        {
          title = "Matching between your loop (in the source code) and the binary loop",
          txt = "The binary loop is composed of 40 FP arithmetical operations:\n<ul><li>20: addition or subtraction</li><li>20: multiply</li></ul>The binary loop is loading 240 bytes (30 double precision FP elements).\nThe binary loop is storing 40 bytes (5 double precision FP elements).",
        },
        {
          title = "Arithmetic intensity",
          txt = "Arithmetic intensity is 0.14 FP operations per loaded or stored byte.",
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
          txt = "<table><tr><td>nb instructions</td><td>57</td></tr><tr><td>nb uops</td><td>56</td></tr><tr><td>loop length</td><td>298</td></tr><tr><td>used x86 registers</td><td>6</td></tr><tr><td>used mmx registers</td><td>0</td></tr><tr><td>used xmm registers</td><td>14</td></tr><tr><td>used ymm registers</td><td>0</td></tr><tr><td>used zmm registers</td><td>0</td></tr><tr><td>nb stack references</td><td>0</td></tr><tr><td>ADD-SUB / MUL ratio</td><td>1.00</td></tr></table>",
        },
        {
          title = "Front-end",
          txt = "ASSUMED MACRO FUSION\nFIT IN UOP CACHE\n<table><tr><td>micro-operation queue</td><td>14.00 cycles</td></tr><tr><td>front end</td><td>14.00 cycles</td></tr></table>",
        },
        {
          title = "Back-end",
          txt = "<table><tr><th>      </th><th>P0</th><th>P1</th><th>P2</th><th>P3</th><th>P4</th><th>P5</th></tr><tr><td>uops</td><td>20.00</td><td>20.00</td><td>17.50</td><td>17.50</td><td>5.00</td><td>6.00</td></tr><tr><td>cycles</td><td>20.00</td><td>20.00</td><td>17.50</td><td>17.50</td><td>5.00</td><td>6.00</td></tr></table>\n<table><tr><td>Cycles executing div or sqrt instructions</td><td>NA</td></tr><tr><td>Longest recurrence chain latency (RecMII)</td><td>1.00</td></tr></table>",
        },
        {
          title = "Cycles summary",
          txt = "<table><tr><td>Front-end</td><td>14.00</td></tr><tr><td>Dispatch</td><td>20.00</td></tr><tr><td>Data deps.</td><td>1.00</td></tr><tr><td>Overall L1</td><td>20.00</td></tr></table>",
        },
        {
          title = "Vectorization ratios",
          txt = "<table><tr><td>all</td><td>0%</td></tr><tr><td>load</td><td>0%</td></tr><tr><td>store</td><td>0%</td></tr><tr><td>mul</td><td>0%</td></tr><tr><td>add-sub</td><td>0%</td></tr><tr><td>fma</td><td>NA (no fma vectorizable/vectorized instructions)</td></tr><tr><td>div/sqrt</td><td>NA (no div/sqrt vectorizable/vectorized instructions)</td></tr><tr><td>other</td><td>NA (no other vectorizable/vectorized instructions)</td></tr></table>",
        },
        {
          title = "Vector efficiency ratios",
          txt = "<table><tr><td>all</td><td>25%</td></tr><tr><td>load</td><td>25%</td></tr><tr><td>store</td><td>25%</td></tr><tr><td>mul</td><td>25%</td></tr><tr><td>add-sub</td><td>25%</td></tr><tr><td>fma</td><td>NA (no fma vectorizable/vectorized instructions)</td></tr><tr><td>div/sqrt</td><td>NA (no div/sqrt vectorizable/vectorized instructions)</td></tr><tr><td>other</td><td>NA (no other vectorizable/vectorized instructions)</td></tr></table>",
        },
        {
          title = "Cycles and memory resources usage",
          txt = "Assuming all data fit into the L1 cache, each iteration of the binary loop takes 20.00 cycles. At this rate:\n<ul><li>37% of peak load performance is reached (12.00 out of 32.00 bytes loaded per cycle (GB/s @ 1GHz))</li><li>12% of peak store performance is reached (2.00 out of 16.00 bytes stored per cycle (GB/s @ 1GHz))</li></ul>",
        },
        {
          title = "Front-end bottlenecks",
          txt = "Found no such bottlenecks.",
        },
        {
          title = "ASM code",
          txt = "In the binary file, the address of the loop is: fbf0\n\n<table><tr><th>Instruction</th><th>Nb FU</th><th>P0</th><th>P1</th><th>P2</th><th>P3</th><th>P4</th><th>P5</th><th>Latency</th><th>Recip. throughput</th></tr><tr><td>VMOVSD (%RAX),%XMM2</td><td>1</td><td>0</td><td>0</td><td>0.50</td><td>0.50</td><td>0</td><td>0</td><td>3</td><td>0.50</td></tr><tr><td>ADD $0x28,%RAX</td><td>1</td><td>0.33</td><td>0.33</td><td>0</td><td>0</td><td>0</td><td>0.33</td><td>1</td><td>0.33</td></tr><tr><td>ADD $0x28,%R15</td><td>1</td><td>0.33</td><td>0.33</td><td>0</td><td>0</td><td>0</td><td>0.33</td><td>1</td><td>0.33</td></tr><tr><td>ADD $0x28,%RBX</td><td>1</td><td>0.33</td><td>0.33</td><td>0</td><td>0</td><td>0</td><td>0.33</td><td>1</td><td>0.33</td></tr><tr><td>VMULSD -0x28(%R15),%XMM13,%XMM12</td><td>1</td><td>1</td><td>0</td><td>0.50</td><td>0.50</td><td>0</td><td>0</td><td>5</td><td>1</td></tr><tr><td>ADD $0x28,%R9</td><td>1</td><td>0.33</td><td>0.33</td><td>0</td><td>0</td><td>0</td><td>0.33</td><td>1</td><td>0.33</td></tr><tr><td>ADD $0x28,%RDX</td><td>1</td><td>0.33</td><td>0.33</td><td>0</td><td>0</td><td>0</td><td>0.33</td><td>1</td><td>0.33</td></tr><tr><td>VMULSD -0x28(%RBX),%XMM4,%XMM8</td><td>1</td><td>1</td><td>0</td><td>0.50</td><td>0.50</td><td>0</td><td>0</td><td>5</td><td>1</td></tr><tr><td>VMULSD -0x28(%R9),%XMM4,%XMM0</td><td>1</td><td>1</td><td>0</td><td>0.50</td><td>0.50</td><td>0</td><td>0</td><td>5</td><td>1</td></tr><tr><td>VSUBSD %XMM8,%XMM12,%XMM7</td><td>1</td><td>0</td><td>1</td><td>0</td><td>0</td><td>0</td><td>0</td><td>3</td><td>1</td></tr><tr><td>VSUBSD %XMM0,%XMM7,%XMM3</td><td>1</td><td>0</td><td>1</td><td>0</td><td>0</td><td>0</td><td>0</td><td>3</td><td>1</td></tr><tr><td>VADDSD -0x28(%RDX),%XMM3,%XMM11</td><td>1</td><td>0</td><td>1</td><td>0.50</td><td>0.50</td><td>0</td><td>0</td><td>3</td><td>1</td></tr><tr><td>VMULSD 0x1cd01(%RIP),%XMM11,%XMM14</td><td>1</td><td>1</td><td>0</td><td>0.50</td><td>0.50</td><td>0</td><td>0</td><td>5</td><td>1</td></tr><tr><td>VMOVSD -0x20(%RAX),%XMM3</td><td>1</td><td>0</td><td>0</td><td>0.50</td><td>0.50</td><td>0</td><td>0</td><td>3</td><td>0.50</td></tr><tr><td>VSUBSD %XMM14,%XMM2,%XMM10</td><td>1</td><td>0</td><td>1</td><td>0</td><td>0</td><td>0</td><td>0</td><td>3</td><td>1</td></tr><tr><td>VMOVSD %XMM10,-0x28(%RAX)</td><td>1</td><td>0</td><td>0</td><td>0.50</td><td>0.50</td><td>1</td><td>0</td><td>3</td><td>1</td></tr><tr><td>VMULSD -0x20(%R15),%XMM13,%XMM9</td><td>1</td><td>1</td><td>0</td><td>0.50</td><td>0.50</td><td>0</td><td>0</td><td>5</td><td>1</td></tr><tr><td>VMULSD -0x20(%RBX),%XMM4,%XMM15</td><td>1</td><td>1</td><td>0</td><td>0.50</td><td>0.50</td><td>0</td><td>0</td><td>5</td><td>1</td></tr><tr><td>VMULSD -0x20(%R9),%XMM4,%XMM12</td><td>1</td><td>1</td><td>0</td><td>0.50</td><td>0.50</td><td>0</td><td>0</td><td>5</td><td>1</td></tr><tr><td>VSUBSD %XMM15,%XMM9,%XMM1</td><td>1</td><td>0</td><td>1</td><td>0</td><td>0</td><td>0</td><td>0</td><td>3</td><td>1</td></tr><tr><td>VSUBSD %XMM12,%XMM1,%XMM8</td><td>1</td><td>0</td><td>1</td><td>0</td><td>0</td><td>0</td><td>0</td><td>3</td><td>1</td></tr><tr><td>VADDSD -0x20(%RDX),%XMM8,%XMM7</td><td>1</td><td>0</td><td>1</td><td>0.50</td><td>0.50</td><td>0</td><td>0</td><td>3</td><td>1</td></tr><tr><td>VMULSD 0x1ccca(%RIP),%XMM7,%XMM0</td><td>1</td><td>1</td><td>0</td><td>0.50</td><td>0.50</td><td>0</td><td>0</td><td>5</td><td>1</td></tr><tr><td>VMOVSD -0x18(%RAX),%XMM8</td><td>1</td><td>0</td><td>0</td><td>0.50</td><td>0.50</td><td>0</td><td>0</td><td>3</td><td>0.50</td></tr><tr><td>VSUBSD %XMM0,%XMM3,%XMM11</td><td>1</td><td>0</td><td>1</td><td>0</td><td>0</td><td>0</td><td>0</td><td>3</td><td>1</td></tr><tr><td>VMOVSD %XMM11,-0x20(%RAX)</td><td>1</td><td>0</td><td>0</td><td>0.50</td><td>0.50</td><td>1</td><td>0</td><td>3</td><td>1</td></tr><tr><td>VMULSD -0x18(%R15),%XMM13,%XMM14</td><td>1</td><td>1</td><td>0</td><td>0.50</td><td>0.50</td><td>0</td><td>0</td><td>5</td><td>1</td></tr><tr><td>VMULSD -0x18(%RBX),%XMM4,%XMM2</td><td>1</td><td>1</td><td>0</td><td>0.50</td><td>0.50</td><td>0</td><td>0</td><td>5</td><td>1</td></tr><tr><td>VMULSD -0x18(%R9),%XMM4,%XMM9</td><td>1</td><td>1</td><td>0</td><td>0.50</td><td>0.50</td><td>0</td><td>0</td><td>5</td><td>1</td></tr><tr><td>VSUBSD %XMM2,%XMM14,%XMM10</td><td>1</td><td>0</td><td>1</td><td>0</td><td>0</td><td>0</td><td>0</td><td>3</td><td>1</td></tr><tr><td>VSUBSD %XMM9,%XMM10,%XMM15</td><td>1</td><td>0</td><td>1</td><td>0</td><td>0</td><td>0</td><td>0</td><td>3</td><td>1</td></tr><tr><td>VADDSD -0x18(%RDX),%XMM15,%XMM1</td><td>1</td><td>0</td><td>1</td><td>0.50</td><td>0.50</td><td>0</td><td>0</td><td>3</td><td>1</td></tr><tr><td>VMULSD 0x1cc95(%RIP),%XMM1,%XMM12</td><td>1</td><td>1</td><td>0</td><td>0.50</td><td>0.50</td><td>0</td><td>0</td><td>5</td><td>1</td></tr><tr><td>VMOVSD -0x10(%RAX),%XMM15</td><td>1</td><td>0</td><td>0</td><td>0.50</td><td>0.50</td><td>0</td><td>0</td><td>3</td><td>0.50</td></tr><tr><td>VSUBSD %XMM12,%XMM8,%XMM7</td><td>1</td><td>0</td><td>1</td><td>0</td><td>0</td><td>0</td><td>0</td><td>3</td><td>1</td></tr><tr><td>VMOVSD %XMM7,-0x18(%RAX)</td><td>1</td><td>0</td><td>0</td><td>0.50</td><td>0.50</td><td>1</td><td>0</td><td>3</td><td>1</td></tr><tr><td>VMULSD -0x10(%R15),%XMM13,%XMM0</td><td>1</td><td>1</td><td>0</td><td>0.50</td><td>0.50</td><td>0</td><td>0</td><td>5</td><td>1</td></tr><tr><td>VMULSD -0x10(%RBX),%XMM4,%XMM3</td><td>1</td><td>1</td><td>0</td><td>0.50</td><td>0.50</td><td>0</td><td>0</td><td>5</td><td>1</td></tr><tr><td>VMULSD -0x10(%R9),%XMM4,%XMM14</td><td>1</td><td>1</td><td>0</td><td>0.50</td><td>0.50</td><td>0</td><td>0</td><td>5</td><td>1</td></tr><tr><td>VSUBSD %XMM3,%XMM0,%XMM11</td><td>1</td><td>0</td><td>1</td><td>0</td><td>0</td><td>0</td><td>0</td><td>3</td><td>1</td></tr><tr><td>VSUBSD %XMM14,%XMM11,%XMM2</td><td>1</td><td>0</td><td>1</td><td>0</td><td>0</td><td>0</td><td>0</td><td>3</td><td>1</td></tr><tr><td>VADDSD -0x10(%RDX),%XMM2,%XMM10</td><td>1</td><td>0</td><td>1</td><td>0.50</td><td>0.50</td><td>0</td><td>0</td><td>3</td><td>1</td></tr><tr><td>VMULSD 0x1cc5f(%RIP),%XMM10,%XMM9</td><td>1</td><td>1</td><td>0</td><td>0.50</td><td>0.50</td><td>0</td><td>0</td><td>5</td><td>1</td></tr><tr><td>VSUBSD %XMM9,%XMM15,%XMM1</td><td>1</td><td>0</td><td>1</td><td>0</td><td>0</td><td>0</td><td>0</td><td>3</td><td>1</td></tr><tr><td>VMOVSD %XMM1,-0x10(%RAX)</td><td>1</td><td>0</td><td>0</td><td>0.50</td><td>0.50</td><td>1</td><td>0</td><td>3</td><td>1</td></tr><tr><td>VMULSD -0x8(%R15),%XMM13,%XMM12</td><td>1</td><td>1</td><td>0</td><td>0.50</td><td>0.50</td><td>0</td><td>0</td><td>5</td><td>1</td></tr><tr><td>VMULSD -0x8(%RBX),%XMM4,%XMM8</td><td>1</td><td>1</td><td>0</td><td>0.50</td><td>0.50</td><td>0</td><td>0</td><td>5</td><td>1</td></tr><tr><td>VMULSD -0x8(%R9),%XMM4,%XMM0</td><td>1</td><td>1</td><td>0</td><td>0.50</td><td>0.50</td><td>0</td><td>0</td><td>5</td><td>1</td></tr><tr><td>VSUBSD %XMM8,%XMM12,%XMM7</td><td>1</td><td>0</td><td>1</td><td>0</td><td>0</td><td>0</td><td>0</td><td>3</td><td>1</td></tr><tr><td>VSUBSD %XMM0,%XMM7,%XMM3</td><td>1</td><td>0</td><td>1</td><td>0</td><td>0</td><td>0</td><td>0</td><td>3</td><td>1</td></tr><tr><td>VADDSD -0x8(%RDX),%XMM3,%XMM11</td><td>1</td><td>0</td><td>1</td><td>0.50</td><td>0.50</td><td>0</td><td>0</td><td>3</td><td>1</td></tr><tr><td>VMULSD 0x1cc2e(%RIP),%XMM11,%XMM14</td><td>1</td><td>1</td><td>0</td><td>0.50</td><td>0.50</td><td>0</td><td>0</td><td>5</td><td>1</td></tr><tr><td>VMOVSD -0x8(%RAX),%XMM2</td><td>1</td><td>0</td><td>0</td><td>0.50</td><td>0.50</td><td>0</td><td>0</td><td>3</td><td>0.50</td></tr><tr><td>VSUBSD %XMM14,%XMM2,%XMM10</td><td>1</td><td>0</td><td>1</td><td>0</td><td>0</td><td>0</td><td>0</td><td>3</td><td>1</td></tr><tr><td>VMOVSD %XMM10,-0x8(%RAX)</td><td>1</td><td>0</td><td>0</td><td>0.50</td><td>0.50</td><td>1</td><td>0</td><td>3</td><td>1</td></tr><tr><td>CMP %R10,%RAX</td><td>1</td><td>0.33</td><td>0.33</td><td>0</td><td>0</td><td>0</td><td>0.33</td><td>1</td><td>0.33</td></tr><tr><td>JNE fbf0 <compute_rhs_._omp_fn.0+0x38a0></td><td>1</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0</td><td>1</td><td>0</td><td>1-2</td></tr></table>",
        },
      },
      header = {
        "25% of peak computational performance is used (2.00 out of 8.00 FLOP per cycle (GFLOPS @ 1GHz))",
      },
      brief = {
      },
      gain = {
        {
          workaround = "<ul><li>Try another compiler or update/tune your current one:\n<ul><li>recompile with fassociative-math (included in Ofast or ffast-math) to extend loop vectorization to FP reductions.</li></ul></li><li>Remove inter-iterations dependences from your loop and make it unit-stride:\n<ul><li>If your arrays have 2 or more dimensions, check whether elements are accessed contiguously and, otherwise, try to permute loops accordingly:\nFortran storage order is column-major: do i do j a(i,j) = b(i,j) (slow, non stride 1) =&gt; do i do j a(j,i) = b(i,j) (fast, stride 1)</li><li>If your loop streams arrays of structures (AoS), try to use structures of arrays instead (SoA):\ndo i a(i)%x = b(i)%x (slow, non stride 1) =&gt; do i a%x(i) = b%x(i) (fast, stride 1)</li></ul></li></ul>",
          details = "All SSE/AVX instructions are used in scalar version (process only one data element in vector registers).\nSince your execution units are vector units, only a vectorized loop can use their full power.\n",
          title = "Vectorization",
          txt = "Your loop is not vectorized.\n4 data elements could be processed at once in vector registers.\nBy vectorizing your loop, you can lower the cost of an iteration from 20.00 to 7.50 cycles (2.67x speedup).",
        },
        {
          workaround = "<ul><li>Reduce the number of FP add instructions</li><li>Reduce the number of FP multiply instructions</li></ul>",
          title = "Execution units bottlenecks",
          txt = "Performance is limited by:\n<ul><li>execution of FP add operations (the FP add unit is a bottleneck)</li><li>execution of FP multiply operations (the FP multiply unit is a bottleneck)</li></ul>\nBy removing all these bottlenecks, you can lower the cost of an iteration from 20.00 to 17.50 cycles (1.14x speedup).\n",
        },
      },
      potential = {
      },
    },
  common = {
    header = {
      "The loop is defined in /users/user2210/NPB3.4-MZ-MPI/BT-MZ/rhs.f90:356-360.\n",
      "The related source loop is not unrolled or unrolled with no peel/tail loop.",
    },
    nb_paths = 1,
  },
}
