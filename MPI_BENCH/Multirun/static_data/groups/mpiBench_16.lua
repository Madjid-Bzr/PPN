_group = {
  {
    group_size = 1,
    pattern = "S",
    opcodes = "MOV,",
    offsets = "0,",
    addresses = "0x3cc2,",
    stride_status = "Iteration not constant",
    stride = 0,
    memory_status = "Success",
    accessed_memory = 1,
    accessed_memory_nooverlap = 1,
    accessed_memory_overlap = 0,
    span = 1,
    head = 0,
    unroll_factor = 1,
  },
  {
    group_size = 2,
    pattern = "LL",
    opcodes = "MOV,MOV,",
    offsets = "38513,38397,",
    addresses = "0x3cb8,0x3ccc,",
    stride_status = "RIP based value",
    stride = 0,
    memory_status = "Success",
    accessed_memory = 16,
    accessed_memory_nooverlap = 16,
    accessed_memory_overlap = 0,
    span = 124,
    head = 0,
    unroll_factor = 2,
  },
}
