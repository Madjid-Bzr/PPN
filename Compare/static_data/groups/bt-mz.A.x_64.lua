_group = {
  {
    group_size = 5,
    pattern = "LLLLL",
    opcodes = "VMULSD,VMULSD,VMULSD,VMULSD,VMULSD,",
    offsets = "-40,-32,-24,-16,-8,",
    addresses = "0xe0c0,0xe106,0xe14b,0xe18b,0xe1c5,",
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
    addresses = "0xe10c,0xe151,0xe191,0xe1cb,",
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
  {
    group_size = 10,
    pattern = "LSLLSLSSLS",
    opcodes = "VMOVSD,VMOVSD,VMOVSD,VMOVSD,VMOVSD,VMOVSD,VMOVSD,VMOVSD,VMOVSD,VMOVSD,",
    offsets = "-40,-40,-32,-24,-32,-16,-24,-16,-8,-8,",
    addresses = "0xe0dc,0xe101,0xe11b,0xe141,0xe146,0xe181,0xe186,0xe1c0,0xe1da,0xe201,",
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
    addresses = "0xe0ce,0xe111,0xe156,0xe196,0xe1d0,",
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
    opcodes = "VADDSD,VADDSD,VADDSD,VADDSD,VADDSD,",
    offsets = "-40,-32,-24,-16,-8,",
    addresses = "0xe0ee,0xe12e,0xe16e,0xe1ae,0xe1ee,",
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
    offsets = "124980,124916,124852,124788,124724,",
    addresses = "0xe0f4,0xe134,0xe174,0xe1b4,0xe1f4,",
    stride_status = "RIP based value",
    stride = 0,
    memory_status = "Success",
    accessed_memory = 40,
    accessed_memory_nooverlap = 40,
    accessed_memory_overlap = 0,
    span = 264,
    head = 0,
    unroll_factor = 5,
  },
  {
    group_size = 5,
    pattern = "LLLLL",
    opcodes = "VMULSD,VMULSD,VMULSD,VMULSD,VMULSD,",
    offsets = "-40,-32,-24,-16,-8,",
    addresses = "0xe0d7,0xe116,0xe15b,0xe19b,0xe1d5,",
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
    addresses = "0xe0b0,",
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
}
