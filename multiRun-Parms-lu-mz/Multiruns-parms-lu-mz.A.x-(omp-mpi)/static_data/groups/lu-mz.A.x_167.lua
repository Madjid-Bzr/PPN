_group = {
  {
    group_size = 1,
    pattern = "L",
    opcodes = "VMOVSD,",
    offsets = "0,",
    addresses = "0x1e5f0,",
    stride_status = "Success",
    stride = 80,
    memory_status = "Success",
    accessed_memory = 8,
    accessed_memory_nooverlap = 8,
    accessed_memory_overlap = 0,
    span = 8,
    head = 0,
    unroll_factor = 1,
  },
  {
    group_size = 1,
    pattern = "L",
    opcodes = "VMOVSD,",
    offsets = "0,",
    addresses = "0x1e65d,",
    stride_status = "Iteration not constant",
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
    group_size = 1,
    pattern = "S",
    opcodes = "VMOVSD,",
    offsets = "40,",
    addresses = "0x1e5f8,",
    stride_status = "Success",
    stride = 80,
    memory_status = "Success",
    accessed_memory = 8,
    accessed_memory_nooverlap = 8,
    accessed_memory_overlap = 0,
    span = 8,
    head = 0,
    unroll_factor = 1,
  },
  {
    group_size = 1,
    pattern = "L",
    opcodes = "VMOVSD,",
    offsets = "0,",
    addresses = "0x1e600,",
    stride_status = "Success",
    stride = 16,
    memory_status = "Success",
    accessed_memory = 8,
    accessed_memory_nooverlap = 8,
    accessed_memory_overlap = 0,
    span = 8,
    head = 0,
    unroll_factor = 1,
  },
  {
    group_size = 9,
    pattern = "LLLLLLLLL",
    opcodes = "VMOVSD,VMULSD,VMULSD,VFMSUB231SD,VMOVSD,VMOVSD,VMULSD,VMULSD,VFMSUB231SD,",
    offsets = "-56,-72,-64,-56,-40,-16,-32,-24,-16,",
    addresses = "0x1e60a,0x1e62c,0x1e63a,0x1e644,0x1e654,0x1e663,0x1e685,0x1e693,0x1e69d,",
    stride_status = "Success",
    stride = 80,
    memory_status = "Success",
    accessed_memory = 72,
    accessed_memory_nooverlap = 72,
    accessed_memory_overlap = 0,
    span = 64,
    head = 0,
    unroll_factor = 1,
  },
  {
    group_size = 2,
    pattern = "LL",
    opcodes = "VMULSD,VMULSD,",
    offsets = "0,8,",
    addresses = "0x1e618,0x1e66c,",
    stride_status = "Success",
    stride = 16,
    memory_status = "Success",
    accessed_memory = 16,
    accessed_memory_nooverlap = 16,
    accessed_memory_overlap = 0,
    span = 16,
    head = 16,
    unroll_factor = 2,
  },
  {
    group_size = 9,
    pattern = "SSSSSSSSS",
    opcodes = "VMOVSD,VMOVSD,VMOVSD,VMOVSD,VMOVSD,VMOVSD,VMOVSD,VMOVSD,VMOVSD,",
    offsets = "-32,-24,-16,-8,0,8,16,24,32,",
    addresses = "0x1e627,0x1e635,0x1e63f,0x1e64f,0x1e659,0x1e680,0x1e68e,0x1e698,0x1e6a8,",
    stride_status = "Success",
    stride = 80,
    memory_status = "Success",
    accessed_memory = 72,
    accessed_memory_nooverlap = 72,
    accessed_memory_overlap = 0,
    span = 72,
    head = 0,
    unroll_factor = 9,
  },
}