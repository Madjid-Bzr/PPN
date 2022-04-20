_cqa_text_report = {
  paths = {
    {
      hint = {
        {
          details = "Calling (and then returning from) a function prevents many compiler optimizations (like vectorization), breaks control flow (which reduces pipeline performance) and executes extra instructions to save/restore the registers used inside it, which is very expensive (dozens of cycles). Consider to inline small functions.\n<ul><li>binvcrhs: 2 occurrences</li><li>matmul_sub: 2 occurrences</li><li>matvec_sub: 2 occurrences</li></ul>",
          title = "CALL instructions",
          txt = "Detected function call instructions.\n",
        },
        {
          title = "Type of elements and instruction set",
          txt = "No instructions are processing arithmetic or math operations on FP elements. This loop is probably writing/copying data or processing integer elements.",
        },
        {
          title = "Matching between your loop (in the source code) and the binary loop",
          txt = "The binary loop does not contain any FP arithmetical operations.\nThe binary loop is loading 48 bytes.\nThe binary loop is storing 8 bytes.",
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
          txt = "<table><tr><td>nb instructions</td><td>38</td></tr><tr><td>nb uops</td><td>49</td></tr><tr><td>loop length</td><td>173</td></tr><tr><td>used x86 registers</td><td>12</td></tr><tr><td>used mmx registers</td><td>0</td></tr><tr><td>used xmm registers</td><td>0</td></tr><tr><td>used ymm registers</td><td>0</td></tr><tr><td>used zmm registers</td><td>0</td></tr><tr><td>nb stack references</td><td>3</td></tr></table>",
        },
        {
          title = "Front-end",
          txt = "ASSUMED MACRO FUSION\nFIT IN UOP CACHE\n<table><tr><td>micro-operation queue</td><td>12.25 cycles</td></tr><tr><td>front end</td><td>12.25 cycles</td></tr></table>",
        },
        {
          title = "Back-end",
          txt = "<table><tr><th>      </th><th>P0</th><th>P1</th><th>P2</th><th>P3</th><th>P4</th><th>P5</th></tr><tr><td>uops</td><td>10.50</td><td>10.17</td><td>6.50</td><td>6.50</td><td>7.00</td><td>10.33</td></tr><tr><td>cycles</td><td>10.50</td><td>10.17</td><td>6.50</td><td>6.50</td><td>7.00</td><td>10.33</td></tr></table>\n<table><tr><td>Cycles executing div or sqrt instructions</td><td>NA</td></tr><tr><td>Longest recurrence chain latency (RecMII)</td><td>1.00</td></tr></table>",
        },
        {
          title = "Cycles summary",
          txt = "<table><tr><td>Front-end</td><td>12.25</td></tr><tr><td>Dispatch</td><td>10.50</td></tr><tr><td>Data deps.</td><td>1.00</td></tr><tr><td>Overall L1</td><td>12.25</td></tr></table>",
        },
        {
          title = "Vectorization ratios",
          txt = "<table><tr><td>all</td><td>0%</td></tr><tr><td>load</td><td>0%</td></tr><tr><td>store</td><td>0%</td></tr><tr><td>mul</td><td>NA (no mul vectorizable/vectorized instructions)</td></tr><tr><td>add-sub</td><td>0%</td></tr><tr><td>fma</td><td>NA (no fma vectorizable/vectorized instructions)</td></tr><tr><td>div/sqrt</td><td>NA (no div/sqrt vectorizable/vectorized instructions)</td></tr><tr><td>other</td><td>0%</td></tr></table>",
        },
        {
          title = "Vector efficiency ratios",
          txt = "<table><tr><td>all</td><td>50%</td></tr><tr><td>load</td><td>50%</td></tr><tr><td>store</td><td>50%</td></tr><tr><td>mul</td><td>NA (no mul vectorizable/vectorized instructions)</td></tr><tr><td>add-sub</td><td>50%</td></tr><tr><td>fma</td><td>NA (no fma vectorizable/vectorized instructions)</td></tr><tr><td>div/sqrt</td><td>NA (no div/sqrt vectorizable/vectorized instructions)</td></tr><tr><td>other</td><td>50%</td></tr></table>",
        },
        {
          title = "Cycles and memory resources usage",
          txt = "Assuming all data fit into the L1 cache, each iteration of the binary loop takes 12.25 cycles. At this rate:\n<ul><li>12% of peak load performance is reached (3.92 out of 32.00 bytes loaded per cycle (GB/s @ 1GHz))</li><li>4% of peak store performance is reached (0.65 out of 16.00 bytes stored per cycle (GB/s @ 1GHz))</li></ul>",
        },
        {
          title = "Front-end bottlenecks",
          txt = "Performance is limited by instruction throughput (loading/decoding program instructions to execution core) (front-end is a bottleneck).\n\nBy removing all these bottlenecks, you can lower the cost of an iteration from 12.25 to 10.50 cycles (1.17x speedup).\n",
        },
        {
          title = "ASM code",
          txt = "In the binary file, the address of the loop is: 15032\n\n<table><tr><th>Instruction</th><th>Nb FU</th><th>P0</th><th>P1</th><th>P2</th><th>P3</th><th>P4</th><th>P5</th><th>Latency</th><th>Recip. throughput</th></tr><tr><td>MOV 0x20(%RBP),%RSI</td><td>1</td><td>0</td><td>0</td><td>0.50</td><td>0.50</td><td>0</td><td>0</td><td>2</td><td>0.50</td></tr><tr><td>LEA 0xc8(%RBX),%R14</td><td>1</td><td>0.50</td><td>0.50</td><td>0</td><td>0</td><td>0</td><td>0</td><td>1</td><td>0.50</td></tr><tr><td>MOV %RBX,%RDI</td><td>1</td><td>0.33</td><td>0.33</td><td>0</td><td>0</td><td>0</td><td>0.33</td><td>1</td><td>0.33</td></tr><tr><td>LEA 0x258(%RBX),%R13</td><td>1</td><td>0.50</td><td>0.50</td><td>0</td><td>0</td><td>0</td><td>0</td><td>1</td><td>0.50</td></tr><tr><td>LEA 0x320(%RBX),%R15</td><td>1</td><td>0.50</td><td>0.50</td><td>0</td><td>0</td><td>0</td><td>0</td><td>1</td><td>0.50</td></tr><tr><td>LEA (%RSI,%R12,1),%RDX</td><td>1</td><td>0.50</td><td>0.50</td><td>0</td><td>0</td><td>0</td><td>0</td><td>1</td><td>0.50</td></tr><tr><td>LEA -0x28(%RSI,%R12,1),%RSI</td><td>1</td><td>0</td><td>1</td><td>0</td><td>0</td><td>0</td><td>0</td><td>3</td><td>1</td></tr><tr><td>CALL 19680 <matvec_sub_></td><td>3</td><td>0</td><td>0</td><td>0.50</td><td>0.50</td><td>1</td><td>1</td><td>0</td><td>2</td></tr><tr><td>LEA -0xc8(%RBX),%RSI</td><td>1</td><td>0.50</td><td>0.50</td><td>0</td><td>0</td><td>0</td><td>0</td><td>1</td><td>0.50</td></tr><tr><td>MOV %R14,%RDX</td><td>1</td><td>0.33</td><td>0.33</td><td>0</td><td>0</td><td>0</td><td>0.33</td><td>1</td><td>0.33</td></tr><tr><td>MOV %RBX,%RDI</td><td>1</td><td>0.33</td><td>0.33</td><td>0</td><td>0</td><td>0</td><td>0.33</td><td>1</td><td>0.33</td></tr><tr><td>CALL 197e0 <matmul_sub_></td><td>3</td><td>0</td><td>0</td><td>0.50</td><td>0.50</td><td>1</td><td>1</td><td>0</td><td>2</td></tr><tr><td>MOV 0x20(%RBP),%RDX</td><td>1</td><td>0</td><td>0</td><td>0.50</td><td>0.50</td><td>0</td><td>0</td><td>2</td><td>0.50</td></tr><tr><td>LEA 0x190(%RBX),%R11</td><td>1</td><td>0.50</td><td>0.50</td><td>0</td><td>0</td><td>0</td><td>0</td><td>1</td><td>0.50</td></tr><tr><td>MOV %R14,%RDI</td><td>1</td><td>0.33</td><td>0.33</td><td>0</td><td>0</td><td>0</td><td>0.33</td><td>1</td><td>0.33</td></tr><tr><td>MOV %R11,(%RSP)</td><td>1</td><td>0</td><td>0</td><td>0.50</td><td>0.50</td><td>1</td><td>0</td><td>3</td><td>1</td></tr><tr><td>LEA 0x28(%R12),%R14</td><td>1</td><td>0.50</td><td>0.50</td><td>0</td><td>0</td><td>0</td><td>0</td><td>1</td><td>0.50</td></tr><tr><td>MOV %R11,%RSI</td><td>1</td><td>0.33</td><td>0.33</td><td>0</td><td>0</td><td>0</td><td>0.33</td><td>1</td><td>0.33</td></tr><tr><td>ADD %R12,%RDX</td><td>1</td><td>0.33</td><td>0.33</td><td>0</td><td>0</td><td>0</td><td>0.33</td><td>1</td><td>0.33</td></tr><tr><td>CALL 19f90 <binvcrhs_></td><td>3</td><td>0</td><td>0</td><td>0.50</td><td>0.50</td><td>1</td><td>1</td><td>0</td><td>2</td></tr><tr><td>MOV 0x20(%RBP),%R8</td><td>1</td><td>0</td><td>0</td><td>0.50</td><td>0.50</td><td>0</td><td>0</td><td>2</td><td>0.50</td></tr><tr><td>MOV %R13,%RDI</td><td>1</td><td>0.33</td><td>0.33</td><td>0</td><td>0</td><td>0</td><td>0.33</td><td>1</td><td>0.33</td></tr><tr><td>LEA (%R8,%R12,1),%RSI</td><td>1</td><td>0.50</td><td>0.50</td><td>0</td><td>0</td><td>0</td><td>0</td><td>1</td><td>0.50</td></tr><tr><td>ADD $0x50,%R12</td><td>1</td><td>0.33</td><td>0.33</td><td>0</td><td>0</td><td>0</td><td>0.33</td><td>1</td><td>0.33</td></tr><tr><td>LEA (%R8,%R14,1),%RDX</td><td>1</td><td>0.50</td><td>0.50</td><td>0</td><td>0</td><td>0</td><td>0</td><td>1</td><td>0.50</td></tr><tr><td>CALL 19680 <matvec_sub_></td><td>3</td><td>0</td><td>0</td><td>0.50</td><td>0.50</td><td>1</td><td>1</td><td>0</td><td>2</td></tr><tr><td>MOV (%RSP),%RSI</td><td>1</td><td>0</td><td>0</td><td>0.50</td><td>0.50</td><td>0</td><td>0</td><td>2</td><td>0.50</td></tr><tr><td>MOV %R15,%RDX</td><td>1</td><td>0.33</td><td>0.33</td><td>0</td><td>0</td><td>0</td><td>0.33</td><td>1</td><td>0.33</td></tr><tr><td>MOV %R13,%RDI</td><td>1</td><td>0.33</td><td>0.33</td><td>0</td><td>0</td><td>0</td><td>0.33</td><td>1</td><td>0.33</td></tr><tr><td>CALL 197e0 <matmul_sub_></td><td>3</td><td>0</td><td>0</td><td>0.50</td><td>0.50</td><td>1</td><td>1</td><td>0</td><td>2</td></tr><tr><td>MOV 0x20(%RBP),%RDX</td><td>1</td><td>0</td><td>0</td><td>0.50</td><td>0.50</td><td>0</td><td>0</td><td>2</td><td>0.50</td></tr><tr><td>LEA 0x3e8(%RBX),%RSI</td><td>1</td><td>0.50</td><td>0.50</td><td>0</td><td>0</td><td>0</td><td>0</td><td>1</td><td>0.50</td></tr><tr><td>MOV %R15,%RDI</td><td>1</td><td>0.33</td><td>0.33</td><td>0</td><td>0</td><td>0</td><td>0.33</td><td>1</td><td>0.33</td></tr><tr><td>ADD $0x4b0,%RBX</td><td>1</td><td>0.33</td><td>0.33</td><td>0</td><td>0</td><td>0</td><td>0.33</td><td>1</td><td>0.33</td></tr><tr><td>ADD %R14,%RDX</td><td>1</td><td>0.33</td><td>0.33</td><td>0</td><td>0</td><td>0</td><td>0.33</td><td>1</td><td>0.33</td></tr><tr><td>CALL 19f90 <binvcrhs_></td><td>3</td><td>0</td><td>0</td><td>0.50</td><td>0.50</td><td>1</td><td>1</td><td>0</td><td>2</td></tr><tr><td>CMP 0x8(%RSP),%RBX</td><td>1</td><td>0.33</td><td>0.33</td><td>0.50</td><td>0.50</td><td>0</td><td>0.33</td><td>1</td><td>0.50</td></tr><tr><td>JNE 15032 <x_solve_._omp_fn.0+0x1fb2></td><td>1</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0</td><td>1</td><td>0</td><td>1-2</td></tr></table>",
        },
      },
      header = {
        "Warnings:\nDetected a function call instruction: ignoring called function instructions.\nRerun with --follow-calls=append to include them to analysis  or with --follow-calls=inline to simulate inlining.",
        "0% of peak computational performance is used (0.00 out of 2.00 FLOP per cycle (GFLOPS @ 1GHz))",
      },
      brief = {
      },
      gain = {
        {
          workaround = "<ul><li>Try another compiler or update/tune your current one:\n<ul><li>recompile with fassociative-math (included in Ofast or ffast-math) to extend loop vectorization to FP reductions.</li></ul></li><li>Remove inter-iterations dependences from your loop and make it unit-stride:\n<ul><li>If your arrays have 2 or more dimensions, check whether elements are accessed contiguously and, otherwise, try to permute loops accordingly:\nFortran storage order is column-major: do i do j a(i,j) = b(i,j) (slow, non stride 1) =&gt; do i do j a(j,i) = b(i,j) (fast, stride 1)</li><li>If your loop streams arrays of structures (AoS), try to use structures of arrays instead (SoA):\ndo i a(i)%x = b(i)%x (slow, non stride 1) =&gt; do i a%x(i) = b%x(i) (fast, stride 1)</li></ul></li></ul>",
          details = "All SSE/AVX instructions are used in scalar version (process only one data element in vector registers).\nSince your execution units are vector units, only a vectorized loop can use their full power.\n",
          title = "Vectorization",
          txt = "Your loop is not vectorized.\n2 data elements could be processed at once in vector registers.\nBy vectorizing your loop, you can lower the cost of an iteration from 12.25 to 6.12 cycles (2.00x speedup).",
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
          details = "Calling (and then returning from) a function prevents many compiler optimizations (like vectorization), breaks control flow (which reduces pipeline performance) and executes extra instructions to save/restore the registers used inside it, which is very expensive (dozens of cycles). Consider to inline small functions.\n<ul><li>binvcrhs: 2 occurrences</li><li>matmul_sub: 2 occurrences</li><li>matvec_sub: 2 occurrences</li></ul>",
          title = "CALL instructions",
          txt = "Detected function call instructions.\n",
        },
        {
          title = "Type of elements and instruction set",
          txt = "No instructions are processing arithmetic or math operations on FP elements. This loop is probably writing/copying data or processing integer elements.",
        },
        {
          title = "Matching between your loop (in the source code) and the binary loop",
          txt = "The binary loop does not contain any FP arithmetical operations.\nThe binary loop is loading 48 bytes.\nThe binary loop is storing 8 bytes.",
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
          txt = "<table><tr><td>nb instructions</td><td>38</td></tr><tr><td>nb uops</td><td>49</td></tr><tr><td>loop length</td><td>173</td></tr><tr><td>used x86 registers</td><td>12</td></tr><tr><td>used mmx registers</td><td>0</td></tr><tr><td>used xmm registers</td><td>0</td></tr><tr><td>used ymm registers</td><td>0</td></tr><tr><td>used zmm registers</td><td>0</td></tr><tr><td>nb stack references</td><td>3</td></tr></table>",
        },
        {
          title = "Front-end",
          txt = "ASSUMED MACRO FUSION\nFIT IN UOP CACHE\n<table><tr><td>micro-operation queue</td><td>12.25 cycles</td></tr><tr><td>front end</td><td>12.25 cycles</td></tr></table>",
        },
        {
          title = "Back-end",
          txt = "<table><tr><th>      </th><th>P0</th><th>P1</th><th>P2</th><th>P3</th><th>P4</th><th>P5</th></tr><tr><td>uops</td><td>10.50</td><td>10.17</td><td>6.50</td><td>6.50</td><td>7.00</td><td>10.33</td></tr><tr><td>cycles</td><td>10.50</td><td>10.17</td><td>6.50</td><td>6.50</td><td>7.00</td><td>10.33</td></tr></table>\n<table><tr><td>Cycles executing div or sqrt instructions</td><td>NA</td></tr><tr><td>Longest recurrence chain latency (RecMII)</td><td>1.00</td></tr></table>",
        },
        {
          title = "Cycles summary",
          txt = "<table><tr><td>Front-end</td><td>12.25</td></tr><tr><td>Dispatch</td><td>10.50</td></tr><tr><td>Data deps.</td><td>1.00</td></tr><tr><td>Overall L1</td><td>12.25</td></tr></table>",
        },
        {
          title = "Vectorization ratios",
          txt = "<table><tr><td>all</td><td>0%</td></tr><tr><td>load</td><td>0%</td></tr><tr><td>store</td><td>0%</td></tr><tr><td>mul</td><td>NA (no mul vectorizable/vectorized instructions)</td></tr><tr><td>add-sub</td><td>0%</td></tr><tr><td>fma</td><td>NA (no fma vectorizable/vectorized instructions)</td></tr><tr><td>div/sqrt</td><td>NA (no div/sqrt vectorizable/vectorized instructions)</td></tr><tr><td>other</td><td>0%</td></tr></table>",
        },
        {
          title = "Vector efficiency ratios",
          txt = "<table><tr><td>all</td><td>50%</td></tr><tr><td>load</td><td>50%</td></tr><tr><td>store</td><td>50%</td></tr><tr><td>mul</td><td>NA (no mul vectorizable/vectorized instructions)</td></tr><tr><td>add-sub</td><td>50%</td></tr><tr><td>fma</td><td>NA (no fma vectorizable/vectorized instructions)</td></tr><tr><td>div/sqrt</td><td>NA (no div/sqrt vectorizable/vectorized instructions)</td></tr><tr><td>other</td><td>50%</td></tr></table>",
        },
        {
          title = "Cycles and memory resources usage",
          txt = "Assuming all data fit into the L1 cache, each iteration of the binary loop takes 12.25 cycles. At this rate:\n<ul><li>12% of peak load performance is reached (3.92 out of 32.00 bytes loaded per cycle (GB/s @ 1GHz))</li><li>4% of peak store performance is reached (0.65 out of 16.00 bytes stored per cycle (GB/s @ 1GHz))</li></ul>",
        },
        {
          title = "Front-end bottlenecks",
          txt = "Performance is limited by instruction throughput (loading/decoding program instructions to execution core) (front-end is a bottleneck).\n\nBy removing all these bottlenecks, you can lower the cost of an iteration from 12.25 to 10.50 cycles (1.17x speedup).\n",
        },
        {
          title = "ASM code",
          txt = "In the binary file, the address of the loop is: 15032\n\n<table><tr><th>Instruction</th><th>Nb FU</th><th>P0</th><th>P1</th><th>P2</th><th>P3</th><th>P4</th><th>P5</th><th>Latency</th><th>Recip. throughput</th></tr><tr><td>MOV 0x20(%RBP),%RSI</td><td>1</td><td>0</td><td>0</td><td>0.50</td><td>0.50</td><td>0</td><td>0</td><td>2</td><td>0.50</td></tr><tr><td>LEA 0xc8(%RBX),%R14</td><td>1</td><td>0.50</td><td>0.50</td><td>0</td><td>0</td><td>0</td><td>0</td><td>1</td><td>0.50</td></tr><tr><td>MOV %RBX,%RDI</td><td>1</td><td>0.33</td><td>0.33</td><td>0</td><td>0</td><td>0</td><td>0.33</td><td>1</td><td>0.33</td></tr><tr><td>LEA 0x258(%RBX),%R13</td><td>1</td><td>0.50</td><td>0.50</td><td>0</td><td>0</td><td>0</td><td>0</td><td>1</td><td>0.50</td></tr><tr><td>LEA 0x320(%RBX),%R15</td><td>1</td><td>0.50</td><td>0.50</td><td>0</td><td>0</td><td>0</td><td>0</td><td>1</td><td>0.50</td></tr><tr><td>LEA (%RSI,%R12,1),%RDX</td><td>1</td><td>0.50</td><td>0.50</td><td>0</td><td>0</td><td>0</td><td>0</td><td>1</td><td>0.50</td></tr><tr><td>LEA -0x28(%RSI,%R12,1),%RSI</td><td>1</td><td>0</td><td>1</td><td>0</td><td>0</td><td>0</td><td>0</td><td>3</td><td>1</td></tr><tr><td>CALL 19680 <matvec_sub_></td><td>3</td><td>0</td><td>0</td><td>0.50</td><td>0.50</td><td>1</td><td>1</td><td>0</td><td>2</td></tr><tr><td>LEA -0xc8(%RBX),%RSI</td><td>1</td><td>0.50</td><td>0.50</td><td>0</td><td>0</td><td>0</td><td>0</td><td>1</td><td>0.50</td></tr><tr><td>MOV %R14,%RDX</td><td>1</td><td>0.33</td><td>0.33</td><td>0</td><td>0</td><td>0</td><td>0.33</td><td>1</td><td>0.33</td></tr><tr><td>MOV %RBX,%RDI</td><td>1</td><td>0.33</td><td>0.33</td><td>0</td><td>0</td><td>0</td><td>0.33</td><td>1</td><td>0.33</td></tr><tr><td>CALL 197e0 <matmul_sub_></td><td>3</td><td>0</td><td>0</td><td>0.50</td><td>0.50</td><td>1</td><td>1</td><td>0</td><td>2</td></tr><tr><td>MOV 0x20(%RBP),%RDX</td><td>1</td><td>0</td><td>0</td><td>0.50</td><td>0.50</td><td>0</td><td>0</td><td>2</td><td>0.50</td></tr><tr><td>LEA 0x190(%RBX),%R11</td><td>1</td><td>0.50</td><td>0.50</td><td>0</td><td>0</td><td>0</td><td>0</td><td>1</td><td>0.50</td></tr><tr><td>MOV %R14,%RDI</td><td>1</td><td>0.33</td><td>0.33</td><td>0</td><td>0</td><td>0</td><td>0.33</td><td>1</td><td>0.33</td></tr><tr><td>MOV %R11,(%RSP)</td><td>1</td><td>0</td><td>0</td><td>0.50</td><td>0.50</td><td>1</td><td>0</td><td>3</td><td>1</td></tr><tr><td>LEA 0x28(%R12),%R14</td><td>1</td><td>0.50</td><td>0.50</td><td>0</td><td>0</td><td>0</td><td>0</td><td>1</td><td>0.50</td></tr><tr><td>MOV %R11,%RSI</td><td>1</td><td>0.33</td><td>0.33</td><td>0</td><td>0</td><td>0</td><td>0.33</td><td>1</td><td>0.33</td></tr><tr><td>ADD %R12,%RDX</td><td>1</td><td>0.33</td><td>0.33</td><td>0</td><td>0</td><td>0</td><td>0.33</td><td>1</td><td>0.33</td></tr><tr><td>CALL 19f90 <binvcrhs_></td><td>3</td><td>0</td><td>0</td><td>0.50</td><td>0.50</td><td>1</td><td>1</td><td>0</td><td>2</td></tr><tr><td>MOV 0x20(%RBP),%R8</td><td>1</td><td>0</td><td>0</td><td>0.50</td><td>0.50</td><td>0</td><td>0</td><td>2</td><td>0.50</td></tr><tr><td>MOV %R13,%RDI</td><td>1</td><td>0.33</td><td>0.33</td><td>0</td><td>0</td><td>0</td><td>0.33</td><td>1</td><td>0.33</td></tr><tr><td>LEA (%R8,%R12,1),%RSI</td><td>1</td><td>0.50</td><td>0.50</td><td>0</td><td>0</td><td>0</td><td>0</td><td>1</td><td>0.50</td></tr><tr><td>ADD $0x50,%R12</td><td>1</td><td>0.33</td><td>0.33</td><td>0</td><td>0</td><td>0</td><td>0.33</td><td>1</td><td>0.33</td></tr><tr><td>LEA (%R8,%R14,1),%RDX</td><td>1</td><td>0.50</td><td>0.50</td><td>0</td><td>0</td><td>0</td><td>0</td><td>1</td><td>0.50</td></tr><tr><td>CALL 19680 <matvec_sub_></td><td>3</td><td>0</td><td>0</td><td>0.50</td><td>0.50</td><td>1</td><td>1</td><td>0</td><td>2</td></tr><tr><td>MOV (%RSP),%RSI</td><td>1</td><td>0</td><td>0</td><td>0.50</td><td>0.50</td><td>0</td><td>0</td><td>2</td><td>0.50</td></tr><tr><td>MOV %R15,%RDX</td><td>1</td><td>0.33</td><td>0.33</td><td>0</td><td>0</td><td>0</td><td>0.33</td><td>1</td><td>0.33</td></tr><tr><td>MOV %R13,%RDI</td><td>1</td><td>0.33</td><td>0.33</td><td>0</td><td>0</td><td>0</td><td>0.33</td><td>1</td><td>0.33</td></tr><tr><td>CALL 197e0 <matmul_sub_></td><td>3</td><td>0</td><td>0</td><td>0.50</td><td>0.50</td><td>1</td><td>1</td><td>0</td><td>2</td></tr><tr><td>MOV 0x20(%RBP),%RDX</td><td>1</td><td>0</td><td>0</td><td>0.50</td><td>0.50</td><td>0</td><td>0</td><td>2</td><td>0.50</td></tr><tr><td>LEA 0x3e8(%RBX),%RSI</td><td>1</td><td>0.50</td><td>0.50</td><td>0</td><td>0</td><td>0</td><td>0</td><td>1</td><td>0.50</td></tr><tr><td>MOV %R15,%RDI</td><td>1</td><td>0.33</td><td>0.33</td><td>0</td><td>0</td><td>0</td><td>0.33</td><td>1</td><td>0.33</td></tr><tr><td>ADD $0x4b0,%RBX</td><td>1</td><td>0.33</td><td>0.33</td><td>0</td><td>0</td><td>0</td><td>0.33</td><td>1</td><td>0.33</td></tr><tr><td>ADD %R14,%RDX</td><td>1</td><td>0.33</td><td>0.33</td><td>0</td><td>0</td><td>0</td><td>0.33</td><td>1</td><td>0.33</td></tr><tr><td>CALL 19f90 <binvcrhs_></td><td>3</td><td>0</td><td>0</td><td>0.50</td><td>0.50</td><td>1</td><td>1</td><td>0</td><td>2</td></tr><tr><td>CMP 0x8(%RSP),%RBX</td><td>1</td><td>0.33</td><td>0.33</td><td>0.50</td><td>0.50</td><td>0</td><td>0.33</td><td>1</td><td>0.50</td></tr><tr><td>JNE 15032 <x_solve_._omp_fn.0+0x1fb2></td><td>1</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0</td><td>1</td><td>0</td><td>1-2</td></tr></table>",
        },
      },
      header = {
        "Warnings:\nDetected a function call instruction: ignoring called function instructions.\nRerun with --follow-calls=append to include them to analysis  or with --follow-calls=inline to simulate inlining.",
        "0% of peak computational performance is used (0.00 out of 2.00 FLOP per cycle (GFLOPS @ 1GHz))",
      },
      brief = {
      },
      gain = {
        {
          workaround = "<ul><li>Try another compiler or update/tune your current one:\n<ul><li>recompile with fassociative-math (included in Ofast or ffast-math) to extend loop vectorization to FP reductions.</li></ul></li><li>Remove inter-iterations dependences from your loop and make it unit-stride:\n<ul><li>If your arrays have 2 or more dimensions, check whether elements are accessed contiguously and, otherwise, try to permute loops accordingly:\nFortran storage order is column-major: do i do j a(i,j) = b(i,j) (slow, non stride 1) =&gt; do i do j a(j,i) = b(i,j) (fast, stride 1)</li><li>If your loop streams arrays of structures (AoS), try to use structures of arrays instead (SoA):\ndo i a(i)%x = b(i)%x (slow, non stride 1) =&gt; do i a%x(i) = b%x(i) (fast, stride 1)</li></ul></li></ul>",
          details = "All SSE/AVX instructions are used in scalar version (process only one data element in vector registers).\nSince your execution units are vector units, only a vectorized loop can use their full power.\n",
          title = "Vectorization",
          txt = "Your loop is not vectorized.\n2 data elements could be processed at once in vector registers.\nBy vectorizing your loop, you can lower the cost of an iteration from 12.25 to 6.12 cycles (2.00x speedup).",
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
      "The loop is defined in /users/user2210/NPB3.4-MZ-MPI/BT-MZ/x_solve.f90:341,347,354,363.\n",
      "The related source loop is not unrolled or unrolled with no peel/tail loop.",
    },
    nb_paths = 1,
  },
}
