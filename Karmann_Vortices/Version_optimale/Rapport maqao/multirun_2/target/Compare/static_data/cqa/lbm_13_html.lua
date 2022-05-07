_cqa_text_report = {
  paths = {
    {
      hint = {
        {
          workaround = "Avoid mixing data with different types. In particular, check if the type of constants is the same as array elements.",
          details = "<ul><li>VCVTUSI2SD (INT32/64 to FP64, scalar): 1 occurrences</li></ul>",
          title = "Conversion instructions",
          txt = "Detected expensive conversion instructions.",
        },
        {
          title = "Type of elements and instruction set",
          txt = "No instructions are processing arithmetic or math operations on FP elements. This loop is probably writing/copying data or processing integer elements.",
        },
        {
          title = "Matching between your loop (in the source code) and the binary loop",
          txt = "The binary loop does not contain any FP arithmetical operations.\nThe binary loop does not load or store any data.",
        },
      },
      expert = {
        {
          title = "General properties",
          txt = "<table><tr><td>nb instructions</td><td>7</td></tr><tr><td>loop length</td><td>28</td></tr><tr><td>used x86 registers</td><td>4</td></tr><tr><td>used mmx registers</td><td>0</td></tr><tr><td>used xmm registers</td><td>1</td></tr><tr><td>used ymm registers</td><td>0</td></tr><tr><td>used zmm registers</td><td>0</td></tr><tr><td>nb stack references</td><td>0</td></tr></table>",
        },
        {
          title = "Front-end",
          txt = "MACRO FUSION NOT POSSIBLE\n<table><tr><td>instruction fetch</td><td>2.00 cycles</td></tr><tr><td>instruction queue</td><td>3.50 cycles</td></tr><tr><td>decoding</td><td>3.50 cycles</td></tr><tr><td>micro-operation queue</td><td>4.00 cycles</td></tr><tr><td>front end</td><td>4.00 cycles</td></tr></table>",
        },
        {
          title = "Back-end",
          txt = "<table><tr><th>      </th><th>P0</th><th>P1</th><th>P2</th><th>P3</th><th>P4</th><th>P5</th><th>P6</th></tr><tr><td>uops</td><td>1.00</td><td>0.00</td><td>0.00</td><td>0.00</td><td>2.50</td><td>2.50</td><td>0.00</td></tr><tr><td>cycles</td><td>1.00</td><td>0.00</td><td>0.00</td><td>0.00</td><td>2.50</td><td>2.50</td><td>0.00</td></tr></table>\n<table><tr><td>Cycles executing div or sqrt instructions</td><td>NA</td></tr></table>",
        },
        {
          title = "Cycles summary",
          txt = "<table><tr><td>Front-end</td><td>4.00</td></tr><tr><td>Dispatch</td><td>2.50</td></tr><tr><td>Overall L1</td><td>4.00</td></tr></table>",
        },
        {
          title = "Vectorization ratios",
          txt = "<table><tr><td>all</td><td>0%</td></tr><tr><td>load</td><td>NA (no load vectorizable/vectorized instructions)</td></tr><tr><td>store</td><td>NA (no store vectorizable/vectorized instructions)</td></tr><tr><td>mul</td><td>NA (no mul vectorizable/vectorized instructions)</td></tr><tr><td>add-sub</td><td>NA (no add-sub vectorizable/vectorized instructions)</td></tr><tr><td>fma</td><td>NA (no fma vectorizable/vectorized instructions)</td></tr><tr><td>div/sqrt</td><td>NA (no div/sqrt vectorizable/vectorized instructions)</td></tr><tr><td>other</td><td>0%</td></tr></table>",
        },
        {
          title = "Vector efficiency ratios",
          txt = "<table><tr><td>all</td><td>9%</td></tr><tr><td>load</td><td>NA (no load vectorizable/vectorized instructions)</td></tr><tr><td>store</td><td>NA (no store vectorizable/vectorized instructions)</td></tr><tr><td>mul</td><td>NA (no mul vectorizable/vectorized instructions)</td></tr><tr><td>add-sub</td><td>NA (no add-sub vectorizable/vectorized instructions)</td></tr><tr><td>fma</td><td>NA (no fma vectorizable/vectorized instructions)</td></tr><tr><td>div/sqrt</td><td>NA (no div/sqrt vectorizable/vectorized instructions)</td></tr><tr><td>other</td><td>9%</td></tr></table>",
        },
        {
          title = "Cycles and memory resources usage",
          txt = "Assuming all data fit into the L1 cache, each iteration of the binary loop takes 4.00 cycles. At this rate:\n<ul></ul>",
        },
        {
          title = "Front-end bottlenecks",
          txt = "Performance is limited by instruction throughput (loading/decoding program instructions to execution core) (front-end is a bottleneck).\n\nBy removing all these bottlenecks, you can lower the cost of an iteration from 4.00 to 3.50 cycles (1.14x speedup).\n",
        },
        {
          title = "ASM code",
          txt = "In the binary file, the address of the loop is: 33f0\n\n<table><tr><th>Instruction</th><th>Nb FU</th><th>P0</th><th>P1</th><th>P2</th><th>P3</th><th>P4</th><th>P5</th><th>P6</th><th>Latency</th><th>Recip. throughput</th></tr><tr><td>VCVTUSI2SD %R10,%XMM2,%XMM2</td><td>1</td><td>1</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0</td><td>5</td><td>1</td></tr><tr><td>XOR %EDX,%EDX</td></tr><tr><td>JMP 340e <propagation._omp_fn.0+0x9e></td><td>1</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0</td><td>1</td><td>0</td><td>0</td><td>2</td></tr><tr><td>NOPL (%RAX,%RAX,1)</td><td>1</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0.50</td><td>0.50</td><td>0</td><td>0</td><td>0.50</td></tr><tr><td>LEA 0x1(%R10),%R10</td><td>1</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0.50</td><td>0.50</td><td>0</td><td>1</td><td>0.50</td></tr><tr><td>CMP %R10,%R12</td><td>1</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0.50</td><td>0.50</td><td>0</td><td>1</td><td>0.50</td></tr><tr><td>JNE 33f0 <propagation._omp_fn.0+0x80></td><td>1</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0</td><td>1</td><td>0</td><td>0</td><td>1-2</td></tr></table>",
        },
      },
      header = {
        "0% of peak computational performance is used (0.00 out of 4.00 FLOP per cycle (GFLOPS @ 1GHz))",
      },
      brief = {
      },
      gain = {
        {
          workaround = "<ul><li>Try to reorganize arrays of structures to structures of arrays</li><li>Consider to permute loops (see vectorization gain report)</li></ul>",
          title = "Code clean check",
          txt = "Detected a slowdown caused by scalar integer instructions (typically used for address computation).\nBy removing them, you can lower the cost of an iteration from 4.00 to 2.00 cycles (2.00x speedup).",
        },
        {
          workaround = "<ul><li>Try another compiler or update/tune your current one</li><li>Remove inter-iterations dependences from your loop and make it unit-stride:\n<ul><li>If your arrays have 2 or more dimensions, check whether elements are accessed contiguously and, otherwise, try to permute loops accordingly:\nC storage order is row-major: for(i) for(j) a[j][i] = b[j][i]; (slow, non stride 1) =&gt; for(i) for(j) a[i][j] = b[i][j]; (fast, stride 1)</li><li>If your loop streams arrays of structures (AoS), try to use structures of arrays instead (SoA):\nfor(i) a[i].x = b[i].x; (slow, non stride 1) =&gt; for(i) a.x[i] = b.x[i]; (fast, stride 1)</li></ul></li></ul>",
          details = "All SSE/AVX instructions are used in scalar version (process only one data element in vector registers).\nSince your execution units are vector units, only a vectorized loop can use their full power.\n",
          title = "Vectorization",
          txt = "Your loop is not vectorized.\nOnly 9% of vector register length is used (average across all SSE/AVX instructions).\nBy vectorizing your loop, you can lower the cost of an iteration from 4.00 to 0.29 cycles (14.00x speedup).",
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
          workaround = "Avoid mixing data with different types. In particular, check if the type of constants is the same as array elements.",
          details = "<ul><li>VCVTUSI2SD (INT32/64 to FP64, scalar): 1 occurrences</li></ul>",
          title = "Conversion instructions",
          txt = "Detected expensive conversion instructions.",
        },
        {
          title = "Type of elements and instruction set",
          txt = "No instructions are processing arithmetic or math operations on FP elements. This loop is probably writing/copying data or processing integer elements.",
        },
        {
          title = "Matching between your loop (in the source code) and the binary loop",
          txt = "The binary loop does not contain any FP arithmetical operations.\nThe binary loop does not load or store any data.",
        },
      },
      expert = {
        {
          title = "General properties",
          txt = "<table><tr><td>nb instructions</td><td>7</td></tr><tr><td>loop length</td><td>28</td></tr><tr><td>used x86 registers</td><td>4</td></tr><tr><td>used mmx registers</td><td>0</td></tr><tr><td>used xmm registers</td><td>1</td></tr><tr><td>used ymm registers</td><td>0</td></tr><tr><td>used zmm registers</td><td>0</td></tr><tr><td>nb stack references</td><td>0</td></tr></table>",
        },
        {
          title = "Front-end",
          txt = "MACRO FUSION NOT POSSIBLE\n<table><tr><td>instruction fetch</td><td>2.00 cycles</td></tr><tr><td>instruction queue</td><td>3.50 cycles</td></tr><tr><td>decoding</td><td>3.50 cycles</td></tr><tr><td>micro-operation queue</td><td>4.00 cycles</td></tr><tr><td>front end</td><td>4.00 cycles</td></tr></table>",
        },
        {
          title = "Back-end",
          txt = "<table><tr><th>      </th><th>P0</th><th>P1</th><th>P2</th><th>P3</th><th>P4</th><th>P5</th><th>P6</th></tr><tr><td>uops</td><td>1.00</td><td>0.00</td><td>0.00</td><td>0.00</td><td>2.50</td><td>2.50</td><td>0.00</td></tr><tr><td>cycles</td><td>1.00</td><td>0.00</td><td>0.00</td><td>0.00</td><td>2.50</td><td>2.50</td><td>0.00</td></tr></table>\n<table><tr><td>Cycles executing div or sqrt instructions</td><td>NA</td></tr></table>",
        },
        {
          title = "Cycles summary",
          txt = "<table><tr><td>Front-end</td><td>4.00</td></tr><tr><td>Dispatch</td><td>2.50</td></tr><tr><td>Overall L1</td><td>4.00</td></tr></table>",
        },
        {
          title = "Vectorization ratios",
          txt = "<table><tr><td>all</td><td>0%</td></tr><tr><td>load</td><td>NA (no load vectorizable/vectorized instructions)</td></tr><tr><td>store</td><td>NA (no store vectorizable/vectorized instructions)</td></tr><tr><td>mul</td><td>NA (no mul vectorizable/vectorized instructions)</td></tr><tr><td>add-sub</td><td>NA (no add-sub vectorizable/vectorized instructions)</td></tr><tr><td>fma</td><td>NA (no fma vectorizable/vectorized instructions)</td></tr><tr><td>div/sqrt</td><td>NA (no div/sqrt vectorizable/vectorized instructions)</td></tr><tr><td>other</td><td>0%</td></tr></table>",
        },
        {
          title = "Vector efficiency ratios",
          txt = "<table><tr><td>all</td><td>9%</td></tr><tr><td>load</td><td>NA (no load vectorizable/vectorized instructions)</td></tr><tr><td>store</td><td>NA (no store vectorizable/vectorized instructions)</td></tr><tr><td>mul</td><td>NA (no mul vectorizable/vectorized instructions)</td></tr><tr><td>add-sub</td><td>NA (no add-sub vectorizable/vectorized instructions)</td></tr><tr><td>fma</td><td>NA (no fma vectorizable/vectorized instructions)</td></tr><tr><td>div/sqrt</td><td>NA (no div/sqrt vectorizable/vectorized instructions)</td></tr><tr><td>other</td><td>9%</td></tr></table>",
        },
        {
          title = "Cycles and memory resources usage",
          txt = "Assuming all data fit into the L1 cache, each iteration of the binary loop takes 4.00 cycles. At this rate:\n<ul></ul>",
        },
        {
          title = "Front-end bottlenecks",
          txt = "Performance is limited by instruction throughput (loading/decoding program instructions to execution core) (front-end is a bottleneck).\n\nBy removing all these bottlenecks, you can lower the cost of an iteration from 4.00 to 3.50 cycles (1.14x speedup).\n",
        },
        {
          title = "ASM code",
          txt = "In the binary file, the address of the loop is: 33f0\n\n<table><tr><th>Instruction</th><th>Nb FU</th><th>P0</th><th>P1</th><th>P2</th><th>P3</th><th>P4</th><th>P5</th><th>P6</th><th>Latency</th><th>Recip. throughput</th></tr><tr><td>VCVTUSI2SD %R10,%XMM2,%XMM2</td><td>1</td><td>1</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0</td><td>5</td><td>1</td></tr><tr><td>XOR %EDX,%EDX</td></tr><tr><td>JMP 340e <propagation._omp_fn.0+0x9e></td><td>1</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0</td><td>1</td><td>0</td><td>0</td><td>2</td></tr><tr><td>NOPL (%RAX,%RAX,1)</td><td>1</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0.50</td><td>0.50</td><td>0</td><td>0</td><td>0.50</td></tr><tr><td>LEA 0x1(%R10),%R10</td><td>1</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0.50</td><td>0.50</td><td>0</td><td>1</td><td>0.50</td></tr><tr><td>CMP %R10,%R12</td><td>1</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0.50</td><td>0.50</td><td>0</td><td>1</td><td>0.50</td></tr><tr><td>JNE 33f0 <propagation._omp_fn.0+0x80></td><td>1</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0</td><td>1</td><td>0</td><td>0</td><td>1-2</td></tr></table>",
        },
      },
      header = {
        "0% of peak computational performance is used (0.00 out of 4.00 FLOP per cycle (GFLOPS @ 1GHz))",
      },
      brief = {
      },
      gain = {
        {
          workaround = "<ul><li>Try to reorganize arrays of structures to structures of arrays</li><li>Consider to permute loops (see vectorization gain report)</li></ul>",
          title = "Code clean check",
          txt = "Detected a slowdown caused by scalar integer instructions (typically used for address computation).\nBy removing them, you can lower the cost of an iteration from 4.00 to 2.00 cycles (2.00x speedup).",
        },
        {
          workaround = "<ul><li>Try another compiler or update/tune your current one</li><li>Remove inter-iterations dependences from your loop and make it unit-stride:\n<ul><li>If your arrays have 2 or more dimensions, check whether elements are accessed contiguously and, otherwise, try to permute loops accordingly:\nC storage order is row-major: for(i) for(j) a[j][i] = b[j][i]; (slow, non stride 1) =&gt; for(i) for(j) a[i][j] = b[i][j]; (fast, stride 1)</li><li>If your loop streams arrays of structures (AoS), try to use structures of arrays instead (SoA):\nfor(i) a[i].x = b[i].x; (slow, non stride 1) =&gt; for(i) a.x[i] = b.x[i]; (fast, stride 1)</li></ul></li></ul>",
          details = "All SSE/AVX instructions are used in scalar version (process only one data element in vector registers).\nSince your execution units are vector units, only a vectorized loop can use their full power.\n",
          title = "Vectorization",
          txt = "Your loop is not vectorized.\nOnly 9% of vector register length is used (average across all SSE/AVX instructions).\nBy vectorizing your loop, you can lower the cost of an iteration from 4.00 to 0.29 cycles (14.00x speedup).",
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
      "The loop is defined in:\n<ul><li>/users/user2207/lbm_opt/include/lbm_struct.h:130</li><li>/users/user2207/lbm_opt/src/lbm_phys.c:233-242</li></ul>\n",
      "Warnings:\n<ul><li>Non-innermost loop: analyzing only self part (ignoring child loops).</li><li>Ignoring paths for analysis</li><li>Too many paths. If you really need to analyze all of the 65536 paths individually, rerun with max-paths=65536</li><li>RecMII not computed since number of paths is unknown or > max_paths</li><li>Streams not analyzed since number of paths is unknown or > max_paths</li></ul>",
      "Try to simplify control and/or increase the maximum number of paths per function/loop through the 'max-paths-nb' option.\n",
      "This loop has 65536 execution paths.\n",
      "The presence of multiple execution paths is typically the main/first bottleneck.\nTry to simplify control inside loop: ideally, try to remove all conditional expressions, for example by (if applicable):\n<ul><li>hoisting them (moving them outside the loop)</li><li>turning them into conditional moves, MIN or MAX</li></ul>\n",
      "Ex: if (x&lt;0) x=0 =&gt; x = (x&lt;0 ? 0 : x) (or MAX(0,x) after defining the corresponding macro)\n",
    },
    nb_paths = 65536,
  },
}
