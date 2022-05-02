_group = {
  {
    group_size = 1,
    pattern = "L",
    opcodes = "VMULSD,",
    offsets = "0,",
    addresses = "0x15ac7,",
    stride_status = "Not mono block loop",
    stride = 0,
    memory_status = "Success",
    accessed_memory = 8,
    accessed_memory_nooverlap = 8,
    accessed_memory_overlap = 0,
    span = 8,
    head = 0,
    unroll_factor = 1,
  },
  {
    group_size = 1,
    pattern = "L",
    opcodes = "VMOVSD,",
    offsets = "0,",
    addresses = "0x15ab7,",
    stride_status = "Not mono block loop",
    stride = 0,
    memory_status = "Success",
    accessed_memory = 8,
    accessed_memory_nooverlap = 8,
    accessed_memory_overlap = 0,
    span = 8,
    head = 0,
    unroll_factor = 1,
  },
  {
    group_size = 1,
    pattern = "L",
    opcodes = "VMOVSD,",
    offsets = "0,",
    addresses = "0x159a7,",
    stride_status = "Not mono block loop",
    stride = 0,
    memory_status = "Success",
    accessed_memory = 8,
    accessed_memory_nooverlap = 8,
    accessed_memory_overlap = 0,
    span = 8,
    head = 0,
    unroll_factor = 1,
  },
  {
    group_size = 31,
    pattern = "LLLLLLLLLLLLLLLLLLLLLLLLLLLLLLL",
    opcodes = "VMOVSD,VMULSD,VMULSD,VMULSD,VMOVSD,VMULSD,VMULSD,VMULSD,VMOVSD,VMULSD,VMULSD,VMULSD,VMULSD,VMULSD,VMULSD,VMULSD,VMOVSD,VMULSD,VMOVSD,VMULSD,VMULSD,VMULSD,VMULSD,VMULSD,VMOVSD,VMOVSD,VMOVSD,VMULSD,VMULSD,VMULSD,VMULSD,",
    offsets = "16,24,24,16,24,16,24,32,24,32,32,24,40,24,16,24,24,40,24,32,24,16,24,32,16,24,32,40,16,24,32,",
    addresses = "0x159e0,0x159e5,0x159fc,0x15a06,0x15a26,0x15a41,0x15a54,0x15a62,0x15a80,0x15a85,0x15aa0,0x15aaa,0x15acf,0x15ad8,0x15ae6,0x15aeb,0x15afe,0x15b03,0x15b28,0x15b2d,0x15b4c,0x15b8b,0x15bca,0x15c06,0x15c3d,0x15c42,0x15c50,0x15c7e,0x15c99,0x15ca3,0x15cad,",
    stride_status = "Not mono block loop",
    stride = 0,
    memory_status = "Success",
    accessed_memory = 248,
    accessed_memory_nooverlap = 32,
    accessed_memory_overlap = 216,
    span = 32,
    head = 0,
    unroll_factor = 1,
  },
  {
    group_size = 25,
    pattern = "SSSSSSSSSSSSSSSSSSSSSSSSS",
    opcodes = "MOV,MOV,MOV,MOV,MOV,MOV,MOV,MOV,VMOVSD,VMOVSD,MOV,VMOVSD,VMOVSD,MOV,MOV,MOV,MOV,VMOVSD,MOV,VMOVSD,VMOVSD,VMOVSD,VMOVSD,VMOVSD,VMOVSD,",
    offsets = "-120,-200,-160,-80,-40,-112,-72,-32,-192,-152,-144,-184,-104,-64,-24,-136,-96,-56,-16,-176,-168,-128,-88,-8,-48,",
    addresses = "0x15b51,0x15b59,0x15b64,0x15b6f,0x15b77,0x15b98,0x15ba0,0x15ba8,0x15bba,0x15bc2,0x15bcf,0x15be4,0x15bf1,0x15bf6,0x15bfe,0x15c0b,0x15c16,0x15c1e,0x15c23,0x15c30,0x15c91,0x15c9e,0x15ca8,0x15cb5,0x15cba,",
    stride_status = "Not mono block loop",
    stride = 0,
    memory_status = "Success",
    accessed_memory = 200,
    accessed_memory_nooverlap = 200,
    accessed_memory_overlap = 0,
    span = 200,
    head = 0,
    unroll_factor = 1,
  },
  {
    group_size = 2,
    pattern = "LL",
    opcodes = "VMULSD,VADDSD,",
    offsets = "0,0,",
    addresses = "0x15a2b,0x15b14,",
    stride_status = "Not mono block loop",
    stride = 0,
    memory_status = "Success",
    accessed_memory = 16,
    accessed_memory_nooverlap = 8,
    accessed_memory_overlap = 8,
    span = 8,
    head = 0,
    unroll_factor = 1,
  },
  {
    group_size = 25,
    pattern = "SSSSSSSSSSSSSSSSSSSSSSSSS",
    opcodes = "MOV,MOV,MOV,MOV,MOV,VMOVSD,VMOVSD,MOV,MOV,VMOVSD,VMOVSD,VMOVSD,VMOVSD,VMOVSD,VMOVSD,MOV,VMOVSD,VMOVSD,VMOVSD,MOV,VMOVSD,VMOVSD,VMOVSD,VMOVSD,VMOVSD,",
    offsets = "0,40,80,120,160,8,48,128,168,88,16,56,96,176,136,64,24,104,144,184,32,72,112,152,192,",
    addresses = "0x159ac,0x159bd,0x159c5,0x159cd,0x159d5,0x159f7,0x15a01,0x15a0b,0x15a16,0x15a21,0x15a3c,0x15a4f,0x15a5d,0x15a67,0x15a78,0x15a8a,0x15a9b,0x15aa5,0x15aaf,0x15abc,0x15ae1,0x15af9,0x15b23,0x15b3f,0x15b83,",
    stride_status = "Not mono block loop",
    stride = 0,
    memory_status = "Success",
    accessed_memory = 200,
    accessed_memory_nooverlap = 200,
    accessed_memory_overlap = 0,
    span = 200,
    head = 0,
    unroll_factor = 1,
  },
}