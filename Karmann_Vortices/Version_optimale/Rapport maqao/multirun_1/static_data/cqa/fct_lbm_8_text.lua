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
          workaround = "Avoid mixing data with different types. In particular, check if the type of constants is the same as array elements.",
          details = " - VCVTUSI2SD (INT32/64 to FP64, scalar): 1 occurrences\n",
          title = "Conversion instructions",
          txt = "Detected expensive conversion instructions.",
        },
        {
          title = "Type of elements and instruction set",
          txt = "3 SSE or AVX instructions are processing arithmetic or math operations on double precision FP elements in scalar mode (one at a time).\n",
        },
        {
          title = "Matching between your function (in the source code) and the binary function",
          txt = "The binary function is composed of 3 FP arithmetical operations:\n - 2: multiply\n - 1: divide\nThe binary function is loading 260 bytes (32 double precision FP elements).\nThe binary function is storing 8 bytes (1 double precision FP elements).",
        },
        {
          title = "Arithmetic intensity",
          txt = "Arithmetic intensity is 0.01 FP operations per loaded or stored byte.",
        },
      },
      expert = {
        {
          title = "General properties",
          txt = "nb instructions    : 104\nloop length        : 522\nused x86 registers : 13\nused mmx registers : 0\nused xmm registers : 12\nused ymm registers : 0\nused zmm registers : 0\nnb stack references: 5\n",
        },
        {
          title = "Front-end",
          txt = "MACRO FUSION NOT POSSIBLE\ninstruction fetch    : 33.00 cycles\ninstruction queue    : 52.00 cycles\ndecoding             : 52.00 cycles\nmicro-operation queue: 55.00 cycles\nfront end            : 55.00 cycles\n",
        },
        {
          title = "Back-end",
          txt = "       | P0   | P1   | P2    | P3    | P4    | P5    | P6\n-----------------------------------------------------------\nuops   | 2.00 | 2.00 | 24.00 | 20.00 | 30.50 | 30.50 | 4.00\ncycles | 2.00 | 2.00 | 24.00 | 20.00 | 30.50 | 30.50 | 4.00\n\nCycles executing div or sqrt instructions: 12.00-32.00\n",
        },
        {
          title = "Cycles summary",
          txt = "Front-end : 55.00\nDispatch  : 30.50\nDIV/SQRT  : 12.00-32.00\nOverall L1: 55.00\n",
        },
        {
          title = "Vectorization ratios",
          txt = "INT\nall    : 0%\nload   : 0%\nstore  : 0%\nmul    : NA (no mul vectorizable/vectorized instructions)\nadd-sub: 0%\nfma    : NA (no fma vectorizable/vectorized instructions)\nother  : 0%\nFP\nall     : 0%\nload    : 0%\nstore   : NA (no store vectorizable/vectorized instructions)\nmul     : 0%\nadd-sub : NA (no add-sub vectorizable/vectorized instructions)\nfma     : NA (no fma vectorizable/vectorized instructions)\ndiv/sqrt: 0%\nother   : NA (no other vectorizable/vectorized instructions)\nINT+FP\nall     : 0%\nload    : 0%\nstore   : 0%\nmul     : 0%\nadd-sub : 0%\nfma     : NA (no fma vectorizable/vectorized instructions)\ndiv/sqrt: 0%\nother   : 0%\n",
        },
        {
          title = "Vector efficiency ratios",
          txt = "INT\nall    : 8%\nload   : 8%\nstore  : 12%\nmul    : NA (no mul vectorizable/vectorized instructions)\nadd-sub: 6%\nfma    : NA (no fma vectorizable/vectorized instructions)\nother  : 6%\nFP\nall     : 12%\nload    : 12%\nstore   : NA (no store vectorizable/vectorized instructions)\nmul     : 12%\nadd-sub : NA (no add-sub vectorizable/vectorized instructions)\nfma     : NA (no fma vectorizable/vectorized instructions)\ndiv/sqrt: 12%\nother   : NA (no other vectorizable/vectorized instructions)\nINT+FP\nall     : 10%\nload    : 10%\nstore   : 12%\nmul     : 12%\nadd-sub : 6%\nfma     : NA (no fma vectorizable/vectorized instructions)\ndiv/sqrt: 12%\nother   : 6%\n",
        },
        {
          title = "Cycles and memory resources usage",
          txt = "Assuming all data fit into the L1 cache, each call to the function takes 55.00 cycles. At this rate:\n - 3% of peak load performance is reached (4.73 out of 128.00 bytes loaded per cycle (GB/s @ 1GHz))\n - 0% of peak store performance is reached (0.15 out of 64.00 bytes stored per cycle (GB/s @ 1GHz))\n",
        },
        {
          title = "Front-end bottlenecks",
          txt = "Performance is limited by instruction throughput (loading/decoding program instructions to execution core) (front-end is a bottleneck).\n\nBy removing all these bottlenecks, you can lower the cost of an iteration from 55.00 to 52.00 cycles (1.06x speedup).\n",
        },
        {
          title = "ASM code",
          txt = "In the binary file, the address of the function is: 29c0\n\nInstruction                       | Nb FU | P0   | P1   | P2   | P3   | P4   | P5   | P6 | Latency | Recip. throughput\n----------------------------------------------------------------------------------------------------------------------\nPUSH %R12                         | 1     | 0    | 0    | 0    | 0    | 1    | 1    | 0  | 0       | 1\nLEA (%RDX),%R12                   | 1     | 0    | 0    | 0    | 0    | 0.50 | 0.50 | 0  | 1       | 0.50\nPUSH %RBP                         | 1     | 0    | 0    | 0    | 0    | 1    | 1    | 0  | 0       | 1\nLEA (%RSI),%RBP                   | 1     | 0    | 0    | 0    | 0    | 0.50 | 0.50 | 0  | 1       | 0.50\nPUSH %RBX                         | 1     | 0    | 0    | 0    | 0    | 1    | 1    | 0  | 0       | 1\nLEA (%RDI),%RBX                   | 1     | 0    | 0    | 0    | 0    | 0.50 | 0.50 | 0  | 1       | 0.50\nMOV $0x44000000,%EDI              | 1     | 0    | 0    | 0    | 0    | 0.50 | 0.50 | 0  | 1       | 0.50\nLEA -0x10(%RSP),%RSP              | 1     | 0    | 0    | 0    | 0    | 0.50 | 0.50 | 0  | 1       | 0.50\nLEA 0x4(%RSP),%RSI                | 1     | 0    | 0    | 0    | 0    | 0.50 | 0.50 | 0  | 1       | 0.50\nMOV %FS:0x28,%RAX                 | 1     | 0    | 0    | 1    | 0    | 0    | 0    | 0  | 4       | 1\nMOV %RAX,0x8(%RSP)                | 1     | 0    | 0    | 0.50 | 0.50 | 0    | 0    | 1  | 0       | 1\nXOR %EAX,%EAX\nCALL 1310 <.plt.sec@start+0x120>  | 1     | 0    | 0    | 0    | 0    | 0.50 | 0.50 | 0  | 0       | 2\nMOV 0x8(%RBX),%ESI                | 1     | 0    | 0    | 1    | 0    | 0    | 0    | 0  | 4       | 1\nTEST %ESI,%ESI                    | 1     | 0    | 0    | 0    | 0    | 0.50 | 0.50 | 0  | 1       | 0.50\nJE 2e4e <setup_init_state+0x48e>  | 1     | 0    | 0    | 0    | 0    | 0    | 1    | 0  | 0       | 1-2\nMOV 0x4626(%RIP),%EDX             | 1     | 0    | 0    | 1    | 0    | 0    | 0    | 0  | 4       | 1\nXOR %EDI,%EDI\nVMOVSD 0x2bdc(%RIP),%XMM2         | 1     | 0    | 0    | 0.50 | 0.50 | 0    | 0    | 0  | 5       | 0.50\nMOV 0xc(%RBX),%R8D                | 1     | 0    | 0    | 1    | 0    | 0    | 0    | 0  | 4       | 1\nVMOVSD 0x2bd8(%RIP),%XMM4         | 1     | 0    | 0    | 0.50 | 0.50 | 0    | 0    | 0  | 5       | 0.50\nSUB $0x1,%RDX                     | 1     | 0    | 0    | 0    | 0    | 0.50 | 0.50 | 0  | 1       | 0.50\nVCVTUSI2SD %RDX,%XMM0,%XMM0       | 1     | 1    | 0    | 0    | 0    | 0    | 0    | 0  | 5       | 1\nVMOVSD 0x2bce(%RIP),%XMM3         | 1     | 0    | 0    | 0.50 | 0.50 | 0    | 0    | 0  | 5       | 0.50\nVMOVSD 0x2bd6(%RIP),%XMM6         | 1     | 0    | 0    | 0.50 | 0.50 | 0    | 0    | 0  | 5       | 0.50\nVMOVSD 0x2bd6(%RIP),%XMM5         | 1     | 0    | 0    | 0.50 | 0.50 | 0    | 0    | 0  | 5       | 0.50\nVMULSD %XMM0,%XMM0,%XMM1          | 1     | 0.50 | 0.50 | 0    | 0    | 0    | 0    | 0  | 6       | 0.50\nVMOVSD 0x2bd2(%RIP),%XMM8         | 1     | 0    | 0    | 0.50 | 0.50 | 0    | 0    | 0  | 5       | 0.50\nVMOVSD 0x2bd2(%RIP),%XMM7         | 1     | 0    | 0    | 0.50 | 0.50 | 0    | 0    | 0  | 5       | 0.50\nVDIVSD %XMM1,%XMM2,%XMM11         | 3     | 1    | 0    | 0    | 0    | 0    | 0    | 0  | 40-42   | 12-32\nNOPW %CS:(%RAX,%RAX,1)            | 1     | 0    | 0    | 0    | 0    | 0.50 | 0.50 | 0  | 0       | 0.50\nNOPL (%RAX)                       | 1     | 0    | 0    | 0    | 0    | 0.50 | 0.50 | 0  | 0       | 0.50\nCMPL $-0x1,0x1c(%R12)             | 1     | 0    | 0    | 1    | 0    | 0.50 | 0.50 | 0  | 1       | 1\nJE 2f95 <setup_init_state+0x5d5>  | 1     | 0    | 0    | 0    | 0    | 0    | 1    | 0  | 0       | 1-2\nCMPL $-0x1,0x18(%R12)             | 1     | 0    | 0    | 1    | 0    | 0.50 | 0.50 | 0  | 1       | 1\nJE 3139 <setup_init_state+0x779>  | 1     | 0    | 0    | 0    | 0    | 0    | 1    | 0  | 0       | 1-2\nCMPL $-0x1,0x20(%R12)             | 1     | 0    | 0    | 1    | 0    | 0.50 | 0.50 | 0  | 1       | 1\nJE 2fcc <setup_init_state+0x60c>  | 1     | 0    | 0    | 0    | 0    | 0    | 1    | 0  | 0       | 1-2\nCMPL $-0x1,0x24(%R12)             | 1     | 0    | 0    | 1    | 0    | 0.50 | 0.50 | 0  | 1       | 1\nJE 318a <setup_init_state+0x7ca>  | 1     | 0    | 0    | 0    | 0    | 0    | 1    | 0  | 0       | 1-2\nMOV (%R12),%ESI                   | 1     | 0    | 0    | 1    | 0    | 0    | 0    | 0  | 4       | 1\nMOV 0x8(%RBX),%R11D               | 1     | 0    | 0    | 1    | 0    | 0    | 0    | 0  | 4       | 1\nMOV %RSI,%RDX                     | 1     | 0    | 0    | 0    | 0    | 0.50 | 0.50 | 0  | 0       | 0.50\nADD %ESI,%R11D                    | 1     | 0    | 0    | 0    | 0    | 0.50 | 0.50 | 0  | 1       | 0.50\nCMP %ESI,%R11D                    | 1     | 0    | 0    | 0    | 0    | 0.50 | 0.50 | 0  | 1       | 0.50\nJBE 2f4a <setup_init_state+0x58a> | 1     | 0    | 0    | 0    | 0    | 0    | 1    | 0  | 0       | 1-2\nVMOVSD 0x41a3(%RIP),%XMM13        | 1     | 0    | 0    | 0.50 | 0.50 | 0    | 0    | 0  | 5       | 0.50\nVMULSD %XMM13,%XMM13,%XMM10       | 1     | 0.50 | 0.50 | 0    | 0    | 0    | 0    | 0  | 6       | 0.50\nMOV 0x4(%R12),%ECX                | 1     | 0    | 0    | 1    | 0    | 0    | 0    | 0  | 4       | 1\nMOV 0xc(%RBX),%R9D                | 1     | 0    | 0    | 1    | 0    | 0    | 0    | 0  | 4       | 1\nVMOVSD 0x417d(%RIP),%XMM7         | 1     | 0    | 0    | 0.50 | 0.50 | 0    | 0    | 0  | 5       | 0.50\nVMOVSD 0x417d(%RIP),%XMM8         | 1     | 0    | 0    | 0.50 | 0.50 | 0    | 0    | 0  | 5       | 0.50\nADD %ECX,%R9D                     | 1     | 0    | 0    | 0    | 0    | 0.50 | 0.50 | 0  | 1       | 0.50\nXCHG %AX,%AX                      | 1     | 0    | 0    | 0    | 0    | 0.50 | 0.50 | 0  | 0       | 0.50\nMOV 0x8(%RSP),%RAX                | 1     | 0    | 0    | 1    | 0    | 0    | 0    | 0  | 4       | 1\nXOR %FS:0x28,%RAX                 | 1     | 0    | 0    | 1    | 0    | 0.50 | 0.50 | 0  | 1       | 1\nJNE 3362 <setup_init_state+0x9a2> | 1     | 0    | 0    | 0    | 0    | 0    | 1    | 0  | 0       | 1-2\nLEA 0x10(%RSP),%RSP               | 1     | 0    | 0    | 0    | 0    | 0.50 | 0.50 | 0  | 1       | 0.50\nPOP %RBX                          | 2     | 0    | 0    | 0.50 | 0.50 | 0    | 0    | 1  | 0       | 1\nPOP %RBP                          | 2     | 0    | 0    | 0.50 | 0.50 | 0    | 0    | 1  | 0       | 1\nPOP %R12                          | 2     | 0    | 0    | 0.50 | 0.50 | 0    | 0    | 1  | 0       | 1\nRET\nNOPW (%RAX,%RAX,1)                | 1     | 0    | 0    | 0    | 0    | 0.50 | 0.50 | 0  | 0       | 0.50\nNOP                               | 1     | 0    | 0    | 0    | 0    | 0.50 | 0.50 | 0  | 0       | 0.50\nJMP 2e4e <setup_init_state+0x48e> | 1     | 0    | 0    | 0    | 0    | 0    | 1    | 0  | 0       | 2\nMOV 0xc(%RBX),%EDI                | 1     | 0    | 0    | 1    | 0    | 0    | 0    | 0  | 4       | 1\nSUB $0x1,%EDI                     | 1     | 0    | 0    | 0    | 0    | 0.50 | 0.50 | 0  | 1       | 0.50\nCMP $0x1,%EDI                     | 1     | 0    | 0    | 0    | 0    | 0.50 | 0.50 | 0  | 1       | 0.50\nJBE 2e66 <setup_init_state+0x4a6> | 1     | 0    | 0    | 0    | 0    | 0    | 1    | 0  | 0       | 1-2\nMOV (%RBP),%R10                   | 1     | 0    | 0    | 1    | 0    | 0    | 0    | 0  | 4       | 1\nMOV $0x1,%R11D                    | 1     | 0    | 0    | 0    | 0    | 0.50 | 0.50 | 0  | 1       | 0.50\nXCHG %AX,%AX                      | 1     | 0    | 0    | 0    | 0    | 0.50 | 0.50 | 0  | 0       | 0.50\nJMP 2e5a <setup_init_state+0x49a> | 1     | 0    | 0    | 0    | 0    | 0    | 1    | 0  | 0       | 2\nCMPL $0,0x8(%RBX)                 | 1     | 0    | 0    | 1    | 0    | 0.50 | 0.50 | 0  | 1       | 1\nJE 2e7e <setup_init_state+0x4be>  | 1     | 0    | 0    | 0    | 0    | 0    | 1    | 0  | 0       | 1-2\nMOV (%RBX),%R10                   | 1     | 0    | 0    | 1    | 0    | 0    | 0    | 0  | 4       | 1\nXOR %EAX,%EAX\nMOV (%RBP),%R11                   | 1     | 0    | 0    | 1    | 0    | 0    | 0    | 0  | 4       | 1\nVMOVSD 0x2619(%RIP),%XMM11        | 1     | 0    | 0    | 0.50 | 0.50 | 0    | 0    | 0  | 5       | 0.50\nVMOVSD 0x2629(%RIP),%XMM3         | 1     | 0    | 0    | 0.50 | 0.50 | 0    | 0    | 0  | 5       | 0.50\nVMOVSD 0x2629(%RIP),%XMM0         | 1     | 0    | 0    | 0.50 | 0.50 | 0    | 0    | 0  | 5       | 0.50\nNOPW (%RAX,%RAX,1)                | 1     | 0    | 0    | 0    | 0    | 0.50 | 0.50 | 0  | 0       | 0.50\nJMP 2e72 <setup_init_state+0x4b2> | 1     | 0    | 0    | 0    | 0    | 0    | 1    | 0  | 0       | 2\nMOV 0xc(%RBX),%ECX                | 1     | 0    | 0    | 1    | 0    | 0    | 0    | 0  | 4       | 1\nSUB $0x1,%ECX                     | 1     | 0    | 0    | 0    | 0    | 0.50 | 0.50 | 0  | 1       | 0.50\nCMP $0x1,%ECX                     | 1     | 0    | 0    | 0    | 0    | 0.50 | 0.50 | 0  | 1       | 0.50\nJBE 2e66 <setup_init_state+0x4a6> | 1     | 0    | 0    | 0    | 0    | 0    | 1    | 0  | 0       | 1-2\nMOV (%RBP),%R9                    | 1     | 0    | 0    | 1    | 0    | 0    | 0    | 0  | 4       | 1\nMOV $0x1,%ESI                     | 1     | 0    | 0    | 0    | 0    | 0.50 | 0.50 | 0  | 1       | 0.50\nNOPW %CS:(%RAX,%RAX,1)            | 1     | 0    | 0    | 0    | 0    | 0.50 | 0.50 | 0  | 0       | 0.50\nNOPL (%RAX)                       | 1     | 0    | 0    | 0    | 0    | 0.50 | 0.50 | 0  | 0       | 0.50\nJMP 2e66 <setup_init_state+0x4a6> | 1     | 0    | 0    | 0    | 0    | 0    | 1    | 0  | 0       | 2\nCMPL $0,0x8(%RBX)                 | 1     | 0    | 0    | 1    | 0    | 0.50 | 0.50 | 0  | 1       | 1\nJE 2e7e <setup_init_state+0x4be>  | 1     | 0    | 0    | 0    | 0    | 0    | 1    | 0  | 0       | 1-2\nMOV (%RBX),%R10                   | 1     | 0    | 0    | 1    | 0    | 0    | 0    | 0  | 4       | 1\nXOR %EAX,%EAX\nMOV (%RBP),%R11                   | 1     | 0    | 0    | 1    | 0    | 0    | 0    | 0  | 4       | 1\nVMOVSD 0x245b(%RIP),%XMM4         | 1     | 0    | 0    | 0.50 | 0.50 | 0    | 0    | 0  | 5       | 0.50\nVMOVSD 0x246b(%RIP),%XMM5         | 1     | 0    | 0    | 0.50 | 0.50 | 0    | 0    | 0  | 5       | 0.50\nVMOVSD 0x246b(%RIP),%XMM6         | 1     | 0    | 0    | 0.50 | 0.50 | 0    | 0    | 0  | 5       | 0.50\nNOPW %CS:(%RAX,%RAX,1)            | 1     | 0    | 0    | 0    | 0    | 0.50 | 0.50 | 0  | 0       | 0.50\nJMP 2e7e <setup_init_state+0x4be> | 1     | 0    | 0    | 0    | 0    | 0    | 1    | 0  | 0       | 2\nCALL 1340 <.plt.sec@start+0x150>  | 1     | 0    | 0    | 0    | 0    | 0.50 | 0.50 | 0  | 0       | 2\nNOPW (%RAX,%RAX,1)                | 1     | 0    | 0    | 0    | 0    | 0.50 | 0.50 | 0  | 0       | 0.50\n",
        },
      },
      header = {
        "Warnings:\nDetected a function call instruction: ignoring called function instructions.\nRerun with --follow-calls=append to include them to analysis  or with --follow-calls=inline to simulate inlining.",
        "0% of peak computational performance is used (0.05 out of 32.00 FLOP per cycle (GFLOPS @ 1GHz))",
      },
      brief = {
      },
      gain = {
        {
          workaround = " - Try to reorganize arrays of structures to structures of arrays\n - Consider to permute loops (see vectorization gain report)\n",
          title = "Code clean check",
          txt = "Detected a slowdown caused by scalar integer instructions (typically used for address computation).\nBy removing them, you can lower the cost of an iteration from 55.00 to 32.00 cycles (1.72x speedup).",
        },
        {
          workaround = " - Try another compiler or update/tune your current one\n - Make array accesses unit-stride:\n  * If your function streams arrays of structures (AoS), try to use structures of arrays instead (SoA):\nfor(i) a[i].x = b[i].x; (slow, non stride 1) => for(i) a.x[i] = b.x[i]; (fast, stride 1)\n",
          details = "All SSE/AVX instructions are used in scalar version (process only one data element in vector registers).\nSince your execution units are vector units, only a vectorized function can use their full power.\n",
          title = "Vectorization",
          txt = "Your function is not vectorized.\nOnly 10% of vector register length is used (average across all SSE/AVX instructions).\nBy vectorizing your function, you can lower the cost of an iteration from 55.00 to 4.33 cycles (12.70x speedup).",
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
          details = "Calling (and then returning from) a function prevents many compiler optimizations (like vectorization), breaks control flow (which reduces pipeline performance) and executes extra instructions to save/restore the registers used inside it, which is very expensive (dozens of cycles). Consider to inline small functions.\n - unknown: 2 occurrences\n",
          title = "CALL instructions",
          txt = "Detected function call instructions.\n",
        },
        {
          workaround = "Avoid mixing data with different types. In particular, check if the type of constants is the same as array elements.",
          details = " - VCVTUSI2SD (INT32/64 to FP64, scalar): 1 occurrences\n",
          title = "Conversion instructions",
          txt = "Detected expensive conversion instructions.",
        },
        {
          title = "Type of elements and instruction set",
          txt = "3 SSE or AVX instructions are processing arithmetic or math operations on double precision FP elements in scalar mode (one at a time).\n",
        },
        {
          title = "Matching between your function (in the source code) and the binary function",
          txt = "The binary function is composed of 3 FP arithmetical operations:\n - 2: multiply\n - 1: divide\nThe binary function is loading 260 bytes (32 double precision FP elements).\nThe binary function is storing 8 bytes (1 double precision FP elements).",
        },
        {
          title = "Arithmetic intensity",
          txt = "Arithmetic intensity is 0.01 FP operations per loaded or stored byte.",
        },
      },
      expert = {
        {
          title = "General properties",
          txt = "nb instructions    : 104\nloop length        : 522\nused x86 registers : 13\nused mmx registers : 0\nused xmm registers : 12\nused ymm registers : 0\nused zmm registers : 0\nnb stack references: 5\n",
        },
        {
          title = "Front-end",
          txt = "MACRO FUSION NOT POSSIBLE\ninstruction fetch    : 33.00 cycles\ninstruction queue    : 52.00 cycles\ndecoding             : 52.00 cycles\nmicro-operation queue: 55.00 cycles\nfront end            : 55.00 cycles\n",
        },
        {
          title = "Back-end",
          txt = "       | P0   | P1   | P2    | P3    | P4    | P5    | P6\n-----------------------------------------------------------\nuops   | 2.00 | 2.00 | 24.00 | 20.00 | 30.50 | 30.50 | 4.00\ncycles | 2.00 | 2.00 | 24.00 | 20.00 | 30.50 | 30.50 | 4.00\n\nCycles executing div or sqrt instructions: 12.00-32.00\n",
        },
        {
          title = "Cycles summary",
          txt = "Front-end : 55.00\nDispatch  : 30.50\nDIV/SQRT  : 12.00-32.00\nOverall L1: 55.00\n",
        },
        {
          title = "Vectorization ratios",
          txt = "INT\nall    : 0%\nload   : 0%\nstore  : 0%\nmul    : NA (no mul vectorizable/vectorized instructions)\nadd-sub: 0%\nfma    : NA (no fma vectorizable/vectorized instructions)\nother  : 0%\nFP\nall     : 0%\nload    : 0%\nstore   : NA (no store vectorizable/vectorized instructions)\nmul     : 0%\nadd-sub : NA (no add-sub vectorizable/vectorized instructions)\nfma     : NA (no fma vectorizable/vectorized instructions)\ndiv/sqrt: 0%\nother   : NA (no other vectorizable/vectorized instructions)\nINT+FP\nall     : 0%\nload    : 0%\nstore   : 0%\nmul     : 0%\nadd-sub : 0%\nfma     : NA (no fma vectorizable/vectorized instructions)\ndiv/sqrt: 0%\nother   : 0%\n",
        },
        {
          title = "Vector efficiency ratios",
          txt = "INT\nall    : 8%\nload   : 8%\nstore  : 12%\nmul    : NA (no mul vectorizable/vectorized instructions)\nadd-sub: 6%\nfma    : NA (no fma vectorizable/vectorized instructions)\nother  : 6%\nFP\nall     : 12%\nload    : 12%\nstore   : NA (no store vectorizable/vectorized instructions)\nmul     : 12%\nadd-sub : NA (no add-sub vectorizable/vectorized instructions)\nfma     : NA (no fma vectorizable/vectorized instructions)\ndiv/sqrt: 12%\nother   : NA (no other vectorizable/vectorized instructions)\nINT+FP\nall     : 10%\nload    : 10%\nstore   : 12%\nmul     : 12%\nadd-sub : 6%\nfma     : NA (no fma vectorizable/vectorized instructions)\ndiv/sqrt: 12%\nother   : 6%\n",
        },
        {
          title = "Cycles and memory resources usage",
          txt = "Assuming all data fit into the L1 cache, each call to the function takes 55.00 cycles. At this rate:\n - 3% of peak load performance is reached (4.73 out of 128.00 bytes loaded per cycle (GB/s @ 1GHz))\n - 0% of peak store performance is reached (0.15 out of 64.00 bytes stored per cycle (GB/s @ 1GHz))\n",
        },
        {
          title = "Front-end bottlenecks",
          txt = "Performance is limited by instruction throughput (loading/decoding program instructions to execution core) (front-end is a bottleneck).\n\nBy removing all these bottlenecks, you can lower the cost of an iteration from 55.00 to 52.00 cycles (1.06x speedup).\n",
        },
        {
          title = "ASM code",
          txt = "In the binary file, the address of the function is: 29c0\n\nInstruction                       | Nb FU | P0   | P1   | P2   | P3   | P4   | P5   | P6 | Latency | Recip. throughput\n----------------------------------------------------------------------------------------------------------------------\nPUSH %R12                         | 1     | 0    | 0    | 0    | 0    | 1    | 1    | 0  | 0       | 1\nLEA (%RDX),%R12                   | 1     | 0    | 0    | 0    | 0    | 0.50 | 0.50 | 0  | 1       | 0.50\nPUSH %RBP                         | 1     | 0    | 0    | 0    | 0    | 1    | 1    | 0  | 0       | 1\nLEA (%RSI),%RBP                   | 1     | 0    | 0    | 0    | 0    | 0.50 | 0.50 | 0  | 1       | 0.50\nPUSH %RBX                         | 1     | 0    | 0    | 0    | 0    | 1    | 1    | 0  | 0       | 1\nLEA (%RDI),%RBX                   | 1     | 0    | 0    | 0    | 0    | 0.50 | 0.50 | 0  | 1       | 0.50\nMOV $0x44000000,%EDI              | 1     | 0    | 0    | 0    | 0    | 0.50 | 0.50 | 0  | 1       | 0.50\nLEA -0x10(%RSP),%RSP              | 1     | 0    | 0    | 0    | 0    | 0.50 | 0.50 | 0  | 1       | 0.50\nLEA 0x4(%RSP),%RSI                | 1     | 0    | 0    | 0    | 0    | 0.50 | 0.50 | 0  | 1       | 0.50\nMOV %FS:0x28,%RAX                 | 1     | 0    | 0    | 1    | 0    | 0    | 0    | 0  | 4       | 1\nMOV %RAX,0x8(%RSP)                | 1     | 0    | 0    | 0.50 | 0.50 | 0    | 0    | 1  | 0       | 1\nXOR %EAX,%EAX\nCALL 1310 <.plt.sec@start+0x120>  | 1     | 0    | 0    | 0    | 0    | 0.50 | 0.50 | 0  | 0       | 2\nMOV 0x8(%RBX),%ESI                | 1     | 0    | 0    | 1    | 0    | 0    | 0    | 0  | 4       | 1\nTEST %ESI,%ESI                    | 1     | 0    | 0    | 0    | 0    | 0.50 | 0.50 | 0  | 1       | 0.50\nJE 2e4e <setup_init_state+0x48e>  | 1     | 0    | 0    | 0    | 0    | 0    | 1    | 0  | 0       | 1-2\nMOV 0x4626(%RIP),%EDX             | 1     | 0    | 0    | 1    | 0    | 0    | 0    | 0  | 4       | 1\nXOR %EDI,%EDI\nVMOVSD 0x2bdc(%RIP),%XMM2         | 1     | 0    | 0    | 0.50 | 0.50 | 0    | 0    | 0  | 5       | 0.50\nMOV 0xc(%RBX),%R8D                | 1     | 0    | 0    | 1    | 0    | 0    | 0    | 0  | 4       | 1\nVMOVSD 0x2bd8(%RIP),%XMM4         | 1     | 0    | 0    | 0.50 | 0.50 | 0    | 0    | 0  | 5       | 0.50\nSUB $0x1,%RDX                     | 1     | 0    | 0    | 0    | 0    | 0.50 | 0.50 | 0  | 1       | 0.50\nVCVTUSI2SD %RDX,%XMM0,%XMM0       | 1     | 1    | 0    | 0    | 0    | 0    | 0    | 0  | 5       | 1\nVMOVSD 0x2bce(%RIP),%XMM3         | 1     | 0    | 0    | 0.50 | 0.50 | 0    | 0    | 0  | 5       | 0.50\nVMOVSD 0x2bd6(%RIP),%XMM6         | 1     | 0    | 0    | 0.50 | 0.50 | 0    | 0    | 0  | 5       | 0.50\nVMOVSD 0x2bd6(%RIP),%XMM5         | 1     | 0    | 0    | 0.50 | 0.50 | 0    | 0    | 0  | 5       | 0.50\nVMULSD %XMM0,%XMM0,%XMM1          | 1     | 0.50 | 0.50 | 0    | 0    | 0    | 0    | 0  | 6       | 0.50\nVMOVSD 0x2bd2(%RIP),%XMM8         | 1     | 0    | 0    | 0.50 | 0.50 | 0    | 0    | 0  | 5       | 0.50\nVMOVSD 0x2bd2(%RIP),%XMM7         | 1     | 0    | 0    | 0.50 | 0.50 | 0    | 0    | 0  | 5       | 0.50\nVDIVSD %XMM1,%XMM2,%XMM11         | 3     | 1    | 0    | 0    | 0    | 0    | 0    | 0  | 40-42   | 12-32\nNOPW %CS:(%RAX,%RAX,1)            | 1     | 0    | 0    | 0    | 0    | 0.50 | 0.50 | 0  | 0       | 0.50\nNOPL (%RAX)                       | 1     | 0    | 0    | 0    | 0    | 0.50 | 0.50 | 0  | 0       | 0.50\nCMPL $-0x1,0x1c(%R12)             | 1     | 0    | 0    | 1    | 0    | 0.50 | 0.50 | 0  | 1       | 1\nJE 2f95 <setup_init_state+0x5d5>  | 1     | 0    | 0    | 0    | 0    | 0    | 1    | 0  | 0       | 1-2\nCMPL $-0x1,0x18(%R12)             | 1     | 0    | 0    | 1    | 0    | 0.50 | 0.50 | 0  | 1       | 1\nJE 3139 <setup_init_state+0x779>  | 1     | 0    | 0    | 0    | 0    | 0    | 1    | 0  | 0       | 1-2\nCMPL $-0x1,0x20(%R12)             | 1     | 0    | 0    | 1    | 0    | 0.50 | 0.50 | 0  | 1       | 1\nJE 2fcc <setup_init_state+0x60c>  | 1     | 0    | 0    | 0    | 0    | 0    | 1    | 0  | 0       | 1-2\nCMPL $-0x1,0x24(%R12)             | 1     | 0    | 0    | 1    | 0    | 0.50 | 0.50 | 0  | 1       | 1\nJE 318a <setup_init_state+0x7ca>  | 1     | 0    | 0    | 0    | 0    | 0    | 1    | 0  | 0       | 1-2\nMOV (%R12),%ESI                   | 1     | 0    | 0    | 1    | 0    | 0    | 0    | 0  | 4       | 1\nMOV 0x8(%RBX),%R11D               | 1     | 0    | 0    | 1    | 0    | 0    | 0    | 0  | 4       | 1\nMOV %RSI,%RDX                     | 1     | 0    | 0    | 0    | 0    | 0.50 | 0.50 | 0  | 0       | 0.50\nADD %ESI,%R11D                    | 1     | 0    | 0    | 0    | 0    | 0.50 | 0.50 | 0  | 1       | 0.50\nCMP %ESI,%R11D                    | 1     | 0    | 0    | 0    | 0    | 0.50 | 0.50 | 0  | 1       | 0.50\nJBE 2f4a <setup_init_state+0x58a> | 1     | 0    | 0    | 0    | 0    | 0    | 1    | 0  | 0       | 1-2\nVMOVSD 0x41a3(%RIP),%XMM13        | 1     | 0    | 0    | 0.50 | 0.50 | 0    | 0    | 0  | 5       | 0.50\nVMULSD %XMM13,%XMM13,%XMM10       | 1     | 0.50 | 0.50 | 0    | 0    | 0    | 0    | 0  | 6       | 0.50\nMOV 0x4(%R12),%ECX                | 1     | 0    | 0    | 1    | 0    | 0    | 0    | 0  | 4       | 1\nMOV 0xc(%RBX),%R9D                | 1     | 0    | 0    | 1    | 0    | 0    | 0    | 0  | 4       | 1\nVMOVSD 0x417d(%RIP),%XMM7         | 1     | 0    | 0    | 0.50 | 0.50 | 0    | 0    | 0  | 5       | 0.50\nVMOVSD 0x417d(%RIP),%XMM8         | 1     | 0    | 0    | 0.50 | 0.50 | 0    | 0    | 0  | 5       | 0.50\nADD %ECX,%R9D                     | 1     | 0    | 0    | 0    | 0    | 0.50 | 0.50 | 0  | 1       | 0.50\nXCHG %AX,%AX                      | 1     | 0    | 0    | 0    | 0    | 0.50 | 0.50 | 0  | 0       | 0.50\nMOV 0x8(%RSP),%RAX                | 1     | 0    | 0    | 1    | 0    | 0    | 0    | 0  | 4       | 1\nXOR %FS:0x28,%RAX                 | 1     | 0    | 0    | 1    | 0    | 0.50 | 0.50 | 0  | 1       | 1\nJNE 3362 <setup_init_state+0x9a2> | 1     | 0    | 0    | 0    | 0    | 0    | 1    | 0  | 0       | 1-2\nLEA 0x10(%RSP),%RSP               | 1     | 0    | 0    | 0    | 0    | 0.50 | 0.50 | 0  | 1       | 0.50\nPOP %RBX                          | 2     | 0    | 0    | 0.50 | 0.50 | 0    | 0    | 1  | 0       | 1\nPOP %RBP                          | 2     | 0    | 0    | 0.50 | 0.50 | 0    | 0    | 1  | 0       | 1\nPOP %R12                          | 2     | 0    | 0    | 0.50 | 0.50 | 0    | 0    | 1  | 0       | 1\nRET\nNOPW (%RAX,%RAX,1)                | 1     | 0    | 0    | 0    | 0    | 0.50 | 0.50 | 0  | 0       | 0.50\nNOP                               | 1     | 0    | 0    | 0    | 0    | 0.50 | 0.50 | 0  | 0       | 0.50\nJMP 2e4e <setup_init_state+0x48e> | 1     | 0    | 0    | 0    | 0    | 0    | 1    | 0  | 0       | 2\nMOV 0xc(%RBX),%EDI                | 1     | 0    | 0    | 1    | 0    | 0    | 0    | 0  | 4       | 1\nSUB $0x1,%EDI                     | 1     | 0    | 0    | 0    | 0    | 0.50 | 0.50 | 0  | 1       | 0.50\nCMP $0x1,%EDI                     | 1     | 0    | 0    | 0    | 0    | 0.50 | 0.50 | 0  | 1       | 0.50\nJBE 2e66 <setup_init_state+0x4a6> | 1     | 0    | 0    | 0    | 0    | 0    | 1    | 0  | 0       | 1-2\nMOV (%RBP),%R10                   | 1     | 0    | 0    | 1    | 0    | 0    | 0    | 0  | 4       | 1\nMOV $0x1,%R11D                    | 1     | 0    | 0    | 0    | 0    | 0.50 | 0.50 | 0  | 1       | 0.50\nXCHG %AX,%AX                      | 1     | 0    | 0    | 0    | 0    | 0.50 | 0.50 | 0  | 0       | 0.50\nJMP 2e5a <setup_init_state+0x49a> | 1     | 0    | 0    | 0    | 0    | 0    | 1    | 0  | 0       | 2\nCMPL $0,0x8(%RBX)                 | 1     | 0    | 0    | 1    | 0    | 0.50 | 0.50 | 0  | 1       | 1\nJE 2e7e <setup_init_state+0x4be>  | 1     | 0    | 0    | 0    | 0    | 0    | 1    | 0  | 0       | 1-2\nMOV (%RBX),%R10                   | 1     | 0    | 0    | 1    | 0    | 0    | 0    | 0  | 4       | 1\nXOR %EAX,%EAX\nMOV (%RBP),%R11                   | 1     | 0    | 0    | 1    | 0    | 0    | 0    | 0  | 4       | 1\nVMOVSD 0x2619(%RIP),%XMM11        | 1     | 0    | 0    | 0.50 | 0.50 | 0    | 0    | 0  | 5       | 0.50\nVMOVSD 0x2629(%RIP),%XMM3         | 1     | 0    | 0    | 0.50 | 0.50 | 0    | 0    | 0  | 5       | 0.50\nVMOVSD 0x2629(%RIP),%XMM0         | 1     | 0    | 0    | 0.50 | 0.50 | 0    | 0    | 0  | 5       | 0.50\nNOPW (%RAX,%RAX,1)                | 1     | 0    | 0    | 0    | 0    | 0.50 | 0.50 | 0  | 0       | 0.50\nJMP 2e72 <setup_init_state+0x4b2> | 1     | 0    | 0    | 0    | 0    | 0    | 1    | 0  | 0       | 2\nMOV 0xc(%RBX),%ECX                | 1     | 0    | 0    | 1    | 0    | 0    | 0    | 0  | 4       | 1\nSUB $0x1,%ECX                     | 1     | 0    | 0    | 0    | 0    | 0.50 | 0.50 | 0  | 1       | 0.50\nCMP $0x1,%ECX                     | 1     | 0    | 0    | 0    | 0    | 0.50 | 0.50 | 0  | 1       | 0.50\nJBE 2e66 <setup_init_state+0x4a6> | 1     | 0    | 0    | 0    | 0    | 0    | 1    | 0  | 0       | 1-2\nMOV (%RBP),%R9                    | 1     | 0    | 0    | 1    | 0    | 0    | 0    | 0  | 4       | 1\nMOV $0x1,%ESI                     | 1     | 0    | 0    | 0    | 0    | 0.50 | 0.50 | 0  | 1       | 0.50\nNOPW %CS:(%RAX,%RAX,1)            | 1     | 0    | 0    | 0    | 0    | 0.50 | 0.50 | 0  | 0       | 0.50\nNOPL (%RAX)                       | 1     | 0    | 0    | 0    | 0    | 0.50 | 0.50 | 0  | 0       | 0.50\nJMP 2e66 <setup_init_state+0x4a6> | 1     | 0    | 0    | 0    | 0    | 0    | 1    | 0  | 0       | 2\nCMPL $0,0x8(%RBX)                 | 1     | 0    | 0    | 1    | 0    | 0.50 | 0.50 | 0  | 1       | 1\nJE 2e7e <setup_init_state+0x4be>  | 1     | 0    | 0    | 0    | 0    | 0    | 1    | 0  | 0       | 1-2\nMOV (%RBX),%R10                   | 1     | 0    | 0    | 1    | 0    | 0    | 0    | 0  | 4       | 1\nXOR %EAX,%EAX\nMOV (%RBP),%R11                   | 1     | 0    | 0    | 1    | 0    | 0    | 0    | 0  | 4       | 1\nVMOVSD 0x245b(%RIP),%XMM4         | 1     | 0    | 0    | 0.50 | 0.50 | 0    | 0    | 0  | 5       | 0.50\nVMOVSD 0x246b(%RIP),%XMM5         | 1     | 0    | 0    | 0.50 | 0.50 | 0    | 0    | 0  | 5       | 0.50\nVMOVSD 0x246b(%RIP),%XMM6         | 1     | 0    | 0    | 0.50 | 0.50 | 0    | 0    | 0  | 5       | 0.50\nNOPW %CS:(%RAX,%RAX,1)            | 1     | 0    | 0    | 0    | 0    | 0.50 | 0.50 | 0  | 0       | 0.50\nJMP 2e7e <setup_init_state+0x4be> | 1     | 0    | 0    | 0    | 0    | 0    | 1    | 0  | 0       | 2\nCALL 1340 <.plt.sec@start+0x150>  | 1     | 0    | 0    | 0    | 0    | 0.50 | 0.50 | 0  | 0       | 2\nNOPW (%RAX,%RAX,1)                | 1     | 0    | 0    | 0    | 0    | 0.50 | 0.50 | 0  | 0       | 0.50\n",
        },
      },
      header = {
        "Warnings:\nDetected a function call instruction: ignoring called function instructions.\nRerun with --follow-calls=append to include them to analysis  or with --follow-calls=inline to simulate inlining.",
        "0% of peak computational performance is used (0.05 out of 32.00 FLOP per cycle (GFLOPS @ 1GHz))",
      },
      brief = {
      },
      gain = {
        {
          workaround = " - Try to reorganize arrays of structures to structures of arrays\n - Consider to permute loops (see vectorization gain report)\n",
          title = "Code clean check",
          txt = "Detected a slowdown caused by scalar integer instructions (typically used for address computation).\nBy removing them, you can lower the cost of an iteration from 55.00 to 32.00 cycles (1.72x speedup).",
        },
        {
          workaround = " - Try another compiler or update/tune your current one\n - Make array accesses unit-stride:\n  * If your function streams arrays of structures (AoS), try to use structures of arrays instead (SoA):\nfor(i) a[i].x = b[i].x; (slow, non stride 1) => for(i) a.x[i] = b.x[i]; (fast, stride 1)\n",
          details = "All SSE/AVX instructions are used in scalar version (process only one data element in vector registers).\nSince your execution units are vector units, only a vectorized function can use their full power.\n",
          title = "Vectorization",
          txt = "Your function is not vectorized.\nOnly 10% of vector register length is used (average across all SSE/AVX instructions).\nBy vectorizing your function, you can lower the cost of an iteration from 55.00 to 4.33 cycles (12.70x speedup).",
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
      "The function is defined in:\n - /users/user2207/lbm_opt/src/lbm_init.c:25-30,47-58,76-97,103-110,118-122\n - /users/user2207/lbm_opt/src/lbm_phys.c:98-100,141-145\n - /users/user2207/lbm_opt/src/../include/lbm_struct.h:130,148\n\n",
      "Warnings:\nIgnoring paths for analysis",
    },
  },
}
