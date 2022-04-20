_cqa_text_report = {
  paths = {
    {
      hint = {
        {
          title = "Type of elements and instruction set",
          txt = "45 SSE or AVX instructions are processing arithmetic or math operations on double precision FP elements in scalar mode (one at a time).\n",
        },
        {
          title = "Matching between your loop (in the source code) and the binary loop",
          txt = "The binary loop is composed of 45 FP arithmetical operations:\n<ul><li>25: addition or subtraction</li><li>20: multiply</li></ul>The binary loop is loading 280 bytes (35 double precision FP elements).\nThe binary loop is storing 40 bytes (5 double precision FP elements).",
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
          txt = "<table><tr><td>nb instructions</td><td>68</td></tr><tr><td>nb uops</td><td>67</td></tr><tr><td>loop length</td><td>351</td></tr><tr><td>used x86 registers</td><td>7</td></tr><tr><td>used mmx registers</td><td>0</td></tr><tr><td>used xmm registers</td><td>12</td></tr><tr><td>used ymm registers</td><td>0</td></tr><tr><td>used zmm registers</td><td>0</td></tr><tr><td>nb stack references</td><td>0</td></tr><tr><td>ADD-SUB / MUL ratio</td><td>1.25</td></tr></table>",
        },
        {
          title = "Front-end",
          txt = "ASSUMED MACRO FUSION\nFIT IN UOP CACHE\n<table><tr><td>micro-operation queue</td><td>16.75 cycles</td></tr><tr><td>front end</td><td>16.75 cycles</td></tr></table>",
        },
        {
          title = "Back-end",
          txt = "<table><tr><th>      </th><th>P0</th><th>P1</th><th>P2</th><th>P3</th><th>P4</th><th>P5</th></tr><tr><td>uops</td><td>20.00</td><td>25.00</td><td>20.00</td><td>20.00</td><td>5.00</td><td>7.00</td></tr><tr><td>cycles</td><td>20.00</td><td>25.00</td><td>20.00</td><td>20.00</td><td>5.00</td><td>7.00</td></tr></table>\n<table><tr><td>Cycles executing div or sqrt instructions</td><td>NA</td></tr><tr><td>Longest recurrence chain latency (RecMII)</td><td>1.00</td></tr></table>",
        },
        {
          title = "Cycles summary",
          txt = "<table><tr><td>Front-end</td><td>16.75</td></tr><tr><td>Dispatch</td><td>25.00</td></tr><tr><td>Data deps.</td><td>1.00</td></tr><tr><td>Overall L1</td><td>25.00</td></tr></table>",
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
          txt = "Assuming all data fit into the L1 cache, each iteration of the binary loop takes 25.00 cycles. At this rate:\n<ul><li>35% of peak load performance is reached (11.20 out of 32.00 bytes loaded per cycle (GB/s @ 1GHz))</li><li>10% of peak store performance is reached (1.60 out of 16.00 bytes stored per cycle (GB/s @ 1GHz))</li></ul>",
        },
        {
          title = "Front-end bottlenecks",
          txt = "Found no such bottlenecks.",
        },
        {
          title = "ASM code",
          txt = "In the binary file, the address of the loop is: e0b0\n\n<table><tr><th>Instruction</th><th>Nb FU</th><th>P0</th><th>P1</th><th>P2</th><th>P3</th><th>P4</th><th>P5</th><th>Latency</th><th>Recip. throughput</th></tr><tr><td>VMOVSD (%RDI),%XMM0</td><td>1</td><td>0</td><td>0</td><td>0.50</td><td>0.50</td><td>0</td><td>0</td><td>3</td><td>0.50</td></tr><tr><td>ADD $0x28,%RAX</td><td>1</td><td>0.33</td><td>0.33</td><td>0</td><td>0</td><td>0</td><td>0.33</td><td>1</td><td>0.33</td></tr><tr><td>ADD $0x28,%RDI</td><td>1</td><td>0.33</td><td>0.33</td><td>0</td><td>0</td><td>0</td><td>0.33</td><td>1</td><td>0.33</td></tr><tr><td>ADD $0x28,%R14</td><td>1</td><td>0.33</td><td>0.33</td><td>0</td><td>0</td><td>0</td><td>0.33</td><td>1</td><td>0.33</td></tr><tr><td>VMULSD -0x28(%R14),%XMM13,%XMM7</td><td>1</td><td>1</td><td>0</td><td>0.50</td><td>0.50</td><td>0</td><td>0</td><td>5</td><td>1</td></tr><tr><td>ADD $0x28,%RCX</td><td>1</td><td>0.33</td><td>0.33</td><td>0</td><td>0</td><td>0</td><td>0.33</td><td>1</td><td>0.33</td></tr><tr><td>ADD $0x28,%RSI</td><td>1</td><td>0.33</td><td>0.33</td><td>0</td><td>0</td><td>0</td><td>0.33</td><td>1</td><td>0.33</td></tr><tr><td>VMULSD -0x28(%RCX),%XMM12,%XMM6</td><td>1</td><td>1</td><td>0</td><td>0.50</td><td>0.50</td><td>0</td><td>0</td><td>5</td><td>1</td></tr><tr><td>ADD $0x28,%R15</td><td>1</td><td>0.33</td><td>0.33</td><td>0</td><td>0</td><td>0</td><td>0.33</td><td>1</td><td>0.33</td></tr><tr><td>VMULSD -0x28(%RSI),%XMM13,%XMM11</td><td>1</td><td>1</td><td>0</td><td>0.50</td><td>0.50</td><td>0</td><td>0</td><td>5</td><td>1</td></tr><tr><td>VMOVSD -0x28(%RAX),%XMM9</td><td>1</td><td>0</td><td>0</td><td>0.50</td><td>0.50</td><td>0</td><td>0</td><td>3</td><td>0.50</td></tr><tr><td>VSUBSD %XMM7,%XMM0,%XMM14</td><td>1</td><td>0</td><td>1</td><td>0</td><td>0</td><td>0</td><td>0</td><td>3</td><td>1</td></tr><tr><td>VADDSD %XMM6,%XMM14,%XMM8</td><td>1</td><td>0</td><td>1</td><td>0</td><td>0</td><td>0</td><td>0</td><td>3</td><td>1</td></tr><tr><td>VSUBSD %XMM11,%XMM8,%XMM5</td><td>1</td><td>0</td><td>1</td><td>0</td><td>0</td><td>0</td><td>0</td><td>3</td><td>1</td></tr><tr><td>VADDSD -0x28(%R15),%XMM5,%XMM10</td><td>1</td><td>0</td><td>1</td><td>0.50</td><td>0.50</td><td>0</td><td>0</td><td>3</td><td>1</td></tr><tr><td>VMULSD 0x1e834(%RIP),%XMM10,%XMM15</td><td>1</td><td>1</td><td>0</td><td>0.50</td><td>0.50</td><td>0</td><td>0</td><td>5</td><td>1</td></tr><tr><td>VSUBSD %XMM15,%XMM9,%XMM7</td><td>1</td><td>0</td><td>1</td><td>0</td><td>0</td><td>0</td><td>0</td><td>3</td><td>1</td></tr><tr><td>VMOVSD %XMM7,-0x28(%RAX)</td><td>1</td><td>0</td><td>0</td><td>0.50</td><td>0.50</td><td>1</td><td>0</td><td>3</td><td>1</td></tr><tr><td>VMULSD -0x20(%R14),%XMM13,%XMM14</td><td>1</td><td>1</td><td>0</td><td>0.50</td><td>0.50</td><td>0</td><td>0</td><td>5</td><td>1</td></tr><tr><td>VMOVSD -0x20(%RDI),%XMM0</td><td>1</td><td>0</td><td>0</td><td>0.50</td><td>0.50</td><td>0</td><td>0</td><td>3</td><td>0.50</td></tr><tr><td>VMULSD -0x20(%RCX),%XMM12,%XMM8</td><td>1</td><td>1</td><td>0</td><td>0.50</td><td>0.50</td><td>0</td><td>0</td><td>5</td><td>1</td></tr><tr><td>VMULSD -0x20(%RSI),%XMM13,%XMM5</td><td>1</td><td>1</td><td>0</td><td>0.50</td><td>0.50</td><td>0</td><td>0</td><td>5</td><td>1</td></tr><tr><td>VMOVSD -0x20(%RAX),%XMM7</td><td>1</td><td>0</td><td>0</td><td>0.50</td><td>0.50</td><td>0</td><td>0</td><td>3</td><td>0.50</td></tr><tr><td>VSUBSD %XMM14,%XMM0,%XMM6</td><td>1</td><td>0</td><td>1</td><td>0</td><td>0</td><td>0</td><td>0</td><td>3</td><td>1</td></tr><tr><td>VADDSD %XMM8,%XMM6,%XMM11</td><td>1</td><td>0</td><td>1</td><td>0</td><td>0</td><td>0</td><td>0</td><td>3</td><td>1</td></tr><tr><td>VSUBSD %XMM5,%XMM11,%XMM10</td><td>1</td><td>0</td><td>1</td><td>0</td><td>0</td><td>0</td><td>0</td><td>3</td><td>1</td></tr><tr><td>VADDSD -0x20(%R15),%XMM10,%XMM15</td><td>1</td><td>0</td><td>1</td><td>0.50</td><td>0.50</td><td>0</td><td>0</td><td>3</td><td>1</td></tr><tr><td>VMULSD 0x1e7f4(%RIP),%XMM15,%XMM9</td><td>1</td><td>1</td><td>0</td><td>0.50</td><td>0.50</td><td>0</td><td>0</td><td>5</td><td>1</td></tr><tr><td>VSUBSD %XMM9,%XMM7,%XMM14</td><td>1</td><td>0</td><td>1</td><td>0</td><td>0</td><td>0</td><td>0</td><td>3</td><td>1</td></tr><tr><td>VMOVSD -0x18(%RAX),%XMM7</td><td>1</td><td>0</td><td>0</td><td>0.50</td><td>0.50</td><td>0</td><td>0</td><td>3</td><td>0.50</td></tr><tr><td>VMOVSD %XMM14,-0x20(%RAX)</td><td>1</td><td>0</td><td>0</td><td>0.50</td><td>0.50</td><td>1</td><td>0</td><td>3</td><td>1</td></tr><tr><td>VMULSD -0x18(%R14),%XMM13,%XMM6</td><td>1</td><td>1</td><td>0</td><td>0.50</td><td>0.50</td><td>0</td><td>0</td><td>5</td><td>1</td></tr><tr><td>VMOVSD -0x18(%RDI),%XMM0</td><td>1</td><td>0</td><td>0</td><td>0.50</td><td>0.50</td><td>0</td><td>0</td><td>3</td><td>0.50</td></tr><tr><td>VMULSD -0x18(%RCX),%XMM12,%XMM11</td><td>1</td><td>1</td><td>0</td><td>0.50</td><td>0.50</td><td>0</td><td>0</td><td>5</td><td>1</td></tr><tr><td>VMULSD -0x18(%RSI),%XMM13,%XMM10</td><td>1</td><td>1</td><td>0</td><td>0.50</td><td>0.50</td><td>0</td><td>0</td><td>5</td><td>1</td></tr><tr><td>VSUBSD %XMM6,%XMM0,%XMM8</td><td>1</td><td>0</td><td>1</td><td>0</td><td>0</td><td>0</td><td>0</td><td>3</td><td>1</td></tr><tr><td>VADDSD %XMM11,%XMM8,%XMM5</td><td>1</td><td>0</td><td>1</td><td>0</td><td>0</td><td>0</td><td>0</td><td>3</td><td>1</td></tr><tr><td>VSUBSD %XMM10,%XMM5,%XMM15</td><td>1</td><td>0</td><td>1</td><td>0</td><td>0</td><td>0</td><td>0</td><td>3</td><td>1</td></tr><tr><td>VADDSD -0x18(%R15),%XMM15,%XMM9</td><td>1</td><td>0</td><td>1</td><td>0.50</td><td>0.50</td><td>0</td><td>0</td><td>3</td><td>1</td></tr><tr><td>VMULSD 0x1e7b4(%RIP),%XMM9,%XMM14</td><td>1</td><td>1</td><td>0</td><td>0.50</td><td>0.50</td><td>0</td><td>0</td><td>5</td><td>1</td></tr><tr><td>VSUBSD %XMM14,%XMM7,%XMM6</td><td>1</td><td>0</td><td>1</td><td>0</td><td>0</td><td>0</td><td>0</td><td>3</td><td>1</td></tr><tr><td>VMOVSD -0x10(%RAX),%XMM7</td><td>1</td><td>0</td><td>0</td><td>0.50</td><td>0.50</td><td>0</td><td>0</td><td>3</td><td>0.50</td></tr><tr><td>VMOVSD %XMM6,-0x18(%RAX)</td><td>1</td><td>0</td><td>0</td><td>0.50</td><td>0.50</td><td>1</td><td>0</td><td>3</td><td>1</td></tr><tr><td>VMULSD -0x10(%R14),%XMM13,%XMM8</td><td>1</td><td>1</td><td>0</td><td>0.50</td><td>0.50</td><td>0</td><td>0</td><td>5</td><td>1</td></tr><tr><td>VMOVSD -0x10(%RDI),%XMM0</td><td>1</td><td>0</td><td>0</td><td>0.50</td><td>0.50</td><td>0</td><td>0</td><td>3</td><td>0.50</td></tr><tr><td>VMULSD -0x10(%RCX),%XMM12,%XMM5</td><td>1</td><td>1</td><td>0</td><td>0.50</td><td>0.50</td><td>0</td><td>0</td><td>5</td><td>1</td></tr><tr><td>VMULSD -0x10(%RSI),%XMM13,%XMM15</td><td>1</td><td>1</td><td>0</td><td>0.50</td><td>0.50</td><td>0</td><td>0</td><td>5</td><td>1</td></tr><tr><td>VSUBSD %XMM8,%XMM0,%XMM11</td><td>1</td><td>0</td><td>1</td><td>0</td><td>0</td><td>0</td><td>0</td><td>3</td><td>1</td></tr><tr><td>VADDSD %XMM5,%XMM11,%XMM10</td><td>1</td><td>0</td><td>1</td><td>0</td><td>0</td><td>0</td><td>0</td><td>3</td><td>1</td></tr><tr><td>VSUBSD %XMM15,%XMM10,%XMM9</td><td>1</td><td>0</td><td>1</td><td>0</td><td>0</td><td>0</td><td>0</td><td>3</td><td>1</td></tr><tr><td>VADDSD -0x10(%R15),%XMM9,%XMM14</td><td>1</td><td>0</td><td>1</td><td>0.50</td><td>0.50</td><td>0</td><td>0</td><td>3</td><td>1</td></tr><tr><td>VMULSD 0x1e774(%RIP),%XMM14,%XMM6</td><td>1</td><td>1</td><td>0</td><td>0.50</td><td>0.50</td><td>0</td><td>0</td><td>5</td><td>1</td></tr><tr><td>VSUBSD %XMM6,%XMM7,%XMM8</td><td>1</td><td>0</td><td>1</td><td>0</td><td>0</td><td>0</td><td>0</td><td>3</td><td>1</td></tr><tr><td>VMOVSD %XMM8,-0x10(%RAX)</td><td>1</td><td>0</td><td>0</td><td>0.50</td><td>0.50</td><td>1</td><td>0</td><td>3</td><td>1</td></tr><tr><td>VMULSD -0x8(%R14),%XMM13,%XMM11</td><td>1</td><td>1</td><td>0</td><td>0.50</td><td>0.50</td><td>0</td><td>0</td><td>5</td><td>1</td></tr><tr><td>VMOVSD -0x8(%RDI),%XMM0</td><td>1</td><td>0</td><td>0</td><td>0.50</td><td>0.50</td><td>0</td><td>0</td><td>3</td><td>0.50</td></tr><tr><td>VMULSD -0x8(%RCX),%XMM12,%XMM10</td><td>1</td><td>1</td><td>0</td><td>0.50</td><td>0.50</td><td>0</td><td>0</td><td>5</td><td>1</td></tr><tr><td>VMULSD -0x8(%RSI),%XMM13,%XMM9</td><td>1</td><td>1</td><td>0</td><td>0.50</td><td>0.50</td><td>0</td><td>0</td><td>5</td><td>1</td></tr><tr><td>VMOVSD -0x8(%RAX),%XMM7</td><td>1</td><td>0</td><td>0</td><td>0.50</td><td>0.50</td><td>0</td><td>0</td><td>3</td><td>0.50</td></tr><tr><td>VSUBSD %XMM11,%XMM0,%XMM5</td><td>1</td><td>0</td><td>1</td><td>0</td><td>0</td><td>0</td><td>0</td><td>3</td><td>1</td></tr><tr><td>VADDSD %XMM10,%XMM5,%XMM15</td><td>1</td><td>0</td><td>1</td><td>0</td><td>0</td><td>0</td><td>0</td><td>3</td><td>1</td></tr><tr><td>VSUBSD %XMM9,%XMM15,%XMM14</td><td>1</td><td>0</td><td>1</td><td>0</td><td>0</td><td>0</td><td>0</td><td>3</td><td>1</td></tr><tr><td>VADDSD -0x8(%R15),%XMM14,%XMM6</td><td>1</td><td>0</td><td>1</td><td>0.50</td><td>0.50</td><td>0</td><td>0</td><td>3</td><td>1</td></tr><tr><td>VMULSD 0x1e734(%RIP),%XMM6,%XMM8</td><td>1</td><td>1</td><td>0</td><td>0.50</td><td>0.50</td><td>0</td><td>0</td><td>5</td><td>1</td></tr><tr><td>VSUBSD %XMM8,%XMM7,%XMM11</td><td>1</td><td>0</td><td>1</td><td>0</td><td>0</td><td>0</td><td>0</td><td>3</td><td>1</td></tr><tr><td>VMOVSD %XMM11,-0x8(%RAX)</td><td>1</td><td>0</td><td>0</td><td>0.50</td><td>0.50</td><td>1</td><td>0</td><td>3</td><td>1</td></tr><tr><td>CMP %RAX,%R10</td><td>1</td><td>0.33</td><td>0.33</td><td>0</td><td>0</td><td>0</td><td>0.33</td><td>1</td><td>0.33</td></tr><tr><td>JNE e0b0 <compute_rhs_._omp_fn.0+0x1d60></td><td>1</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0</td><td>1</td><td>0</td><td>1-2</td></tr></table>",
        },
      },
      header = {
        "22% of peak computational performance is used (1.80 out of 8.00 FLOP per cycle (GFLOPS @ 1GHz))",
      },
      brief = {
      },
      gain = {
        {
          workaround = "<ul><li>Try another compiler or update/tune your current one:\n<ul><li>recompile with fassociative-math (included in Ofast or ffast-math) to extend loop vectorization to FP reductions.</li></ul></li><li>Remove inter-iterations dependences from your loop and make it unit-stride:\n<ul><li>If your arrays have 2 or more dimensions, check whether elements are accessed contiguously and, otherwise, try to permute loops accordingly:\nFortran storage order is column-major: do i do j a(i,j) = b(i,j) (slow, non stride 1) =&gt; do i do j a(j,i) = b(i,j) (fast, stride 1)</li><li>If your loop streams arrays of structures (AoS), try to use structures of arrays instead (SoA):\ndo i a(i)%x = b(i)%x (slow, non stride 1) =&gt; do i a%x(i) = b%x(i) (fast, stride 1)</li></ul></li></ul>",
          details = "All SSE/AVX instructions are used in scalar version (process only one data element in vector registers).\nSince your execution units are vector units, only a vectorized loop can use their full power.\n",
          title = "Vectorization",
          txt = "Your loop is not vectorized.\n4 data elements could be processed at once in vector registers.\nBy vectorizing your loop, you can lower the cost of an iteration from 25.00 to 8.75 cycles (2.86x speedup).",
        },
        {
          workaround = "Reduce the number of FP add instructions",
          title = "Execution units bottlenecks",
          txt = "Performance is limited by execution of FP add operations (the FP add unit is a bottleneck).\n\nBy removing all these bottlenecks, you can lower the cost of an iteration from 25.00 to 20.00 cycles (1.25x speedup).\n",
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
          txt = "45 SSE or AVX instructions are processing arithmetic or math operations on double precision FP elements in scalar mode (one at a time).\n",
        },
        {
          title = "Matching between your loop (in the source code) and the binary loop",
          txt = "The binary loop is composed of 45 FP arithmetical operations:\n<ul><li>25: addition or subtraction</li><li>20: multiply</li></ul>The binary loop is loading 280 bytes (35 double precision FP elements).\nThe binary loop is storing 40 bytes (5 double precision FP elements).",
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
          txt = "<table><tr><td>nb instructions</td><td>68</td></tr><tr><td>nb uops</td><td>67</td></tr><tr><td>loop length</td><td>351</td></tr><tr><td>used x86 registers</td><td>7</td></tr><tr><td>used mmx registers</td><td>0</td></tr><tr><td>used xmm registers</td><td>12</td></tr><tr><td>used ymm registers</td><td>0</td></tr><tr><td>used zmm registers</td><td>0</td></tr><tr><td>nb stack references</td><td>0</td></tr><tr><td>ADD-SUB / MUL ratio</td><td>1.25</td></tr></table>",
        },
        {
          title = "Front-end",
          txt = "ASSUMED MACRO FUSION\nFIT IN UOP CACHE\n<table><tr><td>micro-operation queue</td><td>16.75 cycles</td></tr><tr><td>front end</td><td>16.75 cycles</td></tr></table>",
        },
        {
          title = "Back-end",
          txt = "<table><tr><th>      </th><th>P0</th><th>P1</th><th>P2</th><th>P3</th><th>P4</th><th>P5</th></tr><tr><td>uops</td><td>20.00</td><td>25.00</td><td>20.00</td><td>20.00</td><td>5.00</td><td>7.00</td></tr><tr><td>cycles</td><td>20.00</td><td>25.00</td><td>20.00</td><td>20.00</td><td>5.00</td><td>7.00</td></tr></table>\n<table><tr><td>Cycles executing div or sqrt instructions</td><td>NA</td></tr><tr><td>Longest recurrence chain latency (RecMII)</td><td>1.00</td></tr></table>",
        },
        {
          title = "Cycles summary",
          txt = "<table><tr><td>Front-end</td><td>16.75</td></tr><tr><td>Dispatch</td><td>25.00</td></tr><tr><td>Data deps.</td><td>1.00</td></tr><tr><td>Overall L1</td><td>25.00</td></tr></table>",
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
          txt = "Assuming all data fit into the L1 cache, each iteration of the binary loop takes 25.00 cycles. At this rate:\n<ul><li>35% of peak load performance is reached (11.20 out of 32.00 bytes loaded per cycle (GB/s @ 1GHz))</li><li>10% of peak store performance is reached (1.60 out of 16.00 bytes stored per cycle (GB/s @ 1GHz))</li></ul>",
        },
        {
          title = "Front-end bottlenecks",
          txt = "Found no such bottlenecks.",
        },
        {
          title = "ASM code",
          txt = "In the binary file, the address of the loop is: e0b0\n\n<table><tr><th>Instruction</th><th>Nb FU</th><th>P0</th><th>P1</th><th>P2</th><th>P3</th><th>P4</th><th>P5</th><th>Latency</th><th>Recip. throughput</th></tr><tr><td>VMOVSD (%RDI),%XMM0</td><td>1</td><td>0</td><td>0</td><td>0.50</td><td>0.50</td><td>0</td><td>0</td><td>3</td><td>0.50</td></tr><tr><td>ADD $0x28,%RAX</td><td>1</td><td>0.33</td><td>0.33</td><td>0</td><td>0</td><td>0</td><td>0.33</td><td>1</td><td>0.33</td></tr><tr><td>ADD $0x28,%RDI</td><td>1</td><td>0.33</td><td>0.33</td><td>0</td><td>0</td><td>0</td><td>0.33</td><td>1</td><td>0.33</td></tr><tr><td>ADD $0x28,%R14</td><td>1</td><td>0.33</td><td>0.33</td><td>0</td><td>0</td><td>0</td><td>0.33</td><td>1</td><td>0.33</td></tr><tr><td>VMULSD -0x28(%R14),%XMM13,%XMM7</td><td>1</td><td>1</td><td>0</td><td>0.50</td><td>0.50</td><td>0</td><td>0</td><td>5</td><td>1</td></tr><tr><td>ADD $0x28,%RCX</td><td>1</td><td>0.33</td><td>0.33</td><td>0</td><td>0</td><td>0</td><td>0.33</td><td>1</td><td>0.33</td></tr><tr><td>ADD $0x28,%RSI</td><td>1</td><td>0.33</td><td>0.33</td><td>0</td><td>0</td><td>0</td><td>0.33</td><td>1</td><td>0.33</td></tr><tr><td>VMULSD -0x28(%RCX),%XMM12,%XMM6</td><td>1</td><td>1</td><td>0</td><td>0.50</td><td>0.50</td><td>0</td><td>0</td><td>5</td><td>1</td></tr><tr><td>ADD $0x28,%R15</td><td>1</td><td>0.33</td><td>0.33</td><td>0</td><td>0</td><td>0</td><td>0.33</td><td>1</td><td>0.33</td></tr><tr><td>VMULSD -0x28(%RSI),%XMM13,%XMM11</td><td>1</td><td>1</td><td>0</td><td>0.50</td><td>0.50</td><td>0</td><td>0</td><td>5</td><td>1</td></tr><tr><td>VMOVSD -0x28(%RAX),%XMM9</td><td>1</td><td>0</td><td>0</td><td>0.50</td><td>0.50</td><td>0</td><td>0</td><td>3</td><td>0.50</td></tr><tr><td>VSUBSD %XMM7,%XMM0,%XMM14</td><td>1</td><td>0</td><td>1</td><td>0</td><td>0</td><td>0</td><td>0</td><td>3</td><td>1</td></tr><tr><td>VADDSD %XMM6,%XMM14,%XMM8</td><td>1</td><td>0</td><td>1</td><td>0</td><td>0</td><td>0</td><td>0</td><td>3</td><td>1</td></tr><tr><td>VSUBSD %XMM11,%XMM8,%XMM5</td><td>1</td><td>0</td><td>1</td><td>0</td><td>0</td><td>0</td><td>0</td><td>3</td><td>1</td></tr><tr><td>VADDSD -0x28(%R15),%XMM5,%XMM10</td><td>1</td><td>0</td><td>1</td><td>0.50</td><td>0.50</td><td>0</td><td>0</td><td>3</td><td>1</td></tr><tr><td>VMULSD 0x1e834(%RIP),%XMM10,%XMM15</td><td>1</td><td>1</td><td>0</td><td>0.50</td><td>0.50</td><td>0</td><td>0</td><td>5</td><td>1</td></tr><tr><td>VSUBSD %XMM15,%XMM9,%XMM7</td><td>1</td><td>0</td><td>1</td><td>0</td><td>0</td><td>0</td><td>0</td><td>3</td><td>1</td></tr><tr><td>VMOVSD %XMM7,-0x28(%RAX)</td><td>1</td><td>0</td><td>0</td><td>0.50</td><td>0.50</td><td>1</td><td>0</td><td>3</td><td>1</td></tr><tr><td>VMULSD -0x20(%R14),%XMM13,%XMM14</td><td>1</td><td>1</td><td>0</td><td>0.50</td><td>0.50</td><td>0</td><td>0</td><td>5</td><td>1</td></tr><tr><td>VMOVSD -0x20(%RDI),%XMM0</td><td>1</td><td>0</td><td>0</td><td>0.50</td><td>0.50</td><td>0</td><td>0</td><td>3</td><td>0.50</td></tr><tr><td>VMULSD -0x20(%RCX),%XMM12,%XMM8</td><td>1</td><td>1</td><td>0</td><td>0.50</td><td>0.50</td><td>0</td><td>0</td><td>5</td><td>1</td></tr><tr><td>VMULSD -0x20(%RSI),%XMM13,%XMM5</td><td>1</td><td>1</td><td>0</td><td>0.50</td><td>0.50</td><td>0</td><td>0</td><td>5</td><td>1</td></tr><tr><td>VMOVSD -0x20(%RAX),%XMM7</td><td>1</td><td>0</td><td>0</td><td>0.50</td><td>0.50</td><td>0</td><td>0</td><td>3</td><td>0.50</td></tr><tr><td>VSUBSD %XMM14,%XMM0,%XMM6</td><td>1</td><td>0</td><td>1</td><td>0</td><td>0</td><td>0</td><td>0</td><td>3</td><td>1</td></tr><tr><td>VADDSD %XMM8,%XMM6,%XMM11</td><td>1</td><td>0</td><td>1</td><td>0</td><td>0</td><td>0</td><td>0</td><td>3</td><td>1</td></tr><tr><td>VSUBSD %XMM5,%XMM11,%XMM10</td><td>1</td><td>0</td><td>1</td><td>0</td><td>0</td><td>0</td><td>0</td><td>3</td><td>1</td></tr><tr><td>VADDSD -0x20(%R15),%XMM10,%XMM15</td><td>1</td><td>0</td><td>1</td><td>0.50</td><td>0.50</td><td>0</td><td>0</td><td>3</td><td>1</td></tr><tr><td>VMULSD 0x1e7f4(%RIP),%XMM15,%XMM9</td><td>1</td><td>1</td><td>0</td><td>0.50</td><td>0.50</td><td>0</td><td>0</td><td>5</td><td>1</td></tr><tr><td>VSUBSD %XMM9,%XMM7,%XMM14</td><td>1</td><td>0</td><td>1</td><td>0</td><td>0</td><td>0</td><td>0</td><td>3</td><td>1</td></tr><tr><td>VMOVSD -0x18(%RAX),%XMM7</td><td>1</td><td>0</td><td>0</td><td>0.50</td><td>0.50</td><td>0</td><td>0</td><td>3</td><td>0.50</td></tr><tr><td>VMOVSD %XMM14,-0x20(%RAX)</td><td>1</td><td>0</td><td>0</td><td>0.50</td><td>0.50</td><td>1</td><td>0</td><td>3</td><td>1</td></tr><tr><td>VMULSD -0x18(%R14),%XMM13,%XMM6</td><td>1</td><td>1</td><td>0</td><td>0.50</td><td>0.50</td><td>0</td><td>0</td><td>5</td><td>1</td></tr><tr><td>VMOVSD -0x18(%RDI),%XMM0</td><td>1</td><td>0</td><td>0</td><td>0.50</td><td>0.50</td><td>0</td><td>0</td><td>3</td><td>0.50</td></tr><tr><td>VMULSD -0x18(%RCX),%XMM12,%XMM11</td><td>1</td><td>1</td><td>0</td><td>0.50</td><td>0.50</td><td>0</td><td>0</td><td>5</td><td>1</td></tr><tr><td>VMULSD -0x18(%RSI),%XMM13,%XMM10</td><td>1</td><td>1</td><td>0</td><td>0.50</td><td>0.50</td><td>0</td><td>0</td><td>5</td><td>1</td></tr><tr><td>VSUBSD %XMM6,%XMM0,%XMM8</td><td>1</td><td>0</td><td>1</td><td>0</td><td>0</td><td>0</td><td>0</td><td>3</td><td>1</td></tr><tr><td>VADDSD %XMM11,%XMM8,%XMM5</td><td>1</td><td>0</td><td>1</td><td>0</td><td>0</td><td>0</td><td>0</td><td>3</td><td>1</td></tr><tr><td>VSUBSD %XMM10,%XMM5,%XMM15</td><td>1</td><td>0</td><td>1</td><td>0</td><td>0</td><td>0</td><td>0</td><td>3</td><td>1</td></tr><tr><td>VADDSD -0x18(%R15),%XMM15,%XMM9</td><td>1</td><td>0</td><td>1</td><td>0.50</td><td>0.50</td><td>0</td><td>0</td><td>3</td><td>1</td></tr><tr><td>VMULSD 0x1e7b4(%RIP),%XMM9,%XMM14</td><td>1</td><td>1</td><td>0</td><td>0.50</td><td>0.50</td><td>0</td><td>0</td><td>5</td><td>1</td></tr><tr><td>VSUBSD %XMM14,%XMM7,%XMM6</td><td>1</td><td>0</td><td>1</td><td>0</td><td>0</td><td>0</td><td>0</td><td>3</td><td>1</td></tr><tr><td>VMOVSD -0x10(%RAX),%XMM7</td><td>1</td><td>0</td><td>0</td><td>0.50</td><td>0.50</td><td>0</td><td>0</td><td>3</td><td>0.50</td></tr><tr><td>VMOVSD %XMM6,-0x18(%RAX)</td><td>1</td><td>0</td><td>0</td><td>0.50</td><td>0.50</td><td>1</td><td>0</td><td>3</td><td>1</td></tr><tr><td>VMULSD -0x10(%R14),%XMM13,%XMM8</td><td>1</td><td>1</td><td>0</td><td>0.50</td><td>0.50</td><td>0</td><td>0</td><td>5</td><td>1</td></tr><tr><td>VMOVSD -0x10(%RDI),%XMM0</td><td>1</td><td>0</td><td>0</td><td>0.50</td><td>0.50</td><td>0</td><td>0</td><td>3</td><td>0.50</td></tr><tr><td>VMULSD -0x10(%RCX),%XMM12,%XMM5</td><td>1</td><td>1</td><td>0</td><td>0.50</td><td>0.50</td><td>0</td><td>0</td><td>5</td><td>1</td></tr><tr><td>VMULSD -0x10(%RSI),%XMM13,%XMM15</td><td>1</td><td>1</td><td>0</td><td>0.50</td><td>0.50</td><td>0</td><td>0</td><td>5</td><td>1</td></tr><tr><td>VSUBSD %XMM8,%XMM0,%XMM11</td><td>1</td><td>0</td><td>1</td><td>0</td><td>0</td><td>0</td><td>0</td><td>3</td><td>1</td></tr><tr><td>VADDSD %XMM5,%XMM11,%XMM10</td><td>1</td><td>0</td><td>1</td><td>0</td><td>0</td><td>0</td><td>0</td><td>3</td><td>1</td></tr><tr><td>VSUBSD %XMM15,%XMM10,%XMM9</td><td>1</td><td>0</td><td>1</td><td>0</td><td>0</td><td>0</td><td>0</td><td>3</td><td>1</td></tr><tr><td>VADDSD -0x10(%R15),%XMM9,%XMM14</td><td>1</td><td>0</td><td>1</td><td>0.50</td><td>0.50</td><td>0</td><td>0</td><td>3</td><td>1</td></tr><tr><td>VMULSD 0x1e774(%RIP),%XMM14,%XMM6</td><td>1</td><td>1</td><td>0</td><td>0.50</td><td>0.50</td><td>0</td><td>0</td><td>5</td><td>1</td></tr><tr><td>VSUBSD %XMM6,%XMM7,%XMM8</td><td>1</td><td>0</td><td>1</td><td>0</td><td>0</td><td>0</td><td>0</td><td>3</td><td>1</td></tr><tr><td>VMOVSD %XMM8,-0x10(%RAX)</td><td>1</td><td>0</td><td>0</td><td>0.50</td><td>0.50</td><td>1</td><td>0</td><td>3</td><td>1</td></tr><tr><td>VMULSD -0x8(%R14),%XMM13,%XMM11</td><td>1</td><td>1</td><td>0</td><td>0.50</td><td>0.50</td><td>0</td><td>0</td><td>5</td><td>1</td></tr><tr><td>VMOVSD -0x8(%RDI),%XMM0</td><td>1</td><td>0</td><td>0</td><td>0.50</td><td>0.50</td><td>0</td><td>0</td><td>3</td><td>0.50</td></tr><tr><td>VMULSD -0x8(%RCX),%XMM12,%XMM10</td><td>1</td><td>1</td><td>0</td><td>0.50</td><td>0.50</td><td>0</td><td>0</td><td>5</td><td>1</td></tr><tr><td>VMULSD -0x8(%RSI),%XMM13,%XMM9</td><td>1</td><td>1</td><td>0</td><td>0.50</td><td>0.50</td><td>0</td><td>0</td><td>5</td><td>1</td></tr><tr><td>VMOVSD -0x8(%RAX),%XMM7</td><td>1</td><td>0</td><td>0</td><td>0.50</td><td>0.50</td><td>0</td><td>0</td><td>3</td><td>0.50</td></tr><tr><td>VSUBSD %XMM11,%XMM0,%XMM5</td><td>1</td><td>0</td><td>1</td><td>0</td><td>0</td><td>0</td><td>0</td><td>3</td><td>1</td></tr><tr><td>VADDSD %XMM10,%XMM5,%XMM15</td><td>1</td><td>0</td><td>1</td><td>0</td><td>0</td><td>0</td><td>0</td><td>3</td><td>1</td></tr><tr><td>VSUBSD %XMM9,%XMM15,%XMM14</td><td>1</td><td>0</td><td>1</td><td>0</td><td>0</td><td>0</td><td>0</td><td>3</td><td>1</td></tr><tr><td>VADDSD -0x8(%R15),%XMM14,%XMM6</td><td>1</td><td>0</td><td>1</td><td>0.50</td><td>0.50</td><td>0</td><td>0</td><td>3</td><td>1</td></tr><tr><td>VMULSD 0x1e734(%RIP),%XMM6,%XMM8</td><td>1</td><td>1</td><td>0</td><td>0.50</td><td>0.50</td><td>0</td><td>0</td><td>5</td><td>1</td></tr><tr><td>VSUBSD %XMM8,%XMM7,%XMM11</td><td>1</td><td>0</td><td>1</td><td>0</td><td>0</td><td>0</td><td>0</td><td>3</td><td>1</td></tr><tr><td>VMOVSD %XMM11,-0x8(%RAX)</td><td>1</td><td>0</td><td>0</td><td>0.50</td><td>0.50</td><td>1</td><td>0</td><td>3</td><td>1</td></tr><tr><td>CMP %RAX,%R10</td><td>1</td><td>0.33</td><td>0.33</td><td>0</td><td>0</td><td>0</td><td>0.33</td><td>1</td><td>0.33</td></tr><tr><td>JNE e0b0 <compute_rhs_._omp_fn.0+0x1d60></td><td>1</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0</td><td>1</td><td>0</td><td>1-2</td></tr></table>",
        },
      },
      header = {
        "22% of peak computational performance is used (1.80 out of 8.00 FLOP per cycle (GFLOPS @ 1GHz))",
      },
      brief = {
      },
      gain = {
        {
          workaround = "<ul><li>Try another compiler or update/tune your current one:\n<ul><li>recompile with fassociative-math (included in Ofast or ffast-math) to extend loop vectorization to FP reductions.</li></ul></li><li>Remove inter-iterations dependences from your loop and make it unit-stride:\n<ul><li>If your arrays have 2 or more dimensions, check whether elements are accessed contiguously and, otherwise, try to permute loops accordingly:\nFortran storage order is column-major: do i do j a(i,j) = b(i,j) (slow, non stride 1) =&gt; do i do j a(j,i) = b(i,j) (fast, stride 1)</li><li>If your loop streams arrays of structures (AoS), try to use structures of arrays instead (SoA):\ndo i a(i)%x = b(i)%x (slow, non stride 1) =&gt; do i a%x(i) = b%x(i) (fast, stride 1)</li></ul></li></ul>",
          details = "All SSE/AVX instructions are used in scalar version (process only one data element in vector registers).\nSince your execution units are vector units, only a vectorized loop can use their full power.\n",
          title = "Vectorization",
          txt = "Your loop is not vectorized.\n4 data elements could be processed at once in vector registers.\nBy vectorizing your loop, you can lower the cost of an iteration from 25.00 to 8.75 cycles (2.86x speedup).",
        },
        {
          workaround = "Reduce the number of FP add instructions",
          title = "Execution units bottlenecks",
          txt = "Performance is limited by execution of FP add operations (the FP add unit is a bottleneck).\n\nBy removing all these bottlenecks, you can lower the cost of an iteration from 25.00 to 20.00 cycles (1.25x speedup).\n",
        },
      },
      potential = {
      },
    },
  common = {
    header = {
      "The loop is defined in /users/user2210/NPB3.4-MZ-MPI/BT-MZ/rhs.f90:272-277.\n",
      "The related source loop is not unrolled or unrolled with no peel/tail loop.",
    },
    nb_paths = 1,
  },
}
