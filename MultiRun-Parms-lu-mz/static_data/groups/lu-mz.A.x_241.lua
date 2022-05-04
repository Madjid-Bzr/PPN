_group = {
  {
    group_size = 3,
    pattern = "SSS",
    opcodes = "VMOVSD,VMOVSD,VMOVUPD,",
    offsets = "32,40,-32,",
    addresses = "0x3514f,0x35154,0x35159,",
    stride_status = "Not Analyzed",
    stride = 0,
    memory_status = "Success",
    accessed_memory = 80,
    accessed_memory_nooverlap = 80,
    accessed_memory_overlap = 0,
    span = 80,
    head = 0,
    unroll_factor = 1,
  },
  {
    group_size = 3,
    pattern = "SSS",
    opcodes = "VMOVUPD,VMOVSD,VMOVSD,",
    offsets = "-32,32,40,",
    addresses = "0x3520b,0x35215,0x3521a,",
    stride_status = "Not Analyzed",
    stride = 0,
    memory_status = "Success",
    accessed_memory = 80,
    accessed_memory_nooverlap = 80,
    accessed_memory_overlap = 0,
    span = 80,
    head = 0,
    unroll_factor = 1,
  },
  {
    group_size = 3,
    pattern = "SSS",
    opcodes = "VMOVUPD,VMOVSD,VMOVSD,",
    offsets = "-32,32,40,",
    addresses = "0x351b3,0x351be,0x351c5,",
    stride_status = "Not Analyzed",
    stride = 0,
    memory_status = "Success",
    accessed_memory = 80,
    accessed_memory_nooverlap = 80,
    accessed_memory_overlap = 0,
    span = 80,
    head = 0,
    unroll_factor = 1,
  },
  {
    group_size = 24,
    pattern = "LLLLLLLLLLLLLLLLLLLLLLLL",
    opcodes = "VMOVSD,VMOVSD,VMOVUPD,VMOVUPD,VMOVSD,VMOVSD,VMOVUPD,VMOVSD,VMOVSD,VMOVUPD,VMOVSD,VMOVSD,VMOVUPD,VMOVSD,VMOVSD,VMOVUPD,VMOVSD,VMOVSD,VMOVUPD,VMOVSD,VMOVSD,VMOVUPD,VMOVSD,VMOVSD,",
    offsets = "-576,-568,-640,-560,-496,-488,-480,-416,-408,-400,-336,-328,-320,-256,-248,-240,-176,-168,-160,-96,-88,-80,-16,-8,",
    addresses = "0x35134,0x35140,0x35148,0x35167,0x35171,0x35179,0x35199,0x351a3,0x351ab,0x351d0,0x351da,0x351e2,0x351ea,0x351f1,0x351f9,0x35201,0x35246,0x3524e,0x35256,0x35260,0x35265,0x3526a,0x35274,0x35279,",
    stride_status = "Success",
    stride = 640,
    memory_status = "Success",
    accessed_memory = 640,
    accessed_memory_nooverlap = 640,
    accessed_memory_overlap = 0,
    span = 640,
    head = 640,
    unroll_factor = 1,
  },
  {
    group_size = 3,
    pattern = "SSS",
    opcodes = "VMOVUPD,VMOVSD,VMOVSD,",
    offsets = "-32,32,40,",
    addresses = "0x352a7,0x352b1,0x352b6,",
    stride_status = "Not Analyzed",
    stride = 0,
    memory_status = "Success",
    accessed_memory = 80,
    accessed_memory_nooverlap = 80,
    accessed_memory_overlap = 0,
    span = 80,
    head = 0,
    unroll_factor = 1,
  },
  {
    group_size = 3,
    pattern = "SSS",
    opcodes = "VMOVUPD,VMOVSD,VMOVSD,",
    offsets = "-32,32,40,",
    addresses = "0x3528f,0x35299,0x3529e,",
    stride_status = "Not Analyzed",
    stride = 0,
    memory_status = "Success",
    accessed_memory = 80,
    accessed_memory_nooverlap = 80,
    accessed_memory_overlap = 0,
    span = 80,
    head = 0,
    unroll_factor = 1,
  },
  {
    group_size = 3,
    pattern = "SSS",
    opcodes = "VMOVUPD,VMOVSD,VMOVSD,",
    offsets = "-32,32,40,",
    addresses = "0x35223,0x3522d,0x35232,",
    stride_status = "Not Analyzed",
    stride = 0,
    memory_status = "Success",
    accessed_memory = 80,
    accessed_memory_nooverlap = 80,
    accessed_memory_overlap = 0,
    span = 80,
    head = 0,
    unroll_factor = 1,
  },
  {
    group_size = 3,
    pattern = "SSS",
    opcodes = "VMOVUPD,VMOVSD,VMOVSD,",
    offsets = "-32,32,40,",
    addresses = "0x3523b,0x35281,0x35288,",
    stride_status = "Not Analyzed",
    stride = 0,
    memory_status = "Success",
    accessed_memory = 80,
    accessed_memory_nooverlap = 80,
    accessed_memory_overlap = 0,
    span = 80,
    head = 0,
    unroll_factor = 1,
  },
  {
    group_size = 3,
    pattern = "SSS",
    opcodes = "VMOVUPD,VMOVSD,VMOVSD,",
    offsets = "-32,32,40,",
    addresses = "0x35181,0x3518b,0x35190,",
    stride_status = "Not Analyzed",
    stride = 0,
    memory_status = "Success",
    accessed_memory = 80,
    accessed_memory_nooverlap = 80,
    accessed_memory_overlap = 0,
    span = 80,
    head = 0,
    unroll_factor = 1,
  },
}
