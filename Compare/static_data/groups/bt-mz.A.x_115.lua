_group = {
  {
    group_size = 25,
    pattern = "LLLLLLLLLLLLLLLLLLLLLLLLL",
    opcodes = "VMOVSD,VMOVSD,VMOVSD,VMOVSD,VMOVSD,VMOVSD,VMOVSD,VMOVSD,VMOVSD,VMOVSD,VMOVSD,VMOVSD,VMOVSD,VMOVSD,VMOVSD,VMOVSD,VMOVSD,VMOVSD,VMOVSD,VMOVSD,VMOVSD,VMOVSD,VMOVSD,VMOVSD,VMOVSD,",
    offsets = "-200,-160,-120,-80,-40,-192,-152,-112,-72,-32,-184,-144,-104,-64,-24,-176,-136,-96,-56,-16,-168,-128,-88,-48,-8,",
    addresses = "0x1c79c,0x1c7dd,0x1c80c,0x1c844,0x1c86e,0x1c89c,0x1c8d2,0x1c917,0x1c959,0x1c97f,0x1c99c,0x1c9d3,0x1ca10,0x1ca35,0x1ca7a,0x1ca80,0x1caf0,0x1cb13,0x1cb39,0x1cb7a,0x1cbd9,0x1cbfa,0x1cc36,0x1cc57,0x1cc83,",
    stride_status = "Not mono block loop",
    stride = 0,
    memory_status = "Success",
    accessed_memory = 200,
    accessed_memory_nooverlap = 200,
    accessed_memory_overlap = 0,
    span = 200,
    head = 0,
    unroll_factor = 5,
  },
  {
    group_size = 25,
    pattern = "LLLLLLLLLLLLLLLLLLLLLLLLL",
    opcodes = "VMOVSD,VMOVSD,VMOVSD,VMOVSD,VMOVSD,VMOVSD,VMOVSD,VMOVSD,VMOVSD,VMOVSD,VMOVSD,VMOVSD,VMOVSD,VMOVSD,VMOVSD,VMOVSD,VMOVSD,VMOVSD,VMOVSD,VMOVSD,VMOVSD,VMOVSD,VMOVSD,VMOVSD,VMOVSD,",
    offsets = "-200,-160,-120,-80,-40,-192,-152,-112,-72,-32,-184,-144,-104,-64,-24,-176,-136,-96,-56,-16,-168,-8,-128,-88,-48,",
    addresses = "0x1c78b,0x1c7cc,0x1c828,0x1c83f,0x1c874,0x1c8b8,0x1c8f1,0x1c91d,0x1c941,0x1c96c,0x1c9b3,0x1c9e9,0x1ca16,0x1ca5a,0x1ca9b,0x1cabb,0x1cada,0x1cb26,0x1cb59,0x1cb92,0x1cba0,0x1cbc7,0x1cc0d,0x1cc2c,0x1cc5d,",
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
    group_size = 75,
    pattern = "SSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSS",
    opcodes = "VMOVSD,VMOVSD,VMOVSD,VMOVSD,VMOVSD,VMOVSD,VMOVSD,VMOVSD,VMOVSD,VMOVSD,VMOVSD,VMOVSD,VMOVSD,VMOVSD,VMOVSD,VMOVSD,VMOVSD,VMOVSD,VMOVSD,VMOVSD,VMOVSD,VMOVSD,VMOVSD,VMOVSD,VMOVSD,VMOVSD,VMOVSD,VMOVSD,VMOVSD,VMOVSD,VMOVSD,VMOVSD,VMOVSD,VMOVSD,VMOVSD,VMOVSD,VMOVSD,VMOVSD,VMOVSD,VMOVSD,VMOVSD,VMOVSD,VMOVSD,VMOVSD,VMOVSD,VMOVSD,VMOVSD,VMOVSD,VMOVSD,VMOVSD,VMOVSD,VMOVSD,VMOVSD,VMOVSD,VMOVSD,VMOVSD,VMOVSD,VMOVSD,VMOVSD,VMOVSD,VMOVSD,VMOVSD,VMOVSD,VMOVSD,VMOVSD,VMOVSD,VMOVSD,VMOVSD,VMOVSD,VMOVSD,VMOVSD,VMOVSD,VMOVSD,VMOVSD,VMOVSD,",
    offsets = "-600,-560,-520,-480,-440,-592,-552,-512,-472,-432,-584,-544,-504,-464,-424,-576,-536,-496,-456,-416,-568,-528,-488,-448,-408,-400,-360,-320,-280,-240,-392,-352,-312,-272,-232,-384,-344,-304,-264,-224,-376,-336,-296,-256,-216,-368,-328,-288,-248,-208,-200,-160,-120,-80,-40,-192,-152,-112,-72,-32,-184,-144,-104,-64,-24,-176,-136,-96,-56,-16,-168,-128,-88,-48,-8,",
    addresses = "0x1c26e,0x1c288,0x1c2ac,0x1c2cf,0x1c2f2,0x1c315,0x1c33d,0x1c361,0x1c38d,0x1c3b0,0x1c3c1,0x1c3f6,0x1c419,0x1c43d,0x1c469,0x1c48c,0x1c4af,0x1c4d2,0x1c4f5,0x1c519,0x1c533,0x1c568,0x1c58b,0x1c5ae,0x1c5d1,0x1c5f4,0x1c605,0x1c616,0x1c623,0x1c634,0x1c63c,0x1c65a,0x1c667,0x1c678,0x1c680,0x1c688,0x1c6a2,0x1c6c9,0x1c6da,0x1c6eb,0x1c6fc,0x1c70d,0x1c715,0x1c73c,0x1c74d,0x1c75e,0x1c76b,0x1c777,0x1c77f,0x1c7a5,0x1c7ef,0x1c820,0x1c853,0x1c882,0x1c8b3,0x1c8e9,0x1c90f,0x1c954,0x1c997,0x1c9c9,0x1ca03,0x1ca2d,0x1ca55,0x1ca96,0x1cad0,0x1cb06,0x1cb3f,0x1cb6c,0x1cb8d,0x1cbf0,0x1cc20,0x1cc49,0x1cc6b,0x1cc9b,0x1ccd7,",
    stride_status = "Not mono block loop",
    stride = 0,
    memory_status = "Success",
    accessed_memory = 600,
    accessed_memory_nooverlap = 600,
    accessed_memory_overlap = 0,
    span = 600,
    head = 0,
    unroll_factor = 5,
  },
  {
    group_size = 311,
    pattern = "LLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLSSLSSSSSSSSSSSSSSSSSSSSSSSSLSSSSSSSSSSSSLSSSSSSSSSSSSLLLSSLLLSLSLSLSLSLSLSLSLSLSLSLSLSLSSSLLSLSLSLSLSLSLSLSLSLSLSLSLSLSSSSSLLSLSLSLSLSLSLSLSLSSLLLSLSLSLSLSLSLSLSLSLSLSLSSLLSLLLLSLSLSLSLSLSLSLSLSLSLSLSLSLSLSLSLLSSLSLSLSLSLSLSLSLLSSLLSSS",
    opcodes = "VMULSD,VMULSD,VSUBSD,VMULSD,VMULSD,VMULSD,VMULSD,VMULSD,VMULSD,VMULSD,VMULSD,VMULSD,VMULSD,VMOVSD,VMULSD,VMULSD,VMULSD,VMULSD,VMULSD,VMULSD,VMULSD,VMULSD,VMULSD,VMULSD,VMULSD,VMULSD,VMULSD,VSUBSD,VMULSD,VMULSD,VMULSD,VMULSD,VMULSD,VMULSD,VMULSD,VMULSD,VMULSD,VMULSD,VMULSD,VMULSD,VSUBSD,VMULSD,VMULSD,VMULSD,VMULSD,VMULSD,VMULSD,VMULSD,VMULSD,VMULSD,VMULSD,VMULSD,VMULSD,VSUBSD,VADDSD,VMULSD,VMULSD,VMULSD,VMULSD,VADDSD,VMULSD,VMULSD,VMULSD,VMULSD,VADDSD,VMULSD,VMULSD,VMULSD,VMULSD,VMULSD,VMULSD,VADDSD,VMULSD,VMULSD,VMULSD,VADDSD,VMOVSD,VMOVSD,VSUBSD,VMOVSD,VMOVSD,VMOVSD,VMOVSD,VMOVSD,VMOVSD,VMOVSD,VMOVSD,VMOVSD,VMOVSD,VMOVSD,VMOVSD,VMOVSD,VMOVSD,VMOVSD,VMOVSD,VMOVSD,VMOVSD,VMOVSD,VMOVSD,VMOVSD,VMOVSD,VMOVSD,VMOVSD,VSUBSD,VMOVSD,VMOVSD,VMOVSD,VMOVSD,VMOVSD,VMOVSD,VMOVSD,VMOVSD,VMOVSD,VMOVSD,VMOVSD,VMOVSD,VSUBSD,VMOVSD,VMOVSD,VMOVSD,VMOVSD,VMOVSD,VMOVSD,VMOVSD,VMOVSD,VMOVSD,VMOVSD,VMOVSD,VMOVSD,VMOVSD,VSUBSD,VMOVSD,VMOVSD,VMOVSD,VMOVSD,VMOVSD,VMOVSD,VMOVSD,VMOVSD,VMOVSD,VMOVSD,VMOVSD,VMOVSD,VMOVSD,VMOVSD,VMOVSD,VMOVSD,VMOVSD,VMOVSD,VMOVSD,VMOVSD,VMOVSD,VMOVSD,VMOVSD,VMOVSD,VMOVSD,VMOVSD,VMOVSD,VMOVSD,VMOVSD,VMOVSD,VMOVSD,VMOVSD,VMOVSD,VMOVSD,VMOVSD,VMOVSD,VMOVSD,VMOVSD,VMOVSD,VMOVSD,VMOVSD,VMOVSD,VMOVSD,VMOVSD,VMOVSD,VMOVSD,VMOVSD,VMOVSD,VMOVSD,VMOVSD,VMOVSD,VMOVSD,VMOVSD,VMOVSD,VMOVSD,VMOVSD,VMOVSD,VMOVSD,VMOVSD,VMOVSD,VMOVSD,VMOVSD,VMOVSD,VMOVSD,VMOVSD,VMOVSD,VMOVSD,VMOVSD,VMOVSD,VMOVSD,VMOVSD,VMOVSD,VMOVSD,VMOVSD,VMOVSD,VMOVSD,VMOVSD,VMOVSD,VMOVSD,VMOVSD,VMOVSD,VMOVSD,VMOVSD,VMOVSD,VMOVSD,VMOVSD,VMOVSD,VMOVSD,VMOVSD,VMOVSD,VMOVSD,VMOVSD,VMOVSD,VMOVSD,VMOVSD,VMOVSD,VMOVSD,VMOVSD,VMOVSD,VMOVSD,VMOVSD,VMOVSD,VMOVSD,VMOVSD,VMOVSD,VMOVSD,VMOVSD,VMOVSD,VMOVSD,VMOVSD,VMOVSD,VMOVSD,VMOVSD,VMOVSD,VMOVSD,VMOVSD,VMOVSD,VMOVSD,VMOVSD,VMOVSD,VMOVSD,VMOVSD,VMOVSD,VMOVSD,VMOVSD,VMOVSD,VMOVSD,VMOVSD,VMOVSD,VMOVSD,VMOVSD,VMOVSD,VMOVSD,VMOVSD,VMOVSD,VMOVSD,VMOVSD,VMOVSD,VMOVSD,VMOVSD,VMOVSD,VMOVSD,VMOVSD,VMOVSD,VMOVSD,VMOVSD,VMOVSD,VMOVSD,VMOVSD,VMOVSD,VMOVSD,VMOVSD,VMOVSD,VMOVSD,VMOVSD,VMOVSD,VMOVSD,VMOVSD,VMOVSD,VMOVSD,VMOVSD,VMOVSD,VMOVSD,VMOVSD,VMOVSD,VMOVSD,VMOVSD,VMOVSD,VMOVSD,VMOVSD,VMOVSD,VMOVSD,VMOVSD,VMOVSD,VMOVSD,VMOVSD,VMOVSD,VMOVSD,VMOVSD,VMOVSD,",
    offsets = "904,896,1208,888,880,872,864,856,1016,1008,1000,992,1088,208,1160,984,976,968,960,952,944,936,928,920,912,800,808,1200,816,824,832,840,848,1056,1048,1040,1032,1024,1128,1064,1192,1080,1096,1104,1112,1120,1136,1072,1152,1168,1176,1144,1312,1184,200,1304,1296,1288,1216,192,1224,1232,1240,1248,184,1256,1264,1272,1280,1344,1320,176,1328,1336,1352,168,776,584,1208,568,576,560,552,536,544,528,520,512,504,496,488,480,472,456,464,440,448,432,424,416,408,400,392,1200,384,376,368,352,360,344,328,336,320,312,304,296,1192,288,280,264,1144,1168,272,256,248,240,232,224,216,792,1184,768,1176,1152,1352,760,1336,1072,752,1136,1328,1120,744,1112,1320,1104,736,1096,1344,1080,672,1064,1280,1128,664,1024,1272,1032,656,1040,1264,1048,648,1056,848,840,1256,640,952,1248,832,632,824,1240,816,624,808,1232,800,616,912,1224,920,608,928,600,968,1216,984,592,936,784,944,680,960,976,1160,1088,992,1288,696,1000,1296,888,688,1016,704,856,712,1008,720,864,1312,872,1304,880,728,896,904,776,576,584,728,560,720,552,1312,544,712,536,1304,520,704,528,1296,512,1288,496,696,480,688,464,680,488,784,592,568,504,1216,472,456,448,432,600,424,608,416,1224,408,616,400,1232,392,624,384,1240,376,632,368,1248,360,640,352,1256,344,648,336,1264,328,656,320,1272,440,664,312,304,1352,1280,296,672,288,1344,280,736,272,1320,264,744,256,1328,248,752,240,232,1336,760,224,216,768,776,792,",
    addresses = "0x1c235,0x1c253,0x1c25c,0x1c265,0x1c27f,0x1c29a,0x1c2a3,0x1c2b9,0x1c2c6,0x1c2dc,0x1c2e9,0x1c2ff,0x1c30c,0x1c326,0x1c32f,0x1c34a,0x1c358,0x1c369,0x1c37b,0x1c384,0x1c39e,0x1c3a7,0x1c3c9,0x1c3d2,0x1c3e4,0x1c3ed,0x1c407,0x1c410,0x1c421,0x1c434,0x1c445,0x1c457,0x1c460,0x1c47a,0x1c483,0x1c49d,0x1c4a6,0x1c4c0,0x1c4c9,0x1c4e3,0x1c4ec,0x1c4fd,0x1c510,0x1c521,0x1c53b,0x1c544,0x1c556,0x1c55f,0x1c579,0x1c582,0x1c59c,0x1c5a5,0x1c5bf,0x1c5c8,0x1c5e2,0x1c5eb,0x1c5fc,0x1c60d,0x1c62b,0x1c64c,0x1c66f,0x1c690,0x1c699,0x1c6ae,0x1c6b7,0x1c6c0,0x1c6d1,0x1c6e2,0x1c6f3,0x1c704,0x1c721,0x1c72a,0x1c733,0x1c744,0x1c755,0x1c793,0x1c7b1,0x1c7bf,0x1c7d4,0x1c7e6,0x1c7fb,0x1c812,0x1c82d,0x1c84a,0x1c85d,0x1c879,0x1c88b,0x1c8a5,0x1c8c0,0x1c8db,0x1c8f9,0x1c922,0x1c92f,0x1c946,0x1c95f,0x1c971,0x1c985,0x1c9a5,0x1c9c0,0x1c9dc,0x1c9f6,0x1ca1b,0x1ca3b,0x1ca4c,0x1ca5f,0x1ca68,0x1ca89,0x1caa0,0x1caa9,0x1cac7,0x1cae2,0x1caf9,0x1cb19,0x1cb2b,0x1cb4c,0x1cb63,0x1cb80,0x1cb97,0x1cba8,0x1cbb5,0x1cbbe,0x1cbcc,0x1cbe2,0x1cc00,0x1cc17,0x1cc40,0x1cc62,0x1cc75,0x1cc89,0x1ccaa,0x1ccb3,0x1ccbc,0x1ccc5,0x1ccce,0x1ccdc,0x1cce5,0x1ccee,0x1ccf7,0x1cd00,0x1cd09,0x1cd12,0x1cd1b,0x1cd24,0x1cd2d,0x1cd36,0x1cd3f,0x1cd48,0x1cd51,0x1cd5a,0x1cd63,0x1cd6c,0x1cd75,0x1cd7e,0x1cd87,0x1cd90,0x1cd99,0x1cda2,0x1cdab,0x1cdb4,0x1cdbd,0x1cdc6,0x1cdcf,0x1cdd8,0x1cde1,0x1cdea,0x1cdf3,0x1cdfc,0x1ce05,0x1ce0e,0x1ce17,0x1ce20,0x1ce29,0x1ce32,0x1ce3b,0x1ce44,0x1ce4d,0x1ce56,0x1ce5f,0x1ce68,0x1ce71,0x1ce7a,0x1ce83,0x1ce8c,0x1ce95,0x1ce9e,0x1cea7,0x1ceb0,0x1ceb9,0x1cec2,0x1cecb,0x1ced4,0x1cedd,0x1cee6,0x1ceef,0x1cef8,0x1cf01,0x1cf0a,0x1cf13,0x1cf1c,0x1cf25,0x1cf2e,0x1cf37,0x1cf40,0x1cf49,0x1cf52,0x1cf5b,0x1cf64,0x1cf6d,0x1cf76,0x1cf7f,0x1cf88,0x1cf91,0x1cf9a,0x1cfa3,0x1cfac,0x1cfb5,0x1cfbe,0x1cfc7,0x1cfd0,0x1bee8,0x1bef1,0x1befa,0x1bf03,0x1bf0c,0x1bf15,0x1bf1e,0x1bf27,0x1bf30,0x1bf39,0x1bf42,0x1bf4b,0x1bf54,0x1bf5d,0x1bf66,0x1bf6f,0x1bf78,0x1bf81,0x1bf8a,0x1bf93,0x1bf9c,0x1bfa5,0x1bfae,0x1bfb7,0x1bfc0,0x1bfc9,0x1bfd2,0x1bfdb,0x1bfe4,0x1bfed,0x1bff6,0x1bfff,0x1c008,0x1c011,0x1c01a,0x1c023,0x1c02c,0x1c035,0x1c03e,0x1c047,0x1c050,0x1c059,0x1c062,0x1c06b,0x1c074,0x1c07d,0x1c086,0x1c08f,0x1c098,0x1c0a1,0x1c0aa,0x1c0b3,0x1c0bc,0x1c0c5,0x1c0ce,0x1c0d7,0x1c0e0,0x1c0e9,0x1c0f2,0x1c0fb,0x1c104,0x1c10d,0x1c116,0x1c11f,0x1c128,0x1c131,0x1c13a,0x1c143,0x1c14c,0x1c155,0x1c15e,0x1c167,0x1c170,0x1c179,0x1c182,0x1c18b,0x1c194,0x1c19d,0x1c1a6,0x1c1af,0x1c1b8,0x1c1c1,0x1c1ca,0x1c1d3,0x1c1dc,0x1c1e5,0x1c1ee,0x1c1f7,0x1c200,0x1c209,0x1c212,0x1c21b,",
    stride_status = "Not mono block loop",
    stride = 0,
    memory_status = "Success",
    accessed_memory = 2488,
    accessed_memory_nooverlap = 1192,
    accessed_memory_overlap = 1296,
    span = 1192,
    head = 0,
    unroll_factor = 1,
  },
}
