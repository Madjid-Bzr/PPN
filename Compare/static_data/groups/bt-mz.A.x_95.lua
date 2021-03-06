_group = {
  {
    group_size = 3,
    pattern = "SLL",
    opcodes = "MOV,MOV,CMP,",
    offsets = "0,0,8,",
    addresses = "0x1507c,0x150a8,0x150d4,",
    stride_status = "Not mono block loop",
    stride = 0,
    memory_status = "Success",
    accessed_memory = 24,
    accessed_memory_nooverlap = 16,
    accessed_memory_overlap = 8,
    span = 16,
    head = 0,
    unroll_factor = 1,
  },
  {
    group_size = 4,
    pattern = "LLLL",
    opcodes = "MOV,MOV,MOV,MOV,",
    offsets = "32,32,32,32,",
    addresses = "0x15032,0x1506e,0x15090,0x150b7,",
    stride_status = "Not mono block loop",
    stride = 0,
    memory_status = "Success",
    accessed_memory = 32,
    accessed_memory_nooverlap = 8,
    accessed_memory_overlap = 24,
    span = 8,
    head = 0,
    unroll_factor = 4,
  },
}
