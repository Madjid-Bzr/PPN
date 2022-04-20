_group = {
  {
    group_size = 4,
    pattern = "LLLL",
    opcodes = "VMOVUPD,VINSERTF128,VMOVUPD,VINSERTF128,",
    offsets = "32,48,64,80,",
    addresses = "0x1e1a8,0x1e1ad,0x1e1c1,0x1e1c6,",
    stride_status = "Success",
    stride = 320,
    memory_status = "Success",
    accessed_memory = 64,
    accessed_memory_nooverlap = 64,
    accessed_memory_overlap = 0,
    span = 64,
    head = 0,
    unroll_factor = 1,
  },
  {
    group_size = 18,
    pattern = "LLLLLLLLLSSSSSSSSS",
    opcodes = "VMOVUPD,VINSERTF128,VMOVUPD,VINSERTF128,VINSERTF128,VMOVUPD,VINSERTF128,VMOVUPD,VINSERTF128,VMOVUPS,VEXTRACTF128,VEXTRACTF128,VEXTRACTF128,VMOVUPS,VEXTRACTF128,VEXTRACTF128,VMOVUPS,VMOVUPS,",
    offsets = "32,48,64,80,16,96,112,128,144,32,16,48,80,64,112,144,96,128,",
    addresses = "0x1e2d4,0x1e2d9,0x1e2fd,0x1e302,0x1e315,0x1e32e,0x1e333,0x1e35a,0x1e362,0x1e378,0x1e37d,0x1e384,0x1e38b,0x1e392,0x1e397,0x1e39e,0x1e3a8,0x1e3ad,",
    stride_status = "Not Analyzed",
    stride = 0,
    memory_status = "Success",
    accessed_memory = 288,
    accessed_memory_nooverlap = 144,
    accessed_memory_overlap = 144,
    span = 144,
    head = 0,
    unroll_factor = 1,
  },
  {
    group_size = 22,
    pattern = "LLLLLSLLLSLLSSSSSSSSLS",
    opcodes = "VMOVUPD,VINSERTF128,VMOVUPD,VINSERTF128,VMOVUPD,VMOVUPS,VINSERTF128,VMOVUPD,VINSERTF128,VEXTRACTF128,VMOVUPD,VINSERTF128,VMOVUPS,VMOVUPS,VEXTRACTF128,VEXTRACTF128,VMOVUPS,VEXTRACTF128,VMOVUPS,VEXTRACTF128,VMOVUPD,VMOVUPS,",
    offsets = "-288,-272,-256,-240,-224,-288,-208,-192,-176,-272,-320,-304,-256,-224,-208,-240,-192,-176,-320,-304,-160,-160,",
    addresses = "0x1e1ee,0x1e1f6,0x1e217,0x1e21f,0x1e237,0x1e23f,0x1e247,0x1e255,0x1e25d,0x1e26c,0x1e276,0x1e27e,0x1e28c,0x1e294,0x1e29c,0x1e2a6,0x1e2b0,0x1e2b8,0x1e2c2,0x1e2ca,0x1e30d,0x1e370,",
    stride_status = "Success",
    stride = 320,
    memory_status = "Success",
    accessed_memory = 352,
    accessed_memory_nooverlap = 352,
    accessed_memory_overlap = 0,
    span = 176,
    head = 0,
    unroll_factor = 1,
  },
  {
    group_size = 16,
    pattern = "LLLLLLLLLLLLLLLL",
    opcodes = "VMOVUPD,VINSERTF128,VMOVUPD,VMOVUPD,VINSERTF128,VINSERTF128,VMOVUPD,VINSERTF128,VMOVUPD,VINSERTF128,VMOVUPD,VINSERTF128,VMOVUPD,VINSERTF128,VMOVUPD,VINSERTF128,",
    offsets = "-224,-208,-320,-192,-176,-304,-128,-112,-96,-80,-160,-144,-64,-48,-32,-16,",
    addresses = "0x1e1d4,0x1e1dc,0x1e1e6,0x1e205,0x1e20d,0x1e22d,0x1e2e0,0x1e2e5,0x1e2f1,0x1e2f6,0x1e31c,0x1e324,0x1e33e,0x1e343,0x1e34e,0x1e353,",
    stride_status = "Success",
    stride = 320,
    memory_status = "Success",
    accessed_memory = 256,
    accessed_memory_nooverlap = 256,
    accessed_memory_overlap = 0,
    span = 320,
    head = 256,
    unroll_factor = 1,
  },
}
