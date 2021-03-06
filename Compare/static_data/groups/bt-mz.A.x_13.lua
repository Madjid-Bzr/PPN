_group = {
  {
    group_size = 6,
    pattern = "LSLLLL",
    opcodes = "MOV,MOVSD,MOVAPD,MOVAPD,MOVSD,CMP,",
    offsets = "16,152,176,192,208,8,",
    addresses = "0x4e64,0x4e81,0x4e92,0x4e9b,0x4ea4,0x4ec3,",
    stride_status = "Not mono block loop",
    stride = 0,
    memory_status = "Success",
    accessed_memory = 60,
    accessed_memory_nooverlap = 60,
    accessed_memory_overlap = 0,
    span = 208,
    head = 0,
    unroll_factor = 1,
  },
  {
    group_size = 2,
    pattern = "SS",
    opcodes = "MOVUPS,MOVUPS,",
    offsets = "0,16,",
    addresses = "0x4eb1,0x4eb4,",
    stride_status = "Not mono block loop",
    stride = 0,
    memory_status = "Success",
    accessed_memory = 32,
    accessed_memory_nooverlap = 32,
    accessed_memory_overlap = 0,
    span = 32,
    head = 0,
    unroll_factor = 2,
  },
  {
    group_size = 1,
    pattern = "L",
    opcodes = "MULSD,",
    offsets = "137933,",
    addresses = "0x4e73,",
    stride_status = "Not mono block loop",
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
    pattern = "L",
    opcodes = "MOV,",
    offsets = "0,",
    addresses = "0x4e8f,",
    stride_status = "Not mono block loop",
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
    opcodes = "MOVSD,",
    offsets = "32,",
    addresses = "0x4eb8,",
    stride_status = "Not mono block loop",
    stride = 0,
    memory_status = "Success",
    accessed_memory = 8,
    accessed_memory_nooverlap = 8,
    accessed_memory_overlap = 0,
    span = 8,
    head = 0,
    unroll_factor = 1,
  },
}
