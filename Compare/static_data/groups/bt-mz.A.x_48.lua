_group = {
  {
    group_size = 1,
    pattern = "L",
    opcodes = "VMOVSD,",
    offsets = "0,",
    addresses = "0xf113,",
    stride_status = "Success",
    stride = 160,
    memory_status = "Success",
    accessed_memory = 8,
    accessed_memory_nooverlap = 8,
    accessed_memory_overlap = 0,
    span = 8,
    head = 0,
    unroll_factor = 1,
  },
  {
    group_size = 39,
    pattern = "LLLLSLLLLSLLSSSSSSSSSLLLLLSLLLLSSSSSSSS",
    opcodes = "VMOVSD,VMOVSD,VMOVSD,VMOVSD,VMOVSD,VMOVSD,VMOVSD,VMOVSD,VMOVSD,VMOVSD,VMOVSD,VMOVSD,VMOVSD,VMOVSD,VMOVSD,VMOVSD,VMOVSD,VMOVSD,VMOVSD,VMOVSD,VMOVSD,VMOVSD,VMOVSD,VMOVSD,VMOVSD,VMOVSD,VMOVSD,VMOVSD,VMOVSD,VMOVSD,VMOVSD,VMOVSD,VMOVSD,VMOVSD,VMOVSD,VMOVSD,VMOVSD,VMOVSD,VMOVSD,",
    offsets = "-152,-144,-136,-128,-160,-120,-112,-104,-96,-152,-88,-80,-144,-136,-128,-120,-112,-104,-96,-88,-80,-72,-64,-56,-48,-40,-72,-32,-24,-16,-8,-64,-56,-48,-40,-32,-24,-16,-8,",
    addresses = "0xf125,0xf12d,0xf135,0xf13d,0xf142,0xf152,0xf157,0xf15c,0xf161,0xf166,0xf176,0xf17b,0xf180,0xf190,0xf1a0,0xf1ad,0xf1ba,0xf1c7,0xf1d4,0xf1e1,0xf1ee,0xf1f3,0xf200,0xf205,0xf20a,0xf20f,0xf214,0xf221,0xf226,0xf22b,0xf230,0xf235,0xf242,0xf24f,0xf25c,0xf269,0xf276,0xf283,0xf290,",
    stride_status = "Success",
    stride = 160,
    memory_status = "Success",
    accessed_memory = 312,
    accessed_memory_nooverlap = 160,
    accessed_memory_overlap = 152,
    span = 160,
    head = 160,
    unroll_factor = 1,
  },
  {
    group_size = 20,
    pattern = "LLLLLLLLLLLLLLLLLLLL",
    opcodes = "VMULSD,VMULSD,VMULSD,VMULSD,VMULSD,VMULSD,VMULSD,VMULSD,VMULSD,VMULSD,VMULSD,VMULSD,VMULSD,VMULSD,VMULSD,VMULSD,VMULSD,VMULSD,VMULSD,VMULSD,",
    offsets = "120835,120790,120754,120728,120712,120699,120686,120673,120660,120647,120634,120616,120583,120550,120537,120524,120511,120498,120485,120472,",
    addresses = "0xf11d,0xf14a,0xf16e,0xf188,0xf198,0xf1a5,0xf1b2,0xf1bf,0xf1cc,0xf1d9,0xf1e6,0xf1f8,0xf219,0xf23a,0xf247,0xf254,0xf261,0xf26e,0xf27b,0xf288,",
    stride_status = "RIP based value",
    stride = 0,
    memory_status = "Success",
    accessed_memory = 160,
    accessed_memory_nooverlap = 160,
    accessed_memory_overlap = 0,
    span = 371,
    head = 0,
    unroll_factor = 1,
  },
}