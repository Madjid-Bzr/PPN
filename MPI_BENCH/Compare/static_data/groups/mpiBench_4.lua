_group = {
  {
    group_size = 2,
    pattern = "LL",
    opcodes = "MOV,MOV,",
    offsets = "29219,29332,",
    addresses = "0x30ce,0x30b5,",
    stride_status = "Not mono block loop",
    stride = 0,
    memory_status = "Success",
    accessed_memory = 16,
    accessed_memory_nooverlap = 16,
    accessed_memory_overlap = 0,
    span = 121,
    head = 0,
    unroll_factor = 2,
  },
  {
    group_size = 8,
    pattern = "LLLLSLLS",
    opcodes = "CMP,MOV,MOV,MOV,MOV,MOV,MOVZX,ADD,",
    offsets = "-8,-8,-20,-8,-9,-8,-9,-8,",
    addresses = "0x30d5,0x3093,0x309d,0x30ac,0x30b2,0x30bc,0x30c3,0x30c9,",
    stride_status = "Not mono block loop",
    stride = 0,
    memory_status = "Success",
    accessed_memory = 46,
    accessed_memory_nooverlap = 13,
    accessed_memory_overlap = 33,
    span = 20,
    head = 0,
    unroll_factor = 1,
  },
  {
    group_size = 1,
    pattern = "S",
    opcodes = "MOV,",
    offsets = "0,",
    addresses = "0x30c7,",
    stride_status = "Not mono block loop",
    stride = 0,
    memory_status = "Success",
    accessed_memory = 1,
    accessed_memory_nooverlap = 1,
    accessed_memory_overlap = 0,
    span = 1,
    head = 0,
    unroll_factor = 1,
  },
}
