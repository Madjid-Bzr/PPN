_group = {
  {
    group_size = 15,
    pattern = "LLLLLLLLLLLLLLL",
    opcodes = "VPXORQ,VPXORQ,VPXORQ,VPXORQ,VPXORQ,VPXORQ,VPXORQ,VPXORQ,VPXORQ,VPXORQ,VPXORQ,VPXORQ,VPXORQ,VPXORQ,VPXORQ,",
    offsets = "-896,-832,-768,-704,-960,-576,-512,-448,-384,-640,-256,-192,-128,-64,-320,",
    addresses = "0x1d7ac,0x1d7b3,0x1d7ba,0x1d7c1,0x1d7c8,0x1d7f2,0x1d7f9,0x1d800,0x1d807,0x1d80e,0x1d838,0x1d83f,0x1d846,0x1d84d,0x1d854,",
    stride_status = "Success",
    stride = 1280,
    memory_status = "Success",
    accessed_memory = 960,
    accessed_memory_nooverlap = 960,
    accessed_memory_overlap = 0,
    span = 960,
    head = 0,
    unroll_factor = 1,
  },
  {
    group_size = 20,
    pattern = "SSSSSSSSSSSSSSSSSSSS",
    opcodes = "VMOVUPD,VMOVUPD,VMOVUPD,VMOVUPD,VMOVUPD,VMOVUPD,VMOVUPD,VMOVUPD,VMOVUPD,VMOVUPD,VMOVUPD,VMOVUPD,VMOVUPD,VMOVUPD,VMOVUPD,VMOVUPD,VMOVUPD,VMOVUPD,VMOVUPD,VMOVUPD,",
    offsets = "-1280,-1024,-1216,-1152,-1088,-960,-896,-832,-768,-704,-640,-576,-512,-448,-384,-320,-256,-192,-128,-64,",
    addresses = "0x1d782,0x1d790,0x1d797,0x1d79e,0x1d7a5,0x1d7cf,0x1d7d6,0x1d7dd,0x1d7e4,0x1d7eb,0x1d815,0x1d81c,0x1d823,0x1d82a,0x1d831,0x1d85b,0x1d862,0x1d869,0x1d870,0x1d877,",
    stride_status = "Success",
    stride = 1280,
    memory_status = "Success",
    accessed_memory = 1280,
    accessed_memory_nooverlap = 1280,
    accessed_memory_overlap = 0,
    span = 1280,
    head = 1280,
    unroll_factor = 1,
  },
  {
    group_size = 1,
    pattern = "L",
    opcodes = "CMP,",
    offsets = "816,",
    addresses = "0x1d87e,",
    stride_status = "Not Analyzed",
    stride = 0,
    memory_status = "Success",
    accessed_memory = 8,
    accessed_memory_nooverlap = 8,
    accessed_memory_overlap = 0,
    span = 8,
    head = 0,
    unroll_factor = 1,
  },
  {
    group_size = 5,
    pattern = "LLLLL",
    opcodes = "VPXORQ,VPXORQ,VPXORQ,VPXORQ,VPXORQ,",
    offsets = "64,128,192,256,0,",
    addresses = "0x1d759,0x1d760,0x1d767,0x1d76e,0x1d775,",
    stride_status = "Success",
    stride = 1280,
    memory_status = "Success",
    accessed_memory = 320,
    accessed_memory_nooverlap = 320,
    accessed_memory_overlap = 0,
    span = 320,
    head = 0,
    unroll_factor = 1,
  },
}
