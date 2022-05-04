_group = {
  {
    group_size = 1,
    pattern = "L",
    opcodes = "VMOVUPD,",
    offsets = "0,",
    addresses = "0x17245,",
    stride_status = "Success",
    stride = 320,
    memory_status = "Success",
    accessed_memory = 32,
    accessed_memory_nooverlap = 32,
    accessed_memory_overlap = 0,
    span = 32,
    head = 0,
    unroll_factor = 1,
  },
  {
    group_size = 16,
    pattern = "SSSSSSSSSSSSSSSS",
    opcodes = "VMOVUPD,VMOVSD,VMOVUPD,VMOVSD,VMOVUPD,VMOVSD,VMOVUPD,VMOVSD,VMOVUPD,VMOVSD,VMOVUPD,VMOVSD,VMOVUPD,VMOVSD,VMOVUPD,VMOVSD,",
    offsets = "-320,-288,-280,-248,-240,-208,-200,-168,-160,-128,-120,-88,-80,-48,-40,-8,",
    addresses = "0x172bd,0x172c5,0x172cd,0x172d5,0x172dd,0x172e5,0x172ed,0x172f5,0x172fd,0x17305,0x1730a,0x1730f,0x17314,0x17319,0x1731e,0x17323,",
    stride_status = "Success",
    stride = 320,
    memory_status = "Success",
    accessed_memory = 320,
    accessed_memory_nooverlap = 320,
    accessed_memory_overlap = 0,
    span = 320,
    head = 320,
    unroll_factor = 1,
  },
  {
    group_size = 15,
    pattern = "LLLLLLLLLLLLLLL",
    opcodes = "VMOVSD,VMOVUPD,VMOVSD,VMOVUPD,VMOVSD,VMOVUPD,VMOVSD,VMOVUPD,VMOVSD,VMOVUPD,VMOVSD,VMOVUPD,VMOVSD,VMOVUPD,VMOVSD,",
    offsets = "-288,-280,-248,-240,-208,-200,-168,-160,-128,-120,-88,-80,-48,-40,-8,",
    addresses = "0x17250,0x1725f,0x17267,0x1726f,0x17277,0x1727f,0x17287,0x1728f,0x17297,0x1729c,0x172a1,0x172a6,0x172ab,0x172b0,0x172b5,",
    stride_status = "Success",
    stride = 320,
    memory_status = "Success",
    accessed_memory = 288,
    accessed_memory_nooverlap = 288,
    accessed_memory_overlap = 0,
    span = 288,
    head = 0,
    unroll_factor = 1,
  },
}