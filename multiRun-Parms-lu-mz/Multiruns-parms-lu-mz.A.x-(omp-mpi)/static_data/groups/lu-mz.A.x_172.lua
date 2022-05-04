_group = {
  {
    group_size = 15,
    pattern = "LLLLLLLLLLLLLLL",
    opcodes = "VPXORQ,VPXORQ,VPXORQ,VPXORQ,VPXORQ,VPXORQ,VPXORQ,VPXORQ,VPXORQ,VPXORQ,VPXORQ,VPXORQ,VPXORQ,VPXORQ,VPXORQ,",
    offsets = "-896,-832,-768,-704,-960,-576,-512,-448,-384,-640,-256,-192,-128,-64,-320,",
    addresses = "0x1d79c,0x1d7a3,0x1d7aa,0x1d7b1,0x1d7b8,0x1d7e2,0x1d7e9,0x1d7f0,0x1d7f7,0x1d7fe,0x1d828,0x1d82f,0x1d836,0x1d83d,0x1d844,",
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
    addresses = "0x1d772,0x1d780,0x1d787,0x1d78e,0x1d795,0x1d7bf,0x1d7c6,0x1d7cd,0x1d7d4,0x1d7db,0x1d805,0x1d80c,0x1d813,0x1d81a,0x1d821,0x1d84b,0x1d852,0x1d859,0x1d860,0x1d867,",
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
    addresses = "0x1d86e,",
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
    addresses = "0x1d749,0x1d750,0x1d757,0x1d75e,0x1d765,",
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
