_group = {
  {
    group_size = 5,
    pattern = "LLLLL",
    opcodes = "VMOVSD,VMOVSD,VMOVSD,VMOVSD,VMOVSD,",
    offsets = "0,8,16,24,32,",
    addresses = "0x1be85,0x1be8f,0x1be9a,0x1bea5,0x1beb0,",
    stride_status = "Not Analyzed",
    stride = 0,
    memory_status = "Success",
    accessed_memory = 40,
    accessed_memory_nooverlap = 40,
    accessed_memory_overlap = 0,
    span = 40,
    head = 0,
    unroll_factor = 5,
  },
  {
    group_size = 5,
    pattern = "LLLLL",
    opcodes = "VMOVSD,VMOVSD,VMOVSD,VMOVSD,VMOVSD,",
    offsets = "0,8,16,24,32,",
    addresses = "0x1be06,0x1be16,0x1be2b,0x1be38,0x1be45,",
    stride_status = "Not Analyzed",
    stride = 0,
    memory_status = "Success",
    accessed_memory = 40,
    accessed_memory_nooverlap = 40,
    accessed_memory_overlap = 0,
    span = 40,
    head = 0,
    unroll_factor = 5,
  },
  {
    group_size = 18,
    pattern = "SSSSSSSSSSSSSSSSSS",
    opcodes = "VMOVSD,VMOVSD,VMOVSD,VMOVSD,VMOVSD,VMOVSD,VMOVSD,VMOVSD,VMOVSD,VMOVSD,VMOVSD,VMOVSD,VMOVSD,VMOVSD,VMOVSD,VMOVSD,VMOVSD,VMOVSD,",
    offsets = "-144,-136,-128,-120,-112,-104,-96,-88,-80,-72,-64,-56,-48,-40,-32,-24,-16,-8,",
    addresses = "0x1be30,0x1be3d,0x1be4f,0x1be58,0x1be62,0x1be6c,0x1be76,0x1be80,0x1be8a,0x1be95,0x1bea0,0x1beab,0x1beb6,0x1bec0,0x1beca,0x1bed4,0x1bede,0x1bee8,",
    stride_status = "Success",
    stride = 160,
    memory_status = "Success",
    accessed_memory = 144,
    accessed_memory_nooverlap = 144,
    accessed_memory_overlap = 0,
    span = 144,
    head = 0,
    unroll_factor = 18,
  },
  {
    group_size = 5,
    pattern = "LLLLL",
    opcodes = "VMOVSD,VMOVSD,VMOVSD,VMOVSD,VMOVSD,",
    offsets = "0,8,16,24,32,",
    addresses = "0x1be54,0x1be5d,0x1be67,0x1be71,0x1be7b,",
    stride_status = "Not Analyzed",
    stride = 0,
    memory_status = "Success",
    accessed_memory = 40,
    accessed_memory_nooverlap = 40,
    accessed_memory_overlap = 0,
    span = 40,
    head = 0,
    unroll_factor = 5,
  },
  {
    group_size = 5,
    pattern = "LLLLL",
    opcodes = "VMOVSD,VMOVSD,VMOVSD,VMOVSD,VMOVSD,",
    offsets = "0,8,16,24,32,",
    addresses = "0x1bebb,0x1bec5,0x1becf,0x1bed9,0x1bee3,",
    stride_status = "Not Analyzed",
    stride = 0,
    memory_status = "Success",
    accessed_memory = 40,
    accessed_memory_nooverlap = 40,
    accessed_memory_overlap = 0,
    span = 40,
    head = 0,
    unroll_factor = 5,
  },
  {
    group_size = 2,
    pattern = "SS",
    opcodes = "VMOVSD,VMOVSD,",
    offsets = "0,8,",
    addresses = "0x1be0e,0x1be1f,",
    stride_status = "Success",
    stride = 160,
    memory_status = "Success",
    accessed_memory = 16,
    accessed_memory_nooverlap = 16,
    accessed_memory_overlap = 0,
    span = 16,
    head = 0,
    unroll_factor = 2,
  },
}
