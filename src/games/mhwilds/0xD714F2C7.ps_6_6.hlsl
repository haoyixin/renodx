Texture2D<float4> SrcTexture : register(t0);

Texture2D<float4> OCIO_lut1d_0 : register(t1);

Texture3D<float4> OCIO_lut3d_1 : register(t2);

cbuffer HDRMapping : register(b0) {
  float HDRMapping_000x : packoffset(c000.x);
  float HDRMapping_000z : packoffset(c000.z);
  float HDRMapping_009x : packoffset(c009.x);
  float HDRMapping_009y : packoffset(c009.y);
  float HDRMapping_009z : packoffset(c009.z);
  float HDRMapping_009w : packoffset(c009.w);
  float HDRMapping_010x : packoffset(c010.x);
  float HDRMapping_010z : packoffset(c010.z);
  float HDRMapping_014x : packoffset(c014.x);
};

cbuffer OCIOTransformXYZMatrix : register(b1) {
  float OCIOTransformXYZMatrix_000x : packoffset(c000.x);
  float OCIOTransformXYZMatrix_000y : packoffset(c000.y);
  float OCIOTransformXYZMatrix_000z : packoffset(c000.z);
  float OCIOTransformXYZMatrix_001x : packoffset(c001.x);
  float OCIOTransformXYZMatrix_001y : packoffset(c001.y);
  float OCIOTransformXYZMatrix_001z : packoffset(c001.z);
  float OCIOTransformXYZMatrix_002x : packoffset(c002.x);
  float OCIOTransformXYZMatrix_002y : packoffset(c002.y);
  float OCIOTransformXYZMatrix_002z : packoffset(c002.z);
  float OCIOTransformXYZMatrix_004x : packoffset(c004.x);
  float OCIOTransformXYZMatrix_004y : packoffset(c004.y);
  float OCIOTransformXYZMatrix_004z : packoffset(c004.z);
  float OCIOTransformXYZMatrix_005x : packoffset(c005.x);
  float OCIOTransformXYZMatrix_005y : packoffset(c005.y);
  float OCIOTransformXYZMatrix_005z : packoffset(c005.z);
  float OCIOTransformXYZMatrix_006x : packoffset(c006.x);
  float OCIOTransformXYZMatrix_006y : packoffset(c006.y);
  float OCIOTransformXYZMatrix_006z : packoffset(c006.z);
};

SamplerState PointBorder : register(s2, space32);

SamplerState BilinearClamp : register(s5, space32);

SamplerState TrilinearClamp : register(s9, space32);

float4 main(
  noperspective float4 SV_Position : SV_Position,
  linear float2 TEXCOORD : TEXCOORD
) : SV_Target {
  float4 SV_Target;
  float _15 = (HDRMapping_000z) * 0.009999999776482582f;
  float _18 = _15 * (HDRMapping_009w);
  float4 _21 = SrcTexture.SampleLevel(PointBorder, float2((TEXCOORD.x), (TEXCOORD.y)), 0.0f);
  float _26 = (HDRMapping_000x) * 0.009999999776482582f;
  float _27 = _26 * (_21.x);
  float _28 = _26 * (_21.y);
  float _29 = _26 * (_21.z);
  float _54 = (OCIOTransformXYZMatrix_000x) * 0.35920000076293945f;
  float _55 = mad(0.6976000070571899f, (OCIOTransformXYZMatrix_001x), _54);
  float _56 = mad(-0.03579999879002571f, (OCIOTransformXYZMatrix_002x), _55);
  float _57 = (OCIOTransformXYZMatrix_000y) * 0.35920000076293945f;
  float _58 = mad(0.6976000070571899f, (OCIOTransformXYZMatrix_001y), _57);
  float _59 = mad(-0.03579999879002571f, (OCIOTransformXYZMatrix_002y), _58);
  float _60 = (OCIOTransformXYZMatrix_000z) * 0.35920000076293945f;
  float _61 = mad(0.6976000070571899f, (OCIOTransformXYZMatrix_001z), _60);
  float _62 = mad(-0.03579999879002571f, (OCIOTransformXYZMatrix_002z), _61);
  float _63 = (OCIOTransformXYZMatrix_000x) * -0.19220000505447388f;
  float _64 = mad(1.1003999710083008f, (OCIOTransformXYZMatrix_001x), _63);
  float _65 = mad(0.0754999965429306f, (OCIOTransformXYZMatrix_002x), _64);
  float _66 = (OCIOTransformXYZMatrix_000y) * -0.19220000505447388f;
  float _67 = mad(1.1003999710083008f, (OCIOTransformXYZMatrix_001y), _66);
  float _68 = mad(0.0754999965429306f, (OCIOTransformXYZMatrix_002y), _67);
  float _69 = (OCIOTransformXYZMatrix_000z) * -0.19220000505447388f;
  float _70 = mad(1.1003999710083008f, (OCIOTransformXYZMatrix_001z), _69);
  float _71 = mad(0.0754999965429306f, (OCIOTransformXYZMatrix_002z), _70);
  float _72 = (OCIOTransformXYZMatrix_000x) * 0.007000000216066837f;
  float _73 = mad(0.07490000128746033f, (OCIOTransformXYZMatrix_001x), _72);
  float _74 = mad(0.8434000015258789f, (OCIOTransformXYZMatrix_002x), _73);
  float _75 = (OCIOTransformXYZMatrix_000y) * 0.007000000216066837f;
  float _76 = mad(0.07490000128746033f, (OCIOTransformXYZMatrix_001y), _75);
  float _77 = mad(0.8434000015258789f, (OCIOTransformXYZMatrix_002y), _76);
  float _78 = (OCIOTransformXYZMatrix_000z) * 0.007000000216066837f;
  float _79 = mad(0.07490000128746033f, (OCIOTransformXYZMatrix_001z), _78);
  float _80 = mad(0.8434000015258789f, (OCIOTransformXYZMatrix_002z), _79);
  float _81 = _56 * 4096.0f;
  float _82 = _59 * 4096.0f;
  float _83 = _62 * 4096.0f;
  float _84 = round(_81);
  float _85 = round(_82);
  float _86 = round(_83);
  float _87 = _85 * 0.000244140625f;
  float _88 = _86 * 0.000244140625f;
  float _89 = _65 * 4096.0f;
  float _90 = _68 * 4096.0f;
  float _91 = _71 * 4096.0f;
  float _92 = round(_89);
  float _93 = round(_90);
  float _94 = round(_91);
  float _95 = _93 * 0.000244140625f;
  float _96 = _94 * 0.000244140625f;
  float _97 = _74 * 4096.0f;
  float _98 = _77 * 4096.0f;
  float _99 = _80 * 4096.0f;
  float _100 = round(_97);
  float _101 = round(_98);
  float _102 = round(_99);
  float _103 = _101 * 0.000244140625f;
  float _104 = _102 * 0.000244140625f;
  float _105 = _27 * 0.000244140625f;
  float _106 = _105 * _84;
  float _107 = mad(_87, _28, _106);
  float _108 = mad(_88, _29, _107);
  float _109 = _105 * _92;
  float _110 = mad(_95, _28, _109);
  float _111 = mad(_96, _29, _110);
  float _112 = _105 * _100;
  float _113 = mad(_103, _28, _112);
  float _114 = mad(_104, _29, _113);
  float _115 = _108 * 0.009999999776482582f;
  float _116 = log2(_115);
  float _117 = _116 * 0.1593017578125f;
  float _118 = exp2(_117);
  float _119 = _118 * 18.8515625f;
  float _120 = _119 + 0.8359375f;
  float _121 = _118 * 18.6875f;
  float _122 = _121 + 1.0f;
  float _123 = _120 / _122;
  float _124 = log2(_123);
  float _125 = _124 * 78.84375f;
  float _126 = exp2(_125);
  float _127 = saturate(_126);
  float _128 = _111 * 0.009999999776482582f;
  float _129 = log2(_128);
  float _130 = _129 * 0.1593017578125f;
  float _131 = exp2(_130);
  float _132 = _131 * 18.8515625f;
  float _133 = _132 + 0.8359375f;
  float _134 = _131 * 18.6875f;
  float _135 = _134 + 1.0f;
  float _136 = _133 / _135;
  float _137 = log2(_136);
  float _138 = _137 * 78.84375f;
  float _139 = exp2(_138);
  float _140 = saturate(_139);
  float _141 = _114 * 0.009999999776482582f;
  float _142 = log2(_141);
  float _143 = _142 * 0.1593017578125f;
  float _144 = exp2(_143);
  float _145 = _144 * 18.8515625f;
  float _146 = _145 + 0.8359375f;
  float _147 = _144 * 18.6875f;
  float _148 = _147 + 1.0f;
  float _149 = _146 / _148;
  float _150 = log2(_149);
  float _151 = _150 * 78.84375f;
  float _152 = exp2(_151);
  float _153 = saturate(_152);
  float _154 = _140 + _127;
  float _155 = _154 * 0.5f;
  float _156 = dot(float3(_127, _140, _153), float3(6610.0f, -13613.0f, 7003.0f));
  float _157 = _156 * 0.000244140625f;
  float _158 = dot(float3(_127, _140, _153), float3(17933.0f, -17390.0f, -543.0f));
  float _159 = _158 * 0.000244140625f;
  float _161 = (HDRMapping_009x) * 0.009999999776482582f;
  float _163 = (HDRMapping_009z) * 0.009999999776482582f;
  float _165 = saturate(_155);
  float _166 = log2(_165);
  float _167 = _166 * 0.012683313339948654f;
  float _168 = exp2(_167);
  float _169 = _168 + -0.8359375f;
  float _170 = max(0.0f, _169);
  float _171 = _168 * 18.6875f;
  float _172 = 18.8515625f - _171;
  float _173 = _170 / _172;
  float _174 = log2(_173);
  float _175 = _174 * 6.277394771575928f;
  float _176 = exp2(_175);
  float _177 = _176 * 100.0f;
  bool _178 = (_161 == 0.0f);
  float _205;
  float _213 = _177;
  float _258;
  float _263;
  float _370;
  float _399;
  float _426;
  float _598;
  float _599;
  float _600;
  float _601;
  float _602;
  if (!_178) {
    float _180 = max(_163, 0.0f);
    float _181 = _161 - _180;
    float _182 = _177 - _180;
    float _183 = _182 / _181;
    float _184 = saturate(_183);
    float _185 = _184 * 2.0f;
    float _186 = 3.0f - _185;
    float _187 = _184 * _184;
    float _188 = _187 * _186;
    float _189 = 1.0f - _188;
    bool _190 = !(_177 <= _163);
    _205 = 0.0f;
    do {
      if (_190) {
        bool _192 = !(_163 >= 0.0f);
        if (!_192) {
          float _194 = _163 + -1.0f;
          float _195 = -1.0f / _194;
          float _196 = 1.0f - _195;
          float _197 = _195 * _177;
          float _198 = _196 + _197;
          _205 = _198;
        } else {
          float _200 = -1.0f - _163;
          float _201 = -0.0f - _163;
          float _202 = _177 * _200;
          float _203 = _201 - _202;
          _205 = _203;
        }
      }
      float _206 = log2(_205);
      float _207 = _206 * (HDRMapping_009y);
      float _208 = exp2(_207);
      float _209 = _208 - _177;
      float _210 = _209 * _189;
      float _211 = _210 + _177;
      _213 = _211;
    } while (false);
  }
  bool _214 = (_18 == _15);
  bool _215 = (_213 > _15);
  bool _216 = _214 && _215;
  _263 = _15;
  if (!_216) {
    float _220 = 1.0f - (HDRMapping_009w);
    float _221 = _220 * _15;
    float _222 = _15 - _221;
    float _223 = exp2((HDRMapping_010x));
    float _224 = 1.0f / _223;
    float _225 = _224 * _213;
    float _226 = _222 / _223;
    float _227 = _15 - _226;
    float _228 = _225 - _15;
    bool _229 = (_228 < -0.0f);
    _258 = -0.0f;
    do {
      if (_229) {
        float _233 = (HDRMapping_014x) + -0.5f;
        float _234 = min((HDRMapping_010x), 1.0f);
        float _235 = _233 * _234;
        float _236 = _235 + 0.5f;
        float _237 = _236 * 2.0f;
        bool _238 = (_226 == 0.0f);
        float _239 = _222 / _226;
        float _240 = (_238 ? 1.0f : _239);
        float _241 = _237 * _240;
        float _242 = -0.0f - _228;
        float _243 = _241 * _227;
        float _244 = _243 / _221;
        float _245 = log2(_221);
        float _246 = log2(_227);
        float _247 = _244 * -0.6931471824645996f;
        float _248 = _247 * _246;
        float _249 = log2(_242);
        float _250 = _249 * _244;
        float _251 = _250 + _245;
        float _252 = _251 * 0.6931471824645996f;
        float _253 = _252 + _248;
        float _254 = _253 * 1.4426950216293335f;
        float _255 = exp2(_254);
        float _256 = -0.0f - _255;
        _258 = _256;
      }
      float _259 = _258 + _15;
      bool _260 = (_213 <= _18);
      float _261 = (_260 ? _213 : _259);
      _263 = _261;
    } while (false);
  }
  float _264 = _263 * 0.009999999776482582f;
  float _265 = log2(_264);
  float _266 = _265 * 0.1593017578125f;
  float _267 = exp2(_266);
  float _268 = _267 * 18.8515625f;
  float _269 = _268 + 0.8359375f;
  float _270 = _267 * 18.6875f;
  float _271 = _270 + 1.0f;
  float _272 = _269 / _271;
  float _273 = log2(_272);
  float _274 = _273 * 78.84375f;
  float _275 = exp2(_274);
  float _276 = saturate(_275);
  float _279 = _157 * (HDRMapping_010z);
  float _280 = _159 * (HDRMapping_010z);
  float _281 = _276 / _155;
  float _282 = _155 / _276;
  float _283 = min(_282, _281);
  float _284 = _279 * _283;
  float _285 = _280 * _283;
  float _286 = mad(0.008999999612569809f, _284, _276);
  float _287 = mad(0.11100000143051147f, _285, _286);
  float _288 = mad(-0.008999999612569809f, _284, _276);
  float _289 = mad(-0.11100000143051147f, _285, _288);
  float _290 = mad(0.5600000023841858f, _284, _276);
  float _291 = mad(-0.32100000977516174f, _285, _290);
  float _292 = saturate(_287);
  float _293 = log2(_292);
  float _294 = _293 * 0.012683313339948654f;
  float _295 = exp2(_294);
  float _296 = _295 + -0.8359375f;
  float _297 = max(0.0f, _296);
  float _298 = _295 * 18.6875f;
  float _299 = 18.8515625f - _298;
  float _300 = _297 / _299;
  float _301 = log2(_300);
  float _302 = _301 * 6.277394771575928f;
  float _303 = exp2(_302);
  float _304 = saturate(_289);
  float _305 = log2(_304);
  float _306 = _305 * 0.012683313339948654f;
  float _307 = exp2(_306);
  float _308 = _307 + -0.8359375f;
  float _309 = max(0.0f, _308);
  float _310 = _307 * 18.6875f;
  float _311 = 18.8515625f - _310;
  float _312 = _309 / _311;
  float _313 = log2(_312);
  float _314 = _313 * 6.277394771575928f;
  float _315 = exp2(_314);
  float _316 = _315 * 100.0f;
  float _317 = saturate(_291);
  float _318 = log2(_317);
  float _319 = _318 * 0.012683313339948654f;
  float _320 = exp2(_319);
  float _321 = _320 + -0.8359375f;
  float _322 = max(0.0f, _321);
  float _323 = _320 * 18.6875f;
  float _324 = 18.8515625f - _323;
  float _325 = _322 / _324;
  float _326 = log2(_325);
  float _327 = _326 * 6.277394771575928f;
  float _328 = exp2(_327);
  float _329 = _328 * 100.0f;
  float _330 = _303 * 207.10000610351562f;
  float _331 = mad(-1.3270000219345093f, _316, _330);
  float _332 = mad(0.2070000022649765f, _329, _331);
  float _333 = _303 * 36.5f;
  float _334 = mad(0.6809999942779541f, _316, _333);
  float _335 = mad(-0.04500000178813934f, _329, _334);
  float _336 = _303 * -4.900000095367432f;
  float _337 = mad(-0.05000000074505806f, _316, _336);
  float _338 = mad(1.187999963760376f, _329, _337);
  float _339 = _332 * (OCIOTransformXYZMatrix_004x);
  float _340 = mad((OCIOTransformXYZMatrix_004y), _335, _339);
  float _341 = mad((OCIOTransformXYZMatrix_004z), _338, _340);
  float _342 = _332 * (OCIOTransformXYZMatrix_005x);
  float _343 = mad((OCIOTransformXYZMatrix_005y), _335, _342);
  float _344 = mad((OCIOTransformXYZMatrix_005z), _338, _343);
  float _345 = _332 * (OCIOTransformXYZMatrix_006x);
  float _346 = mad((OCIOTransformXYZMatrix_006y), _335, _345);
  float _347 = mad((OCIOTransformXYZMatrix_006z), _338, _346);
  float _348 = _341 * 0.6954519748687744f;
  float _349 = mad(_344, 0.1406790018081665f, _348);
  float _350 = mad(_347, 0.1638689935207367f, _349);
  float _351 = _341 * 0.04479460045695305f;
  float _352 = mad(_344, 0.8596709966659546f, _351);
  float _353 = mad(_347, 0.0955343022942543f, _352);
  float _354 = _341 * -0.00552588002756238f;
  float _355 = mad(_344, 0.004025210160762072f, _354);
  float _356 = mad(_347, 1.0015000104904175f, _355);
  float _357 = abs(_350);
  bool _358 = (_357 > 6.103515625e-05f);
  if (_358) {
    float _360 = min(_357, 65504.0f);
    float _361 = log2(_360);
    float _362 = floor(_361);
    float _363 = exp2(_362);
    float _364 = _360 - _363;
    float _365 = _364 / _363;
    float _366 = dot(float3(_362, _365, 15.0f), float3(1024.0f, 1024.0f, 1024.0f));
    _370 = _366;
  } else {
    float _368 = _357 * 16777216.0f;
    _370 = _368;
  }
  bool _371 = (_350 > 0.0f);
  float _372 = (_371 ? 0.0f : 32768.0f);
  float _373 = _370 + _372;
  float _374 = _373 * 0.00024420025874860585f;
  float _375 = floor(_374);
  float _376 = _375 * 4095.0f;
  float _377 = _373 + 0.5f;
  float _378 = _377 - _376;
  float _379 = _378 * 0.000244140625f;
  float _380 = _375 + 0.5f;
  float _381 = _380 * 0.05882352963089943f;
  float4 _384 = OCIO_lut1d_0.SampleLevel(BilinearClamp, float2(_379, _381), 0.0f);
  float _386 = abs(_353);
  bool _387 = (_386 > 6.103515625e-05f);
  if (_387) {
    float _389 = min(_386, 65504.0f);
    float _390 = log2(_389);
    float _391 = floor(_390);
    float _392 = exp2(_391);
    float _393 = _389 - _392;
    float _394 = _393 / _392;
    float _395 = dot(float3(_391, _394, 15.0f), float3(1024.0f, 1024.0f, 1024.0f));
    _399 = _395;
  } else {
    float _397 = _386 * 16777216.0f;
    _399 = _397;
  }
  bool _400 = (_353 > 0.0f);
  float _401 = (_400 ? 0.0f : 32768.0f);
  float _402 = _399 + _401;
  float _403 = _402 * 0.00024420025874860585f;
  float _404 = floor(_403);
  float _405 = _404 * 4095.0f;
  float _406 = _402 + 0.5f;
  float _407 = _406 - _405;
  float _408 = _407 * 0.000244140625f;
  float _409 = _404 + 0.5f;
  float _410 = _409 * 0.05882352963089943f;
  float4 _411 = OCIO_lut1d_0.SampleLevel(BilinearClamp, float2(_408, _410), 0.0f);
  float _413 = abs(_356);
  bool _414 = (_413 > 6.103515625e-05f);
  if (_414) {
    float _416 = min(_413, 65504.0f);
    float _417 = log2(_416);
    float _418 = floor(_417);
    float _419 = exp2(_418);
    float _420 = _416 - _419;
    float _421 = _420 / _419;
    float _422 = dot(float3(_418, _421, 15.0f), float3(1024.0f, 1024.0f, 1024.0f));
    _426 = _422;
  } else {
    float _424 = _413 * 16777216.0f;
    _426 = _424;
  }
  bool _427 = (_356 > 0.0f);
  float _428 = (_427 ? 0.0f : 32768.0f);
  float _429 = _426 + _428;
  float _430 = _429 * 0.00024420025874860585f;
  float _431 = floor(_430);
  float _432 = _431 * 4095.0f;
  float _433 = _429 + 0.5f;
  float _434 = _433 - _432;
  float _435 = _434 * 0.000244140625f;
  float _436 = _431 + 0.5f;
  float _437 = _436 * 0.05882352963089943f;
  float4 _438 = OCIO_lut1d_0.SampleLevel(BilinearClamp, float2(_435, _437), 0.0f);
  float _440 = (_384.x) * 64.0f;
  float _441 = (_411.x) * 64.0f;
  float _442 = (_438.x) * 64.0f;
  float _443 = floor(_440);
  float _444 = floor(_441);
  float _445 = floor(_442);
  float _446 = _440 - _443;
  float _447 = _441 - _444;
  float _448 = _442 - _445;
  float _449 = _445 + 0.5f;
  float _450 = _444 + 0.5f;
  float _451 = _443 + 0.5f;
  float _452 = _449 * 0.015384615398943424f;
  float _453 = _450 * 0.015384615398943424f;
  float _454 = _451 * 0.015384615398943424f;
  float4 _457 = OCIO_lut3d_1.SampleLevel(TrilinearClamp, float3(_452, _453, _454), 0.0f);
  float _461 = _452 + 0.015384615398943424f;
  float _462 = _453 + 0.015384615398943424f;
  float _463 = _454 + 0.015384615398943424f;
  float4 _464 = OCIO_lut3d_1.SampleLevel(TrilinearClamp, float3(_461, _462, _463), 0.0f);
  bool _468 = !(_446 >= _447);
  if (!_468) {
    bool _470 = !(_447 >= _448);
    if (!_470) {
      float4 _472 = OCIO_lut3d_1.SampleLevel(TrilinearClamp, float3(_452, _453, _463), 0.0f);
      float4 _476 = OCIO_lut3d_1.SampleLevel(TrilinearClamp, float3(_452, _462, _463), 0.0f);
      float _480 = _446 - _447;
      float _481 = _447 - _448;
      float _482 = (_472.x) * _480;
      float _483 = (_472.y) * _480;
      float _484 = (_472.z) * _480;
      float _485 = (_476.x) * _481;
      float _486 = (_476.y) * _481;
      float _487 = (_476.z) * _481;
      float _488 = _485 + _482;
      float _489 = _486 + _483;
      float _490 = _487 + _484;
      _598 = _488;
      _599 = _489;
      _600 = _490;
      _601 = _446;
      _602 = _448;
    } else {
      bool _492 = !(_446 >= _448);
      if (!_492) {
        float4 _494 = OCIO_lut3d_1.SampleLevel(TrilinearClamp, float3(_452, _453, _463), 0.0f);
        float4 _498 = OCIO_lut3d_1.SampleLevel(TrilinearClamp, float3(_461, _453, _463), 0.0f);
        float _502 = _446 - _448;
        float _503 = _448 - _447;
        float _504 = (_494.x) * _502;
        float _505 = (_494.y) * _502;
        float _506 = (_494.z) * _502;
        float _507 = (_498.x) * _503;
        float _508 = (_498.y) * _503;
        float _509 = (_498.z) * _503;
        float _510 = _507 + _504;
        float _511 = _508 + _505;
        float _512 = _509 + _506;
        _598 = _510;
        _599 = _511;
        _600 = _512;
        _601 = _446;
        _602 = _447;
      } else {
        float4 _514 = OCIO_lut3d_1.SampleLevel(TrilinearClamp, float3(_461, _453, _454), 0.0f);
        float4 _518 = OCIO_lut3d_1.SampleLevel(TrilinearClamp, float3(_461, _453, _463), 0.0f);
        float _522 = _448 - _446;
        float _523 = _446 - _447;
        float _524 = (_514.x) * _522;
        float _525 = (_514.y) * _522;
        float _526 = (_514.z) * _522;
        float _527 = (_518.x) * _523;
        float _528 = (_518.y) * _523;
        float _529 = (_518.z) * _523;
        float _530 = _527 + _524;
        float _531 = _528 + _525;
        float _532 = _529 + _526;
        _598 = _530;
        _599 = _531;
        _600 = _532;
        _601 = _448;
        _602 = _447;
      }
    }
  } else {
    bool _534 = !(_447 <= _448);
    if (!_534) {
      float4 _536 = OCIO_lut3d_1.SampleLevel(TrilinearClamp, float3(_461, _453, _454), 0.0f);
      float4 _540 = OCIO_lut3d_1.SampleLevel(TrilinearClamp, float3(_461, _462, _454), 0.0f);
      float _544 = _448 - _447;
      float _545 = _447 - _446;
      float _546 = (_536.x) * _544;
      float _547 = (_536.y) * _544;
      float _548 = (_536.z) * _544;
      float _549 = (_540.x) * _545;
      float _550 = (_540.y) * _545;
      float _551 = (_540.z) * _545;
      float _552 = _549 + _546;
      float _553 = _550 + _547;
      float _554 = _551 + _548;
      _598 = _552;
      _599 = _553;
      _600 = _554;
      _601 = _448;
      _602 = _446;
    } else {
      bool _556 = !(_446 >= _448);
      if (!_556) {
        float4 _558 = OCIO_lut3d_1.SampleLevel(TrilinearClamp, float3(_452, _462, _454), 0.0f);
        float4 _562 = OCIO_lut3d_1.SampleLevel(TrilinearClamp, float3(_452, _462, _463), 0.0f);
        float _566 = _447 - _446;
        float _567 = _446 - _448;
        float _568 = (_558.x) * _566;
        float _569 = (_558.y) * _566;
        float _570 = (_558.z) * _566;
        float _571 = (_562.x) * _567;
        float _572 = (_562.y) * _567;
        float _573 = (_562.z) * _567;
        float _574 = _571 + _568;
        float _575 = _572 + _569;
        float _576 = _573 + _570;
        _598 = _574;
        _599 = _575;
        _600 = _576;
        _601 = _447;
        _602 = _448;
      } else {
        float4 _578 = OCIO_lut3d_1.SampleLevel(TrilinearClamp, float3(_452, _462, _454), 0.0f);
        float4 _582 = OCIO_lut3d_1.SampleLevel(TrilinearClamp, float3(_461, _462, _454), 0.0f);
        float _586 = _447 - _448;
        float _587 = _448 - _446;
        float _588 = (_578.x) * _586;
        float _589 = (_578.y) * _586;
        float _590 = (_578.z) * _586;
        float _591 = (_582.x) * _587;
        float _592 = (_582.y) * _587;
        float _593 = (_582.z) * _587;
        float _594 = _591 + _588;
        float _595 = _592 + _589;
        float _596 = _593 + _590;
        _598 = _594;
        _599 = _595;
        _600 = _596;
        _601 = _447;
        _602 = _446;
      }
    }
  }
  float _603 = 1.0f - _601;
  float _604 = _603 * (_457.x);
  float _605 = _603 * (_457.y);
  float _606 = _603 * (_457.z);
  float _607 = _604 + _598;
  float _608 = _605 + _599;
  float _609 = _606 + _600;
  float _610 = _602 * (_464.x);
  float _611 = _602 * (_464.y);
  float _612 = _602 * (_464.z);
  float _613 = _607 + _610;
  float _614 = _608 + _611;
  float _615 = _609 + _612;
  SV_Target.x = _613;
  SV_Target.y = _614;
  SV_Target.z = _615;
  SV_Target.w = 1.0f;
  return SV_Target;
}
