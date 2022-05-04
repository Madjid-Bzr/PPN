_group = {
  {
    group_size = 25,
    pattern = "LLLLLLLLLLLLLLLLLLLLLLLLL",
    opcodes = "MOVSD,MOVSD,MOVSD,MOVSD,MOVSD,MOVSD,MOVSD,MOVSD,MOVSD,MOVSD,MOVSD,MOVSD,MOVSD,MOVSD,MOVSD,MOVSD,MULSD,MOVSD,MULSD,MOVSD,MULSD,MOVSD,MOVSD,MULSD,MULSD,",
    offsets = "200,240,280,320,360,208,248,288,328,368,216,256,296,336,376,224,232,264,272,304,312,344,384,352,392,",
    addresses = "0x2be1f,0x2be27,0x2be4a,0x2be5a,0x2be6a,0x2be7a,0x2be8f,0x2be9f,0x2beaf,0x2bebf,0x2becf,0x2bee4,0x2bef4,0x2bf04,0x2bf14,0x2bf24,0x2bf30,0x2bf41,0x2bf4d,0x2bf59,0x2bf65,0x2bf75,0x2bf89,0x2bfa2,0x2bfaa,",
    stride_status = "Success",
    stride = -200,
    memory_status = "Success",
    accessed_memory = 200,
    accessed_memory_nooverlap = 200,
    accessed_memory_overlap = 0,
    span = 200,
    head = 200,
    unroll_factor = 1,
  },
  {
    group_size = 5,
    pattern = "SSSSS",
    opcodes = "MOVSD,MOVSD,MOVSD,MOVSD,MOVSD,",
    offsets = "40,48,56,64,72,",
    addresses = "0x2be8a,0x2bedf,0x2bf3c,0x2bf9d,0x2bfbe,",
    stride_status = "Success",
    stride = -40,
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
    opcodes = "MOVSD,MOVSD,MOVSD,MOVSD,",
    offsets = "48,56,64,72,",
    addresses = "0x2be16,0x2be37,0x2be3c,0x2be41,",
    stride_status = "Success",
    stride = -40,
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
    addresses = "0x2be08,",
    stride_status = "Success",
    stride = -40,
    memory_status = "Success",
    accessed_memory = 8,
    accessed_memory_nooverlap = 8,
    accessed_memory_overlap = 0,
    span = 8,
    head = 0,
    unroll_factor = 1,
  },
}