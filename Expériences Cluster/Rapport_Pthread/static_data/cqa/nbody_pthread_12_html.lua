_cqa_text_report = {
  paths = {
    {
      hint = {
        {
          workaround = "<ul><li>Try to reorganize arrays of structures to structures of arrays</li><li>Consider to permute loops (see vectorization gain report)</li></ul>",
          details = "<ul><li>Constant unknown stride: 1 occurrence(s)</li><li>Constant non-unit stride: 19 occurrence(s)</li></ul>Non-unit stride (uncontiguous) accesses are not efficiently using data caches\n",
          title = "Slow data structures access",
          txt = "Detected data structures (typically arrays) that cannot be efficiently read/written",
        },
        {
          workaround = "Avoid mixing data with different types. In particular, check if the type of constants is the same as array elements. Use double instead of single precision only when/where needed by numerical stability and avoid mixing precision. In C/C++, FP constants are double precision by default and must be suffixed by 'f' to make them single precision.",
          details = "<ul><li>VCVTSD2SS (FP64 to FP32, scalar): 12 occurrences</li><li>VCVTSS2SD (FP32 to FP64, scalar): 24 occurrences</li></ul>",
          title = "Conversion instructions",
          txt = "Detected expensive conversion instructions.",
        },
        {
          title = "Type of elements and instruction set",
          txt = "12 SSE or AVX instructions are processing arithmetic or math operations on double precision FP elements in scalar mode (one at a time).\n",
        },
        {
          title = "Matching between your loop (in the source code) and the binary loop",
          txt = "The binary loop is composed of 24 FP arithmetical operations:\n<ul><li>12: addition or subtraction (all inside FMA instructions)</li><li>12: multiply (all inside FMA instructions)</li></ul>The binary loop is loading 96 bytes (12 double precision FP elements).\nThe binary loop is storing 48 bytes (6 double precision FP elements).",
        },
        {
          title = "Arithmetic intensity",
          txt = "Arithmetic intensity is 0.17 FP operations per loaded or stored byte.",
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
          txt = "<table><tr><td>nb instructions</td><td>66</td></tr><tr><td>loop length</td><td>342</td></tr><tr><td>used x86 registers</td><td>11</td></tr><tr><td>used mmx registers</td><td>0</td></tr><tr><td>used xmm registers</td><td>16</td></tr><tr><td>used ymm registers</td><td>0</td></tr><tr><td>used zmm registers</td><td>0</td></tr><tr><td>nb stack references</td><td>0</td></tr></table>",
        },
        {
          title = "Front-end",
          txt = "MACRO FUSION NOT POSSIBLE\n<table><tr><td>instruction fetch</td><td>22.00 cycles</td></tr><tr><td>instruction queue</td><td>33.00 cycles</td></tr><tr><td>decoding</td><td>33.00 cycles</td></tr><tr><td>micro-operation queue</td><td>33.00 cycles</td></tr><tr><td>front end</td><td>33.00 cycles</td></tr></table>",
        },
        {
          title = "Back-end",
          txt = "<table><tr><th>      </th><th>P0</th><th>P1</th><th>P2</th><th>P3</th><th>P4</th><th>P5</th><th>P6</th></tr><tr><td>uops</td><td>36.00</td><td>12.00</td><td>18.00</td><td>18.00</td><td>3.00</td><td>3.00</td><td>12.00</td></tr><tr><td>cycles</td><td>36.00</td><td>12.00</td><td>18.00</td><td>18.00</td><td>3.00</td><td>3.00</td><td>12.00</td></tr></table>\n<table><tr><td>Cycles executing div or sqrt instructions</td><td>NA</td></tr><tr><td>Longest recurrence chain latency (RecMII)</td><td>1.00</td></tr></table>",
        },
        {
          title = "Cycles summary",
          txt = "<table><tr><td>Front-end</td><td>33.00</td></tr><tr><td>Dispatch</td><td>36.00</td></tr><tr><td>Data deps.</td><td>1.00</td></tr><tr><td>Overall L1</td><td>36.00</td></tr></table>",
        },
        {
          title = "Vectorization ratios",
          txt = "<table><tr><td>all</td><td>0%</td></tr><tr><td>load</td><td>0%</td></tr><tr><td>store</td><td>0%</td></tr><tr><td>mul</td><td>NA (no mul vectorizable/vectorized instructions)</td></tr><tr><td>add-sub</td><td>NA (no add-sub vectorizable/vectorized instructions)</td></tr><tr><td>fma</td><td>0%</td></tr><tr><td>div/sqrt</td><td>NA (no div/sqrt vectorizable/vectorized instructions)</td></tr><tr><td>other</td><td>0%</td></tr></table>",
        },
        {
          title = "Vector efficiency ratios",
          txt = "<table><tr><td>all</td><td>8%</td></tr><tr><td>load</td><td>6%</td></tr><tr><td>store</td><td>6%</td></tr><tr><td>mul</td><td>NA (no mul vectorizable/vectorized instructions)</td></tr><tr><td>add-sub</td><td>NA (no add-sub vectorizable/vectorized instructions)</td></tr><tr><td>fma</td><td>12%</td></tr><tr><td>div/sqrt</td><td>NA (no div/sqrt vectorizable/vectorized instructions)</td></tr><tr><td>other</td><td>8%</td></tr></table>",
        },
        {
          title = "Cycles and memory resources usage",
          txt = "Assuming all data fit into the L1 cache, each iteration of the binary loop takes 36.00 cycles. At this rate:\n<ul><li>2% of peak load performance is reached (2.67 out of 128.00 bytes loaded per cycle (GB/s @ 1GHz))</li><li>2% of peak store performance is reached (1.33 out of 64.00 bytes stored per cycle (GB/s @ 1GHz))</li></ul>",
        },
        {
          title = "Front-end bottlenecks",
          txt = "Found no such bottlenecks.",
        },
        {
          title = "ASM code",
          txt = "In the binary file, the address of the loop is: 2a92\n\n<table><tr><th>Instruction</th><th>Nb FU</th><th>P0</th><th>P1</th><th>P2</th><th>P3</th><th>P4</th><th>P5</th><th>P6</th><th>Latency</th><th>Recip. throughput</th></tr><tr><td>VCVTSS2SD (%RDI,%RBX,4),%XMM3,%XMM8</td><td>1</td><td>1</td><td>0</td><td>0.50</td><td>0.50</td><td>0</td><td>0</td><td>0</td><td>2</td><td>1</td></tr><tr><td>VCVTSS2SD (%R15,%RBX,4),%XMM3,%XMM13</td><td>1</td><td>1</td><td>0</td><td>0.50</td><td>0.50</td><td>0</td><td>0</td><td>0</td><td>2</td><td>1</td></tr><tr><td>LEA 0x1(%RBX),%R9</td><td>1</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0.50</td><td>0.50</td><td>0</td><td>1</td><td>0.50</td></tr><tr><td>LEA 0x2(%RBX),%RAX</td><td>1</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0.50</td><td>0.50</td><td>0</td><td>1</td><td>0.50</td></tr><tr><td>VFMADD132SD %XMM10,%XMM8,%XMM13</td><td>1</td><td>0.50</td><td>0.50</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0</td><td>6</td><td>0.50</td></tr><tr><td>LEA 0x3(%RBX),%RDX</td><td>1</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0.50</td><td>0.50</td><td>0</td><td>1</td><td>0.50</td></tr><tr><td>VCVTSD2SS %XMM13,%XMM13,%XMM9</td><td>1</td><td>1</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0</td><td>2</td><td>1</td></tr><tr><td>VMOVSS %XMM9,(%RDI,%RBX,4)</td><td>1</td><td>0</td><td>0</td><td>0.50</td><td>0.50</td><td>0</td><td>0</td><td>1</td><td>2</td><td>1</td></tr><tr><td>VCVTSS2SD (%RSI,%RBX,4),%XMM3,%XMM2</td><td>1</td><td>1</td><td>0</td><td>0.50</td><td>0.50</td><td>0</td><td>0</td><td>0</td><td>2</td><td>1</td></tr><tr><td>VCVTSS2SD (%R14,%RBX,4),%XMM3,%XMM11</td><td>1</td><td>1</td><td>0</td><td>0.50</td><td>0.50</td><td>0</td><td>0</td><td>0</td><td>2</td><td>1</td></tr><tr><td>VFMADD132SD %XMM10,%XMM2,%XMM11</td><td>1</td><td>0.50</td><td>0.50</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0</td><td>6</td><td>0.50</td></tr><tr><td>VCVTSD2SS %XMM11,%XMM11,%XMM5</td><td>1</td><td>1</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0</td><td>2</td><td>1</td></tr><tr><td>VMOVSS %XMM5,(%RSI,%RBX,4)</td><td>1</td><td>0</td><td>0</td><td>0.50</td><td>0.50</td><td>0</td><td>0</td><td>1</td><td>2</td><td>1</td></tr><tr><td>VCVTSS2SD (%RCX,%RBX,4),%XMM3,%XMM1</td><td>1</td><td>1</td><td>0</td><td>0.50</td><td>0.50</td><td>0</td><td>0</td><td>0</td><td>2</td><td>1</td></tr><tr><td>VCVTSS2SD (%R8,%RBX,4),%XMM3,%XMM6</td><td>1</td><td>1</td><td>0</td><td>0.50</td><td>0.50</td><td>0</td><td>0</td><td>0</td><td>2</td><td>1</td></tr><tr><td>VFMADD132SD %XMM10,%XMM1,%XMM6</td><td>1</td><td>0.50</td><td>0.50</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0</td><td>6</td><td>0.50</td></tr><tr><td>VCVTSD2SS %XMM6,%XMM6,%XMM7</td><td>1</td><td>1</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0</td><td>2</td><td>1</td></tr><tr><td>VMOVSS %XMM7,(%RCX,%RBX,4)</td><td>1</td><td>0</td><td>0</td><td>0.50</td><td>0.50</td><td>0</td><td>0</td><td>1</td><td>2</td><td>1</td></tr><tr><td>VCVTSS2SD 0x4(%RDI,%RBX,4),%XMM3,%XMM4</td><td>1</td><td>1</td><td>0</td><td>0.50</td><td>0.50</td><td>0</td><td>0</td><td>0</td><td>2</td><td>1</td></tr><tr><td>VCVTSS2SD 0x4(%R15,%RBX,4),%XMM3,%XMM12</td><td>1</td><td>1</td><td>0</td><td>0.50</td><td>0.50</td><td>0</td><td>0</td><td>0</td><td>2</td><td>1</td></tr><tr><td>VFMADD132SD %XMM10,%XMM4,%XMM12</td><td>1</td><td>0.50</td><td>0.50</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0</td><td>6</td><td>0.50</td></tr><tr><td>VCVTSD2SS %XMM12,%XMM12,%XMM14</td><td>1</td><td>1</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0</td><td>2</td><td>1</td></tr><tr><td>VMOVSS %XMM14,(%RDI,%R9,4)</td><td>1</td><td>0</td><td>0</td><td>0.50</td><td>0.50</td><td>0</td><td>0</td><td>1</td><td>2</td><td>1</td></tr><tr><td>VCVTSS2SD (%RSI,%R9,4),%XMM3,%XMM0</td><td>1</td><td>1</td><td>0</td><td>0.50</td><td>0.50</td><td>0</td><td>0</td><td>0</td><td>2</td><td>1</td></tr><tr><td>VCVTSS2SD (%R14,%R9,4),%XMM3,%XMM15</td><td>1</td><td>1</td><td>0</td><td>0.50</td><td>0.50</td><td>0</td><td>0</td><td>0</td><td>2</td><td>1</td></tr><tr><td>VFMADD132SD %XMM10,%XMM0,%XMM15</td><td>1</td><td>0.50</td><td>0.50</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0</td><td>6</td><td>0.50</td></tr><tr><td>VCVTSD2SS %XMM15,%XMM15,%XMM13</td><td>1</td><td>1</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0</td><td>2</td><td>1</td></tr><tr><td>VMOVSS %XMM13,(%RSI,%R9,4)</td><td>1</td><td>0</td><td>0</td><td>0.50</td><td>0.50</td><td>0</td><td>0</td><td>1</td><td>2</td><td>1</td></tr><tr><td>VCVTSS2SD (%RCX,%R9,4),%XMM3,%XMM9</td><td>1</td><td>1</td><td>0</td><td>0.50</td><td>0.50</td><td>0</td><td>0</td><td>0</td><td>2</td><td>1</td></tr><tr><td>VCVTSS2SD (%R8,%R9,4),%XMM3,%XMM8</td><td>1</td><td>1</td><td>0</td><td>0.50</td><td>0.50</td><td>0</td><td>0</td><td>0</td><td>2</td><td>1</td></tr><tr><td>VFMADD132SD %XMM10,%XMM9,%XMM8</td><td>1</td><td>0.50</td><td>0.50</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0</td><td>6</td><td>0.50</td></tr><tr><td>VCVTSD2SS %XMM8,%XMM8,%XMM11</td><td>1</td><td>1</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0</td><td>2</td><td>1</td></tr><tr><td>VMOVSS %XMM11,(%RCX,%R9,4)</td><td>1</td><td>0</td><td>0</td><td>0.50</td><td>0.50</td><td>0</td><td>0</td><td>1</td><td>2</td><td>1</td></tr><tr><td>VCVTSS2SD 0x8(%RDI,%RBX,4),%XMM3,%XMM5</td><td>1</td><td>1</td><td>0</td><td>0.50</td><td>0.50</td><td>0</td><td>0</td><td>0</td><td>2</td><td>1</td></tr><tr><td>VCVTSS2SD 0x8(%R15,%RBX,4),%XMM3,%XMM2</td><td>1</td><td>1</td><td>0</td><td>0.50</td><td>0.50</td><td>0</td><td>0</td><td>0</td><td>2</td><td>1</td></tr><tr><td>VFMADD132SD %XMM10,%XMM5,%XMM2</td><td>1</td><td>0.50</td><td>0.50</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0</td><td>6</td><td>0.50</td></tr><tr><td>VCVTSD2SS %XMM2,%XMM2,%XMM6</td><td>1</td><td>1</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0</td><td>2</td><td>1</td></tr><tr><td>VMOVSS %XMM6,(%RDI,%RAX,4)</td><td>1</td><td>0</td><td>0</td><td>0.50</td><td>0.50</td><td>0</td><td>0</td><td>1</td><td>2</td><td>1</td></tr><tr><td>VCVTSS2SD (%R14,%RAX,4),%XMM3,%XMM7</td><td>1</td><td>1</td><td>0</td><td>0.50</td><td>0.50</td><td>0</td><td>0</td><td>0</td><td>2</td><td>1</td></tr><tr><td>VCVTSS2SD (%RSI,%RAX,4),%XMM3,%XMM1</td><td>1</td><td>1</td><td>0</td><td>0.50</td><td>0.50</td><td>0</td><td>0</td><td>0</td><td>2</td><td>1</td></tr><tr><td>VFMADD132SD %XMM10,%XMM1,%XMM7</td><td>1</td><td>0.50</td><td>0.50</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0</td><td>6</td><td>0.50</td></tr><tr><td>VCVTSD2SS %XMM7,%XMM7,%XMM12</td><td>1</td><td>1</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0</td><td>2</td><td>1</td></tr><tr><td>VMOVSS %XMM12,(%RSI,%RAX,4)</td><td>1</td><td>0</td><td>0</td><td>0.50</td><td>0.50</td><td>0</td><td>0</td><td>1</td><td>2</td><td>1</td></tr><tr><td>VCVTSS2SD (%R8,%RAX,4),%XMM3,%XMM4</td><td>1</td><td>1</td><td>0</td><td>0.50</td><td>0.50</td><td>0</td><td>0</td><td>0</td><td>2</td><td>1</td></tr><tr><td>VCVTSS2SD (%RCX,%RAX,4),%XMM3,%XMM14</td><td>1</td><td>1</td><td>0</td><td>0.50</td><td>0.50</td><td>0</td><td>0</td><td>0</td><td>2</td><td>1</td></tr><tr><td>VFMADD132SD %XMM10,%XMM14,%XMM4</td><td>1</td><td>0.50</td><td>0.50</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0</td><td>6</td><td>0.50</td></tr><tr><td>VCVTSD2SS %XMM4,%XMM4,%XMM15</td><td>1</td><td>1</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0</td><td>2</td><td>1</td></tr><tr><td>VMOVSS %XMM15,(%RCX,%RAX,4)</td><td>1</td><td>0</td><td>0</td><td>0.50</td><td>0.50</td><td>0</td><td>0</td><td>1</td><td>2</td><td>1</td></tr><tr><td>VCVTSS2SD 0xc(%R15,%RBX,4),%XMM3,%XMM0</td><td>1</td><td>1</td><td>0</td><td>0.50</td><td>0.50</td><td>0</td><td>0</td><td>0</td><td>2</td><td>1</td></tr><tr><td>VCVTSS2SD 0xc(%RDI,%RBX,4),%XMM3,%XMM13</td><td>1</td><td>1</td><td>0</td><td>0.50</td><td>0.50</td><td>0</td><td>0</td><td>0</td><td>2</td><td>1</td></tr><tr><td>VFMADD132SD %XMM10,%XMM13,%XMM0</td><td>1</td><td>0.50</td><td>0.50</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0</td><td>6</td><td>0.50</td></tr><tr><td>ADD $0x4,%RBX</td><td>1</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0.50</td><td>0.50</td><td>0</td><td>1</td><td>0.50</td></tr><tr><td>VCVTSD2SS %XMM0,%XMM0,%XMM8</td><td>1</td><td>1</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0</td><td>2</td><td>1</td></tr><tr><td>VMOVSS %XMM8,(%RDI,%RDX,4)</td><td>1</td><td>0</td><td>0</td><td>0.50</td><td>0.50</td><td>0</td><td>0</td><td>1</td><td>2</td><td>1</td></tr><tr><td>VCVTSS2SD (%R14,%RDX,4),%XMM3,%XMM9</td><td>1</td><td>1</td><td>0</td><td>0.50</td><td>0.50</td><td>0</td><td>0</td><td>0</td><td>2</td><td>1</td></tr><tr><td>VCVTSS2SD (%RSI,%RDX,4),%XMM3,%XMM11</td><td>1</td><td>1</td><td>0</td><td>0.50</td><td>0.50</td><td>0</td><td>0</td><td>0</td><td>2</td><td>1</td></tr><tr><td>VFMADD132SD %XMM10,%XMM11,%XMM9</td><td>1</td><td>0.50</td><td>0.50</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0</td><td>6</td><td>0.50</td></tr><tr><td>VCVTSD2SS %XMM9,%XMM9,%XMM2</td><td>1</td><td>1</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0</td><td>2</td><td>1</td></tr><tr><td>VMOVSS %XMM2,(%RSI,%RDX,4)</td><td>1</td><td>0</td><td>0</td><td>0.50</td><td>0.50</td><td>0</td><td>0</td><td>1</td><td>2</td><td>1</td></tr><tr><td>VCVTSS2SD (%R8,%RDX,4),%XMM3,%XMM5</td><td>1</td><td>1</td><td>0</td><td>0.50</td><td>0.50</td><td>0</td><td>0</td><td>0</td><td>2</td><td>1</td></tr><tr><td>VCVTSS2SD (%RCX,%RDX,4),%XMM3,%XMM6</td><td>1</td><td>1</td><td>0</td><td>0.50</td><td>0.50</td><td>0</td><td>0</td><td>0</td><td>2</td><td>1</td></tr><tr><td>VFMADD132SD %XMM10,%XMM6,%XMM5</td><td>1</td><td>0.50</td><td>0.50</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0</td><td>6</td><td>0.50</td></tr><tr><td>VCVTSD2SS %XMM5,%XMM5,%XMM7</td><td>1</td><td>1</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0</td><td>2</td><td>1</td></tr><tr><td>VMOVSS %XMM7,(%RCX,%RDX,4)</td><td>1</td><td>0</td><td>0</td><td>0.50</td><td>0.50</td><td>0</td><td>0</td><td>1</td><td>2</td><td>1</td></tr><tr><td>CMP %R12,%RBX</td><td>1</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0.50</td><td>0.50</td><td>0</td><td>1</td><td>0.50</td></tr><tr><td>JNE 2a92 <move_particles+0x952></td><td>1</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0</td><td>1</td><td>0</td><td>0</td><td>1-2</td></tr></table>",
        },
      },
      header = {
        "2% of peak computational performance is used (0.67 out of 32.00 FLOP per cycle (GFLOPS @ 1GHz))",
      },
      brief = {
      },
      gain = {
        {
          workaround = "<ul><li>Try another compiler or update/tune your current one</li><li>Remove inter-iterations dependences from your loop and make it unit-stride:\n<ul><li>If your arrays have 2 or more dimensions, check whether elements are accessed contiguously and, otherwise, try to permute loops accordingly:\nC storage order is row-major: for(i) for(j) a[j][i] = b[j][i]; (slow, non stride 1) =&gt; for(i) for(j) a[i][j] = b[i][j]; (fast, stride 1)</li><li>If your loop streams arrays of structures (AoS), try to use structures of arrays instead (SoA):\nfor(i) a[i].x = b[i].x; (slow, non stride 1) =&gt; for(i) a.x[i] = b.x[i]; (fast, stride 1)</li></ul></li></ul>",
          details = "All SSE/AVX instructions are used in scalar version (process only one data element in vector registers).\nSince your execution units are vector units, only a vectorized loop can use their full power.\n",
          title = "Vectorization",
          txt = "Your loop is not vectorized.\nOnly 8% of vector register length is used (average across all SSE/AVX instructions).\nBy vectorizing your loop, you can lower the cost of an iteration from 36.00 to 3.00 cycles (12.00x speedup).",
        },
        {
          workaround = "<ul><li>Reduce the number of FP multiply/FMA instructions</li><li>Reduce arithmetical operations on array elements</li></ul>",
          title = "Execution units bottlenecks",
          txt = "Performance is limited by:\n<ul><li>execution of FP multiply or FMA (fused multiply-add) operations (the FP multiply/FMA unit is a bottleneck)</li><li>execution of INT/FP operations in vector registers (the VPU is a bottleneck)</li></ul>\nBy removing all these bottlenecks, you can lower the cost of an iteration from 36.00 to 33.00 cycles (1.09x speedup).\n",
        },
      },
      potential = {
        {
          title = "FMA",
          txt = "Detected 12 FMA (fused multiply-add) operations.",
        },
      },
    },
  },
  AVG = {
      hint = {
        {
          workaround = "<ul><li>Try to reorganize arrays of structures to structures of arrays</li><li>Consider to permute loops (see vectorization gain report)</li></ul>",
          details = "<ul><li>Constant unknown stride: 1 occurrence(s)</li><li>Constant non-unit stride: 19 occurrence(s)</li></ul>Non-unit stride (uncontiguous) accesses are not efficiently using data caches\n",
          title = "Slow data structures access",
          txt = "Detected data structures (typically arrays) that cannot be efficiently read/written",
        },
        {
          workaround = "Avoid mixing data with different types. In particular, check if the type of constants is the same as array elements. Use double instead of single precision only when/where needed by numerical stability and avoid mixing precision. In C/C++, FP constants are double precision by default and must be suffixed by 'f' to make them single precision.",
          details = "<ul><li>VCVTSD2SS (FP64 to FP32, scalar): 12 occurrences</li><li>VCVTSS2SD (FP32 to FP64, scalar): 24 occurrences</li></ul>",
          title = "Conversion instructions",
          txt = "Detected expensive conversion instructions.",
        },
        {
          title = "Type of elements and instruction set",
          txt = "12 SSE or AVX instructions are processing arithmetic or math operations on double precision FP elements in scalar mode (one at a time).\n",
        },
        {
          title = "Matching between your loop (in the source code) and the binary loop",
          txt = "The binary loop is composed of 24 FP arithmetical operations:\n<ul><li>12: addition or subtraction (all inside FMA instructions)</li><li>12: multiply (all inside FMA instructions)</li></ul>The binary loop is loading 96 bytes (12 double precision FP elements).\nThe binary loop is storing 48 bytes (6 double precision FP elements).",
        },
        {
          title = "Arithmetic intensity",
          txt = "Arithmetic intensity is 0.17 FP operations per loaded or stored byte.",
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
          txt = "<table><tr><td>nb instructions</td><td>66</td></tr><tr><td>loop length</td><td>342</td></tr><tr><td>used x86 registers</td><td>11</td></tr><tr><td>used mmx registers</td><td>0</td></tr><tr><td>used xmm registers</td><td>16</td></tr><tr><td>used ymm registers</td><td>0</td></tr><tr><td>used zmm registers</td><td>0</td></tr><tr><td>nb stack references</td><td>0</td></tr></table>",
        },
        {
          title = "Front-end",
          txt = "MACRO FUSION NOT POSSIBLE\n<table><tr><td>instruction fetch</td><td>22.00 cycles</td></tr><tr><td>instruction queue</td><td>33.00 cycles</td></tr><tr><td>decoding</td><td>33.00 cycles</td></tr><tr><td>micro-operation queue</td><td>33.00 cycles</td></tr><tr><td>front end</td><td>33.00 cycles</td></tr></table>",
        },
        {
          title = "Back-end",
          txt = "<table><tr><th>      </th><th>P0</th><th>P1</th><th>P2</th><th>P3</th><th>P4</th><th>P5</th><th>P6</th></tr><tr><td>uops</td><td>36.00</td><td>12.00</td><td>18.00</td><td>18.00</td><td>3.00</td><td>3.00</td><td>12.00</td></tr><tr><td>cycles</td><td>36.00</td><td>12.00</td><td>18.00</td><td>18.00</td><td>3.00</td><td>3.00</td><td>12.00</td></tr></table>\n<table><tr><td>Cycles executing div or sqrt instructions</td><td>NA</td></tr><tr><td>Longest recurrence chain latency (RecMII)</td><td>1.00</td></tr></table>",
        },
        {
          title = "Cycles summary",
          txt = "<table><tr><td>Front-end</td><td>33.00</td></tr><tr><td>Dispatch</td><td>36.00</td></tr><tr><td>Data deps.</td><td>1.00</td></tr><tr><td>Overall L1</td><td>36.00</td></tr></table>",
        },
        {
          title = "Vectorization ratios",
          txt = "<table><tr><td>all</td><td>0%</td></tr><tr><td>load</td><td>0%</td></tr><tr><td>store</td><td>0%</td></tr><tr><td>mul</td><td>NA (no mul vectorizable/vectorized instructions)</td></tr><tr><td>add-sub</td><td>NA (no add-sub vectorizable/vectorized instructions)</td></tr><tr><td>fma</td><td>0%</td></tr><tr><td>div/sqrt</td><td>NA (no div/sqrt vectorizable/vectorized instructions)</td></tr><tr><td>other</td><td>0%</td></tr></table>",
        },
        {
          title = "Vector efficiency ratios",
          txt = "<table><tr><td>all</td><td>8%</td></tr><tr><td>load</td><td>6%</td></tr><tr><td>store</td><td>6%</td></tr><tr><td>mul</td><td>NA (no mul vectorizable/vectorized instructions)</td></tr><tr><td>add-sub</td><td>NA (no add-sub vectorizable/vectorized instructions)</td></tr><tr><td>fma</td><td>12%</td></tr><tr><td>div/sqrt</td><td>NA (no div/sqrt vectorizable/vectorized instructions)</td></tr><tr><td>other</td><td>8%</td></tr></table>",
        },
        {
          title = "Cycles and memory resources usage",
          txt = "Assuming all data fit into the L1 cache, each iteration of the binary loop takes 36.00 cycles. At this rate:\n<ul><li>2% of peak load performance is reached (2.67 out of 128.00 bytes loaded per cycle (GB/s @ 1GHz))</li><li>2% of peak store performance is reached (1.33 out of 64.00 bytes stored per cycle (GB/s @ 1GHz))</li></ul>",
        },
        {
          title = "Front-end bottlenecks",
          txt = "Found no such bottlenecks.",
        },
        {
          title = "ASM code",
          txt = "In the binary file, the address of the loop is: 2a92\n\n<table><tr><th>Instruction</th><th>Nb FU</th><th>P0</th><th>P1</th><th>P2</th><th>P3</th><th>P4</th><th>P5</th><th>P6</th><th>Latency</th><th>Recip. throughput</th></tr><tr><td>VCVTSS2SD (%RDI,%RBX,4),%XMM3,%XMM8</td><td>1</td><td>1</td><td>0</td><td>0.50</td><td>0.50</td><td>0</td><td>0</td><td>0</td><td>2</td><td>1</td></tr><tr><td>VCVTSS2SD (%R15,%RBX,4),%XMM3,%XMM13</td><td>1</td><td>1</td><td>0</td><td>0.50</td><td>0.50</td><td>0</td><td>0</td><td>0</td><td>2</td><td>1</td></tr><tr><td>LEA 0x1(%RBX),%R9</td><td>1</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0.50</td><td>0.50</td><td>0</td><td>1</td><td>0.50</td></tr><tr><td>LEA 0x2(%RBX),%RAX</td><td>1</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0.50</td><td>0.50</td><td>0</td><td>1</td><td>0.50</td></tr><tr><td>VFMADD132SD %XMM10,%XMM8,%XMM13</td><td>1</td><td>0.50</td><td>0.50</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0</td><td>6</td><td>0.50</td></tr><tr><td>LEA 0x3(%RBX),%RDX</td><td>1</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0.50</td><td>0.50</td><td>0</td><td>1</td><td>0.50</td></tr><tr><td>VCVTSD2SS %XMM13,%XMM13,%XMM9</td><td>1</td><td>1</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0</td><td>2</td><td>1</td></tr><tr><td>VMOVSS %XMM9,(%RDI,%RBX,4)</td><td>1</td><td>0</td><td>0</td><td>0.50</td><td>0.50</td><td>0</td><td>0</td><td>1</td><td>2</td><td>1</td></tr><tr><td>VCVTSS2SD (%RSI,%RBX,4),%XMM3,%XMM2</td><td>1</td><td>1</td><td>0</td><td>0.50</td><td>0.50</td><td>0</td><td>0</td><td>0</td><td>2</td><td>1</td></tr><tr><td>VCVTSS2SD (%R14,%RBX,4),%XMM3,%XMM11</td><td>1</td><td>1</td><td>0</td><td>0.50</td><td>0.50</td><td>0</td><td>0</td><td>0</td><td>2</td><td>1</td></tr><tr><td>VFMADD132SD %XMM10,%XMM2,%XMM11</td><td>1</td><td>0.50</td><td>0.50</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0</td><td>6</td><td>0.50</td></tr><tr><td>VCVTSD2SS %XMM11,%XMM11,%XMM5</td><td>1</td><td>1</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0</td><td>2</td><td>1</td></tr><tr><td>VMOVSS %XMM5,(%RSI,%RBX,4)</td><td>1</td><td>0</td><td>0</td><td>0.50</td><td>0.50</td><td>0</td><td>0</td><td>1</td><td>2</td><td>1</td></tr><tr><td>VCVTSS2SD (%RCX,%RBX,4),%XMM3,%XMM1</td><td>1</td><td>1</td><td>0</td><td>0.50</td><td>0.50</td><td>0</td><td>0</td><td>0</td><td>2</td><td>1</td></tr><tr><td>VCVTSS2SD (%R8,%RBX,4),%XMM3,%XMM6</td><td>1</td><td>1</td><td>0</td><td>0.50</td><td>0.50</td><td>0</td><td>0</td><td>0</td><td>2</td><td>1</td></tr><tr><td>VFMADD132SD %XMM10,%XMM1,%XMM6</td><td>1</td><td>0.50</td><td>0.50</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0</td><td>6</td><td>0.50</td></tr><tr><td>VCVTSD2SS %XMM6,%XMM6,%XMM7</td><td>1</td><td>1</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0</td><td>2</td><td>1</td></tr><tr><td>VMOVSS %XMM7,(%RCX,%RBX,4)</td><td>1</td><td>0</td><td>0</td><td>0.50</td><td>0.50</td><td>0</td><td>0</td><td>1</td><td>2</td><td>1</td></tr><tr><td>VCVTSS2SD 0x4(%RDI,%RBX,4),%XMM3,%XMM4</td><td>1</td><td>1</td><td>0</td><td>0.50</td><td>0.50</td><td>0</td><td>0</td><td>0</td><td>2</td><td>1</td></tr><tr><td>VCVTSS2SD 0x4(%R15,%RBX,4),%XMM3,%XMM12</td><td>1</td><td>1</td><td>0</td><td>0.50</td><td>0.50</td><td>0</td><td>0</td><td>0</td><td>2</td><td>1</td></tr><tr><td>VFMADD132SD %XMM10,%XMM4,%XMM12</td><td>1</td><td>0.50</td><td>0.50</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0</td><td>6</td><td>0.50</td></tr><tr><td>VCVTSD2SS %XMM12,%XMM12,%XMM14</td><td>1</td><td>1</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0</td><td>2</td><td>1</td></tr><tr><td>VMOVSS %XMM14,(%RDI,%R9,4)</td><td>1</td><td>0</td><td>0</td><td>0.50</td><td>0.50</td><td>0</td><td>0</td><td>1</td><td>2</td><td>1</td></tr><tr><td>VCVTSS2SD (%RSI,%R9,4),%XMM3,%XMM0</td><td>1</td><td>1</td><td>0</td><td>0.50</td><td>0.50</td><td>0</td><td>0</td><td>0</td><td>2</td><td>1</td></tr><tr><td>VCVTSS2SD (%R14,%R9,4),%XMM3,%XMM15</td><td>1</td><td>1</td><td>0</td><td>0.50</td><td>0.50</td><td>0</td><td>0</td><td>0</td><td>2</td><td>1</td></tr><tr><td>VFMADD132SD %XMM10,%XMM0,%XMM15</td><td>1</td><td>0.50</td><td>0.50</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0</td><td>6</td><td>0.50</td></tr><tr><td>VCVTSD2SS %XMM15,%XMM15,%XMM13</td><td>1</td><td>1</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0</td><td>2</td><td>1</td></tr><tr><td>VMOVSS %XMM13,(%RSI,%R9,4)</td><td>1</td><td>0</td><td>0</td><td>0.50</td><td>0.50</td><td>0</td><td>0</td><td>1</td><td>2</td><td>1</td></tr><tr><td>VCVTSS2SD (%RCX,%R9,4),%XMM3,%XMM9</td><td>1</td><td>1</td><td>0</td><td>0.50</td><td>0.50</td><td>0</td><td>0</td><td>0</td><td>2</td><td>1</td></tr><tr><td>VCVTSS2SD (%R8,%R9,4),%XMM3,%XMM8</td><td>1</td><td>1</td><td>0</td><td>0.50</td><td>0.50</td><td>0</td><td>0</td><td>0</td><td>2</td><td>1</td></tr><tr><td>VFMADD132SD %XMM10,%XMM9,%XMM8</td><td>1</td><td>0.50</td><td>0.50</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0</td><td>6</td><td>0.50</td></tr><tr><td>VCVTSD2SS %XMM8,%XMM8,%XMM11</td><td>1</td><td>1</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0</td><td>2</td><td>1</td></tr><tr><td>VMOVSS %XMM11,(%RCX,%R9,4)</td><td>1</td><td>0</td><td>0</td><td>0.50</td><td>0.50</td><td>0</td><td>0</td><td>1</td><td>2</td><td>1</td></tr><tr><td>VCVTSS2SD 0x8(%RDI,%RBX,4),%XMM3,%XMM5</td><td>1</td><td>1</td><td>0</td><td>0.50</td><td>0.50</td><td>0</td><td>0</td><td>0</td><td>2</td><td>1</td></tr><tr><td>VCVTSS2SD 0x8(%R15,%RBX,4),%XMM3,%XMM2</td><td>1</td><td>1</td><td>0</td><td>0.50</td><td>0.50</td><td>0</td><td>0</td><td>0</td><td>2</td><td>1</td></tr><tr><td>VFMADD132SD %XMM10,%XMM5,%XMM2</td><td>1</td><td>0.50</td><td>0.50</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0</td><td>6</td><td>0.50</td></tr><tr><td>VCVTSD2SS %XMM2,%XMM2,%XMM6</td><td>1</td><td>1</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0</td><td>2</td><td>1</td></tr><tr><td>VMOVSS %XMM6,(%RDI,%RAX,4)</td><td>1</td><td>0</td><td>0</td><td>0.50</td><td>0.50</td><td>0</td><td>0</td><td>1</td><td>2</td><td>1</td></tr><tr><td>VCVTSS2SD (%R14,%RAX,4),%XMM3,%XMM7</td><td>1</td><td>1</td><td>0</td><td>0.50</td><td>0.50</td><td>0</td><td>0</td><td>0</td><td>2</td><td>1</td></tr><tr><td>VCVTSS2SD (%RSI,%RAX,4),%XMM3,%XMM1</td><td>1</td><td>1</td><td>0</td><td>0.50</td><td>0.50</td><td>0</td><td>0</td><td>0</td><td>2</td><td>1</td></tr><tr><td>VFMADD132SD %XMM10,%XMM1,%XMM7</td><td>1</td><td>0.50</td><td>0.50</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0</td><td>6</td><td>0.50</td></tr><tr><td>VCVTSD2SS %XMM7,%XMM7,%XMM12</td><td>1</td><td>1</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0</td><td>2</td><td>1</td></tr><tr><td>VMOVSS %XMM12,(%RSI,%RAX,4)</td><td>1</td><td>0</td><td>0</td><td>0.50</td><td>0.50</td><td>0</td><td>0</td><td>1</td><td>2</td><td>1</td></tr><tr><td>VCVTSS2SD (%R8,%RAX,4),%XMM3,%XMM4</td><td>1</td><td>1</td><td>0</td><td>0.50</td><td>0.50</td><td>0</td><td>0</td><td>0</td><td>2</td><td>1</td></tr><tr><td>VCVTSS2SD (%RCX,%RAX,4),%XMM3,%XMM14</td><td>1</td><td>1</td><td>0</td><td>0.50</td><td>0.50</td><td>0</td><td>0</td><td>0</td><td>2</td><td>1</td></tr><tr><td>VFMADD132SD %XMM10,%XMM14,%XMM4</td><td>1</td><td>0.50</td><td>0.50</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0</td><td>6</td><td>0.50</td></tr><tr><td>VCVTSD2SS %XMM4,%XMM4,%XMM15</td><td>1</td><td>1</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0</td><td>2</td><td>1</td></tr><tr><td>VMOVSS %XMM15,(%RCX,%RAX,4)</td><td>1</td><td>0</td><td>0</td><td>0.50</td><td>0.50</td><td>0</td><td>0</td><td>1</td><td>2</td><td>1</td></tr><tr><td>VCVTSS2SD 0xc(%R15,%RBX,4),%XMM3,%XMM0</td><td>1</td><td>1</td><td>0</td><td>0.50</td><td>0.50</td><td>0</td><td>0</td><td>0</td><td>2</td><td>1</td></tr><tr><td>VCVTSS2SD 0xc(%RDI,%RBX,4),%XMM3,%XMM13</td><td>1</td><td>1</td><td>0</td><td>0.50</td><td>0.50</td><td>0</td><td>0</td><td>0</td><td>2</td><td>1</td></tr><tr><td>VFMADD132SD %XMM10,%XMM13,%XMM0</td><td>1</td><td>0.50</td><td>0.50</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0</td><td>6</td><td>0.50</td></tr><tr><td>ADD $0x4,%RBX</td><td>1</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0.50</td><td>0.50</td><td>0</td><td>1</td><td>0.50</td></tr><tr><td>VCVTSD2SS %XMM0,%XMM0,%XMM8</td><td>1</td><td>1</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0</td><td>2</td><td>1</td></tr><tr><td>VMOVSS %XMM8,(%RDI,%RDX,4)</td><td>1</td><td>0</td><td>0</td><td>0.50</td><td>0.50</td><td>0</td><td>0</td><td>1</td><td>2</td><td>1</td></tr><tr><td>VCVTSS2SD (%R14,%RDX,4),%XMM3,%XMM9</td><td>1</td><td>1</td><td>0</td><td>0.50</td><td>0.50</td><td>0</td><td>0</td><td>0</td><td>2</td><td>1</td></tr><tr><td>VCVTSS2SD (%RSI,%RDX,4),%XMM3,%XMM11</td><td>1</td><td>1</td><td>0</td><td>0.50</td><td>0.50</td><td>0</td><td>0</td><td>0</td><td>2</td><td>1</td></tr><tr><td>VFMADD132SD %XMM10,%XMM11,%XMM9</td><td>1</td><td>0.50</td><td>0.50</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0</td><td>6</td><td>0.50</td></tr><tr><td>VCVTSD2SS %XMM9,%XMM9,%XMM2</td><td>1</td><td>1</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0</td><td>2</td><td>1</td></tr><tr><td>VMOVSS %XMM2,(%RSI,%RDX,4)</td><td>1</td><td>0</td><td>0</td><td>0.50</td><td>0.50</td><td>0</td><td>0</td><td>1</td><td>2</td><td>1</td></tr><tr><td>VCVTSS2SD (%R8,%RDX,4),%XMM3,%XMM5</td><td>1</td><td>1</td><td>0</td><td>0.50</td><td>0.50</td><td>0</td><td>0</td><td>0</td><td>2</td><td>1</td></tr><tr><td>VCVTSS2SD (%RCX,%RDX,4),%XMM3,%XMM6</td><td>1</td><td>1</td><td>0</td><td>0.50</td><td>0.50</td><td>0</td><td>0</td><td>0</td><td>2</td><td>1</td></tr><tr><td>VFMADD132SD %XMM10,%XMM6,%XMM5</td><td>1</td><td>0.50</td><td>0.50</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0</td><td>6</td><td>0.50</td></tr><tr><td>VCVTSD2SS %XMM5,%XMM5,%XMM7</td><td>1</td><td>1</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0</td><td>2</td><td>1</td></tr><tr><td>VMOVSS %XMM7,(%RCX,%RDX,4)</td><td>1</td><td>0</td><td>0</td><td>0.50</td><td>0.50</td><td>0</td><td>0</td><td>1</td><td>2</td><td>1</td></tr><tr><td>CMP %R12,%RBX</td><td>1</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0.50</td><td>0.50</td><td>0</td><td>1</td><td>0.50</td></tr><tr><td>JNE 2a92 <move_particles+0x952></td><td>1</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0</td><td>1</td><td>0</td><td>0</td><td>1-2</td></tr></table>",
        },
      },
      header = {
        "2% of peak computational performance is used (0.67 out of 32.00 FLOP per cycle (GFLOPS @ 1GHz))",
      },
      brief = {
      },
      gain = {
        {
          workaround = "<ul><li>Try another compiler or update/tune your current one</li><li>Remove inter-iterations dependences from your loop and make it unit-stride:\n<ul><li>If your arrays have 2 or more dimensions, check whether elements are accessed contiguously and, otherwise, try to permute loops accordingly:\nC storage order is row-major: for(i) for(j) a[j][i] = b[j][i]; (slow, non stride 1) =&gt; for(i) for(j) a[i][j] = b[i][j]; (fast, stride 1)</li><li>If your loop streams arrays of structures (AoS), try to use structures of arrays instead (SoA):\nfor(i) a[i].x = b[i].x; (slow, non stride 1) =&gt; for(i) a.x[i] = b.x[i]; (fast, stride 1)</li></ul></li></ul>",
          details = "All SSE/AVX instructions are used in scalar version (process only one data element in vector registers).\nSince your execution units are vector units, only a vectorized loop can use their full power.\n",
          title = "Vectorization",
          txt = "Your loop is not vectorized.\nOnly 8% of vector register length is used (average across all SSE/AVX instructions).\nBy vectorizing your loop, you can lower the cost of an iteration from 36.00 to 3.00 cycles (12.00x speedup).",
        },
        {
          workaround = "<ul><li>Reduce the number of FP multiply/FMA instructions</li><li>Reduce arithmetical operations on array elements</li></ul>",
          title = "Execution units bottlenecks",
          txt = "Performance is limited by:\n<ul><li>execution of FP multiply or FMA (fused multiply-add) operations (the FP multiply/FMA unit is a bottleneck)</li><li>execution of INT/FP operations in vector registers (the VPU is a bottleneck)</li></ul>\nBy removing all these bottlenecks, you can lower the cost of an iteration from 36.00 to 33.00 cycles (1.09x speedup).\n",
        },
      },
      potential = {
        {
          title = "FMA",
          txt = "Detected 12 FMA (fused multiply-add) operations.",
        },
      },
    },
  common = {
    header = {
      "The loop is defined in /users/user2234/Code_Nbody3D/nbody_pthread.c:102-106.\n",
      "The related source loop is not unrolled or unrolled with no peel/tail loop.",
    },
    nb_paths = 1,
  },
}
