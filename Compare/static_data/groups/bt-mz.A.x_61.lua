_group = {
  {
    group_size = 5,
    pattern = "LLLLL",
    opcodes = "VMULSD,VMULSD,VMULSD,VMULSD,VMULSD,",
    offsets = "-40,-32,-24,-16,-8,",
    addresses = "0xfdd8,0xfe0d,0xfe41,0xfe77,0xfea8,",
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
    group_size = 5,
    pattern = "LLLLL",
    opcodes = "VMULSD,VMULSD,VMULSD,VMULSD,VMULSD,",
    offsets = "-40,-32,-24,-16,-8,",
    addresses = "0xfdcd,0xfe08,0xfe3c,0xfe72,0xfea3,",
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
    addresses = "0xfdb0,",
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
    offsets = "-40,-32,-24,-16,-8,",
    addresses = "0xfdc0,0xfe03,0xfe37,0xfe6d,0xfe9e,",
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
    group_size = 9,
    pattern = "LSLSLSSLS",
    opcodes = "VMOVSD,VMOVSD,VMOVSD,VMOVSD,VMOVSD,VMOVSD,VMOVSD,VMOVSD,VMOVSD,",
    offsets = "-32,-40,-24,-32,-16,-24,-16,-8,-8,",
    addresses = "0xfdf4,0xfdfe,0xfe1c,0xfe32,0xfe5e,0xfe68,0xfe99,0xfec3,0xfecd,",
    stride_status = "Success",
    stride = 40,
    memory_status = "Success",
    accessed_memory = 72,
    accessed_memory_nooverlap = 40,
    accessed_memory_overlap = 32,
    span = 40,
    head = 40,
    unroll_factor = 1,
  },
  {
    group_size = 5,
    pattern = "LLLLL",
    opcodes = "VMULSD,VMULSD,VMULSD,VMULSD,VMULSD,",
    offsets = "117564,117506,117458,117404,117357,",
    addresses = "0xfdec,0xfe26,0xfe56,0xfe8c,0xfebb,",
    stride_status = "RIP based value",
    stride = 0,
    memory_status = "Success",
    accessed_memory = 40,
    accessed_memory_nooverlap = 40,
    accessed_memory_overlap = 0,
    span = 215,
    head = 0,
    unroll_factor = 1,
  },
  {
    group_size = 5,
    pattern = "LLLLL",
    opcodes = "VADDSD,VADDSD,VADDSD,VADDSD,VADDSD,",
    offsets = "-40,-32,-24,-16,-8,",
    addresses = "0xfde7,0xfe21,0xfe51,0xfe87,0xfeb6,",
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
}