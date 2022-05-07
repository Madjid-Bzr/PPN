_group = {
  {
    group_size = 1,
    pattern = "S",
    opcodes = "VMOVSD,",
    offsets = "0,",
    addresses = "0x1d8d,",
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
    group_size = 35,
    pattern = "LLLSSLSLLLLLLLSLLLLLLSLLLSLLLLLLLLL",
    opcodes = "MOV,VMOVQ,VPINSRQ,MOV,VMOVDQA,VMOVDQA,VMOVDQA,MOV,MOV,MOV,MOV,MOV,MOV,MOV,MOV,MOV,MOV,MOV,MOV,MOV,MOV,MOV,MOV,VMOVQ,VPINSRQ,VMOVDQA,MOV,MOV,MOV,MOV,MOV,MOV,SUB,SUB,VFMADD132SD,",
    offsets = "160,200,168,400,384,144,384,1448,1464,364,352,1468,364,352,0,1468,364,352,1448,1464,364,0,352,200,192,384,128,200,136,280,272,176,296,288,184,",
    addresses = "0x1b2d,0x1b37,0x1b42,0x1b54,0x1b60,0x1b72,0x1b7f,0x1ba1,0x1ba9,0x1bb9,0x1bcf,0x1bf1,0x1bfd,0x1c08,0x1c16,0x1c2d,0x1c39,0x1c5d,0x1c77,0x1c7f,0x1c8f,0x1c9c,0x1cab,0x1cc9,0x1cd6,0x1cec,0x1d1c,0x1d24,0x1d2c,0x1d47,0x1d56,0x1d5e,0x1d69,0x1d71,0x1d83,",
    stride_status = "Not mono block loop",
    stride = 0,
    memory_status = "Success",
    accessed_memory = 272,
    accessed_memory_nooverlap = 168,
    accessed_memory_overlap = 104,
    span = 1472,
    head = 0,
    unroll_factor = 1,
  },
  {
    group_size = 2,
    pattern = "LL",
    opcodes = "MOV,CMP,",
    offsets = "21360,21326,",
    addresses = "0x1cfa,0x1d12,",
    stride_status = "Not mono block loop",
    stride = 0,
    memory_status = "Success",
    accessed_memory = 12,
    accessed_memory_nooverlap = 12,
    accessed_memory_overlap = 0,
    span = 38,
    head = 0,
    unroll_factor = 1,
  },
  {
    group_size = 1,
    pattern = "L",
    opcodes = "MOV,",
    offsets = "0,",
    addresses = "0x1d66,",
    stride_status = "Not mono block loop",
    stride = 0,
    memory_status = "Success",
    accessed_memory = 4,
    accessed_memory_nooverlap = 4,
    accessed_memory_overlap = 0,
    span = 4,
    head = 0,
    unroll_factor = 1,
  },
}
