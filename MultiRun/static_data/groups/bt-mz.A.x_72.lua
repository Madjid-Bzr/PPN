_group = {
  {
    group_size = 2,
    pattern = "LL",
    opcodes = "VMOVUPD,VINSERTF128,",
    offsets = "0,16,",
    addresses = "0x10350,0x1035a,",
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
    group_size = 18,
    pattern = "LLLLLLLLLLLLLLLLLL",
    opcodes = "VMOVUPD,VINSERTF128,VMOVUPD,VINSERTF128,VMOVUPD,VINSERTF128,VMOVUPD,VINSERTF128,VMOVUPD,VINSERTF128,VMOVUPD,VINSERTF128,VMOVUPD,VINSERTF128,VMOVUPD,VINSERTF128,VMOVUPD,VINSERTF128,",
    offsets = "-288,-272,-256,-240,-224,-208,-192,-176,-160,-144,-128,-112,-96,-80,-64,-48,-32,-16,",
    addresses = "0x10368,0x10370,0x1037a,0x10382,0x1038c,0x10394,0x1039e,0x103a6,0x1040a,0x10412,0x1041c,0x10421,0x10428,0x1042d,0x10434,0x10439,0x10440,0x10445,",
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
  {
    group_size = 20,
    pattern = "SSSSSSSSSSSSSSSSSSSS",
    opcodes = "VMOVUPS,VEXTRACTF128,VMOVUPS,VEXTRACTF128,VEXTRACTF128,VEXTRACTF128,VMOVUPS,VEXTRACTF128,VMOVUPS,VMOVUPS,VMOVUPS,VEXTRACTF128,VMOVUPS,VEXTRACTF128,VEXTRACTF128,VEXTRACTF128,VMOVUPS,VEXTRACTF128,VMOVUPS,VMOVUPS,",
    offsets = "-320,-304,-288,-272,-240,-208,-256,-176,-224,-192,-160,-144,-128,-112,-80,-48,-96,-16,-64,-32,",
    addresses = "0x103b0,0x103b8,0x103c2,0x103ca,0x103d4,0x103de,0x103e8,0x103f0,0x103fa,0x10402,0x1044c,0x10454,0x1045e,0x10463,0x1046a,0x10471,0x10478,0x1047d,0x10484,0x10489,",
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
}