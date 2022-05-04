_group = {
  {
    group_size = 6,
    pattern = "LLLLLL",
    opcodes = "VMULSD,VMOVSD,VMULSD,VMULSD,VMULSD,VMULSD,",
    offsets = "-80,-16,-32,-48,-40,-24,",
    addresses = "0x1a96b,0x1a9e5,0x1a9f5,0x1a9fb,0x1aa06,0x1aa0c,",
    stride_status = "Success",
    stride = 96,
    memory_status = "Success",
    accessed_memory = 48,
    accessed_memory_nooverlap = 48,
    accessed_memory_overlap = 0,
    span = 72,
    head = 0,
    unroll_factor = 1,
  },
  {
    group_size = 1,
    pattern = "L",
    opcodes = "CMP,",
    offsets = "632,",
    addresses = "0x1a947,",
    stride_status = "Not Analyzed",
    stride = 0,
    memory_status = "Success",
    accessed_memory = 4,
    accessed_memory_nooverlap = 4,
    accessed_memory_overlap = 0,
    span = 4,
    head = 0,
    unroll_factor = 1,
  },
  {
    group_size = 8,
    pattern = "SSSSSSSS",
    opcodes = "VMOVSD,VMOVSD,VMOVSD,VMOVSD,VMOVSD,VMOVSD,VMOVSD,VMOVSD,",
    offsets = "-80,-72,-64,-56,-24,-40,-32,-16,",
    addresses = "0x1a98e,0x1a9b4,0x1a9d5,0x1aa01,0x1aa47,0x1aa7a,0x1aa8c,0x1aa93,",
    stride_status = "Success",
    stride = 80,
    memory_status = "Success",
    accessed_memory = 64,
    accessed_memory_nooverlap = 64,
    accessed_memory_overlap = 0,
    span = 72,
    head = 0,
    unroll_factor = 1,
  },
  {
    group_size = 4,
    pattern = "LLLL",
    opcodes = "VMOVSD,VMULSD,VMOVSD,VMULSD,",
    offsets = "32,0,24,8,",
    addresses = "0x1a936,0x1a941,0x1a94f,0x1a95a,",
    stride_status = "Success",
    stride = 96,
    memory_status = "Success",
    accessed_memory = 32,
    accessed_memory_nooverlap = 32,
    accessed_memory_overlap = 0,
    span = 40,
    head = 0,
    unroll_factor = 1,
  },
}