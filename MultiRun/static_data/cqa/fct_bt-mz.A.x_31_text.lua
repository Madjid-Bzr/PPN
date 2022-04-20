_cqa_text_report = {
  paths = {
    {
      hint = {
        {
          details = "Calling (and then returning from) a function prevents many compiler optimizations (like vectorization), breaks control flow (which reduces pipeline performance) and executes extra instructions to save/restore the registers used inside it, which is very expensive (dozens of cycles). Consider to inline small functions.\n - timer_start: 3 occurrences\n - timer_stop: 2 occurrences\n",
          title = "CALL instructions",
          txt = "Detected function call instructions.\n",
        },
        {
          details = "These instructions generate more than one micro-operation and only one of them can be decoded during a cycle and the extra micro-operations increase pressure on execution units.\n - RET: 1 occurrences\n",
          title = "Complex instructions",
          txt = "Detected COMPLEX INSTRUCTIONS.\n",
        },
        {
          title = "Type of elements and instruction set",
          txt = "No instructions are processing arithmetic or math operations on FP elements. This function is probably writing/copying data or processing integer elements.",
        },
        {
          title = "Matching between your function (in the source code) and the binary function",
          txt = "The binary function does not contain any FP arithmetical operations.\nThe binary function is loading 60 bytes.\nThe binary function is storing 120 bytes.",
        },
      },
      expert = {
        {
          title = "General properties",
          txt = "nb instructions    : 126\nnb uops            : 137\nloop length        : 616\nused x86 registers : 15\nused mmx registers : 0\nused xmm registers : 0\nused ymm registers : 0\nused zmm registers : 0\nnb stack references: 19\n",
        },
        {
          title = "Front-end",
          txt = "MACRO FUSION NOT POSSIBLE\nFIT IN UOP CACHE\nmicro-operation queue: 34.25 cycles\nfront end            : 34.25 cycles\n",
        },
        {
          title = "Back-end",
          txt = "       | P0    | P1    | P2    | P3    | P4    | P5\n------------------------------------------------------\nuops   | 19.00 | 19.00 | 26.50 | 26.50 | 27.00 | 22.00\ncycles | 19.00 | 19.00 | 26.50 | 26.50 | 27.00 | 22.00\n\nCycles executing div or sqrt instructions: NA\n",
        },
        {
          title = "Cycles summary",
          txt = "Front-end : 34.25\nDispatch  : 27.00\nOverall L1: 34.25\n",
        },
        {
          title = "Vectorization ratios",
          txt = "all     : 0%\nload    : 0%\nstore   : 0%\nmul     : NA (no mul vectorizable/vectorized instructions)\nadd-sub : 0%\nfma     : NA (no fma vectorizable/vectorized instructions)\ndiv/sqrt: NA (no div/sqrt vectorizable/vectorized instructions)\nother   : 0%\n",
        },
        {
          title = "Vector efficiency ratios",
          txt = "all     : 35%\nload    : 29%\nstore   : 43%\nmul     : NA (no mul vectorizable/vectorized instructions)\nadd-sub : 37%\nfma     : NA (no fma vectorizable/vectorized instructions)\ndiv/sqrt: NA (no div/sqrt vectorizable/vectorized instructions)\nother   : 25%\n",
        },
        {
          title = "Cycles and memory resources usage",
          txt = "Assuming all data fit into the L1 cache, each call to the function takes 34.25 cycles. At this rate:\n - 5% of peak load performance is reached (1.75 out of 32.00 bytes loaded per cycle (GB/s @ 1GHz))\n - 21% of peak store performance is reached (3.50 out of 16.00 bytes stored per cycle (GB/s @ 1GHz))\n",
        },
        {
          title = "Front-end bottlenecks",
          txt = "Performance is limited by instruction throughput (loading/decoding program instructions to execution core) (front-end is a bottleneck).\n\nBy removing all these bottlenecks, you can lower the cost of an iteration from 34.25 to 27.00 cycles (1.27x speedup).\n",
        },
        {
          title = "ASM code",
          txt = "In the binary file, the address of the function is: 18a20\n\nInstruction                 | Nb FU | P0   | P1   | P2   | P3   | P4 | P5   | Latency | Recip. throughput\n---------------------------------------------------------------------------------------------------------\nPUSH %R15                   | 1     | 0    | 0    | 0.50 | 0.50 | 1  | 0    | 3       | 1\nPUSH %R14                   | 1     | 0    | 0    | 0.50 | 0.50 | 1  | 0    | 3       | 1\nPUSH %R13                   | 1     | 0    | 0    | 0.50 | 0.50 | 1  | 0    | 3       | 1\nPUSH %R12                   | 1     | 0    | 0    | 0.50 | 0.50 | 1  | 0    | 3       | 1\nPUSH %RBP                   | 1     | 0    | 0    | 0.50 | 0.50 | 1  | 0    | 3       | 1\nPUSH %RBX                   | 1     | 0    | 0    | 0.50 | 0.50 | 1  | 0    | 3       | 1\nSUB $0x2b8,%RSP             | 1     | 0.33 | 0.33 | 0    | 0    | 0  | 0.33 | 1       | 0.33\nMOV 0x2f0(%RSP),%RAX        | 1     | 0    | 0    | 0.50 | 0.50 | 0  | 0    | 2       | 0.50\nMOV %RDX,0x10(%RSP)         | 1     | 0    | 0    | 0.50 | 0.50 | 1  | 0    | 3       | 1\nMOV %R9,0x48(%RSP)          | 1     | 0    | 0    | 0.50 | 0.50 | 1  | 0    | 3       | 1\nMOV 0x2f8(%RSP),%RDX        | 1     | 0    | 0    | 0.50 | 0.50 | 0  | 0    | 2       | 0.50\nMOV 0x13ae6(%RIP),%R9D      | 1     | 0    | 0    | 0.50 | 0.50 | 0  | 0    | 2       | 0.50\nMOV %RDI,0x8(%RSP)          | 1     | 0    | 0    | 0.50 | 0.50 | 1  | 0    | 3       | 1\nMOV %RSI,(%RSP)             | 1     | 0    | 0    | 0.50 | 0.50 | 1  | 0    | 3       | 1\nMOV %RCX,0x38(%RSP)         | 1     | 0    | 0    | 0.50 | 0.50 | 1  | 0    | 3       | 1\nMOV %R8,0x40(%RSP)          | 1     | 0    | 0    | 0.50 | 0.50 | 1  | 0    | 3       | 1\nMOV %RAX,0x50(%RSP)         | 1     | 0    | 0    | 0.50 | 0.50 | 1  | 0    | 3       | 1\nMOV %RDX,0x68(%RSP)         | 1     | 0    | 0    | 0.50 | 0.50 | 1  | 0    | 3       | 1\nTEST %R9D,%R9D              | 1     | 0.33 | 0.33 | 0    | 0    | 0  | 0.33 | 1       | 0.33\nJNE 19610 <exch_qbc_+0xbf0> | 1     | 0    | 0    | 0    | 0    | 0  | 1    | 0       | 1-2\nMOV 0x147a2(%RIP),%ECX      | 1     | 0    | 0    | 0.50 | 0.50 | 0  | 0    | 2       | 0.50\nTEST %ECX,%ECX              | 1     | 0.33 | 0.33 | 0    | 0    | 0  | 0.33 | 1       | 0.33\nJLE 18c95 <exch_qbc_+0x275> | 1     | 0    | 0    | 0    | 0    | 0  | 1    | 0       | 1-2\nLEA 0x13ab3(%RIP),%RBX      | 1     | 0.50 | 0.50 | 0    | 0    | 0  | 0    | 1       | 0.50\nLEA -0x1(%RCX),%ESI         | 1     | 0.50 | 0.50 | 0    | 0    | 0  | 0    | 1       | 0.50\nLEA 0x4(%RBX),%RDI          | 1     | 0.50 | 0.50 | 0    | 0    | 0  | 0    | 1       | 0.50\nLEA (%RDI,%RSI,4),%RBP      | 1     | 0.50 | 0.50 | 0    | 0    | 0  | 0    | 1       | 0.50\nLEA 0xa0(%RSP),%R8          | 1     | 0.50 | 0.50 | 0    | 0    | 0  | 0    | 1       | 0.50\nMOV %RBP,0x28(%RSP)         | 1     | 0    | 0    | 0.50 | 0.50 | 1  | 0    | 3       | 1\nLEA 0x146f4(%RIP),%RAX      | 1     | 0.50 | 0.50 | 0    | 0    | 0  | 0    | 1       | 0.50\nMOV %R8,0x18(%RSP)          | 1     | 0    | 0    | 0.50 | 0.50 | 1  | 0    | 3       | 1\nLEA 0x94(%RSP),%R15         | 1     | 0.50 | 0.50 | 0    | 0    | 0  | 0    | 1       | 0.50\nLEA 0x90(%RSP),%R14         | 1     | 0.50 | 0.50 | 0    | 0    | 0  | 0    | 1       | 0.50\nLEA 0x8c(%RSP),%R13         | 1     | 0.50 | 0.50 | 0    | 0    | 0  | 0    | 1       | 0.50\nLEA 0x88(%RSP),%R12         | 1     | 0.50 | 0.50 | 0    | 0    | 0  | 0    | 1       | 0.50\nNOPL (%RAX)                 | 1     | 0    | 0    | 0    | 0    | 0  | 0    | 0       | 0.25\nMOV 0x138ab(%RIP),%EBX      | 1     | 0    | 0    | 0.50 | 0.50 | 0  | 0    | 2       | 0.50\nTEST %EBX,%EBX              | 1     | 0.33 | 0.33 | 0    | 0    | 0  | 0.33 | 1       | 0.33\nJNE 19650 <exch_qbc_+0xc30> | 1     | 0    | 0    | 0    | 0    | 0  | 1    | 0       | 1-2\nMOV 0x1466c(%RIP),%R14D     | 1     | 0    | 0    | 0.50 | 0.50 | 0  | 0    | 2       | 0.50\nTEST %R14D,%R14D            | 1     | 0.33 | 0.33 | 0    | 0    | 0  | 0.33 | 1       | 0.33\nJLE 19260 <exch_qbc_+0x840> | 1     | 0    | 0    | 0    | 0    | 0  | 1    | 0       | 1-2\nMOVQ $0x1,0x18(%RSP)        | 1     | 0    | 0    | 0.50 | 0.50 | 1  | 0    | 3       | 1\nSUB $0x1,%R14D              | 1     | 0.33 | 0.33 | 0    | 0    | 0  | 0.33 | 1       | 0.33\nADD $0x2,%R14               | 1     | 0.33 | 0.33 | 0    | 0    | 0  | 0.33 | 1       | 0.33\nMOV %R14,0x60(%RSP)         | 1     | 0    | 0    | 0.50 | 0.50 | 1  | 0    | 3       | 1\nJMP 18d16 <exch_qbc_+0x2f6> | 1     | 0    | 0    | 0    | 0    | 0  | 1    | 0       | 2\nNOPL (%RAX)                 | 1     | 0    | 0    | 0    | 0    | 0  | 0    | 0       | 0.25\nNOPL (%RAX,%RAX,1)          | 1     | 0    | 0    | 0    | 0    | 0  | 0    | 0       | 0.25\nNOP                         | 1     | 0    | 0    | 0    | 0    | 0  | 0    | 0       | 0.25\nNOPL (%RAX)                 | 1     | 0    | 0    | 0    | 0    | 0  | 0    | 0       | 0.25\nXCHG %AX,%AX                | 1     | 0    | 0    | 0    | 0    | 0  | 0    | 0       | 0.25\nNOPL (%RAX)                 | 1     | 0    | 0    | 0    | 0    | 0  | 0    | 0       | 0.25\nNOPL (%RAX)                 | 1     | 0    | 0    | 0    | 0    | 0  | 0    | 0       | 0.25\nNOPL (%RAX,%RAX,1)          | 1     | 0    | 0    | 0    | 0    | 0  | 0    | 0       | 0.25\nNOPL (%RAX)                 | 1     | 0    | 0    | 0    | 0    | 0  | 0    | 0       | 0.25\nNOPL (%RAX,%RAX,1)          | 1     | 0    | 0    | 0    | 0    | 0  | 0    | 0       | 0.25\nMOV 0x132d1(%RIP),%R13D     | 1     | 0    | 0    | 0.50 | 0.50 | 0  | 0    | 2       | 0.50\nTEST %R13D,%R13D            | 1     | 0.33 | 0.33 | 0    | 0    | 0  | 0.33 | 1       | 0.33\nJNE 195b0 <exch_qbc_+0xb90> | 1     | 0    | 0    | 0    | 0    | 0  | 1    | 0       | 1-2\nMOV 0x13fa9(%RIP),%R15D     | 1     | 0    | 0    | 0.50 | 0.50 | 0  | 0    | 2       | 0.50\nMOV %R15D,0x60(%RSP)        | 1     | 0    | 0    | 0.50 | 0.50 | 1  | 0    | 3       | 1\nTEST %R15D,%R15D            | 1     | 0.33 | 0.33 | 0    | 0    | 0  | 0.33 | 1       | 0.33\nJLE 195fa <exch_qbc_+0xbda> | 1     | 0    | 0    | 0    | 0    | 0  | 1    | 0       | 1-2\nMOVQ $0x1,0x18(%RSP)        | 1     | 0    | 0    | 0.50 | 0.50 | 1  | 0    | 3       | 1\nLEA 0xa0(%RSP),%R11         | 1     | 0.50 | 0.50 | 0    | 0    | 0  | 0    | 1       | 0.50\nLEA 0x132a3(%RIP),%RBX      | 1     | 0.50 | 0.50 | 0    | 0    | 0  | 0    | 1       | 0.50\nMOV %R11,0x20(%RSP)         | 1     | 0    | 0    | 0.50 | 0.50 | 1  | 0    | 3       | 1\nLEA 0x94(%RSP),%R13         | 1     | 0.50 | 0.50 | 0    | 0    | 0  | 0    | 1       | 0.50\nLEA 0x90(%RSP),%R12         | 1     | 0.50 | 0.50 | 0    | 0    | 0  | 0    | 1       | 0.50\nLEA 0x8c(%RSP),%RBP         | 1     | 0.50 | 0.50 | 0    | 0    | 0  | 0    | 1       | 0.50\nLEA 0x88(%RSP),%R14         | 1     | 0.50 | 0.50 | 0    | 0    | 0  | 0    | 1       | 0.50\nJMP 19466 <exch_qbc_+0xa46> | 1     | 0    | 0    | 0    | 0    | 0  | 1    | 0       | 2\nNOPW (%RAX,%RAX,1)          | 1     | 0    | 0    | 0    | 0    | 0  | 0    | 0       | 0.25\nNOPW (%RAX,%RAX,1)          | 1     | 0    | 0    | 0    | 0    | 0  | 0    | 0       | 0.25\nNOPL (%RAX,%RAX,1)          | 1     | 0    | 0    | 0    | 0    | 0  | 0    | 0       | 0.25\nLEA 0xf3d5(%RIP),%RDI       | 1     | 0.50 | 0.50 | 0    | 0    | 0  | 0    | 1       | 0.50\nCALL 271a0 <timer_stop_>    | 3     | 0    | 0    | 0.50 | 0.50 | 1  | 1    | 0       | 2\nMOV 0x12f75(%RIP),%R14D     | 1     | 0    | 0    | 0.50 | 0.50 | 0  | 0    | 2       | 0.50\nTEST %R14D,%R14D            | 1     | 0.33 | 0.33 | 0    | 0    | 0  | 0.33 | 1       | 0.33\nJE 19270 <exch_qbc_+0x850>  | 1     | 0    | 0    | 0    | 0    | 0  | 1    | 0       | 1-2\nLEA 0xf3b1(%RIP),%RDI       | 1     | 0.50 | 0.50 | 0    | 0    | 0  | 0    | 1       | 0.50\nCALL 27180 <timer_start_>   | 3     | 0    | 0    | 0.50 | 0.50 | 1  | 1    | 0       | 2\nMOV 0x13c42(%RIP),%EBP      | 1     | 0    | 0    | 0.50 | 0.50 | 0  | 0    | 2       | 0.50\nMOV %EBP,0x60(%RSP)         | 1     | 0    | 0    | 0.50 | 0.50 | 1  | 0    | 3       | 1\nTEST %EBP,%EBP              | 1     | 0.33 | 0.33 | 0    | 0    | 0  | 0.33 | 1       | 0.33\nJG 19285 <exch_qbc_+0x865>  | 1     | 0    | 0    | 0    | 0    | 0  | 1    | 0       | 1-2\nNOPW (%RAX,%RAX,1)          | 1     | 0    | 0    | 0    | 0    | 0  | 0    | 0       | 0.25\nMOV 0x12f42(%RIP),%EBX      | 1     | 0    | 0    | 0.50 | 0.50 | 0  | 0    | 2       | 0.50\nTEST %EBX,%EBX              | 1     | 0.33 | 0.33 | 0    | 0    | 0  | 0.33 | 1       | 0.33\nJNE 19630 <exch_qbc_+0xc10> | 1     | 0    | 0    | 0    | 0    | 0  | 1    | 0       | 1-2\nADD $0x2b8,%RSP             | 1     | 0.33 | 0.33 | 0    | 0    | 0  | 0.33 | 1       | 0.33\nPOP %RBX                    | 1     | 0    | 0    | 0.50 | 0.50 | 0  | 0    | 2       | 0.50\nPOP %RBP                    | 1     | 0    | 0    | 0.50 | 0.50 | 0  | 0    | 2       | 0.50\nPOP %R12                    | 1     | 0    | 0    | 0.50 | 0.50 | 0  | 0    | 2       | 0.50\nPOP %R13                    | 1     | 0    | 0    | 0.50 | 0.50 | 0  | 0    | 2       | 0.50\nPOP %R14                    | 1     | 0    | 0    | 0.50 | 0.50 | 0  | 0    | 2       | 0.50\nPOP %R15                    | 1     | 0    | 0    | 0.50 | 0.50 | 0  | 0    | 2       | 0.50\nRET                         | 2     | 0    | 0    | 0.50 | 0.50 | 0  | 1    | 0       | 2\nNOPL (%RAX)                 | 1     | 0    | 0    | 0    | 0    | 0  | 0    | 0       | 0.25\nLEA 0xf36d(%RIP),%RDI       | 1     | 0.50 | 0.50 | 0    | 0    | 0  | 0    | 1       | 0.50\nCALL 27180 <timer_start_>   | 3     | 0    | 0    | 0.50 | 0.50 | 1  | 1    | 0       | 2\nMOV 0x13bfe(%RIP),%ECX      | 1     | 0    | 0    | 0.50 | 0.50 | 0  | 0    | 2       | 0.50\nTEST %ECX,%ECX              | 1     | 0.33 | 0.33 | 0    | 0    | 0  | 0.33 | 1       | 0.33\nJG 18a86 <exch_qbc_+0x66>   | 1     | 0    | 0    | 0    | 0    | 0  | 1    | 0       | 1-2\nJMP 18c87 <exch_qbc_+0x267> | 1     | 0    | 0    | 0    | 0    | 0  | 1    | 0       | 2\nNOP                         | 1     | 0    | 0    | 0    | 0    | 0  | 0    | 0       | 0.25\nLEA 0xf34d(%RIP),%RDI       | 1     | 0.50 | 0.50 | 0    | 0    | 0  | 0    | 1       | 0.50\nADD $0x2b8,%RSP             | 1     | 0.33 | 0.33 | 0    | 0    | 0  | 0.33 | 1       | 0.33\nPOP %RBX                    | 1     | 0    | 0    | 0.50 | 0.50 | 0  | 0    | 2       | 0.50\nPOP %RBP                    | 1     | 0    | 0    | 0.50 | 0.50 | 0  | 0    | 2       | 0.50\nPOP %R12                    | 1     | 0    | 0    | 0.50 | 0.50 | 0  | 0    | 2       | 0.50\nPOP %R13                    | 1     | 0    | 0    | 0.50 | 0.50 | 0  | 0    | 2       | 0.50\nPOP %R14                    | 1     | 0    | 0    | 0.50 | 0.50 | 0  | 0    | 2       | 0.50\nPOP %R15                    | 1     | 0    | 0    | 0.50 | 0.50 | 0  | 0    | 2       | 0.50\nJMP 271a0 <timer_stop_>     | 1     | 0    | 0    | 0    | 0    | 0  | 1    | 0       | 2\nNOPL (%RAX)                 | 1     | 0    | 0    | 0    | 0    | 0  | 0    | 0       | 0.25\nLEA 0xf32d(%RIP),%RDI       | 1     | 0.50 | 0.50 | 0    | 0    | 0  | 0    | 1       | 0.50\nCALL 271a0 <timer_stop_>    | 3     | 0    | 0    | 0.50 | 0.50 | 1  | 1    | 0       | 2\nMOV 0x12ed5(%RIP),%R15D     | 1     | 0    | 0    | 0.50 | 0.50 | 0  | 0    | 2       | 0.50\nTEST %R15D,%R15D            | 1     | 0.33 | 0.33 | 0    | 0    | 0  | 0.33 | 1       | 0.33\nJE 18c95 <exch_qbc_+0x275>  | 1     | 0    | 0    | 0    | 0    | 0  | 1    | 0       | 1-2\nLEA 0xf319(%RIP),%RDI       | 1     | 0.50 | 0.50 | 0    | 0    | 0  | 0    | 1       | 0.50\nCALL 27180 <timer_start_>   | 3     | 0    | 0    | 0.50 | 0.50 | 1  | 1    | 0       | 2\nJMP 18c95 <exch_qbc_+0x275> | 1     | 0    | 0    | 0    | 0    | 0  | 1    | 0       | 2\nNOPL (%RAX)                 | 1     | 0    | 0    | 0    | 0    | 0  | 0    | 0       | 0.25\n",
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
          workaround = " - Try another compiler or update/tune your current one\n - Make array accesses unit-stride:\n  * If your function streams arrays of structures (AoS), try to use structures of arrays instead (SoA):\ndo i a(i)%x = b(i)%x (slow, non stride 1) => do i a%x(i) = b%x(i) (fast, stride 1)\n",
          details = "All SSE/AVX instructions are used in scalar version (process only one data element in vector registers).\nSince your execution units are vector units, only a vectorized function can use their full power.\n",
          title = "Vectorization",
          txt = "Your function is not vectorized.\nOnly 35% of vector register length is used (average across all SSE/AVX instructions).\nBy vectorizing your function, you can lower the cost of an iteration from 34.25 to 9.75 cycles (3.51x speedup).",
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
          details = "Calling (and then returning from) a function prevents many compiler optimizations (like vectorization), breaks control flow (which reduces pipeline performance) and executes extra instructions to save/restore the registers used inside it, which is very expensive (dozens of cycles). Consider to inline small functions.\n - timer_start: 3 occurrences\n - timer_stop: 2 occurrences\n",
          title = "CALL instructions",
          txt = "Detected function call instructions.\n",
        },
        {
          details = "These instructions generate more than one micro-operation and only one of them can be decoded during a cycle and the extra micro-operations increase pressure on execution units.\n - RET: 1 occurrences\n",
          title = "Complex instructions",
          txt = "Detected COMPLEX INSTRUCTIONS.\n",
        },
        {
          title = "Type of elements and instruction set",
          txt = "No instructions are processing arithmetic or math operations on FP elements. This function is probably writing/copying data or processing integer elements.",
        },
        {
          title = "Matching between your function (in the source code) and the binary function",
          txt = "The binary function does not contain any FP arithmetical operations.\nThe binary function is loading 60 bytes.\nThe binary function is storing 120 bytes.",
        },
      },
      expert = {
        {
          title = "General properties",
          txt = "nb instructions    : 126\nnb uops            : 137\nloop length        : 616\nused x86 registers : 15\nused mmx registers : 0\nused xmm registers : 0\nused ymm registers : 0\nused zmm registers : 0\nnb stack references: 19\n",
        },
        {
          title = "Front-end",
          txt = "MACRO FUSION NOT POSSIBLE\nFIT IN UOP CACHE\nmicro-operation queue: 34.25 cycles\nfront end            : 34.25 cycles\n",
        },
        {
          title = "Back-end",
          txt = "       | P0    | P1    | P2    | P3    | P4    | P5\n------------------------------------------------------\nuops   | 19.00 | 19.00 | 26.50 | 26.50 | 27.00 | 22.00\ncycles | 19.00 | 19.00 | 26.50 | 26.50 | 27.00 | 22.00\n\nCycles executing div or sqrt instructions: NA\n",
        },
        {
          title = "Cycles summary",
          txt = "Front-end : 34.25\nDispatch  : 27.00\nOverall L1: 34.25\n",
        },
        {
          title = "Vectorization ratios",
          txt = "all     : 0%\nload    : 0%\nstore   : 0%\nmul     : NA (no mul vectorizable/vectorized instructions)\nadd-sub : 0%\nfma     : NA (no fma vectorizable/vectorized instructions)\ndiv/sqrt: NA (no div/sqrt vectorizable/vectorized instructions)\nother   : 0%\n",
        },
        {
          title = "Vector efficiency ratios",
          txt = "all     : 35%\nload    : 29%\nstore   : 43%\nmul     : NA (no mul vectorizable/vectorized instructions)\nadd-sub : 37%\nfma     : NA (no fma vectorizable/vectorized instructions)\ndiv/sqrt: NA (no div/sqrt vectorizable/vectorized instructions)\nother   : 25%\n",
        },
        {
          title = "Cycles and memory resources usage",
          txt = "Assuming all data fit into the L1 cache, each call to the function takes 34.25 cycles. At this rate:\n - 5% of peak load performance is reached (1.75 out of 32.00 bytes loaded per cycle (GB/s @ 1GHz))\n - 21% of peak store performance is reached (3.50 out of 16.00 bytes stored per cycle (GB/s @ 1GHz))\n",
        },
        {
          title = "Front-end bottlenecks",
          txt = "Performance is limited by instruction throughput (loading/decoding program instructions to execution core) (front-end is a bottleneck).\n\nBy removing all these bottlenecks, you can lower the cost of an iteration from 34.25 to 27.00 cycles (1.27x speedup).\n",
        },
        {
          title = "ASM code",
          txt = "In the binary file, the address of the function is: 18a20\n\nInstruction                 | Nb FU | P0   | P1   | P2   | P3   | P4 | P5   | Latency | Recip. throughput\n---------------------------------------------------------------------------------------------------------\nPUSH %R15                   | 1     | 0    | 0    | 0.50 | 0.50 | 1  | 0    | 3       | 1\nPUSH %R14                   | 1     | 0    | 0    | 0.50 | 0.50 | 1  | 0    | 3       | 1\nPUSH %R13                   | 1     | 0    | 0    | 0.50 | 0.50 | 1  | 0    | 3       | 1\nPUSH %R12                   | 1     | 0    | 0    | 0.50 | 0.50 | 1  | 0    | 3       | 1\nPUSH %RBP                   | 1     | 0    | 0    | 0.50 | 0.50 | 1  | 0    | 3       | 1\nPUSH %RBX                   | 1     | 0    | 0    | 0.50 | 0.50 | 1  | 0    | 3       | 1\nSUB $0x2b8,%RSP             | 1     | 0.33 | 0.33 | 0    | 0    | 0  | 0.33 | 1       | 0.33\nMOV 0x2f0(%RSP),%RAX        | 1     | 0    | 0    | 0.50 | 0.50 | 0  | 0    | 2       | 0.50\nMOV %RDX,0x10(%RSP)         | 1     | 0    | 0    | 0.50 | 0.50 | 1  | 0    | 3       | 1\nMOV %R9,0x48(%RSP)          | 1     | 0    | 0    | 0.50 | 0.50 | 1  | 0    | 3       | 1\nMOV 0x2f8(%RSP),%RDX        | 1     | 0    | 0    | 0.50 | 0.50 | 0  | 0    | 2       | 0.50\nMOV 0x13ae6(%RIP),%R9D      | 1     | 0    | 0    | 0.50 | 0.50 | 0  | 0    | 2       | 0.50\nMOV %RDI,0x8(%RSP)          | 1     | 0    | 0    | 0.50 | 0.50 | 1  | 0    | 3       | 1\nMOV %RSI,(%RSP)             | 1     | 0    | 0    | 0.50 | 0.50 | 1  | 0    | 3       | 1\nMOV %RCX,0x38(%RSP)         | 1     | 0    | 0    | 0.50 | 0.50 | 1  | 0    | 3       | 1\nMOV %R8,0x40(%RSP)          | 1     | 0    | 0    | 0.50 | 0.50 | 1  | 0    | 3       | 1\nMOV %RAX,0x50(%RSP)         | 1     | 0    | 0    | 0.50 | 0.50 | 1  | 0    | 3       | 1\nMOV %RDX,0x68(%RSP)         | 1     | 0    | 0    | 0.50 | 0.50 | 1  | 0    | 3       | 1\nTEST %R9D,%R9D              | 1     | 0.33 | 0.33 | 0    | 0    | 0  | 0.33 | 1       | 0.33\nJNE 19610 <exch_qbc_+0xbf0> | 1     | 0    | 0    | 0    | 0    | 0  | 1    | 0       | 1-2\nMOV 0x147a2(%RIP),%ECX      | 1     | 0    | 0    | 0.50 | 0.50 | 0  | 0    | 2       | 0.50\nTEST %ECX,%ECX              | 1     | 0.33 | 0.33 | 0    | 0    | 0  | 0.33 | 1       | 0.33\nJLE 18c95 <exch_qbc_+0x275> | 1     | 0    | 0    | 0    | 0    | 0  | 1    | 0       | 1-2\nLEA 0x13ab3(%RIP),%RBX      | 1     | 0.50 | 0.50 | 0    | 0    | 0  | 0    | 1       | 0.50\nLEA -0x1(%RCX),%ESI         | 1     | 0.50 | 0.50 | 0    | 0    | 0  | 0    | 1       | 0.50\nLEA 0x4(%RBX),%RDI          | 1     | 0.50 | 0.50 | 0    | 0    | 0  | 0    | 1       | 0.50\nLEA (%RDI,%RSI,4),%RBP      | 1     | 0.50 | 0.50 | 0    | 0    | 0  | 0    | 1       | 0.50\nLEA 0xa0(%RSP),%R8          | 1     | 0.50 | 0.50 | 0    | 0    | 0  | 0    | 1       | 0.50\nMOV %RBP,0x28(%RSP)         | 1     | 0    | 0    | 0.50 | 0.50 | 1  | 0    | 3       | 1\nLEA 0x146f4(%RIP),%RAX      | 1     | 0.50 | 0.50 | 0    | 0    | 0  | 0    | 1       | 0.50\nMOV %R8,0x18(%RSP)          | 1     | 0    | 0    | 0.50 | 0.50 | 1  | 0    | 3       | 1\nLEA 0x94(%RSP),%R15         | 1     | 0.50 | 0.50 | 0    | 0    | 0  | 0    | 1       | 0.50\nLEA 0x90(%RSP),%R14         | 1     | 0.50 | 0.50 | 0    | 0    | 0  | 0    | 1       | 0.50\nLEA 0x8c(%RSP),%R13         | 1     | 0.50 | 0.50 | 0    | 0    | 0  | 0    | 1       | 0.50\nLEA 0x88(%RSP),%R12         | 1     | 0.50 | 0.50 | 0    | 0    | 0  | 0    | 1       | 0.50\nNOPL (%RAX)                 | 1     | 0    | 0    | 0    | 0    | 0  | 0    | 0       | 0.25\nMOV 0x138ab(%RIP),%EBX      | 1     | 0    | 0    | 0.50 | 0.50 | 0  | 0    | 2       | 0.50\nTEST %EBX,%EBX              | 1     | 0.33 | 0.33 | 0    | 0    | 0  | 0.33 | 1       | 0.33\nJNE 19650 <exch_qbc_+0xc30> | 1     | 0    | 0    | 0    | 0    | 0  | 1    | 0       | 1-2\nMOV 0x1466c(%RIP),%R14D     | 1     | 0    | 0    | 0.50 | 0.50 | 0  | 0    | 2       | 0.50\nTEST %R14D,%R14D            | 1     | 0.33 | 0.33 | 0    | 0    | 0  | 0.33 | 1       | 0.33\nJLE 19260 <exch_qbc_+0x840> | 1     | 0    | 0    | 0    | 0    | 0  | 1    | 0       | 1-2\nMOVQ $0x1,0x18(%RSP)        | 1     | 0    | 0    | 0.50 | 0.50 | 1  | 0    | 3       | 1\nSUB $0x1,%R14D              | 1     | 0.33 | 0.33 | 0    | 0    | 0  | 0.33 | 1       | 0.33\nADD $0x2,%R14               | 1     | 0.33 | 0.33 | 0    | 0    | 0  | 0.33 | 1       | 0.33\nMOV %R14,0x60(%RSP)         | 1     | 0    | 0    | 0.50 | 0.50 | 1  | 0    | 3       | 1\nJMP 18d16 <exch_qbc_+0x2f6> | 1     | 0    | 0    | 0    | 0    | 0  | 1    | 0       | 2\nNOPL (%RAX)                 | 1     | 0    | 0    | 0    | 0    | 0  | 0    | 0       | 0.25\nNOPL (%RAX,%RAX,1)          | 1     | 0    | 0    | 0    | 0    | 0  | 0    | 0       | 0.25\nNOP                         | 1     | 0    | 0    | 0    | 0    | 0  | 0    | 0       | 0.25\nNOPL (%RAX)                 | 1     | 0    | 0    | 0    | 0    | 0  | 0    | 0       | 0.25\nXCHG %AX,%AX                | 1     | 0    | 0    | 0    | 0    | 0  | 0    | 0       | 0.25\nNOPL (%RAX)                 | 1     | 0    | 0    | 0    | 0    | 0  | 0    | 0       | 0.25\nNOPL (%RAX)                 | 1     | 0    | 0    | 0    | 0    | 0  | 0    | 0       | 0.25\nNOPL (%RAX,%RAX,1)          | 1     | 0    | 0    | 0    | 0    | 0  | 0    | 0       | 0.25\nNOPL (%RAX)                 | 1     | 0    | 0    | 0    | 0    | 0  | 0    | 0       | 0.25\nNOPL (%RAX,%RAX,1)          | 1     | 0    | 0    | 0    | 0    | 0  | 0    | 0       | 0.25\nMOV 0x132d1(%RIP),%R13D     | 1     | 0    | 0    | 0.50 | 0.50 | 0  | 0    | 2       | 0.50\nTEST %R13D,%R13D            | 1     | 0.33 | 0.33 | 0    | 0    | 0  | 0.33 | 1       | 0.33\nJNE 195b0 <exch_qbc_+0xb90> | 1     | 0    | 0    | 0    | 0    | 0  | 1    | 0       | 1-2\nMOV 0x13fa9(%RIP),%R15D     | 1     | 0    | 0    | 0.50 | 0.50 | 0  | 0    | 2       | 0.50\nMOV %R15D,0x60(%RSP)        | 1     | 0    | 0    | 0.50 | 0.50 | 1  | 0    | 3       | 1\nTEST %R15D,%R15D            | 1     | 0.33 | 0.33 | 0    | 0    | 0  | 0.33 | 1       | 0.33\nJLE 195fa <exch_qbc_+0xbda> | 1     | 0    | 0    | 0    | 0    | 0  | 1    | 0       | 1-2\nMOVQ $0x1,0x18(%RSP)        | 1     | 0    | 0    | 0.50 | 0.50 | 1  | 0    | 3       | 1\nLEA 0xa0(%RSP),%R11         | 1     | 0.50 | 0.50 | 0    | 0    | 0  | 0    | 1       | 0.50\nLEA 0x132a3(%RIP),%RBX      | 1     | 0.50 | 0.50 | 0    | 0    | 0  | 0    | 1       | 0.50\nMOV %R11,0x20(%RSP)         | 1     | 0    | 0    | 0.50 | 0.50 | 1  | 0    | 3       | 1\nLEA 0x94(%RSP),%R13         | 1     | 0.50 | 0.50 | 0    | 0    | 0  | 0    | 1       | 0.50\nLEA 0x90(%RSP),%R12         | 1     | 0.50 | 0.50 | 0    | 0    | 0  | 0    | 1       | 0.50\nLEA 0x8c(%RSP),%RBP         | 1     | 0.50 | 0.50 | 0    | 0    | 0  | 0    | 1       | 0.50\nLEA 0x88(%RSP),%R14         | 1     | 0.50 | 0.50 | 0    | 0    | 0  | 0    | 1       | 0.50\nJMP 19466 <exch_qbc_+0xa46> | 1     | 0    | 0    | 0    | 0    | 0  | 1    | 0       | 2\nNOPW (%RAX,%RAX,1)          | 1     | 0    | 0    | 0    | 0    | 0  | 0    | 0       | 0.25\nNOPW (%RAX,%RAX,1)          | 1     | 0    | 0    | 0    | 0    | 0  | 0    | 0       | 0.25\nNOPL (%RAX,%RAX,1)          | 1     | 0    | 0    | 0    | 0    | 0  | 0    | 0       | 0.25\nLEA 0xf3d5(%RIP),%RDI       | 1     | 0.50 | 0.50 | 0    | 0    | 0  | 0    | 1       | 0.50\nCALL 271a0 <timer_stop_>    | 3     | 0    | 0    | 0.50 | 0.50 | 1  | 1    | 0       | 2\nMOV 0x12f75(%RIP),%R14D     | 1     | 0    | 0    | 0.50 | 0.50 | 0  | 0    | 2       | 0.50\nTEST %R14D,%R14D            | 1     | 0.33 | 0.33 | 0    | 0    | 0  | 0.33 | 1       | 0.33\nJE 19270 <exch_qbc_+0x850>  | 1     | 0    | 0    | 0    | 0    | 0  | 1    | 0       | 1-2\nLEA 0xf3b1(%RIP),%RDI       | 1     | 0.50 | 0.50 | 0    | 0    | 0  | 0    | 1       | 0.50\nCALL 27180 <timer_start_>   | 3     | 0    | 0    | 0.50 | 0.50 | 1  | 1    | 0       | 2\nMOV 0x13c42(%RIP),%EBP      | 1     | 0    | 0    | 0.50 | 0.50 | 0  | 0    | 2       | 0.50\nMOV %EBP,0x60(%RSP)         | 1     | 0    | 0    | 0.50 | 0.50 | 1  | 0    | 3       | 1\nTEST %EBP,%EBP              | 1     | 0.33 | 0.33 | 0    | 0    | 0  | 0.33 | 1       | 0.33\nJG 19285 <exch_qbc_+0x865>  | 1     | 0    | 0    | 0    | 0    | 0  | 1    | 0       | 1-2\nNOPW (%RAX,%RAX,1)          | 1     | 0    | 0    | 0    | 0    | 0  | 0    | 0       | 0.25\nMOV 0x12f42(%RIP),%EBX      | 1     | 0    | 0    | 0.50 | 0.50 | 0  | 0    | 2       | 0.50\nTEST %EBX,%EBX              | 1     | 0.33 | 0.33 | 0    | 0    | 0  | 0.33 | 1       | 0.33\nJNE 19630 <exch_qbc_+0xc10> | 1     | 0    | 0    | 0    | 0    | 0  | 1    | 0       | 1-2\nADD $0x2b8,%RSP             | 1     | 0.33 | 0.33 | 0    | 0    | 0  | 0.33 | 1       | 0.33\nPOP %RBX                    | 1     | 0    | 0    | 0.50 | 0.50 | 0  | 0    | 2       | 0.50\nPOP %RBP                    | 1     | 0    | 0    | 0.50 | 0.50 | 0  | 0    | 2       | 0.50\nPOP %R12                    | 1     | 0    | 0    | 0.50 | 0.50 | 0  | 0    | 2       | 0.50\nPOP %R13                    | 1     | 0    | 0    | 0.50 | 0.50 | 0  | 0    | 2       | 0.50\nPOP %R14                    | 1     | 0    | 0    | 0.50 | 0.50 | 0  | 0    | 2       | 0.50\nPOP %R15                    | 1     | 0    | 0    | 0.50 | 0.50 | 0  | 0    | 2       | 0.50\nRET                         | 2     | 0    | 0    | 0.50 | 0.50 | 0  | 1    | 0       | 2\nNOPL (%RAX)                 | 1     | 0    | 0    | 0    | 0    | 0  | 0    | 0       | 0.25\nLEA 0xf36d(%RIP),%RDI       | 1     | 0.50 | 0.50 | 0    | 0    | 0  | 0    | 1       | 0.50\nCALL 27180 <timer_start_>   | 3     | 0    | 0    | 0.50 | 0.50 | 1  | 1    | 0       | 2\nMOV 0x13bfe(%RIP),%ECX      | 1     | 0    | 0    | 0.50 | 0.50 | 0  | 0    | 2       | 0.50\nTEST %ECX,%ECX              | 1     | 0.33 | 0.33 | 0    | 0    | 0  | 0.33 | 1       | 0.33\nJG 18a86 <exch_qbc_+0x66>   | 1     | 0    | 0    | 0    | 0    | 0  | 1    | 0       | 1-2\nJMP 18c87 <exch_qbc_+0x267> | 1     | 0    | 0    | 0    | 0    | 0  | 1    | 0       | 2\nNOP                         | 1     | 0    | 0    | 0    | 0    | 0  | 0    | 0       | 0.25\nLEA 0xf34d(%RIP),%RDI       | 1     | 0.50 | 0.50 | 0    | 0    | 0  | 0    | 1       | 0.50\nADD $0x2b8,%RSP             | 1     | 0.33 | 0.33 | 0    | 0    | 0  | 0.33 | 1       | 0.33\nPOP %RBX                    | 1     | 0    | 0    | 0.50 | 0.50 | 0  | 0    | 2       | 0.50\nPOP %RBP                    | 1     | 0    | 0    | 0.50 | 0.50 | 0  | 0    | 2       | 0.50\nPOP %R12                    | 1     | 0    | 0    | 0.50 | 0.50 | 0  | 0    | 2       | 0.50\nPOP %R13                    | 1     | 0    | 0    | 0.50 | 0.50 | 0  | 0    | 2       | 0.50\nPOP %R14                    | 1     | 0    | 0    | 0.50 | 0.50 | 0  | 0    | 2       | 0.50\nPOP %R15                    | 1     | 0    | 0    | 0.50 | 0.50 | 0  | 0    | 2       | 0.50\nJMP 271a0 <timer_stop_>     | 1     | 0    | 0    | 0    | 0    | 0  | 1    | 0       | 2\nNOPL (%RAX)                 | 1     | 0    | 0    | 0    | 0    | 0  | 0    | 0       | 0.25\nLEA 0xf32d(%RIP),%RDI       | 1     | 0.50 | 0.50 | 0    | 0    | 0  | 0    | 1       | 0.50\nCALL 271a0 <timer_stop_>    | 3     | 0    | 0    | 0.50 | 0.50 | 1  | 1    | 0       | 2\nMOV 0x12ed5(%RIP),%R15D     | 1     | 0    | 0    | 0.50 | 0.50 | 0  | 0    | 2       | 0.50\nTEST %R15D,%R15D            | 1     | 0.33 | 0.33 | 0    | 0    | 0  | 0.33 | 1       | 0.33\nJE 18c95 <exch_qbc_+0x275>  | 1     | 0    | 0    | 0    | 0    | 0  | 1    | 0       | 1-2\nLEA 0xf319(%RIP),%RDI       | 1     | 0.50 | 0.50 | 0    | 0    | 0  | 0    | 1       | 0.50\nCALL 27180 <timer_start_>   | 3     | 0    | 0    | 0.50 | 0.50 | 1  | 1    | 0       | 2\nJMP 18c95 <exch_qbc_+0x275> | 1     | 0    | 0    | 0    | 0    | 0  | 1    | 0       | 2\nNOPL (%RAX)                 | 1     | 0    | 0    | 0    | 0    | 0  | 0    | 0       | 0.25\n",
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
          workaround = " - Try another compiler or update/tune your current one\n - Make array accesses unit-stride:\n  * If your function streams arrays of structures (AoS), try to use structures of arrays instead (SoA):\ndo i a(i)%x = b(i)%x (slow, non stride 1) => do i a%x(i) = b%x(i) (fast, stride 1)\n",
          details = "All SSE/AVX instructions are used in scalar version (process only one data element in vector registers).\nSince your execution units are vector units, only a vectorized function can use their full power.\n",
          title = "Vectorization",
          txt = "Your function is not vectorized.\nOnly 35% of vector register length is used (average across all SSE/AVX instructions).\nBy vectorizing your function, you can lower the cost of an iteration from 34.25 to 9.75 cycles (3.51x speedup).",
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
      "The function is defined in /users/user2210/NPB3.4-MZ-MPI/BT-MZ/exch_qbc.f90:1,22-193.\n",
      "Warnings:\nIgnoring paths for analysis",
    },
  },
}
