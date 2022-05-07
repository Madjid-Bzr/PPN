_cqa_text_report = {
  paths = {
    {
      hint = {
        {
          details = "Calling (and then returning from) a function prevents many compiler optimizations (like vectorization), breaks control flow (which reduces pipeline performance) and executes extra instructions to save/restore the registers used inside it, which is very expensive (dozens of cycles). Consider to inline small functions.\n - unknown: 2 occurrences\n",
          title = "CALL instructions",
          txt = "Detected function call instructions.\n",
        },
        {
          title = "Type of elements and instruction set",
          txt = "13 SSE or AVX instructions are processing arithmetic or math operations on double precision FP elements in scalar mode (one at a time).\n10 SSE or AVX instructions are processing arithmetic or math operations on double precision FP elements in vector mode (two at a time).\n",
        },
        {
          title = "Matching between your function (in the source code) and the binary function",
          txt = "The binary function is composed of 49 FP arithmetical operations:\n - 26: addition or subtraction (16 inside FMA instructions)\n - 22: multiply (16 inside FMA instructions)\n - 1: divide\nThe binary function is loading 320 bytes (40 double precision FP elements).\nThe binary function is storing 128 bytes (16 double precision FP elements).",
        },
        {
          title = "Arithmetic intensity",
          txt = "Arithmetic intensity is 0.11 FP operations per loaded or stored byte.",
        },
      },
      expert = {
        {
          title = "General properties",
          txt = "nb instructions    : 78\nloop length        : 416\nused x86 registers : 6\nused mmx registers : 0\nused xmm registers : 10\nused ymm registers : 0\nused zmm registers : 0\nnb stack references: 2\nADD-SUB / MUL ratio: 2.50\n",
        },
        {
          title = "Front-end",
          txt = "MACRO FUSION NOT POSSIBLE\ninstruction fetch    : 26.00 cycles\ninstruction queue    : 39.00 cycles\ndecoding             : 39.00 cycles\nmicro-operation queue: 40.00 cycles\nfront end            : 40.00 cycles\n",
        },
        {
          title = "Back-end",
          txt = "       | P0    | P1    | P2    | P3    | P4    | P5    | P6\n--------------------------------------------------------------\nuops   | 16.50 | 16.50 | 23.00 | 23.00 | 12.00 | 12.00 | 15.00\ncycles | 16.50 | 16.50 | 23.00 | 23.00 | 12.00 | 12.00 | 15.00\n\nCycles executing div or sqrt instructions: 12.00-32.00\n",
        },
        {
          title = "Cycles summary",
          txt = "Front-end : 40.00\nDispatch  : 23.00\nDIV/SQRT  : 12.00-32.00\nOverall L1: 40.00\n",
        },
        {
          title = "Vectorization ratios",
          txt = "INT\nall    : 0%\nload   : NA (no load vectorizable/vectorized instructions)\nstore  : 0%\nmul    : NA (no mul vectorizable/vectorized instructions)\nadd-sub: NA (no add-sub vectorizable/vectorized instructions)\nfma    : NA (no fma vectorizable/vectorized instructions)\nother  : 0%\nFP\nall     : 22%\nload    : 29%\nstore   : 7%\nmul     : 50%\nadd-sub : 0%\nfma     : 100%\ndiv/sqrt: 0%\nother   : 0%\nINT+FP\nall     : 19%\nload    : 29%\nstore   : 6%\nmul     : 50%\nadd-sub : 0%\nfma     : 100%\ndiv/sqrt: 0%\nother   : 0%\n",
        },
        {
          title = "Vector efficiency ratios",
          txt = "INT\nall    : 8%\nload   : NA (no load vectorizable/vectorized instructions)\nstore  : 6%\nmul    : NA (no mul vectorizable/vectorized instructions)\nadd-sub: NA (no add-sub vectorizable/vectorized instructions)\nfma    : NA (no fma vectorizable/vectorized instructions)\nother  : 10%\nFP\nall     : 15%\nload    : 16%\nstore   : 13%\nmul     : 18%\nadd-sub : 12%\nfma     : 25%\ndiv/sqrt: 12%\nother   : 12%\nINT+FP\nall     : 14%\nload    : 16%\nstore   : 12%\nmul     : 18%\nadd-sub : 12%\nfma     : 25%\ndiv/sqrt: 12%\nother   : 10%\n",
        },
        {
          title = "Cycles and memory resources usage",
          txt = "Assuming all data fit into the L1 cache, each call to the function takes 40.00 cycles. At this rate:\n - 6% of peak load performance is reached (8.00 out of 128.00 bytes loaded per cycle (GB/s @ 1GHz))\n - 5% of peak store performance is reached (3.20 out of 64.00 bytes stored per cycle (GB/s @ 1GHz))\n",
        },
        {
          title = "Front-end bottlenecks",
          txt = "Performance is limited by instruction throughput (loading/decoding program instructions to execution core) (front-end is a bottleneck).\n",
        },
        {
          title = "ASM code",
          txt = "In the binary file, the address of the function is: 3ce0\n\nInstruction                          | Nb FU | P0   | P1   | P2   | P3   | P4   | P5   | P6 | Latency | Recip. throughput\n-------------------------------------------------------------------------------------------------------------------------\nENDBR64\nLEA -0x8(%RSP),%RSP                  | 1     | 0    | 0    | 0    | 0    | 0.50 | 0.50 | 0  | 1       | 0.50\nTEST %RDI,%RDI                       | 1     | 0    | 0    | 0    | 0    | 0.50 | 0.50 | 0  | 1       | 0.50\nJE 3e3a <get_cell_velocity+0x15a>    | 1     | 0    | 0    | 0    | 0    | 0    | 1    | 0  | 0       | 1-2\nTEST %RSI,%RSI                       | 1     | 0    | 0    | 0    | 0    | 0.50 | 0.50 | 0  | 1       | 0.50\nJE 3e59 <get_cell_velocity+0x179>    | 1     | 0    | 0    | 0    | 0    | 0    | 1    | 0  | 0       | 1-2\nVMOVSD 0x2725(%RIP),%XMM1            | 1     | 0    | 0    | 0.50 | 0.50 | 0    | 0    | 0  | 5       | 0.50\nLEA 0x48(%RSI),%RAX                  | 1     | 0    | 0    | 0    | 0    | 0.50 | 0.50 | 0  | 1       | 0.50\nVDIVSD %XMM0,%XMM1,%XMM0             | 3     | 1    | 0    | 0    | 0    | 0    | 0    | 0  | 40-42   | 12-32\nCMP %RAX,%RDI                        | 1     | 0    | 0    | 0    | 0    | 0.50 | 0.50 | 0  | 1       | 0.50\nJAE 3d1d <get_cell_velocity+0x3d>    | 1     | 0    | 0    | 0    | 0    | 0    | 1    | 0  | 0       | 1-2\nLEA 0x10(%RDI),%RAX                  | 1     | 0    | 0    | 0    | 0    | 0.50 | 0.50 | 0  | 1       | 0.50\nCMP %RAX,%RSI                        | 1     | 0    | 0    | 0    | 0    | 0.50 | 0.50 | 0  | 1       | 0.50\nJB 3dab <get_cell_velocity+0xcb>     | 1     | 0    | 0    | 0    | 0    | 0    | 1    | 0  | 0       | 1-2\nVMOVDDUP 0x8(%RSI),%XMM9             | 1     | 1    | 0    | 0.50 | 0.50 | 0    | 0    | 0  | 3-6     | 1\nVMOVDDUP 0x10(%RSI),%XMM7            | 1     | 1    | 0    | 0.50 | 0.50 | 0    | 0    | 0  | 3-6     | 1\nVMOVDDUP 0x18(%RSI),%XMM6            | 1     | 1    | 0    | 0.50 | 0.50 | 0    | 0    | 0  | 3-6     | 1\nVMOVDDUP 0x20(%RSI),%XMM5            | 1     | 1    | 0    | 0.50 | 0.50 | 0    | 0    | 0  | 3-6     | 1\nVMOVDDUP 0x28(%RSI),%XMM4            | 1     | 1    | 0    | 0.50 | 0.50 | 0    | 0    | 0  | 3-6     | 1\nVMOVDDUP 0x30(%RSI),%XMM3            | 1     | 1    | 0    | 0.50 | 0.50 | 0    | 0    | 0  | 3-6     | 1\nVMULPD 0x290d(%RIP),%XMM9,%XMM9      | 1     | 0.50 | 0.50 | 0.50 | 0.50 | 0    | 0    | 0  | 6       | 0.50\nVMOVDDUP 0x38(%RSI),%XMM2            | 1     | 1    | 0    | 0.50 | 0.50 | 0    | 0    | 0  | 3-6     | 1\nVMOVDDUP 0x40(%RSI),%XMM1            | 1     | 1    | 0    | 0.50 | 0.50 | 0    | 0    | 0  | 3-6     | 1\nVMOVDDUP (%RSI),%XMM8                | 1     | 1    | 0    | 0.50 | 0.50 | 0    | 0    | 0  | 3-6     | 1\nVMOVDDUP %XMM0,%XMM0                 | 1     | 1    | 0    | 0    | 0    | 0    | 0    | 0  | 3-6     | 1\nVFMADD132PD 0x28e2(%RIP),%XMM9,%XMM8 | 1     | 0.50 | 0.50 | 0.50 | 0.50 | 0    | 0    | 0  | 6       | 0.50\nVFMADD132PD 0x28f9(%RIP),%XMM8,%XMM7 | 1     | 0.50 | 0.50 | 0.50 | 0.50 | 0    | 0    | 0  | 6       | 0.50\nVFMADD132PD 0x2900(%RIP),%XMM7,%XMM6 | 1     | 0.50 | 0.50 | 0.50 | 0.50 | 0    | 0    | 0  | 6       | 0.50\nVFMADD132PD 0x2907(%RIP),%XMM6,%XMM5 | 1     | 0.50 | 0.50 | 0.50 | 0.50 | 0    | 0    | 0  | 6       | 0.50\nVFMADD132PD 0x290e(%RIP),%XMM5,%XMM4 | 1     | 0.50 | 0.50 | 0.50 | 0.50 | 0    | 0    | 0  | 6       | 0.50\nVFMADD132PD 0x2915(%RIP),%XMM4,%XMM3 | 1     | 0.50 | 0.50 | 0.50 | 0.50 | 0    | 0    | 0  | 6       | 0.50\nVFMADD132PD 0x291c(%RIP),%XMM3,%XMM2 | 1     | 0.50 | 0.50 | 0.50 | 0.50 | 0    | 0    | 0  | 6       | 0.50\nVFMADD132PD 0x2923(%RIP),%XMM2,%XMM1 | 1     | 0.50 | 0.50 | 0.50 | 0.50 | 0    | 0    | 0  | 6       | 0.50\nVMULPD %XMM0,%XMM1,%XMM0             | 1     | 0.50 | 0.50 | 0    | 0    | 0    | 0    | 0  | 6       | 0.50\nVMOVUPD %XMM0,(%RDI)                 | 1     | 0    | 0    | 0.50 | 0.50 | 0    | 0    | 1  | 2       | 1\nLEA 0x8(%RSP),%RSP                   | 1     | 0    | 0    | 0    | 0    | 0.50 | 0.50 | 0  | 1       | 0.50\nRET\nMOVQ $0,(%RDI)                       | 1     | 0    | 0    | 0.50 | 0.50 | 0    | 0    | 1  | 1       | 1\nVMOVSD 0x8(%RSI),%XMM1               | 1     | 0    | 0    | 0.50 | 0.50 | 0    | 0    | 0  | 5       | 0.50\nVMOVSD %XMM1,(%RDI)                  | 1     | 0    | 0    | 0.50 | 0.50 | 0    | 0    | 1  | 2       | 1\nVSUBSD 0x18(%RSI),%XMM1,%XMM1        | 1     | 0.50 | 0.50 | 0.50 | 0.50 | 0    | 0    | 0  | 6       | 0.50\nVMOVSD %XMM1,(%RDI)                  | 1     | 0    | 0    | 0.50 | 0.50 | 0    | 0    | 1  | 2       | 1\nVADDSD 0x28(%RSI),%XMM1,%XMM1        | 1     | 0.50 | 0.50 | 0.50 | 0.50 | 0    | 0    | 0  | 6       | 0.50\nVMOVSD %XMM1,(%RDI)                  | 1     | 0    | 0    | 0.50 | 0.50 | 0    | 0    | 1  | 2       | 1\nVSUBSD 0x30(%RSI),%XMM1,%XMM1        | 1     | 0.50 | 0.50 | 0.50 | 0.50 | 0    | 0    | 0  | 6       | 0.50\nVMOVSD %XMM1,(%RDI)                  | 1     | 0    | 0    | 0.50 | 0.50 | 0    | 0    | 1  | 2       | 1\nVSUBSD 0x38(%RSI),%XMM1,%XMM1        | 1     | 0.50 | 0.50 | 0.50 | 0.50 | 0    | 0    | 0  | 6       | 0.50\nVMOVSD %XMM1,(%RDI)                  | 1     | 0    | 0    | 0.50 | 0.50 | 0    | 0    | 1  | 2       | 1\nVADDSD 0x40(%RSI),%XMM1,%XMM1        | 1     | 0.50 | 0.50 | 0.50 | 0.50 | 0    | 0    | 0  | 6       | 0.50\nMOVQ $0,0x8(%RDI)                    | 1     | 0    | 0    | 0.50 | 0.50 | 0    | 0    | 1  | 1       | 1\nVMULSD %XMM0,%XMM1,%XMM1             | 1     | 0.50 | 0.50 | 0    | 0    | 0    | 0    | 0  | 6       | 0.50\nVMOVSD %XMM1,(%RDI)                  | 1     | 0    | 0    | 0.50 | 0.50 | 0    | 0    | 1  | 2       | 1\nVMOVSD 0x10(%RSI),%XMM1              | 1     | 0    | 0    | 0.50 | 0.50 | 0    | 0    | 0  | 5       | 0.50\nVMOVSD %XMM1,0x8(%RDI)               | 1     | 0    | 0    | 0.50 | 0.50 | 0    | 0    | 1  | 2       | 1\nVSUBSD 0x20(%RSI),%XMM1,%XMM1        | 1     | 0.50 | 0.50 | 0.50 | 0.50 | 0    | 0    | 0  | 6       | 0.50\nVMOVSD %XMM1,0x8(%RDI)               | 1     | 0    | 0    | 0.50 | 0.50 | 0    | 0    | 1  | 2       | 1\nVADDSD 0x28(%RSI),%XMM1,%XMM1        | 1     | 0.50 | 0.50 | 0.50 | 0.50 | 0    | 0    | 0  | 6       | 0.50\nVMOVSD %XMM1,0x8(%RDI)               | 1     | 0    | 0    | 0.50 | 0.50 | 0    | 0    | 1  | 2       | 1\nVADDSD 0x30(%RSI),%XMM1,%XMM1        | 1     | 0.50 | 0.50 | 0.50 | 0.50 | 0    | 0    | 0  | 6       | 0.50\nVMOVSD %XMM1,0x8(%RDI)               | 1     | 0    | 0    | 0.50 | 0.50 | 0    | 0    | 1  | 2       | 1\nVSUBSD 0x38(%RSI),%XMM1,%XMM1        | 1     | 0.50 | 0.50 | 0.50 | 0.50 | 0    | 0    | 0  | 6       | 0.50\nVMOVSD %XMM1,0x8(%RDI)               | 1     | 0    | 0    | 0.50 | 0.50 | 0    | 0    | 1  | 2       | 1\nVSUBSD 0x40(%RSI),%XMM1,%XMM1        | 1     | 0.50 | 0.50 | 0.50 | 0.50 | 0    | 0    | 0  | 6       | 0.50\nVMULSD %XMM0,%XMM1,%XMM1             | 1     | 0.50 | 0.50 | 0    | 0    | 0    | 0    | 0  | 6       | 0.50\nVMOVSD %XMM1,0x8(%RDI)               | 1     | 0    | 0    | 0.50 | 0.50 | 0    | 0    | 1  | 2       | 1\nLEA 0x8(%RSP),%RSP                   | 1     | 0    | 0    | 0    | 0    | 0.50 | 0.50 | 0  | 1       | 0.50\nRET\nLEA 0x26cf(%RIP),%RCX                | 1     | 0    | 0    | 0    | 0    | 0.50 | 0.50 | 0  | 1       | 0.50\nMOV $0x42,%EDX                       | 1     | 0    | 0    | 0    | 0    | 0.50 | 0.50 | 0  | 1       | 0.50\nLEA 0x2632(%RIP),%RSI                | 1     | 0    | 0    | 0    | 0    | 0.50 | 0.50 | 0  | 1       | 0.50\nLEA 0x2647(%RIP),%RDI                | 1     | 0    | 0    | 0    | 0    | 0.50 | 0.50 | 0  | 1       | 0.50\nCALL 1240 <.plt.sec@start+0x70>      | 1     | 0    | 0    | 0    | 0    | 0.50 | 0.50 | 0  | 0       | 2\nLEA 0x26b0(%RIP),%RCX                | 1     | 0    | 0    | 0    | 0    | 0.50 | 0.50 | 0  | 1       | 0.50\nMOV $0x43,%EDX                       | 1     | 0    | 0    | 0    | 0    | 0.50 | 0.50 | 0  | 1       | 0.50\nLEA 0x2613(%RIP),%RSI                | 1     | 0    | 0    | 0    | 0    | 0.50 | 0.50 | 0  | 1       | 0.50\nLEA 0x261b(%RIP),%RDI                | 1     | 0    | 0    | 0    | 0    | 0.50 | 0.50 | 0  | 1       | 0.50\nCALL 1240 <.plt.sec@start+0x70>      | 1     | 0    | 0    | 0    | 0    | 0.50 | 0.50 | 0  | 0       | 2\nNOPL (%RAX,%RAX,1)                   | 1     | 0    | 0    | 0    | 0    | 0.50 | 0.50 | 0  | 0       | 0.50\n",
        },
      },
      header = {
        "Warnings:\nDetected a function call instruction: ignoring called function instructions.\nRerun with --follow-calls=append to include them to analysis  or with --follow-calls=inline to simulate inlining.",
        "3% of peak computational performance is used (1.23 out of 32.00 FLOP per cycle (GFLOPS @ 1GHz))",
      },
      brief = {
      },
      gain = {
        {
          workaround = " - Try to reorganize arrays of structures to structures of arrays\n - Consider to permute loops (see vectorization gain report)\n",
          title = "Code clean check",
          txt = "Detected a slowdown caused by scalar integer instructions (typically used for address computation).\nBy removing them, you can lower the cost of an iteration from 40.00 to 32.00 cycles (1.25x speedup).",
        },
        {
          workaround = " - Try another compiler or update/tune your current one\n - Make array accesses unit-stride:\n  * If your function streams arrays of structures (AoS), try to use structures of arrays instead (SoA):\nfor(i) a[i].x = b[i].x; (slow, non stride 1) => for(i) a.x[i] = b.x[i]; (fast, stride 1)\n",
          details = "19% of SSE/AVX instructions are used in vector version (process two or more data elements in vector registers):\n - 29% of SSE/AVX loads are used in vector version.\n - 6% of SSE/AVX stores are used in vector version.\n - 0% of SSE/AVX addition or subtraction instructions are used in vector version.\n - 50% of SSE/AVX multiply instructions are used in vector version.\n - 0% of SSE/AVX nil are used in vector version.\n - 0% of SSE/AVX instructions that are not load, store, addition, subtraction nor multiply instructions are used in vector version.\nSince your execution units are vector units, only a fully vectorized function can use their full power.\n",
          title = "Vectorization",
          txt = "Your function is not vectorized.\nOnly 14% of vector register length is used (average across all SSE/AVX instructions).\nBy fully vectorizing your function, you can lower the cost of an iteration from 40.00 to 4.84 cycles (8.26x speedup).",
        },
        {
          title = "Execution units bottlenecks",
          txt = "Found no such bottlenecks but see expert reports for more complex bottlenecks.",
        },
      },
      potential = {
        {
          workaround = "Try to change order in which elements are evaluated (using parentheses) in arithmetic expressions containing both ADD/SUB and MUL operations to enable your compiler to generate FMA instructions wherever possible.\nFor instance a + b*c is a valid FMA (MUL then ADD).\nHowever (a+b)* c cannot be translated into an FMA (ADD then MUL).",
          title = "FMA",
          txt = "Detected 16 FMA (fused multiply-add) operations.\nPresence of both ADD/SUB and MUL operations.",
        },
      },
    },
  },
  AVG = {
      hint = {
        {
          details = "Calling (and then returning from) a function prevents many compiler optimizations (like vectorization), breaks control flow (which reduces pipeline performance) and executes extra instructions to save/restore the registers used inside it, which is very expensive (dozens of cycles). Consider to inline small functions.\n - unknown: 2 occurrences\n",
          title = "CALL instructions",
          txt = "Detected function call instructions.\n",
        },
        {
          title = "Type of elements and instruction set",
          txt = "13 SSE or AVX instructions are processing arithmetic or math operations on double precision FP elements in scalar mode (one at a time).\n10 SSE or AVX instructions are processing arithmetic or math operations on double precision FP elements in vector mode (two at a time).\n",
        },
        {
          title = "Matching between your function (in the source code) and the binary function",
          txt = "The binary function is composed of 49 FP arithmetical operations:\n - 26: addition or subtraction (16 inside FMA instructions)\n - 22: multiply (16 inside FMA instructions)\n - 1: divide\nThe binary function is loading 320 bytes (40 double precision FP elements).\nThe binary function is storing 128 bytes (16 double precision FP elements).",
        },
        {
          title = "Arithmetic intensity",
          txt = "Arithmetic intensity is 0.11 FP operations per loaded or stored byte.",
        },
      },
      expert = {
        {
          title = "General properties",
          txt = "nb instructions    : 78\nloop length        : 416\nused x86 registers : 6\nused mmx registers : 0\nused xmm registers : 10\nused ymm registers : 0\nused zmm registers : 0\nnb stack references: 2\nADD-SUB / MUL ratio: 2.50\n",
        },
        {
          title = "Front-end",
          txt = "MACRO FUSION NOT POSSIBLE\ninstruction fetch    : 26.00 cycles\ninstruction queue    : 39.00 cycles\ndecoding             : 39.00 cycles\nmicro-operation queue: 40.00 cycles\nfront end            : 40.00 cycles\n",
        },
        {
          title = "Back-end",
          txt = "       | P0    | P1    | P2    | P3    | P4    | P5    | P6\n--------------------------------------------------------------\nuops   | 16.50 | 16.50 | 23.00 | 23.00 | 12.00 | 12.00 | 15.00\ncycles | 16.50 | 16.50 | 23.00 | 23.00 | 12.00 | 12.00 | 15.00\n\nCycles executing div or sqrt instructions: 12.00-32.00\n",
        },
        {
          title = "Cycles summary",
          txt = "Front-end : 40.00\nDispatch  : 23.00\nDIV/SQRT  : 12.00-32.00\nOverall L1: 40.00\n",
        },
        {
          title = "Vectorization ratios",
          txt = "INT\nall    : 0%\nload   : NA (no load vectorizable/vectorized instructions)\nstore  : 0%\nmul    : NA (no mul vectorizable/vectorized instructions)\nadd-sub: NA (no add-sub vectorizable/vectorized instructions)\nfma    : NA (no fma vectorizable/vectorized instructions)\nother  : 0%\nFP\nall     : 22%\nload    : 29%\nstore   : 7%\nmul     : 50%\nadd-sub : 0%\nfma     : 100%\ndiv/sqrt: 0%\nother   : 0%\nINT+FP\nall     : 19%\nload    : 29%\nstore   : 6%\nmul     : 50%\nadd-sub : 0%\nfma     : 100%\ndiv/sqrt: 0%\nother   : 0%\n",
        },
        {
          title = "Vector efficiency ratios",
          txt = "INT\nall    : 8%\nload   : NA (no load vectorizable/vectorized instructions)\nstore  : 6%\nmul    : NA (no mul vectorizable/vectorized instructions)\nadd-sub: NA (no add-sub vectorizable/vectorized instructions)\nfma    : NA (no fma vectorizable/vectorized instructions)\nother  : 10%\nFP\nall     : 15%\nload    : 16%\nstore   : 13%\nmul     : 18%\nadd-sub : 12%\nfma     : 25%\ndiv/sqrt: 12%\nother   : 12%\nINT+FP\nall     : 14%\nload    : 16%\nstore   : 12%\nmul     : 18%\nadd-sub : 12%\nfma     : 25%\ndiv/sqrt: 12%\nother   : 10%\n",
        },
        {
          title = "Cycles and memory resources usage",
          txt = "Assuming all data fit into the L1 cache, each call to the function takes 40.00 cycles. At this rate:\n - 6% of peak load performance is reached (8.00 out of 128.00 bytes loaded per cycle (GB/s @ 1GHz))\n - 5% of peak store performance is reached (3.20 out of 64.00 bytes stored per cycle (GB/s @ 1GHz))\n",
        },
        {
          title = "Front-end bottlenecks",
          txt = "Performance is limited by instruction throughput (loading/decoding program instructions to execution core) (front-end is a bottleneck).\n",
        },
        {
          title = "ASM code",
          txt = "In the binary file, the address of the function is: 3ce0\n\nInstruction                          | Nb FU | P0   | P1   | P2   | P3   | P4   | P5   | P6 | Latency | Recip. throughput\n-------------------------------------------------------------------------------------------------------------------------\nENDBR64\nLEA -0x8(%RSP),%RSP                  | 1     | 0    | 0    | 0    | 0    | 0.50 | 0.50 | 0  | 1       | 0.50\nTEST %RDI,%RDI                       | 1     | 0    | 0    | 0    | 0    | 0.50 | 0.50 | 0  | 1       | 0.50\nJE 3e3a <get_cell_velocity+0x15a>    | 1     | 0    | 0    | 0    | 0    | 0    | 1    | 0  | 0       | 1-2\nTEST %RSI,%RSI                       | 1     | 0    | 0    | 0    | 0    | 0.50 | 0.50 | 0  | 1       | 0.50\nJE 3e59 <get_cell_velocity+0x179>    | 1     | 0    | 0    | 0    | 0    | 0    | 1    | 0  | 0       | 1-2\nVMOVSD 0x2725(%RIP),%XMM1            | 1     | 0    | 0    | 0.50 | 0.50 | 0    | 0    | 0  | 5       | 0.50\nLEA 0x48(%RSI),%RAX                  | 1     | 0    | 0    | 0    | 0    | 0.50 | 0.50 | 0  | 1       | 0.50\nVDIVSD %XMM0,%XMM1,%XMM0             | 3     | 1    | 0    | 0    | 0    | 0    | 0    | 0  | 40-42   | 12-32\nCMP %RAX,%RDI                        | 1     | 0    | 0    | 0    | 0    | 0.50 | 0.50 | 0  | 1       | 0.50\nJAE 3d1d <get_cell_velocity+0x3d>    | 1     | 0    | 0    | 0    | 0    | 0    | 1    | 0  | 0       | 1-2\nLEA 0x10(%RDI),%RAX                  | 1     | 0    | 0    | 0    | 0    | 0.50 | 0.50 | 0  | 1       | 0.50\nCMP %RAX,%RSI                        | 1     | 0    | 0    | 0    | 0    | 0.50 | 0.50 | 0  | 1       | 0.50\nJB 3dab <get_cell_velocity+0xcb>     | 1     | 0    | 0    | 0    | 0    | 0    | 1    | 0  | 0       | 1-2\nVMOVDDUP 0x8(%RSI),%XMM9             | 1     | 1    | 0    | 0.50 | 0.50 | 0    | 0    | 0  | 3-6     | 1\nVMOVDDUP 0x10(%RSI),%XMM7            | 1     | 1    | 0    | 0.50 | 0.50 | 0    | 0    | 0  | 3-6     | 1\nVMOVDDUP 0x18(%RSI),%XMM6            | 1     | 1    | 0    | 0.50 | 0.50 | 0    | 0    | 0  | 3-6     | 1\nVMOVDDUP 0x20(%RSI),%XMM5            | 1     | 1    | 0    | 0.50 | 0.50 | 0    | 0    | 0  | 3-6     | 1\nVMOVDDUP 0x28(%RSI),%XMM4            | 1     | 1    | 0    | 0.50 | 0.50 | 0    | 0    | 0  | 3-6     | 1\nVMOVDDUP 0x30(%RSI),%XMM3            | 1     | 1    | 0    | 0.50 | 0.50 | 0    | 0    | 0  | 3-6     | 1\nVMULPD 0x290d(%RIP),%XMM9,%XMM9      | 1     | 0.50 | 0.50 | 0.50 | 0.50 | 0    | 0    | 0  | 6       | 0.50\nVMOVDDUP 0x38(%RSI),%XMM2            | 1     | 1    | 0    | 0.50 | 0.50 | 0    | 0    | 0  | 3-6     | 1\nVMOVDDUP 0x40(%RSI),%XMM1            | 1     | 1    | 0    | 0.50 | 0.50 | 0    | 0    | 0  | 3-6     | 1\nVMOVDDUP (%RSI),%XMM8                | 1     | 1    | 0    | 0.50 | 0.50 | 0    | 0    | 0  | 3-6     | 1\nVMOVDDUP %XMM0,%XMM0                 | 1     | 1    | 0    | 0    | 0    | 0    | 0    | 0  | 3-6     | 1\nVFMADD132PD 0x28e2(%RIP),%XMM9,%XMM8 | 1     | 0.50 | 0.50 | 0.50 | 0.50 | 0    | 0    | 0  | 6       | 0.50\nVFMADD132PD 0x28f9(%RIP),%XMM8,%XMM7 | 1     | 0.50 | 0.50 | 0.50 | 0.50 | 0    | 0    | 0  | 6       | 0.50\nVFMADD132PD 0x2900(%RIP),%XMM7,%XMM6 | 1     | 0.50 | 0.50 | 0.50 | 0.50 | 0    | 0    | 0  | 6       | 0.50\nVFMADD132PD 0x2907(%RIP),%XMM6,%XMM5 | 1     | 0.50 | 0.50 | 0.50 | 0.50 | 0    | 0    | 0  | 6       | 0.50\nVFMADD132PD 0x290e(%RIP),%XMM5,%XMM4 | 1     | 0.50 | 0.50 | 0.50 | 0.50 | 0    | 0    | 0  | 6       | 0.50\nVFMADD132PD 0x2915(%RIP),%XMM4,%XMM3 | 1     | 0.50 | 0.50 | 0.50 | 0.50 | 0    | 0    | 0  | 6       | 0.50\nVFMADD132PD 0x291c(%RIP),%XMM3,%XMM2 | 1     | 0.50 | 0.50 | 0.50 | 0.50 | 0    | 0    | 0  | 6       | 0.50\nVFMADD132PD 0x2923(%RIP),%XMM2,%XMM1 | 1     | 0.50 | 0.50 | 0.50 | 0.50 | 0    | 0    | 0  | 6       | 0.50\nVMULPD %XMM0,%XMM1,%XMM0             | 1     | 0.50 | 0.50 | 0    | 0    | 0    | 0    | 0  | 6       | 0.50\nVMOVUPD %XMM0,(%RDI)                 | 1     | 0    | 0    | 0.50 | 0.50 | 0    | 0    | 1  | 2       | 1\nLEA 0x8(%RSP),%RSP                   | 1     | 0    | 0    | 0    | 0    | 0.50 | 0.50 | 0  | 1       | 0.50\nRET\nMOVQ $0,(%RDI)                       | 1     | 0    | 0    | 0.50 | 0.50 | 0    | 0    | 1  | 1       | 1\nVMOVSD 0x8(%RSI),%XMM1               | 1     | 0    | 0    | 0.50 | 0.50 | 0    | 0    | 0  | 5       | 0.50\nVMOVSD %XMM1,(%RDI)                  | 1     | 0    | 0    | 0.50 | 0.50 | 0    | 0    | 1  | 2       | 1\nVSUBSD 0x18(%RSI),%XMM1,%XMM1        | 1     | 0.50 | 0.50 | 0.50 | 0.50 | 0    | 0    | 0  | 6       | 0.50\nVMOVSD %XMM1,(%RDI)                  | 1     | 0    | 0    | 0.50 | 0.50 | 0    | 0    | 1  | 2       | 1\nVADDSD 0x28(%RSI),%XMM1,%XMM1        | 1     | 0.50 | 0.50 | 0.50 | 0.50 | 0    | 0    | 0  | 6       | 0.50\nVMOVSD %XMM1,(%RDI)                  | 1     | 0    | 0    | 0.50 | 0.50 | 0    | 0    | 1  | 2       | 1\nVSUBSD 0x30(%RSI),%XMM1,%XMM1        | 1     | 0.50 | 0.50 | 0.50 | 0.50 | 0    | 0    | 0  | 6       | 0.50\nVMOVSD %XMM1,(%RDI)                  | 1     | 0    | 0    | 0.50 | 0.50 | 0    | 0    | 1  | 2       | 1\nVSUBSD 0x38(%RSI),%XMM1,%XMM1        | 1     | 0.50 | 0.50 | 0.50 | 0.50 | 0    | 0    | 0  | 6       | 0.50\nVMOVSD %XMM1,(%RDI)                  | 1     | 0    | 0    | 0.50 | 0.50 | 0    | 0    | 1  | 2       | 1\nVADDSD 0x40(%RSI),%XMM1,%XMM1        | 1     | 0.50 | 0.50 | 0.50 | 0.50 | 0    | 0    | 0  | 6       | 0.50\nMOVQ $0,0x8(%RDI)                    | 1     | 0    | 0    | 0.50 | 0.50 | 0    | 0    | 1  | 1       | 1\nVMULSD %XMM0,%XMM1,%XMM1             | 1     | 0.50 | 0.50 | 0    | 0    | 0    | 0    | 0  | 6       | 0.50\nVMOVSD %XMM1,(%RDI)                  | 1     | 0    | 0    | 0.50 | 0.50 | 0    | 0    | 1  | 2       | 1\nVMOVSD 0x10(%RSI),%XMM1              | 1     | 0    | 0    | 0.50 | 0.50 | 0    | 0    | 0  | 5       | 0.50\nVMOVSD %XMM1,0x8(%RDI)               | 1     | 0    | 0    | 0.50 | 0.50 | 0    | 0    | 1  | 2       | 1\nVSUBSD 0x20(%RSI),%XMM1,%XMM1        | 1     | 0.50 | 0.50 | 0.50 | 0.50 | 0    | 0    | 0  | 6       | 0.50\nVMOVSD %XMM1,0x8(%RDI)               | 1     | 0    | 0    | 0.50 | 0.50 | 0    | 0    | 1  | 2       | 1\nVADDSD 0x28(%RSI),%XMM1,%XMM1        | 1     | 0.50 | 0.50 | 0.50 | 0.50 | 0    | 0    | 0  | 6       | 0.50\nVMOVSD %XMM1,0x8(%RDI)               | 1     | 0    | 0    | 0.50 | 0.50 | 0    | 0    | 1  | 2       | 1\nVADDSD 0x30(%RSI),%XMM1,%XMM1        | 1     | 0.50 | 0.50 | 0.50 | 0.50 | 0    | 0    | 0  | 6       | 0.50\nVMOVSD %XMM1,0x8(%RDI)               | 1     | 0    | 0    | 0.50 | 0.50 | 0    | 0    | 1  | 2       | 1\nVSUBSD 0x38(%RSI),%XMM1,%XMM1        | 1     | 0.50 | 0.50 | 0.50 | 0.50 | 0    | 0    | 0  | 6       | 0.50\nVMOVSD %XMM1,0x8(%RDI)               | 1     | 0    | 0    | 0.50 | 0.50 | 0    | 0    | 1  | 2       | 1\nVSUBSD 0x40(%RSI),%XMM1,%XMM1        | 1     | 0.50 | 0.50 | 0.50 | 0.50 | 0    | 0    | 0  | 6       | 0.50\nVMULSD %XMM0,%XMM1,%XMM1             | 1     | 0.50 | 0.50 | 0    | 0    | 0    | 0    | 0  | 6       | 0.50\nVMOVSD %XMM1,0x8(%RDI)               | 1     | 0    | 0    | 0.50 | 0.50 | 0    | 0    | 1  | 2       | 1\nLEA 0x8(%RSP),%RSP                   | 1     | 0    | 0    | 0    | 0    | 0.50 | 0.50 | 0  | 1       | 0.50\nRET\nLEA 0x26cf(%RIP),%RCX                | 1     | 0    | 0    | 0    | 0    | 0.50 | 0.50 | 0  | 1       | 0.50\nMOV $0x42,%EDX                       | 1     | 0    | 0    | 0    | 0    | 0.50 | 0.50 | 0  | 1       | 0.50\nLEA 0x2632(%RIP),%RSI                | 1     | 0    | 0    | 0    | 0    | 0.50 | 0.50 | 0  | 1       | 0.50\nLEA 0x2647(%RIP),%RDI                | 1     | 0    | 0    | 0    | 0    | 0.50 | 0.50 | 0  | 1       | 0.50\nCALL 1240 <.plt.sec@start+0x70>      | 1     | 0    | 0    | 0    | 0    | 0.50 | 0.50 | 0  | 0       | 2\nLEA 0x26b0(%RIP),%RCX                | 1     | 0    | 0    | 0    | 0    | 0.50 | 0.50 | 0  | 1       | 0.50\nMOV $0x43,%EDX                       | 1     | 0    | 0    | 0    | 0    | 0.50 | 0.50 | 0  | 1       | 0.50\nLEA 0x2613(%RIP),%RSI                | 1     | 0    | 0    | 0    | 0    | 0.50 | 0.50 | 0  | 1       | 0.50\nLEA 0x261b(%RIP),%RDI                | 1     | 0    | 0    | 0    | 0    | 0.50 | 0.50 | 0  | 1       | 0.50\nCALL 1240 <.plt.sec@start+0x70>      | 1     | 0    | 0    | 0    | 0    | 0.50 | 0.50 | 0  | 0       | 2\nNOPL (%RAX,%RAX,1)                   | 1     | 0    | 0    | 0    | 0    | 0.50 | 0.50 | 0  | 0       | 0.50\n",
        },
      },
      header = {
        "Warnings:\nDetected a function call instruction: ignoring called function instructions.\nRerun with --follow-calls=append to include them to analysis  or with --follow-calls=inline to simulate inlining.",
        "3% of peak computational performance is used (1.23 out of 32.00 FLOP per cycle (GFLOPS @ 1GHz))",
      },
      brief = {
      },
      gain = {
        {
          workaround = " - Try to reorganize arrays of structures to structures of arrays\n - Consider to permute loops (see vectorization gain report)\n",
          title = "Code clean check",
          txt = "Detected a slowdown caused by scalar integer instructions (typically used for address computation).\nBy removing them, you can lower the cost of an iteration from 40.00 to 32.00 cycles (1.25x speedup).",
        },
        {
          workaround = " - Try another compiler or update/tune your current one\n - Make array accesses unit-stride:\n  * If your function streams arrays of structures (AoS), try to use structures of arrays instead (SoA):\nfor(i) a[i].x = b[i].x; (slow, non stride 1) => for(i) a.x[i] = b.x[i]; (fast, stride 1)\n",
          details = "19% of SSE/AVX instructions are used in vector version (process two or more data elements in vector registers):\n - 29% of SSE/AVX loads are used in vector version.\n - 6% of SSE/AVX stores are used in vector version.\n - 0% of SSE/AVX addition or subtraction instructions are used in vector version.\n - 50% of SSE/AVX multiply instructions are used in vector version.\n - 0% of SSE/AVX nil are used in vector version.\n - 0% of SSE/AVX instructions that are not load, store, addition, subtraction nor multiply instructions are used in vector version.\nSince your execution units are vector units, only a fully vectorized function can use their full power.\n",
          title = "Vectorization",
          txt = "Your function is not vectorized.\nOnly 14% of vector register length is used (average across all SSE/AVX instructions).\nBy fully vectorizing your function, you can lower the cost of an iteration from 40.00 to 4.84 cycles (8.26x speedup).",
        },
        {
          title = "Execution units bottlenecks",
          txt = "Found no such bottlenecks but see expert reports for more complex bottlenecks.",
        },
      },
      potential = {
        {
          workaround = "Try to change order in which elements are evaluated (using parentheses) in arithmetic expressions containing both ADD/SUB and MUL operations to enable your compiler to generate FMA instructions wherever possible.\nFor instance a + b*c is a valid FMA (MUL then ADD).\nHowever (a+b)* c cannot be translated into an FMA (ADD then MUL).",
          title = "FMA",
          txt = "Detected 16 FMA (fused multiply-add) operations.\nPresence of both ADD/SUB and MUL operations.",
        },
      },
    },
  common = {
    header = {
      "The function is defined in /users/user2207/lbm_init/src/lbm_phys.c:65-81.\n",
      "Warnings:\n - Ignoring paths for analysis\n - Too many paths. Rerun with max-paths=5\n",
      "Try to simplify control and/or increase the maximum number of paths per function/loop through the 'max-paths-nb' option.\n",
      "This function has 5 execution paths.\n",
      "The presence of multiple execution paths is typically the main/first bottleneck.\nTry to simplify control inside function: ideally, try to remove all conditional expressions, for example by (if applicable):\n - hoisting them (moving them outside the function)\n - turning them into conditional moves, MIN or MAX\n\n",
      "Ex: if (x<0) x=0 => x = (x<0 ? 0 : x) (or MAX(0,x) after defining the corresponding macro)\n",
    },
    nb_paths = 5,
  },
}
