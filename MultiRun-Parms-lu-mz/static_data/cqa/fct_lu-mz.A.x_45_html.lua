_cqa_text_report = {
  paths = {
    {
      hint = {
        {
          details = "Calling (and then returning from) a function prevents many compiler optimizations (like vectorization), breaks control flow (which reduces pipeline performance) and executes extra instructions to save/restore the registers used inside it, which is very expensive (dozens of cycles). Consider to inline small functions.\n<ul><li>unknown: 2 occurrences</li></ul>",
          title = "CALL instructions",
          txt = "Detected function call instructions.\n",
        },
        {
          workaround = "Avoid mixing data with different types. In particular, check if the type of constants is the same as array elements.",
          details = "<ul><li>CLTQ: 1 occurrences</li></ul>",
          title = "Conversion instructions",
          txt = "Detected expensive conversion instructions.",
        },
        {
          title = "Type of elements and instruction set",
          txt = "No instructions are processing arithmetic or math operations on FP elements. This function is probably writing/copying data or processing integer elements.",
        },
        {
          title = "Matching between your function (in the source code) and the binary function",
          txt = "The binary function does not contain any FP arithmetical operations.\nThe binary function is loading 4 bytes.\nThe binary function is storing 20 bytes.",
        },
      },
      expert = {
        {
          title = "General properties",
          txt = "<table><tr><td>nb instructions</td><td>20</td></tr><tr><td>loop length</td><td>105</td></tr><tr><td>used x86 registers</td><td>4</td></tr><tr><td>used mmx registers</td><td>0</td></tr><tr><td>used xmm registers</td><td>0</td></tr><tr><td>used ymm registers</td><td>0</td></tr><tr><td>used zmm registers</td><td>0</td></tr><tr><td>nb stack references</td><td>2</td></tr></table>",
        },
        {
          title = "Front-end",
          txt = "MACRO FUSION NOT POSSIBLE\n<table><tr><td>instruction fetch</td><td>7.00 cycles</td></tr><tr><td>instruction queue</td><td>10.00 cycles</td></tr><tr><td>decoding</td><td>10.00 cycles</td></tr><tr><td>micro-operation queue</td><td>11.00 cycles</td></tr><tr><td>front end</td><td>11.00 cycles</td></tr></table>",
        },
        {
          title = "Back-end",
          txt = "<table><tr><th>      </th><th>P0</th><th>P1</th><th>P2</th><th>P3</th><th>P4</th><th>P5</th><th>P6</th></tr><tr><td>uops</td><td>0.00</td><td>0.00</td><td>3.00</td><td>3.00</td><td>5.50</td><td>5.50</td><td>5.00</td></tr><tr><td>cycles</td><td>0.00</td><td>0.00</td><td>3.00</td><td>3.00</td><td>5.50</td><td>5.50</td><td>5.00</td></tr></table>\n<table><tr><td>Cycles executing div or sqrt instructions</td><td>NA</td></tr></table>",
        },
        {
          title = "Cycles summary",
          txt = "<table><tr><td>Front-end</td><td>11.00</td></tr><tr><td>Dispatch</td><td>5.50</td></tr><tr><td>Overall L1</td><td>11.00</td></tr></table>",
        },
        {
          title = "Vectorization ratios",
          txt = "<table><tr><td>all</td><td>0%</td></tr><tr><td>load</td><td>NA (no load vectorizable/vectorized instructions)</td></tr><tr><td>store</td><td>0%</td></tr><tr><td>mul</td><td>NA (no mul vectorizable/vectorized instructions)</td></tr><tr><td>add-sub</td><td>NA (no add-sub vectorizable/vectorized instructions)</td></tr><tr><td>fma</td><td>NA (no fma vectorizable/vectorized instructions)</td></tr><tr><td>div/sqrt</td><td>NA (no div/sqrt vectorizable/vectorized instructions)</td></tr><tr><td>other</td><td>0%</td></tr></table>",
        },
        {
          title = "Vector efficiency ratios",
          txt = "<table><tr><td>all</td><td>7%</td></tr><tr><td>load</td><td>NA (no load vectorizable/vectorized instructions)</td></tr><tr><td>store</td><td>6%</td></tr><tr><td>mul</td><td>NA (no mul vectorizable/vectorized instructions)</td></tr><tr><td>add-sub</td><td>NA (no add-sub vectorizable/vectorized instructions)</td></tr><tr><td>fma</td><td>NA (no fma vectorizable/vectorized instructions)</td></tr><tr><td>div/sqrt</td><td>NA (no div/sqrt vectorizable/vectorized instructions)</td></tr><tr><td>other</td><td>8%</td></tr></table>",
        },
        {
          title = "Cycles and memory resources usage",
          txt = "Assuming all data fit into the L1 cache, each call to the function takes 11.00 cycles. At this rate:\n<ul><li>0% of peak load performance is reached (0.36 out of 128.00 bytes loaded per cycle (GB/s @ 1GHz))</li><li>2% of peak store performance is reached (1.82 out of 64.00 bytes stored per cycle (GB/s @ 1GHz))</li></ul>",
        },
        {
          title = "Front-end bottlenecks",
          txt = "Performance is limited by instruction throughput (loading/decoding program instructions to execution core) (front-end is a bottleneck).\n\nBy removing all these bottlenecks, you can lower the cost of an iteration from 11.00 to 10.00 cycles (1.10x speedup).\n",
        },
        {
          title = "ASM code",
          txt = "In the binary file, the address of the function is: 2cc40\n\n<table><tr><th>Instruction</th><th>Nb FU</th><th>P0</th><th>P1</th><th>P2</th><th>P3</th><th>P4</th><th>P5</th><th>P6</th><th>Latency</th><th>Recip. throughput</th></tr><tr><td>LEA -0x8(%RSP),%RSP</td><td>1</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0.50</td><td>0.50</td><td>0</td><td>1</td><td>0.50</td></tr><tr><td>XOR %EAX,%EAX</td></tr><tr><td>MOVL $0,%FS:-0x10</td><td>1</td><td>0</td><td>0</td><td>0.50</td><td>0.50</td><td>0</td><td>0</td><td>1</td><td>1</td><td>1</td></tr><tr><td>CALL 2210 <@plt_start@+0x1f0></td><td>1</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0.50</td><td>0.50</td><td>0</td><td>0</td><td>2</td></tr><tr><td>SUB $0x1,%EAX</td><td>1</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0.50</td><td>0.50</td><td>0</td><td>1</td><td>0.50</td></tr><tr><td>MOV $0x20,%EDX</td><td>1</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0.50</td><td>0.50</td><td>0</td><td>1</td><td>0.50</td></tr><tr><td>MOVL $0,%FS:-0xc</td><td>1</td><td>0</td><td>0</td><td>0.50</td><td>0.50</td><td>0</td><td>0</td><td>1</td><td>1</td><td>1</td></tr><tr><td>CMP $0x20,%EAX</td><td>1</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0.50</td><td>0.50</td><td>0</td><td>1</td><td>0.50</td></tr><tr><td>CMOVG %EDX,%EAX</td><td>1</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0.50</td><td>0.50</td><td>0</td><td>2</td><td>1</td></tr><tr><td>MOV %EAX,%FS:-0x10</td><td>1</td><td>0</td><td>0</td><td>0.50</td><td>0.50</td><td>0</td><td>0</td><td>1</td><td>0</td><td>1</td></tr><tr><td>XOR %EAX,%EAX</td></tr><tr><td>CALL 2300 <@plt_start@+0x2e0></td><td>1</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0.50</td><td>0.50</td><td>0</td><td>0</td><td>2</td></tr><tr><td>MOV %EAX,%FS:-0xc</td><td>1</td><td>0</td><td>0</td><td>0.50</td><td>0.50</td><td>0</td><td>0</td><td>1</td><td>0</td><td>1</td></tr><tr><td>CMP %FS:-0x10,%EAX</td><td>1</td><td>0</td><td>0</td><td>1</td><td>0</td><td>0.50</td><td>0.50</td><td>0</td><td>1</td><td>1</td></tr><tr><td>JG 2cca3 <sync_init_+0x63></td><td>1</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0</td><td>1</td><td>0</td><td>0</td><td>1-2</td></tr><tr><td>CLTQ</td></tr><tr><td>LEA 0x24064(%RIP),%RCX</td><td>1</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0.50</td><td>0.50</td><td>0</td><td>1</td><td>0.50</td></tr><tr><td>MOVL $0,(%RCX,%RAX,4)</td><td>1</td><td>0</td><td>0</td><td>0.50</td><td>0.50</td><td>0</td><td>0</td><td>1</td><td>1</td><td>1</td></tr><tr><td>LEA 0x8(%RSP),%RSP</td><td>1</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0.50</td><td>0.50</td><td>0</td><td>1</td><td>0.50</td></tr><tr><td>RET</td></tr></table>",
        },
      },
      header = {
        "Warnings:\nget_path_cqa_results:\n<ul><li>Detected a function call instruction: ignoring called function instructions.\nRerun with --follow-calls=append to include them to analysis  or with --follow-calls=inline to simulate inlining.</li></ul>",
        "0% of peak computational performance is used (0.00 out of 4.00 FLOP per cycle (GFLOPS @ 1GHz))",
      },
      brief = {
      },
      gain = {
        {
          workaround = "<ul><li>Try another compiler or update/tune your current one</li><li>Make array accesses unit-stride:\n<ul><li>If your function streams arrays of structures (AoS), try to use structures of arrays instead (SoA):\ndo i a(i)%x = b(i)%x (slow, non stride 1) =&gt; do i a%x(i) = b%x(i) (fast, stride 1)</li></ul></li></ul>",
          details = "All SSE/AVX instructions are used in scalar version (process only one data element in vector registers).\nSince your execution units are vector units, only a vectorized function can use their full power.\n",
          title = "Vectorization",
          txt = "Your function is not vectorized.\nOnly 7% of vector register length is used (average across all SSE/AVX instructions).\nBy vectorizing your function, you can lower the cost of an iteration from 11.00 to 0.72 cycles (15.24x speedup).",
        },
        {
          title = "Execution units bottlenecks",
          txt = "Found no such bottlenecks but see expert reports for more complex bottlenecks.",
        },
      },
      potential = {
      },
    },
    {
      hint = {
        {
          details = "Calling (and then returning from) a function prevents many compiler optimizations (like vectorization), breaks control flow (which reduces pipeline performance) and executes extra instructions to save/restore the registers used inside it, which is very expensive (dozens of cycles). Consider to inline small functions.\n<ul><li>unknown: 2 occurrences</li></ul>",
          title = "CALL instructions",
          txt = "Detected function call instructions.\n",
        },
        {
          title = "Type of elements and instruction set",
          txt = "No instructions are processing arithmetic or math operations on FP elements. This function is probably writing/copying data or processing integer elements.",
        },
        {
          title = "Matching between your function (in the source code) and the binary function",
          txt = "The binary function does not contain any FP arithmetical operations.\nThe binary function is loading 4 bytes.\nThe binary function is storing 16 bytes.",
        },
      },
      expert = {
        {
          title = "General properties",
          txt = "<table><tr><td>nb instructions</td><td>17</td></tr><tr><td>loop length</td><td>89</td></tr><tr><td>used x86 registers</td><td>3</td></tr><tr><td>used mmx registers</td><td>0</td></tr><tr><td>used xmm registers</td><td>0</td></tr><tr><td>used ymm registers</td><td>0</td></tr><tr><td>used zmm registers</td><td>0</td></tr><tr><td>nb stack references</td><td>2</td></tr></table>",
        },
        {
          title = "Front-end",
          txt = "MACRO FUSION NOT POSSIBLE\n<table><tr><td>instruction fetch</td><td>6.00 cycles</td></tr><tr><td>instruction queue</td><td>8.50 cycles</td></tr><tr><td>decoding</td><td>8.50 cycles</td></tr><tr><td>micro-operation queue</td><td>10.00 cycles</td></tr><tr><td>front end</td><td>10.00 cycles</td></tr></table>",
        },
        {
          title = "Back-end",
          txt = "<table><tr><th>      </th><th>P0</th><th>P1</th><th>P2</th><th>P3</th><th>P4</th><th>P5</th><th>P6</th></tr><tr><td>uops</td><td>0.00</td><td>0.00</td><td>2.50</td><td>2.50</td><td>5.00</td><td>5.00</td><td>4.00</td></tr><tr><td>cycles</td><td>0.00</td><td>0.00</td><td>2.50</td><td>2.50</td><td>5.00</td><td>5.00</td><td>4.00</td></tr></table>\n<table><tr><td>Cycles executing div or sqrt instructions</td><td>NA</td></tr></table>",
        },
        {
          title = "Cycles summary",
          txt = "<table><tr><td>Front-end</td><td>10.00</td></tr><tr><td>Dispatch</td><td>5.00</td></tr><tr><td>Overall L1</td><td>10.00</td></tr></table>",
        },
        {
          title = "Vectorization ratios",
          txt = "<table><tr><td>all</td><td>0%</td></tr><tr><td>load</td><td>NA (no load vectorizable/vectorized instructions)</td></tr><tr><td>store</td><td>0%</td></tr><tr><td>mul</td><td>NA (no mul vectorizable/vectorized instructions)</td></tr><tr><td>add-sub</td><td>NA (no add-sub vectorizable/vectorized instructions)</td></tr><tr><td>fma</td><td>NA (no fma vectorizable/vectorized instructions)</td></tr><tr><td>div/sqrt</td><td>NA (no div/sqrt vectorizable/vectorized instructions)</td></tr><tr><td>other</td><td>0%</td></tr></table>",
        },
        {
          title = "Vector efficiency ratios",
          txt = "<table><tr><td>all</td><td>6%</td></tr><tr><td>load</td><td>NA (no load vectorizable/vectorized instructions)</td></tr><tr><td>store</td><td>6%</td></tr><tr><td>mul</td><td>NA (no mul vectorizable/vectorized instructions)</td></tr><tr><td>add-sub</td><td>NA (no add-sub vectorizable/vectorized instructions)</td></tr><tr><td>fma</td><td>NA (no fma vectorizable/vectorized instructions)</td></tr><tr><td>div/sqrt</td><td>NA (no div/sqrt vectorizable/vectorized instructions)</td></tr><tr><td>other</td><td>6%</td></tr></table>",
        },
        {
          title = "Cycles and memory resources usage",
          txt = "Assuming all data fit into the L1 cache, each call to the function takes 10.00 cycles. At this rate:\n<ul><li>0% of peak load performance is reached (0.40 out of 128.00 bytes loaded per cycle (GB/s @ 1GHz))</li><li>2% of peak store performance is reached (1.60 out of 64.00 bytes stored per cycle (GB/s @ 1GHz))</li></ul>",
        },
        {
          title = "Front-end bottlenecks",
          txt = "Performance is limited by instruction throughput (loading/decoding program instructions to execution core) (front-end is a bottleneck).\n\nBy removing all these bottlenecks, you can lower the cost of an iteration from 10.00 to 8.50 cycles (1.18x speedup).\n",
        },
        {
          title = "ASM code",
          txt = "In the binary file, the address of the function is: 2cc40\n\n<table><tr><th>Instruction</th><th>Nb FU</th><th>P0</th><th>P1</th><th>P2</th><th>P3</th><th>P4</th><th>P5</th><th>P6</th><th>Latency</th><th>Recip. throughput</th></tr><tr><td>LEA -0x8(%RSP),%RSP</td><td>1</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0.50</td><td>0.50</td><td>0</td><td>1</td><td>0.50</td></tr><tr><td>XOR %EAX,%EAX</td></tr><tr><td>MOVL $0,%FS:-0x10</td><td>1</td><td>0</td><td>0</td><td>0.50</td><td>0.50</td><td>0</td><td>0</td><td>1</td><td>1</td><td>1</td></tr><tr><td>CALL 2210 <@plt_start@+0x1f0></td><td>1</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0.50</td><td>0.50</td><td>0</td><td>0</td><td>2</td></tr><tr><td>SUB $0x1,%EAX</td><td>1</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0.50</td><td>0.50</td><td>0</td><td>1</td><td>0.50</td></tr><tr><td>MOV $0x20,%EDX</td><td>1</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0.50</td><td>0.50</td><td>0</td><td>1</td><td>0.50</td></tr><tr><td>MOVL $0,%FS:-0xc</td><td>1</td><td>0</td><td>0</td><td>0.50</td><td>0.50</td><td>0</td><td>0</td><td>1</td><td>1</td><td>1</td></tr><tr><td>CMP $0x20,%EAX</td><td>1</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0.50</td><td>0.50</td><td>0</td><td>1</td><td>0.50</td></tr><tr><td>CMOVG %EDX,%EAX</td><td>1</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0.50</td><td>0.50</td><td>0</td><td>2</td><td>1</td></tr><tr><td>MOV %EAX,%FS:-0x10</td><td>1</td><td>0</td><td>0</td><td>0.50</td><td>0.50</td><td>0</td><td>0</td><td>1</td><td>0</td><td>1</td></tr><tr><td>XOR %EAX,%EAX</td></tr><tr><td>CALL 2300 <@plt_start@+0x2e0></td><td>1</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0.50</td><td>0.50</td><td>0</td><td>0</td><td>2</td></tr><tr><td>MOV %EAX,%FS:-0xc</td><td>1</td><td>0</td><td>0</td><td>0.50</td><td>0.50</td><td>0</td><td>0</td><td>1</td><td>0</td><td>1</td></tr><tr><td>CMP %FS:-0x10,%EAX</td><td>1</td><td>0</td><td>0</td><td>1</td><td>0</td><td>0.50</td><td>0.50</td><td>0</td><td>1</td><td>1</td></tr><tr><td>JG 2cca3 <sync_init_+0x63></td><td>1</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0</td><td>1</td><td>0</td><td>0</td><td>1-2</td></tr><tr><td>LEA 0x8(%RSP),%RSP</td><td>1</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0.50</td><td>0.50</td><td>0</td><td>1</td><td>0.50</td></tr><tr><td>RET</td></tr></table>",
        },
      },
      header = {
        "Warnings:\nget_path_cqa_results:\n<ul><li>Detected a function call instruction: ignoring called function instructions.\nRerun with --follow-calls=append to include them to analysis  or with --follow-calls=inline to simulate inlining.</li></ul>",
        "0% of peak computational performance is used (0.00 out of 4.00 FLOP per cycle (GFLOPS @ 1GHz))",
      },
      brief = {
      },
      gain = {
        {
          workaround = "<ul><li>Try another compiler or update/tune your current one</li><li>Make array accesses unit-stride:\n<ul><li>If your function streams arrays of structures (AoS), try to use structures of arrays instead (SoA):\ndo i a(i)%x = b(i)%x (slow, non stride 1) =&gt; do i a%x(i) = b%x(i) (fast, stride 1)</li></ul></li></ul>",
          details = "All SSE/AVX instructions are used in scalar version (process only one data element in vector registers).\nSince your execution units are vector units, only a vectorized function can use their full power.\n",
          title = "Vectorization",
          txt = "Your function is not vectorized.\n16 data elements could be processed at once in vector registers.\nBy vectorizing your function, you can lower the cost of an iteration from 10.00 to 0.62 cycles (16.00x speedup).",
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
          details = "Calling (and then returning from) a function prevents many compiler optimizations (like vectorization), breaks control flow (which reduces pipeline performance) and executes extra instructions to save/restore the registers used inside it, which is very expensive (dozens of cycles). Consider to inline small functions.\n<ul><li>unknown: 2 occurrences</li></ul>",
          title = "CALL instructions",
          txt = "Detected function call instructions.\n",
        },
        {
          workaround = "Avoid mixing data with different types. In particular, check if the type of constants is the same as array elements.",
          details = "<ul><li>CLTQ: 1 occurrences</li></ul>",
          title = "Conversion instructions",
          txt = "Detected expensive conversion instructions.",
        },
        {
          title = "Type of elements and instruction set",
          txt = "No instructions are processing arithmetic or math operations on FP elements. This function is probably writing/copying data or processing integer elements.",
        },
        {
          title = "Matching between your function (in the source code) and the binary function",
          txt = "The binary function does not contain any FP arithmetical operations.\nThe binary function is loading 4 bytes.\nThe binary function is storing 18 bytes.",
        },
      },
      expert = {
        {
          title = "General properties",
          txt = "<table><tr><td>nb instructions</td><td>18.50</td></tr><tr><td>loop length</td><td>97</td></tr><tr><td>used x86 registers</td><td>3.50</td></tr><tr><td>used mmx registers</td><td>0</td></tr><tr><td>used xmm registers</td><td>0</td></tr><tr><td>used ymm registers</td><td>0</td></tr><tr><td>used zmm registers</td><td>0</td></tr><tr><td>nb stack references</td><td>2</td></tr></table>",
        },
        {
          title = "Front-end",
          txt = "MACRO FUSION NOT POSSIBLE\n<table><tr><td>instruction fetch</td><td>6.50 cycles</td></tr><tr><td>instruction queue</td><td>9.25 cycles</td></tr><tr><td>decoding</td><td>9.25 cycles</td></tr><tr><td>micro-operation queue</td><td>10.50 cycles</td></tr><tr><td>front end</td><td>10.50 cycles</td></tr></table>",
        },
        {
          title = "Back-end",
          txt = "<table><tr><th>      </th><th>P0</th><th>P1</th><th>P2</th><th>P3</th><th>P4</th><th>P5</th><th>P6</th></tr><tr><td>uops</td><td>0.00</td><td>0.00</td><td>2.75</td><td>2.75</td><td>5.25</td><td>5.25</td><td>4.50</td></tr><tr><td>cycles</td><td>0.00</td><td>0.00</td><td>2.75</td><td>2.75</td><td>5.25</td><td>5.25</td><td>4.50</td></tr></table>\n<table><tr><td>Cycles executing div or sqrt instructions</td><td>NA</td></tr></table>",
        },
        {
          title = "Cycles summary",
          txt = "<table><tr><td>Front-end</td><td>10.50</td></tr><tr><td>Dispatch</td><td>5.25</td></tr><tr><td>Overall L1</td><td>10.50</td></tr></table>",
        },
        {
          title = "Vectorization ratios",
          txt = "<table><tr><td>all</td><td>0%</td></tr><tr><td>load</td><td>NA (no load vectorizable/vectorized instructions)</td></tr><tr><td>store</td><td>0%</td></tr><tr><td>mul</td><td>NA (no mul vectorizable/vectorized instructions)</td></tr><tr><td>add-sub</td><td>NA (no add-sub vectorizable/vectorized instructions)</td></tr><tr><td>fma</td><td>NA (no fma vectorizable/vectorized instructions)</td></tr><tr><td>div/sqrt</td><td>NA (no div/sqrt vectorizable/vectorized instructions)</td></tr><tr><td>other</td><td>0%</td></tr></table>",
        },
        {
          title = "Vector efficiency ratios",
          txt = "<table><tr><td>all</td><td>6%</td></tr><tr><td>load</td><td>NA (no load vectorizable/vectorized instructions)</td></tr><tr><td>store</td><td>6%</td></tr><tr><td>mul</td><td>NA (no mul vectorizable/vectorized instructions)</td></tr><tr><td>add-sub</td><td>NA (no add-sub vectorizable/vectorized instructions)</td></tr><tr><td>fma</td><td>NA (no fma vectorizable/vectorized instructions)</td></tr><tr><td>div/sqrt</td><td>NA (no div/sqrt vectorizable/vectorized instructions)</td></tr><tr><td>other</td><td>7%</td></tr></table>",
        },
        {
          title = "Cycles and memory resources usage",
          txt = "Assuming all data fit into the L1 cache, each call to the function takes 10.50 cycles. At this rate:\n<ul><li>0% of peak load performance is reached (0.38 out of 128.00 bytes loaded per cycle (GB/s @ 1GHz))</li><li>2% of peak store performance is reached (1.71 out of 64.00 bytes stored per cycle (GB/s @ 1GHz))</li></ul>",
        },
      },
      header = {
        "0% of peak computational performance is used (0.00 out of 4.00 FLOP per cycle (GFLOPS @ 1GHz))",
      },
      brief = {
      },
      gain = {
        {
          workaround = "<ul><li>Try another compiler or update/tune your current one</li><li>Make array accesses unit-stride:\n<ul><li>If your function streams arrays of structures (AoS), try to use structures of arrays instead (SoA):\ndo i a(i)%x = b(i)%x (slow, non stride 1) =&gt; do i a%x(i) = b%x(i) (fast, stride 1)</li></ul></li></ul>",
          details = "All SSE/AVX instructions are used in scalar version (process only one data element in vector registers).\nSince your execution units are vector units, only a vectorized function can use their full power.\n",
          title = "Vectorization",
          txt = "Your function is not vectorized.\nOnly 6% of vector register length is used (average across all SSE/AVX instructions).\nBy vectorizing your function, you can lower the cost of an iteration from 10.50 to 0.67 cycles (15.59x speedup).",
        },
      },
      potential = {
      },
    },
  common = {
    header = {
      "The function is defined in /users/user2222/NPB3.4.1-MZ/NPB3.4-MZ-MPI/LU-MZ/syncs.f90:27,42-50.\n",
      "The structure of this function is probably &lt;if then [else] end&gt;.\n",
      "The presence of multiple execution paths is typically the main/first bottleneck.\nTry to simplify control inside function: ideally, try to remove all conditional expressions, for example by (if applicable):\n<ul><li>hoisting them (moving them outside the function)</li><li>turning them into conditional moves, MIN or MAX</li></ul>\n",
      "Ex: if (x&lt;0) x=0 =&gt; x = max(0,x) (Fortran instrinsic procedure)\n",
    },
    nb_paths = 2,
  },
}
