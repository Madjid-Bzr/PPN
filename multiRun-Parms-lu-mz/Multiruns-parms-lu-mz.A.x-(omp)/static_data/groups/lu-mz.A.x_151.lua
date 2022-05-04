_group = {
  {
    group_size = 4,
    pattern = "LLLL",
    opcodes = "MOVSD,MOVSD,MOVSD,MOVSD,",
    offsets = "-32,-24,-16,-8,",
    addresses = "0x1ea80,0x1ea8d,0x1ea9a,0x1eaa7,",
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
    group_size = 1,
    pattern = "L",
    opcodes = "MOVSD,",
    offsets = "0,",
    addresses = "0x1ea70,",
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
