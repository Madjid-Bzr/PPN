_group = {
  {
    group_size = 5,
    pattern = "LLLLL",
    opcodes = "VMULSD,VMULSD,VMULSD,VMULSD,VMULSD,",
    offsets = "-40,-32,-24,-16,-8,",
    addresses = "0xffb0,0xfff6,0x10033,0x10070,0x100a7,",
    stride_status = "Success",
    stride = 40,
    memory_status = "Success",
    accessed_memory = 40,
    accessed_memory_nooverlap = 40,
    accessed_memory_overlap = 0,
    span = 40,
    head = 40,
    unroll_factor = 5,
  },
  {
    group_size = 10,
    pattern = "LLSLSLSSLS",
    opcodes = "VMOVSD,VMOVSD,VMOVSD,VMOVSD,VMOVSD,VMOVSD,VMOVSD,VMOVSD,VMOVSD,VMOVSD,",
    offsets = "-40,-32,-40,-24,-32,-16,-24,-16,-8,-8,",
    addresses = "0xffc9,0xffea,0xfff0,0x10027,0x1002d,0x10064,0x1006a,0x100a1,0x100d3,0x100de,",
    stride_status = "Success",
    stride = 40,
    memory_status = "Success",
    accessed_memory = 80,
    accessed_memory_nooverlap = 40,
    accessed_memory_overlap = 40,
    span = 40,
    head = 40,
    unroll_factor = 1,
  },
  {
    group_size = 5,
    pattern = "LLLLL",
    opcodes = "VMULSD,VMULSD,VMULSD,VMULSD,VMULSD,",
    offsets = "-40,-32,-24,-16,-8,",
    addresses = "0xffc4,0x10007,0x10044,0x10081,0x100b8,",
    stride_status = "Success",
    stride = 40,
    memory_status = "Success",
    accessed_memory = 40,
    accessed_memory_nooverlap = 40,
    accessed_memory_overlap = 0,
    span = 40,
    head = 40,
    unroll_factor = 5,
  },
  {
    group_size = 1,
    pattern = "L",
    opcodes = "VMOVSD,",
    offsets = "0,",
    addresses = "0xffa0,",
    stride_status = "Success",
    stride = 40,
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
    opcodes = "VMULSD,VMULSD,VMULSD,VMULSD,VMULSD,",
    offsets = "117067,117006,116945,116884,116829,",
    addresses = "0xffdd,0x1001a,0x10057,0x10094,0x100cb,",
    stride_status = "RIP based value",
    stride = 0,
    memory_status = "Success",
    accessed_memory = 40,
    accessed_memory_nooverlap = 40,
    accessed_memory_overlap = 0,
    span = 246,
    head = 0,
    unroll_factor = 1,
  },
  {
    group_size = 5,
    pattern = "LLLLL",
    opcodes = "VMULSD,VMULSD,VMULSD,VMULSD,VMULSD,",
    offsets = "-40,-32,-24,-16,-8,",
    addresses = "0xffbe,0x10001,0x1003e,0x1007b,0x100b2,",
    stride_status = "Success",
    stride = 40,
    memory_status = "Success",
    accessed_memory = 40,
    accessed_memory_nooverlap = 40,
    accessed_memory_overlap = 0,
    span = 40,
    head = 40,
    unroll_factor = 5,
  },
  {
    group_size = 4,
    pattern = "LLLL",
    opcodes = "VMOVSD,VMOVSD,VMOVSD,VMOVSD,",
    offsets = "-32,-24,-16,-8,",
    addresses = "0xfffc,0x10039,0x10076,0x100ad,",
    stride_status = "Success",
    stride = 40,
    memory_status = "Success",
    accessed_memory = 32,
    accessed_memory_nooverlap = 32,
    accessed_memory_overlap = 0,
    span = 32,
    head = 0,
    unroll_factor = 4,
  },
}
