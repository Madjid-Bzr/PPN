_group = {
  {
    group_size = 5,
    pattern = "LLLLL",
    opcodes = "VMOVSD,VMOVSD,VMOVSD,VMOVSD,VMOVSD,",
    offsets = "-40,-32,-24,-16,-8,",
    addresses = "0xf559,0xf58d,0xf5bf,0xf5f0,0xf623,",
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
    pattern = "LLSLSLSLSS",
    opcodes = "VMOVSD,VMOVSD,VMOVSD,VMOVSD,VMOVSD,VMOVSD,VMOVSD,VMOVSD,VMOVSD,VMOVSD,",
    offsets = "-40,-32,-40,-24,-32,-16,-24,-8,-16,-8,",
    addresses = "0xf55f,0xf576,0xf581,0xf5a8,0xf5b3,0xf5da,0xf5e4,0xf60d,0xf617,0xf645,",
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
    group_size = 1,
    pattern = "L",
    opcodes = "VMULSD,",
    offsets = "0,",
    addresses = "0xf540,",
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
    group_size = 1,
    pattern = "L",
    opcodes = "VMULSD,",
    offsets = "0,",
    addresses = "0xf54d,",
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
    offsets = "119738,119688,119638,119587,119536,",
    addresses = "0xf56e,0xf5a0,0xf5d2,0xf605,0xf638,",
    stride_status = "RIP based value",
    stride = 0,
    memory_status = "Success",
    accessed_memory = 40,
    accessed_memory_nooverlap = 40,
    accessed_memory_overlap = 0,
    span = 210,
    head = 0,
    unroll_factor = 1,
  },
  {
    group_size = 4,
    pattern = "LLLL",
    opcodes = "VMULSD,VMULSD,VMULSD,VMULSD,",
    offsets = "-32,-24,-16,-8,",
    addresses = "0xf593,0xf5c5,0xf5f6,0xf629,",
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
    group_size = 4,
    pattern = "LLLL",
    opcodes = "VMULSD,VMULSD,VMULSD,VMULSD,",
    offsets = "-32,-24,-16,-8,",
    addresses = "0xf587,0xf5b9,0xf5ea,0xf61d,",
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
