_cqa_text_report = {
  paths = {
    {
      hint = {
        {
          details = "Calling (and then returning from) a function prevents many compiler optimizations (like vectorization), breaks control flow (which reduces pipeline performance) and executes extra instructions to save/restore the registers used inside it, which is very expensive (dozens of cycles). Consider to inline small functions.\n<ul><li>check_sbuffer: 1 occurrences</li><li>init_rbuffer: 1 occurrences</li><li>init_sbuffer: 1 occurrences</li><li>unknown: 2 occurrences</li></ul>",
          title = "CALL instructions",
          txt = "Detected function call instructions.\n",
        },
        {
          details = "These instructions generate more than one micro-operation and only one of them can be decoded during a cycle and the extra micro-operations increase pressure on execution units.\n<ul><li>ADD: 1 occurrences</li></ul>",
          title = "Complex instructions",
          txt = "Detected COMPLEX INSTRUCTIONS.\n",
        },
        {
          title = "Type of elements and instruction set",
          txt = "No instructions are processing arithmetic or math operations on FP elements. This loop is probably writing/copying data or processing integer elements.",
        },
        {
          title = "Matching between your loop (in the source code) and the binary loop",
          txt = "The binary loop does not contain any FP arithmetical operations.\nThe binary loop is loading 200 bytes.\nThe binary loop is storing 12 bytes.",
        },
      },
      expert = {
        {
          title = "General properties",
          txt = "<table><tr><td>nb instructions</td><td>63</td></tr><tr><td>nb uops</td><td>68</td></tr><tr><td>loop length</td><td>249</td></tr><tr><td>used x86 registers</td><td>11</td></tr><tr><td>used mmx registers</td><td>0</td></tr><tr><td>used xmm registers</td><td>0</td></tr><tr><td>used ymm registers</td><td>0</td></tr><tr><td>used zmm registers</td><td>0</td></tr><tr><td>nb stack references</td><td>4</td></tr></table>",
        },
        {
          title = "Front-end",
          txt = "ASSUMED MACRO FUSION\nFIT IN UOP CACHE\n<table><tr><td>micro-operation queue</td><td>13.60 cycles</td></tr><tr><td>front end</td><td>13.60 cycles</td></tr></table>",
        },
        {
          title = "Back-end",
          txt = "<table><tr><th>      </th><th>P0</th><th>P1</th><th>P2</th><th>P3</th><th>P4</th><th>P5</th><th>P6</th><th>P7</th><th>P8</th><th>P9</th></tr><tr><td>uops</td><td>6.00</td><td>6.00</td><td>15.50</td><td>15.50</td><td>5.50</td><td>6.00</td><td>7.00</td><td>5.50</td><td>5.50</td><td>5.50</td></tr><tr><td>cycles</td><td>6.00</td><td>6.00</td><td>15.50</td><td>15.50</td><td>5.50</td><td>6.00</td><td>7.00</td><td>5.50</td><td>5.50</td><td>5.50</td></tr></table>\n<table><tr><td>Cycles executing div or sqrt instructions</td><td>NA</td></tr></table>",
        },
        {
          title = "Cycles summary",
          txt = "<table><tr><td>Front-end</td><td>13.60</td></tr><tr><td>Dispatch</td><td>15.50</td></tr><tr><td>Overall L1</td><td>15.50</td></tr></table>",
        },
        {
          title = "Vectorization ratios",
          txt = "<table><tr><td>all</td><td>0%</td></tr><tr><td>load</td><td>0%</td></tr><tr><td>store</td><td>0%</td></tr><tr><td>mul</td><td>NA (no mul vectorizable/vectorized instructions)</td></tr><tr><td>add-sub</td><td>0%</td></tr><tr><td>fma</td><td>NA (no fma vectorizable/vectorized instructions)</td></tr><tr><td>div/sqrt</td><td>NA (no div/sqrt vectorizable/vectorized instructions)</td></tr><tr><td>other</td><td>0%</td></tr></table>",
        },
        {
          title = "Vector efficiency ratios",
          txt = "<table><tr><td>all</td><td>9%</td></tr><tr><td>load</td><td>10%</td></tr><tr><td>store</td><td>6%</td></tr><tr><td>mul</td><td>NA (no mul vectorizable/vectorized instructions)</td></tr><tr><td>add-sub</td><td>12%</td></tr><tr><td>fma</td><td>NA (no fma vectorizable/vectorized instructions)</td></tr><tr><td>div/sqrt</td><td>NA (no div/sqrt vectorizable/vectorized instructions)</td></tr><tr><td>other</td><td>8%</td></tr></table>",
        },
        {
          title = "Cycles and memory resources usage",
          txt = "Assuming all data fit into the L1 cache, each iteration of the binary loop takes 15.50 cycles. At this rate:\n<ul><li>10% of peak load performance is reached (12.90 out of 128.00 bytes loaded per cycle (GB/s @ 1GHz))</li><li>1% of peak store performance is reached (0.77 out of 64.00 bytes stored per cycle (GB/s @ 1GHz))</li></ul>",
        },
        {
          title = "Front-end bottlenecks",
          txt = "Found no such bottlenecks.",
        },
        {
          title = "ASM code",
          txt = "In the binary file, the address of the loop is: 3921\n\n<table><tr><th>Instruction</th><th>Nb FU</th><th>P0</th><th>P1</th><th>P2</th><th>P3</th><th>P4</th><th>P5</th><th>P6</th><th>P7</th><th>P8</th><th>P9</th><th>Latency</th><th>Recip. throughput</th></tr><tr><td>MOV 0x6bc3(%RIP),%EAX</td><td>1</td><td>0</td><td>0</td><td>0.50</td><td>0.50</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0</td><td>2</td><td>0.50</td></tr><tr><td>TEST %EAX,%EAX</td><td>1</td><td>0.25</td><td>0.25</td><td>0</td><td>0</td><td>0</td><td>0.25</td><td>0.25</td><td>0</td><td>0</td><td>0</td><td>1</td><td>0.25</td></tr><tr><td>JNE 379e <time_alltoallv+0x15d></td><td>1</td><td>0.50</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0.50</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0.50-1</td></tr><tr><td>MOV 0x6bc1(%RIP),%EAX</td><td>1</td><td>0</td><td>0</td><td>0.50</td><td>0.50</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0</td><td>2</td><td>0.50</td></tr><tr><td>TEST %EAX,%EAX</td><td>1</td><td>0.25</td><td>0.25</td><td>0</td><td>0</td><td>0</td><td>0.25</td><td>0.25</td><td>0</td><td>0</td><td>0</td><td>1</td><td>0.25</td></tr><tr><td>JE 37a5 <time_alltoallv+0x164></td><td>1</td><td>0.50</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0.50</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0.50-1</td></tr><tr><td>MOV -0x38(%RBP),%RAX</td><td>1</td><td>0</td><td>0</td><td>0.50</td><td>0.50</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0</td><td>2</td><td>0.50</td></tr><tr><td>MOV 0x8(%RAX),%EAX</td><td>1</td><td>0</td><td>0</td><td>0.50</td><td>0.50</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0</td><td>2</td><td>0.50</td></tr><tr><td>SUB $0x1,%EAX</td><td>1</td><td>0.25</td><td>0.25</td><td>0</td><td>0</td><td>0</td><td>0.25</td><td>0.25</td><td>0</td><td>0</td><td>0</td><td>1</td><td>0.25</td></tr><tr><td>CMP %EAX,-0x24(%RBP)</td><td>1</td><td>0.25</td><td>0.25</td><td>0.50</td><td>0.50</td><td>0</td><td>0.25</td><td>0.25</td><td>0</td><td>0</td><td>0</td><td>1</td><td>0.50</td></tr><tr><td>JNE 37a5 <time_alltoallv+0x164></td><td>1</td><td>0.50</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0.50</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0.50-1</td></tr><tr><td>MOV $0x1,%EAX</td><td>1</td><td>0.25</td><td>0.25</td><td>0</td><td>0</td><td>0</td><td>0.25</td><td>0.25</td><td>0</td><td>0</td><td>0</td><td>1</td><td>0.25</td></tr><tr><td>JMP 37aa <time_alltoallv+0x169></td><td>1</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0</td><td>1</td><td>0</td><td>0</td><td>0</td><td>0</td><td>1-2</td></tr><tr><td>MOV $0,%EAX</td><td>1</td><td>0.25</td><td>0.25</td><td>0</td><td>0</td><td>0</td><td>0.25</td><td>0.25</td><td>0</td><td>0</td><td>0</td><td>1</td><td>0.25</td></tr><tr><td>MOV %EAX,-0x10(%RBP)</td><td>1</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0.50</td><td>0</td><td>0</td><td>0.50</td><td>0.50</td><td>0.50</td><td>3</td><td>0.50</td></tr><tr><td>CMPL $0,-0x10(%RBP)</td><td>1</td><td>0.25</td><td>0.25</td><td>0.50</td><td>0.50</td><td>0</td><td>0.25</td><td>0.25</td><td>0</td><td>0</td><td>0</td><td>1</td><td>0.50</td></tr><tr><td>JE 37cf <time_alltoallv+0x18e></td><td>1</td><td>0.50</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0.50</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0.50-1</td></tr><tr><td>MOV -0x38(%RBP),%RAX</td><td>1</td><td>0</td><td>0</td><td>0.50</td><td>0.50</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0</td><td>2</td><td>0.50</td></tr><tr><td>MOV 0x18(%RAX),%EAX</td><td>1</td><td>0</td><td>0</td><td>0.50</td><td>0.50</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0</td><td>2</td><td>0.50</td></tr><tr><td>MOV %EAX,%EDI</td><td>1</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0.25</td></tr><tr><td>CALL 307e <init_sbuffer></td><td>2</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0.50</td><td>0</td><td>1</td><td>0.50</td><td>0.50</td><td>0.50</td><td>0</td><td>2</td></tr><tr><td>MOV -0x38(%RBP),%RAX</td><td>1</td><td>0</td><td>0</td><td>0.50</td><td>0.50</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0</td><td>2</td><td>0.50</td></tr><tr><td>MOV 0x18(%RAX),%EAX</td><td>1</td><td>0</td><td>0</td><td>0.50</td><td>0.50</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0</td><td>2</td><td>0.50</td></tr><tr><td>MOV %EAX,%EDI</td><td>1</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0.25</td></tr><tr><td>CALL 30df <init_rbuffer></td><td>2</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0.50</td><td>0</td><td>1</td><td>0.50</td><td>0.50</td><td>0.50</td><td>0</td><td>2</td></tr><tr><td>MOV -0x38(%RBP),%RAX</td><td>1</td><td>0</td><td>0</td><td>0.50</td><td>0.50</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0</td><td>2</td><td>0.50</td></tr><tr><td>MOV 0x10(%RAX),%R9</td><td>1</td><td>0</td><td>0</td><td>0.50</td><td>0.50</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0</td><td>2</td><td>0.50</td></tr><tr><td>MOV -0x38(%RBP),%RAX</td><td>1</td><td>0</td><td>0</td><td>0.50</td><td>0.50</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0</td><td>2</td><td>0.50</td></tr><tr><td>MOV 0x28(%RAX),%R8</td><td>1</td><td>0</td><td>0</td><td>0.50</td><td>0.50</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0</td><td>2</td><td>0.50</td></tr><tr><td>MOV 0x6b52(%RIP),%RDI</td><td>1</td><td>0</td><td>0</td><td>0.50</td><td>0.50</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0</td><td>2</td><td>0.50</td></tr><tr><td>MOV 0x6b3b(%RIP),%R11</td><td>1</td><td>0</td><td>0</td><td>0.50</td><td>0.50</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0</td><td>2</td><td>0.50</td></tr><tr><td>MOV 0x6b2c(%RIP),%R10</td><td>1</td><td>0</td><td>0</td><td>0.50</td><td>0.50</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0</td><td>2</td><td>0.50</td></tr><tr><td>MOV -0x38(%RBP),%RAX</td><td>1</td><td>0</td><td>0</td><td>0.50</td><td>0.50</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0</td><td>2</td><td>0.50</td></tr><tr><td>MOV 0x28(%RAX),%RCX</td><td>1</td><td>0</td><td>0</td><td>0.50</td><td>0.50</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0</td><td>2</td><td>0.50</td></tr><tr><td>MOV 0x6afd(%RIP),%RDX</td><td>1</td><td>0</td><td>0</td><td>0.50</td><td>0.50</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0</td><td>2</td><td>0.50</td></tr><tr><td>MOV 0x6b26(%RIP),%RSI</td><td>1</td><td>0</td><td>0</td><td>0.50</td><td>0.50</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0</td><td>2</td><td>0.50</td></tr><tr><td>MOV 0x6b3f(%RIP),%RAX</td><td>1</td><td>0</td><td>0</td><td>0.50</td><td>0.50</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0</td><td>2</td><td>0.50</td></tr><tr><td>SUB $0x8,%RSP</td><td>1</td><td>0.25</td><td>0.25</td><td>0</td><td>0</td><td>0</td><td>0.25</td><td>0.25</td><td>0</td><td>0</td><td>0</td><td>1</td><td>0.25</td></tr><tr><td>PUSH %R9</td><td>1</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0.50</td><td>0</td><td>0</td><td>0.50</td><td>0.50</td><td>0.50</td><td>3</td><td>0.50</td></tr><tr><td>PUSH %R8</td><td>1</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0.50</td><td>0</td><td>0</td><td>0.50</td><td>0.50</td><td>0.50</td><td>3</td><td>0.50</td></tr><tr><td>PUSH %RDI</td><td>1</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0.50</td><td>0</td><td>0</td><td>0.50</td><td>0.50</td><td>0.50</td><td>3</td><td>0.50</td></tr><tr><td>MOV %R11,%R9</td><td>1</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0.25</td></tr><tr><td>MOV %R10,%R8</td><td>1</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0.25</td></tr><tr><td>MOV %RAX,%RDI</td><td>1</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0.25</td></tr><tr><td>CALL 2320 <.plt.sec@start+0x60></td><td>2</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0.50</td><td>0</td><td>1</td><td>0.50</td><td>0.50</td><td>0.50</td><td>0</td><td>2</td></tr><tr><td>ADD $0x20,%RSP</td><td>1</td><td>0.25</td><td>0.25</td><td>0</td><td>0</td><td>0</td><td>0.25</td><td>0.25</td><td>0</td><td>0</td><td>0</td><td>1</td><td>0.25</td></tr><tr><td>MOV -0x38(%RBP),%RAX</td><td>1</td><td>0</td><td>0</td><td>0.50</td><td>0.50</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0</td><td>2</td><td>0.50</td></tr><tr><td>MOV 0x10(%RAX),%RAX</td><td>1</td><td>0</td><td>0</td><td>0.50</td><td>0.50</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0</td><td>2</td><td>0.50</td></tr><tr><td>MOV %RAX,%RDI</td><td>1</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0.25</td></tr><tr><td>CALL 22c0 <.plt.sec@start></td><td>2</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0.50</td><td>0</td><td>1</td><td>0.50</td><td>0.50</td><td>0.50</td><td>0</td><td>2</td></tr><tr><td>CMPL $0,-0x10(%RBP)</td><td>1</td><td>0.25</td><td>0.25</td><td>0.50</td><td>0.50</td><td>0</td><td>0.25</td><td>0.25</td><td>0</td><td>0</td><td>0</td><td>1</td><td>0.50</td></tr><tr><td>JE 391d <time_alltoallv+0x2dc></td><td>1</td><td>0.50</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0.50</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0.50-1</td></tr><tr><td>MOV -0x38(%RBP),%RAX</td><td>1</td><td>0</td><td>0</td><td>0.50</td><td>0.50</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0</td><td>2</td><td>0.50</td></tr><tr><td>MOV 0x18(%RAX),%EAX</td><td>1</td><td>0</td><td>0</td><td>0.50</td><td>0.50</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0</td><td>2</td><td>0.50</td></tr><tr><td>MOV %EAX,%EDI</td><td>1</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0.25</td></tr><tr><td>CALL 310c <check_sbuffer></td><td>2</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0.50</td><td>0</td><td>1</td><td>0.50</td><td>0.50</td><td>0.50</td><td>0</td><td>2</td></tr><tr><td>MOVL $0,-0x1c(%RBP)</td><td>1</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0.50</td><td>0</td><td>0</td><td>0.50</td><td>0.50</td><td>0.50</td><td>2</td><td>0.50</td></tr><tr><td>JMP 390d <time_alltoallv+0x2cc></td><td>1</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0</td><td>1</td><td>0</td><td>0</td><td>0</td><td>0</td><td>1-2</td></tr><tr><td>ADDL $0x1,-0x24(%RBP)</td><td>2</td><td>0.50</td><td>0.50</td><td>0.50</td><td>0.50</td><td>0.50</td><td>0.50</td><td>0.50</td><td>0.50</td><td>0.50</td><td>0.50</td><td>5</td><td>0.50</td></tr><tr><td>MOV -0x38(%RBP),%RAX</td><td>1</td><td>0</td><td>0</td><td>0.50</td><td>0.50</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0</td><td>2</td><td>0.50</td></tr><tr><td>MOV 0x8(%RAX),%EAX</td><td>1</td><td>0</td><td>0</td><td>0.50</td><td>0.50</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0</td><td>2</td><td>0.50</td></tr><tr><td>CMP %EAX,-0x24(%RBP)</td><td>1</td><td>0.25</td><td>0.25</td><td>0.50</td><td>0.50</td><td>0</td><td>0.25</td><td>0.25</td><td>0</td><td>0</td><td>0</td><td>1</td><td>0.50</td></tr><tr><td>JL 377b <time_alltoallv+0x13a></td><td>1</td><td>0.50</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0.50</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0.50-1</td></tr></table>",
        },
      },
      header = {
        "Warnings:\nDetected a function call instruction: ignoring called function instructions.\nRerun with --follow-calls=append to include them to analysis  or with --follow-calls=inline to simulate inlining.",
        "0% of peak computational performance is used (0.00 out of 4.00 FLOP per cycle (GFLOPS @ 1GHz))",
      },
      brief = {
      },
      gain = {
        {
          workaround = "<ul><li>Try another compiler or update/tune your current one</li><li>Remove inter-iterations dependences from your loop and make it unit-stride:\n<ul><li>If your arrays have 2 or more dimensions, check whether elements are accessed contiguously and, otherwise, try to permute loops accordingly</li><li>If your loop streams arrays of structures (AoS), try to use structures of arrays instead (SoA)</li></ul></li></ul>",
          details = "All SSE/AVX instructions are used in scalar version (process only one data element in vector registers).\nSince your execution units are vector units, only a vectorized loop can use their full power.\n",
          title = "Vectorization",
          txt = "Your loop is not vectorized.\nOnly 9% of vector register length is used (average across all SSE/AVX instructions).\nBy vectorizing your loop, you can lower the cost of an iteration from 15.50 to 1.22 cycles (12.72x speedup).",
        },
        {
          workaround = "<ul><li>Read less array elements</li><li>Provide more information to your compiler:\n<ul><li>hardcode the bounds of the corresponding 'for' loop</li></ul></li></ul>",
          title = "Execution units bottlenecks",
          txt = "Performance is limited by reading data from caches/RAM (load units are a bottleneck).\n\nBy removing all these bottlenecks, you can lower the cost of an iteration from 15.50 to 13.60 cycles (1.14x speedup).\n",
        },
      },
      potential = {
      },
    },
  },
  AVG = {
      hint = {
        {
          details = "Calling (and then returning from) a function prevents many compiler optimizations (like vectorization), breaks control flow (which reduces pipeline performance) and executes extra instructions to save/restore the registers used inside it, which is very expensive (dozens of cycles). Consider to inline small functions.\n<ul><li>check_sbuffer: 1 occurrences</li><li>init_rbuffer: 1 occurrences</li><li>init_sbuffer: 1 occurrences</li><li>unknown: 2 occurrences</li></ul>",
          title = "CALL instructions",
          txt = "Detected function call instructions.\n",
        },
        {
          details = "These instructions generate more than one micro-operation and only one of them can be decoded during a cycle and the extra micro-operations increase pressure on execution units.\n<ul><li>ADD: 1 occurrences</li></ul>",
          title = "Complex instructions",
          txt = "Detected COMPLEX INSTRUCTIONS.\n",
        },
        {
          title = "Type of elements and instruction set",
          txt = "No instructions are processing arithmetic or math operations on FP elements. This loop is probably writing/copying data or processing integer elements.",
        },
        {
          title = "Matching between your loop (in the source code) and the binary loop",
          txt = "The binary loop does not contain any FP arithmetical operations.\nThe binary loop is loading 200 bytes.\nThe binary loop is storing 12 bytes.",
        },
      },
      expert = {
        {
          title = "General properties",
          txt = "<table><tr><td>nb instructions</td><td>63</td></tr><tr><td>nb uops</td><td>68</td></tr><tr><td>loop length</td><td>249</td></tr><tr><td>used x86 registers</td><td>11</td></tr><tr><td>used mmx registers</td><td>0</td></tr><tr><td>used xmm registers</td><td>0</td></tr><tr><td>used ymm registers</td><td>0</td></tr><tr><td>used zmm registers</td><td>0</td></tr><tr><td>nb stack references</td><td>4</td></tr></table>",
        },
        {
          title = "Front-end",
          txt = "ASSUMED MACRO FUSION\nFIT IN UOP CACHE\n<table><tr><td>micro-operation queue</td><td>13.60 cycles</td></tr><tr><td>front end</td><td>13.60 cycles</td></tr></table>",
        },
        {
          title = "Back-end",
          txt = "<table><tr><th>      </th><th>P0</th><th>P1</th><th>P2</th><th>P3</th><th>P4</th><th>P5</th><th>P6</th><th>P7</th><th>P8</th><th>P9</th></tr><tr><td>uops</td><td>6.00</td><td>6.00</td><td>15.50</td><td>15.50</td><td>5.50</td><td>6.00</td><td>7.00</td><td>5.50</td><td>5.50</td><td>5.50</td></tr><tr><td>cycles</td><td>6.00</td><td>6.00</td><td>15.50</td><td>15.50</td><td>5.50</td><td>6.00</td><td>7.00</td><td>5.50</td><td>5.50</td><td>5.50</td></tr></table>\n<table><tr><td>Cycles executing div or sqrt instructions</td><td>NA</td></tr></table>",
        },
        {
          title = "Cycles summary",
          txt = "<table><tr><td>Front-end</td><td>13.60</td></tr><tr><td>Dispatch</td><td>15.50</td></tr><tr><td>Overall L1</td><td>15.50</td></tr></table>",
        },
        {
          title = "Vectorization ratios",
          txt = "<table><tr><td>all</td><td>0%</td></tr><tr><td>load</td><td>0%</td></tr><tr><td>store</td><td>0%</td></tr><tr><td>mul</td><td>NA (no mul vectorizable/vectorized instructions)</td></tr><tr><td>add-sub</td><td>0%</td></tr><tr><td>fma</td><td>NA (no fma vectorizable/vectorized instructions)</td></tr><tr><td>div/sqrt</td><td>NA (no div/sqrt vectorizable/vectorized instructions)</td></tr><tr><td>other</td><td>0%</td></tr></table>",
        },
        {
          title = "Vector efficiency ratios",
          txt = "<table><tr><td>all</td><td>9%</td></tr><tr><td>load</td><td>10%</td></tr><tr><td>store</td><td>6%</td></tr><tr><td>mul</td><td>NA (no mul vectorizable/vectorized instructions)</td></tr><tr><td>add-sub</td><td>12%</td></tr><tr><td>fma</td><td>NA (no fma vectorizable/vectorized instructions)</td></tr><tr><td>div/sqrt</td><td>NA (no div/sqrt vectorizable/vectorized instructions)</td></tr><tr><td>other</td><td>8%</td></tr></table>",
        },
        {
          title = "Cycles and memory resources usage",
          txt = "Assuming all data fit into the L1 cache, each iteration of the binary loop takes 15.50 cycles. At this rate:\n<ul><li>10% of peak load performance is reached (12.90 out of 128.00 bytes loaded per cycle (GB/s @ 1GHz))</li><li>1% of peak store performance is reached (0.77 out of 64.00 bytes stored per cycle (GB/s @ 1GHz))</li></ul>",
        },
        {
          title = "Front-end bottlenecks",
          txt = "Found no such bottlenecks.",
        },
        {
          title = "ASM code",
          txt = "In the binary file, the address of the loop is: 3921\n\n<table><tr><th>Instruction</th><th>Nb FU</th><th>P0</th><th>P1</th><th>P2</th><th>P3</th><th>P4</th><th>P5</th><th>P6</th><th>P7</th><th>P8</th><th>P9</th><th>Latency</th><th>Recip. throughput</th></tr><tr><td>MOV 0x6bc3(%RIP),%EAX</td><td>1</td><td>0</td><td>0</td><td>0.50</td><td>0.50</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0</td><td>2</td><td>0.50</td></tr><tr><td>TEST %EAX,%EAX</td><td>1</td><td>0.25</td><td>0.25</td><td>0</td><td>0</td><td>0</td><td>0.25</td><td>0.25</td><td>0</td><td>0</td><td>0</td><td>1</td><td>0.25</td></tr><tr><td>JNE 379e <time_alltoallv+0x15d></td><td>1</td><td>0.50</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0.50</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0.50-1</td></tr><tr><td>MOV 0x6bc1(%RIP),%EAX</td><td>1</td><td>0</td><td>0</td><td>0.50</td><td>0.50</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0</td><td>2</td><td>0.50</td></tr><tr><td>TEST %EAX,%EAX</td><td>1</td><td>0.25</td><td>0.25</td><td>0</td><td>0</td><td>0</td><td>0.25</td><td>0.25</td><td>0</td><td>0</td><td>0</td><td>1</td><td>0.25</td></tr><tr><td>JE 37a5 <time_alltoallv+0x164></td><td>1</td><td>0.50</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0.50</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0.50-1</td></tr><tr><td>MOV -0x38(%RBP),%RAX</td><td>1</td><td>0</td><td>0</td><td>0.50</td><td>0.50</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0</td><td>2</td><td>0.50</td></tr><tr><td>MOV 0x8(%RAX),%EAX</td><td>1</td><td>0</td><td>0</td><td>0.50</td><td>0.50</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0</td><td>2</td><td>0.50</td></tr><tr><td>SUB $0x1,%EAX</td><td>1</td><td>0.25</td><td>0.25</td><td>0</td><td>0</td><td>0</td><td>0.25</td><td>0.25</td><td>0</td><td>0</td><td>0</td><td>1</td><td>0.25</td></tr><tr><td>CMP %EAX,-0x24(%RBP)</td><td>1</td><td>0.25</td><td>0.25</td><td>0.50</td><td>0.50</td><td>0</td><td>0.25</td><td>0.25</td><td>0</td><td>0</td><td>0</td><td>1</td><td>0.50</td></tr><tr><td>JNE 37a5 <time_alltoallv+0x164></td><td>1</td><td>0.50</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0.50</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0.50-1</td></tr><tr><td>MOV $0x1,%EAX</td><td>1</td><td>0.25</td><td>0.25</td><td>0</td><td>0</td><td>0</td><td>0.25</td><td>0.25</td><td>0</td><td>0</td><td>0</td><td>1</td><td>0.25</td></tr><tr><td>JMP 37aa <time_alltoallv+0x169></td><td>1</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0</td><td>1</td><td>0</td><td>0</td><td>0</td><td>0</td><td>1-2</td></tr><tr><td>MOV $0,%EAX</td><td>1</td><td>0.25</td><td>0.25</td><td>0</td><td>0</td><td>0</td><td>0.25</td><td>0.25</td><td>0</td><td>0</td><td>0</td><td>1</td><td>0.25</td></tr><tr><td>MOV %EAX,-0x10(%RBP)</td><td>1</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0.50</td><td>0</td><td>0</td><td>0.50</td><td>0.50</td><td>0.50</td><td>3</td><td>0.50</td></tr><tr><td>CMPL $0,-0x10(%RBP)</td><td>1</td><td>0.25</td><td>0.25</td><td>0.50</td><td>0.50</td><td>0</td><td>0.25</td><td>0.25</td><td>0</td><td>0</td><td>0</td><td>1</td><td>0.50</td></tr><tr><td>JE 37cf <time_alltoallv+0x18e></td><td>1</td><td>0.50</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0.50</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0.50-1</td></tr><tr><td>MOV -0x38(%RBP),%RAX</td><td>1</td><td>0</td><td>0</td><td>0.50</td><td>0.50</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0</td><td>2</td><td>0.50</td></tr><tr><td>MOV 0x18(%RAX),%EAX</td><td>1</td><td>0</td><td>0</td><td>0.50</td><td>0.50</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0</td><td>2</td><td>0.50</td></tr><tr><td>MOV %EAX,%EDI</td><td>1</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0.25</td></tr><tr><td>CALL 307e <init_sbuffer></td><td>2</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0.50</td><td>0</td><td>1</td><td>0.50</td><td>0.50</td><td>0.50</td><td>0</td><td>2</td></tr><tr><td>MOV -0x38(%RBP),%RAX</td><td>1</td><td>0</td><td>0</td><td>0.50</td><td>0.50</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0</td><td>2</td><td>0.50</td></tr><tr><td>MOV 0x18(%RAX),%EAX</td><td>1</td><td>0</td><td>0</td><td>0.50</td><td>0.50</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0</td><td>2</td><td>0.50</td></tr><tr><td>MOV %EAX,%EDI</td><td>1</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0.25</td></tr><tr><td>CALL 30df <init_rbuffer></td><td>2</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0.50</td><td>0</td><td>1</td><td>0.50</td><td>0.50</td><td>0.50</td><td>0</td><td>2</td></tr><tr><td>MOV -0x38(%RBP),%RAX</td><td>1</td><td>0</td><td>0</td><td>0.50</td><td>0.50</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0</td><td>2</td><td>0.50</td></tr><tr><td>MOV 0x10(%RAX),%R9</td><td>1</td><td>0</td><td>0</td><td>0.50</td><td>0.50</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0</td><td>2</td><td>0.50</td></tr><tr><td>MOV -0x38(%RBP),%RAX</td><td>1</td><td>0</td><td>0</td><td>0.50</td><td>0.50</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0</td><td>2</td><td>0.50</td></tr><tr><td>MOV 0x28(%RAX),%R8</td><td>1</td><td>0</td><td>0</td><td>0.50</td><td>0.50</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0</td><td>2</td><td>0.50</td></tr><tr><td>MOV 0x6b52(%RIP),%RDI</td><td>1</td><td>0</td><td>0</td><td>0.50</td><td>0.50</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0</td><td>2</td><td>0.50</td></tr><tr><td>MOV 0x6b3b(%RIP),%R11</td><td>1</td><td>0</td><td>0</td><td>0.50</td><td>0.50</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0</td><td>2</td><td>0.50</td></tr><tr><td>MOV 0x6b2c(%RIP),%R10</td><td>1</td><td>0</td><td>0</td><td>0.50</td><td>0.50</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0</td><td>2</td><td>0.50</td></tr><tr><td>MOV -0x38(%RBP),%RAX</td><td>1</td><td>0</td><td>0</td><td>0.50</td><td>0.50</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0</td><td>2</td><td>0.50</td></tr><tr><td>MOV 0x28(%RAX),%RCX</td><td>1</td><td>0</td><td>0</td><td>0.50</td><td>0.50</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0</td><td>2</td><td>0.50</td></tr><tr><td>MOV 0x6afd(%RIP),%RDX</td><td>1</td><td>0</td><td>0</td><td>0.50</td><td>0.50</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0</td><td>2</td><td>0.50</td></tr><tr><td>MOV 0x6b26(%RIP),%RSI</td><td>1</td><td>0</td><td>0</td><td>0.50</td><td>0.50</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0</td><td>2</td><td>0.50</td></tr><tr><td>MOV 0x6b3f(%RIP),%RAX</td><td>1</td><td>0</td><td>0</td><td>0.50</td><td>0.50</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0</td><td>2</td><td>0.50</td></tr><tr><td>SUB $0x8,%RSP</td><td>1</td><td>0.25</td><td>0.25</td><td>0</td><td>0</td><td>0</td><td>0.25</td><td>0.25</td><td>0</td><td>0</td><td>0</td><td>1</td><td>0.25</td></tr><tr><td>PUSH %R9</td><td>1</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0.50</td><td>0</td><td>0</td><td>0.50</td><td>0.50</td><td>0.50</td><td>3</td><td>0.50</td></tr><tr><td>PUSH %R8</td><td>1</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0.50</td><td>0</td><td>0</td><td>0.50</td><td>0.50</td><td>0.50</td><td>3</td><td>0.50</td></tr><tr><td>PUSH %RDI</td><td>1</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0.50</td><td>0</td><td>0</td><td>0.50</td><td>0.50</td><td>0.50</td><td>3</td><td>0.50</td></tr><tr><td>MOV %R11,%R9</td><td>1</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0.25</td></tr><tr><td>MOV %R10,%R8</td><td>1</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0.25</td></tr><tr><td>MOV %RAX,%RDI</td><td>1</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0.25</td></tr><tr><td>CALL 2320 <.plt.sec@start+0x60></td><td>2</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0.50</td><td>0</td><td>1</td><td>0.50</td><td>0.50</td><td>0.50</td><td>0</td><td>2</td></tr><tr><td>ADD $0x20,%RSP</td><td>1</td><td>0.25</td><td>0.25</td><td>0</td><td>0</td><td>0</td><td>0.25</td><td>0.25</td><td>0</td><td>0</td><td>0</td><td>1</td><td>0.25</td></tr><tr><td>MOV -0x38(%RBP),%RAX</td><td>1</td><td>0</td><td>0</td><td>0.50</td><td>0.50</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0</td><td>2</td><td>0.50</td></tr><tr><td>MOV 0x10(%RAX),%RAX</td><td>1</td><td>0</td><td>0</td><td>0.50</td><td>0.50</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0</td><td>2</td><td>0.50</td></tr><tr><td>MOV %RAX,%RDI</td><td>1</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0.25</td></tr><tr><td>CALL 22c0 <.plt.sec@start></td><td>2</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0.50</td><td>0</td><td>1</td><td>0.50</td><td>0.50</td><td>0.50</td><td>0</td><td>2</td></tr><tr><td>CMPL $0,-0x10(%RBP)</td><td>1</td><td>0.25</td><td>0.25</td><td>0.50</td><td>0.50</td><td>0</td><td>0.25</td><td>0.25</td><td>0</td><td>0</td><td>0</td><td>1</td><td>0.50</td></tr><tr><td>JE 391d <time_alltoallv+0x2dc></td><td>1</td><td>0.50</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0.50</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0.50-1</td></tr><tr><td>MOV -0x38(%RBP),%RAX</td><td>1</td><td>0</td><td>0</td><td>0.50</td><td>0.50</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0</td><td>2</td><td>0.50</td></tr><tr><td>MOV 0x18(%RAX),%EAX</td><td>1</td><td>0</td><td>0</td><td>0.50</td><td>0.50</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0</td><td>2</td><td>0.50</td></tr><tr><td>MOV %EAX,%EDI</td><td>1</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0.25</td></tr><tr><td>CALL 310c <check_sbuffer></td><td>2</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0.50</td><td>0</td><td>1</td><td>0.50</td><td>0.50</td><td>0.50</td><td>0</td><td>2</td></tr><tr><td>MOVL $0,-0x1c(%RBP)</td><td>1</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0.50</td><td>0</td><td>0</td><td>0.50</td><td>0.50</td><td>0.50</td><td>2</td><td>0.50</td></tr><tr><td>JMP 390d <time_alltoallv+0x2cc></td><td>1</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0</td><td>1</td><td>0</td><td>0</td><td>0</td><td>0</td><td>1-2</td></tr><tr><td>ADDL $0x1,-0x24(%RBP)</td><td>2</td><td>0.50</td><td>0.50</td><td>0.50</td><td>0.50</td><td>0.50</td><td>0.50</td><td>0.50</td><td>0.50</td><td>0.50</td><td>0.50</td><td>5</td><td>0.50</td></tr><tr><td>MOV -0x38(%RBP),%RAX</td><td>1</td><td>0</td><td>0</td><td>0.50</td><td>0.50</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0</td><td>2</td><td>0.50</td></tr><tr><td>MOV 0x8(%RAX),%EAX</td><td>1</td><td>0</td><td>0</td><td>0.50</td><td>0.50</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0</td><td>2</td><td>0.50</td></tr><tr><td>CMP %EAX,-0x24(%RBP)</td><td>1</td><td>0.25</td><td>0.25</td><td>0.50</td><td>0.50</td><td>0</td><td>0.25</td><td>0.25</td><td>0</td><td>0</td><td>0</td><td>1</td><td>0.50</td></tr><tr><td>JL 377b <time_alltoallv+0x13a></td><td>1</td><td>0.50</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0.50</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0.50-1</td></tr></table>",
        },
      },
      header = {
        "Warnings:\nDetected a function call instruction: ignoring called function instructions.\nRerun with --follow-calls=append to include them to analysis  or with --follow-calls=inline to simulate inlining.",
        "0% of peak computational performance is used (0.00 out of 4.00 FLOP per cycle (GFLOPS @ 1GHz))",
      },
      brief = {
      },
      gain = {
        {
          workaround = "<ul><li>Try another compiler or update/tune your current one</li><li>Remove inter-iterations dependences from your loop and make it unit-stride:\n<ul><li>If your arrays have 2 or more dimensions, check whether elements are accessed contiguously and, otherwise, try to permute loops accordingly</li><li>If your loop streams arrays of structures (AoS), try to use structures of arrays instead (SoA)</li></ul></li></ul>",
          details = "All SSE/AVX instructions are used in scalar version (process only one data element in vector registers).\nSince your execution units are vector units, only a vectorized loop can use their full power.\n",
          title = "Vectorization",
          txt = "Your loop is not vectorized.\nOnly 9% of vector register length is used (average across all SSE/AVX instructions).\nBy vectorizing your loop, you can lower the cost of an iteration from 15.50 to 1.22 cycles (12.72x speedup).",
        },
        {
          workaround = "<ul><li>Read less array elements</li><li>Provide more information to your compiler:\n<ul><li>hardcode the bounds of the corresponding 'for' loop</li></ul></li></ul>",
          title = "Execution units bottlenecks",
          txt = "Performance is limited by reading data from caches/RAM (load units are a bottleneck).\n\nBy removing all these bottlenecks, you can lower the cost of an iteration from 15.50 to 13.60 cycles (1.14x speedup).\n",
        },
      },
      potential = {
      },
    },
  common = {
    header = {
      "",
      "Warnings:\n<ul><li>Non-innermost loop: analyzing only self part (ignoring child loops).</li><li>Ignoring paths for analysis</li><li>Too many paths. Rerun with max-paths=32</li><li>RecMII not computed since number of paths is unknown or > max_paths</li><li>Streams not analyzed since number of paths is unknown or > max_paths</li></ul>",
      "Try to simplify control and/or increase the maximum number of paths per function/loop through the 'max-paths-nb' option.\n",
      "This loop has 32 execution paths.\n",
      "The presence of multiple execution paths is typically the main/first bottleneck.\nTry to simplify control inside loop: ideally, try to remove all conditional expressions, for example by (if applicable):\n<ul><li>hoisting them (moving them outside the loop)</li><li>turning them into conditional moves, MIN or MAX</li></ul>\n",
    },
    nb_paths = 32,
  },
}
