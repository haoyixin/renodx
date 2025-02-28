Texture2D<float4> OCIO_lut1d_0 : register(t0);

Texture3D<float4> OCIO_lut3d_1 : register(t1);

RWTexture3D<float> OutLUT : register(u0);

cbuffer HDRMapping : register(b0) {
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

SamplerState BilinearClamp : register(s5, space32);

SamplerState TrilinearClamp : register(s9, space32);

[numthreads(8, 8, 8)]
void main(uint3 SV_DispatchThreadID: SV_DispatchThreadID) {
  float _15 = (HDRMapping_000z) * 0.009999999776482582f;
  float _18 = _15 * (HDRMapping_009w);
  float _19 = float((uint)(SV_DispatchThreadID.x));
  float _20 = float((uint)(SV_DispatchThreadID.y));
  float _21 = float((uint)(SV_DispatchThreadID.z));
  float _22 = _19 * 0.01587301678955555f;
  float _23 = _20 * 0.01587301678955555f;
  float _24 = _21 * 0.01587301678955555f;
  bool _25 = !(_22 <= -0.3013699948787689f);
  float _38;
  float _52;
  float _66;
  float _242;
  float _250;
  float _295;
  float _300;
  float _407;
  float _436;
  float _463;
  float _635;
  float _636;
  float _637;
  float _638;
  float _639;
  if (!_25) {
    float _27 = _19 * 0.2780952751636505f;
    float _28 = _27 + -8.720000267028809f;
    float _29 = exp2(_28);
    float _30 = _29 + -3.0517578125e-05f;
    _38 = _30;
  } else {
    bool _32 = (_22 < 1.468000054359436f);
    _38 = 65504.0f;
    if (_32) {
      float _34 = _19 * 0.2780952751636505f;
      float _35 = _34 + -9.720000267028809f;
      float _36 = exp2(_35);
      _38 = _36;
    }
  }
  bool _39 = !(_23 <= -0.3013699948787689f);
  if (!_39) {
    float _41 = _20 * 0.2780952751636505f;
    float _42 = _41 + -8.720000267028809f;
    float _43 = exp2(_42);
    float _44 = _43 + -3.0517578125e-05f;
    _52 = _44;
  } else {
    bool _46 = (_23 < 1.468000054359436f);
    _52 = 65504.0f;
    if (_46) {
      float _48 = _20 * 0.2780952751636505f;
      float _49 = _48 + -9.720000267028809f;
      float _50 = exp2(_49);
      _52 = _50;
    }
  }
  bool _53 = !(_24 <= -0.3013699948787689f);
  if (!_53) {
    float _55 = _21 * 0.2780952751636505f;
    float _56 = _55 + -8.720000267028809f;
    float _57 = exp2(_56);
    float _58 = _57 + -3.0517578125e-05f;
    _66 = _58;
  } else {
    bool _60 = (_24 < 1.468000054359436f);
    _66 = 65504.0f;
    if (_60) {
      float _62 = _21 * 0.2780952751636505f;
      float _63 = _62 + -9.720000267028809f;
      float _64 = exp2(_63);
      _66 = _64;
    }
  }
  float _91 = (OCIOTransformXYZMatrix_000x) * 0.35920000076293945f;
  float _92 = mad(0.6976000070571899f, (OCIOTransformXYZMatrix_001x), _91);
  float _93 = mad(-0.03579999879002571f, (OCIOTransformXYZMatrix_002x), _92);
  float _94 = (OCIOTransformXYZMatrix_000y) * 0.35920000076293945f;
  float _95 = mad(0.6976000070571899f, (OCIOTransformXYZMatrix_001y), _94);
  float _96 = mad(-0.03579999879002571f, (OCIOTransformXYZMatrix_002y), _95);
  float _97 = (OCIOTransformXYZMatrix_000z) * 0.35920000076293945f;
  float _98 = mad(0.6976000070571899f, (OCIOTransformXYZMatrix_001z), _97);
  float _99 = mad(-0.03579999879002571f, (OCIOTransformXYZMatrix_002z), _98);
  float _100 = (OCIOTransformXYZMatrix_000x) * -0.19220000505447388f;
  float _101 = mad(1.1003999710083008f, (OCIOTransformXYZMatrix_001x), _100);
  float _102 = mad(0.0754999965429306f, (OCIOTransformXYZMatrix_002x), _101);
  float _103 = (OCIOTransformXYZMatrix_000y) * -0.19220000505447388f;
  float _104 = mad(1.1003999710083008f, (OCIOTransformXYZMatrix_001y), _103);
  float _105 = mad(0.0754999965429306f, (OCIOTransformXYZMatrix_002y), _104);
  float _106 = (OCIOTransformXYZMatrix_000z) * -0.19220000505447388f;
  float _107 = mad(1.1003999710083008f, (OCIOTransformXYZMatrix_001z), _106);
  float _108 = mad(0.0754999965429306f, (OCIOTransformXYZMatrix_002z), _107);
  float _109 = (OCIOTransformXYZMatrix_000x) * 0.007000000216066837f;
  float _110 = mad(0.07490000128746033f, (OCIOTransformXYZMatrix_001x), _109);
  float _111 = mad(0.8434000015258789f, (OCIOTransformXYZMatrix_002x), _110);
  float _112 = (OCIOTransformXYZMatrix_000y) * 0.007000000216066837f;
  float _113 = mad(0.07490000128746033f, (OCIOTransformXYZMatrix_001y), _112);
  float _114 = mad(0.8434000015258789f, (OCIOTransformXYZMatrix_002y), _113);
  float _115 = (OCIOTransformXYZMatrix_000z) * 0.007000000216066837f;
  float _116 = mad(0.07490000128746033f, (OCIOTransformXYZMatrix_001z), _115);
  float _117 = mad(0.8434000015258789f, (OCIOTransformXYZMatrix_002z), _116);
  float _118 = _93 * 4096.0f;
  float _119 = _96 * 4096.0f;
  float _120 = _99 * 4096.0f;
  float _121 = round(_118);
  float _122 = round(_119);
  float _123 = round(_120);
  float _124 = _122 * 0.000244140625f;
  float _125 = _123 * 0.000244140625f;
  float _126 = _102 * 4096.0f;
  float _127 = _105 * 4096.0f;
  float _128 = _108 * 4096.0f;
  float _129 = round(_126);
  float _130 = round(_127);
  float _131 = round(_128);
  float _132 = _130 * 0.000244140625f;
  float _133 = _131 * 0.000244140625f;
  float _134 = _111 * 4096.0f;
  float _135 = _114 * 4096.0f;
  float _136 = _117 * 4096.0f;
  float _137 = round(_134);
  float _138 = round(_135);
  float _139 = round(_136);
  float _140 = _138 * 0.000244140625f;
  float _141 = _139 * 0.000244140625f;
  float _142 = _38 * 0.000244140625f;
  float _143 = _142 * _121;
  float _144 = mad(_124, _52, _143);
  float _145 = mad(_125, _66, _144);
  float _146 = _142 * _129;
  float _147 = mad(_132, _52, _146);
  float _148 = mad(_133, _66, _147);
  float _149 = _142 * _137;
  float _150 = mad(_140, _52, _149);
  float _151 = mad(_141, _66, _150);
  float _152 = _145 * 0.009999999776482582f;
  float _153 = log2(_152);
  float _154 = _153 * 0.1593017578125f;
  float _155 = exp2(_154);
  float _156 = _155 * 18.8515625f;
  float _157 = _156 + 0.8359375f;
  float _158 = _155 * 18.6875f;
  float _159 = _158 + 1.0f;
  float _160 = _157 / _159;
  float _161 = log2(_160);
  float _162 = _161 * 78.84375f;
  float _163 = exp2(_162);
  float _164 = saturate(_163);
  float _165 = _148 * 0.009999999776482582f;
  float _166 = log2(_165);
  float _167 = _166 * 0.1593017578125f;
  float _168 = exp2(_167);
  float _169 = _168 * 18.8515625f;
  float _170 = _169 + 0.8359375f;
  float _171 = _168 * 18.6875f;
  float _172 = _171 + 1.0f;
  float _173 = _170 / _172;
  float _174 = log2(_173);
  float _175 = _174 * 78.84375f;
  float _176 = exp2(_175);
  float _177 = saturate(_176);
  float _178 = _151 * 0.009999999776482582f;
  float _179 = log2(_178);
  float _180 = _179 * 0.1593017578125f;
  float _181 = exp2(_180);
  float _182 = _181 * 18.8515625f;
  float _183 = _182 + 0.8359375f;
  float _184 = _181 * 18.6875f;
  float _185 = _184 + 1.0f;
  float _186 = _183 / _185;
  float _187 = log2(_186);
  float _188 = _187 * 78.84375f;
  float _189 = exp2(_188);
  float _190 = saturate(_189);
  float _191 = _177 + _164;
  float _192 = _191 * 0.5f;
  float _193 = dot(float3(_164, _177, _190), float3(6610.0f, -13613.0f, 7003.0f));
  float _194 = _193 * 0.000244140625f;
  float _195 = dot(float3(_164, _177, _190), float3(17933.0f, -17390.0f, -543.0f));
  float _196 = _195 * 0.000244140625f;
  float _198 = (HDRMapping_009x) * 0.009999999776482582f;
  float _200 = (HDRMapping_009z) * 0.009999999776482582f;
  float _202 = saturate(_192);
  float _203 = log2(_202);
  float _204 = _203 * 0.012683313339948654f;
  float _205 = exp2(_204);
  float _206 = _205 + -0.8359375f;
  float _207 = max(0.0f, _206);
  float _208 = _205 * 18.6875f;
  float _209 = 18.8515625f - _208;
  float _210 = _207 / _209;
  float _211 = log2(_210);
  float _212 = _211 * 6.277394771575928f;
  float _213 = exp2(_212);
  float _214 = _213 * 100.0f;
  bool _215 = (_198 == 0.0f);
  _250 = _214;
  if (!_215) {
    float _217 = max(_200, 0.0f);
    float _218 = _198 - _217;
    float _219 = _214 - _217;
    float _220 = _219 / _218;
    float _221 = saturate(_220);
    float _222 = _221 * 2.0f;
    float _223 = 3.0f - _222;
    float _224 = _221 * _221;
    float _225 = _224 * _223;
    float _226 = 1.0f - _225;
    bool _227 = !(_214 <= _200);
    _242 = 0.0f;
    do {
      if (_227) {
        bool _229 = !(_200 >= 0.0f);
        if (!_229) {
          float _231 = _200 + -1.0f;
          float _232 = -1.0f / _231;
          float _233 = 1.0f - _232;
          float _234 = _232 * _214;
          float _235 = _233 + _234;
          _242 = _235;
        } else {
          float _237 = -1.0f - _200;
          float _238 = -0.0f - _200;
          float _239 = _214 * _237;
          float _240 = _238 - _239;
          _242 = _240;
        }
      }
      float _243 = log2(_242);
      float _244 = _243 * (HDRMapping_009y);
      float _245 = exp2(_244);
      float _246 = _245 - _214;
      float _247 = _246 * _226;
      float _248 = _247 + _214;
      _250 = _248;
    } while (false);
  }
  bool _251 = (_18 == _15);
  bool _252 = (_250 > _15);
  bool _253 = _251 && _252;
  _300 = _15;
  if (!_253) {
    float _257 = 1.0f - (HDRMapping_009w);
    float _258 = _257 * _15;
    float _259 = _15 - _258;
    float _260 = exp2((HDRMapping_010x));
    float _261 = 1.0f / _260;
    float _262 = _261 * _250;
    float _263 = _259 / _260;
    float _264 = _15 - _263;
    float _265 = _262 - _15;
    bool _266 = (_265 < -0.0f);
    _295 = -0.0f;
    do {
      if (_266) {
        float _270 = (HDRMapping_014x) + -0.5f;
        float _271 = min((HDRMapping_010x), 1.0f);
        float _272 = _270 * _271;
        float _273 = _272 + 0.5f;
        float _274 = _273 * 2.0f;
        bool _275 = (_263 == 0.0f);
        float _276 = _259 / _263;
        float _277 = (_275 ? 1.0f : _276);
        float _278 = _274 * _277;
        float _279 = -0.0f - _265;
        float _280 = _278 * _264;
        float _281 = _280 / _258;
        float _282 = log2(_258);
        float _283 = log2(_264);
        float _284 = _281 * -0.6931471824645996f;
        float _285 = _284 * _283;
        float _286 = log2(_279);
        float _287 = _286 * _281;
        float _288 = _287 + _282;
        float _289 = _288 * 0.6931471824645996f;
        float _290 = _289 + _285;
        float _291 = _290 * 1.4426950216293335f;
        float _292 = exp2(_291);
        float _293 = -0.0f - _292;
        _295 = _293;
      }
      float _296 = _295 + _15;
      bool _297 = (_250 <= _18);
      float _298 = (_297 ? _250 : _296);
      _300 = _298;
    } while (false);
  }
  float _301 = _300 * 0.009999999776482582f;
  float _302 = log2(_301);
  float _303 = _302 * 0.1593017578125f;
  float _304 = exp2(_303);
  float _305 = _304 * 18.8515625f;
  float _306 = _305 + 0.8359375f;
  float _307 = _304 * 18.6875f;
  float _308 = _307 + 1.0f;
  float _309 = _306 / _308;
  float _310 = log2(_309);
  float _311 = _310 * 78.84375f;
  float _312 = exp2(_311);
  float _313 = saturate(_312);
  float _316 = _194 * (HDRMapping_010z);
  float _317 = _196 * (HDRMapping_010z);
  float _318 = _313 / _192;
  float _319 = _192 / _313;
  float _320 = min(_319, _318);
  float _321 = _316 * _320;
  float _322 = _317 * _320;
  float _323 = mad(0.008999999612569809f, _321, _313);
  float _324 = mad(0.11100000143051147f, _322, _323);
  float _325 = mad(-0.008999999612569809f, _321, _313);
  float _326 = mad(-0.11100000143051147f, _322, _325);
  float _327 = mad(0.5600000023841858f, _321, _313);
  float _328 = mad(-0.32100000977516174f, _322, _327);
  float _329 = saturate(_324);
  float _330 = log2(_329);
  float _331 = _330 * 0.012683313339948654f;
  float _332 = exp2(_331);
  float _333 = _332 + -0.8359375f;
  float _334 = max(0.0f, _333);
  float _335 = _332 * 18.6875f;
  float _336 = 18.8515625f - _335;
  float _337 = _334 / _336;
  float _338 = log2(_337);
  float _339 = _338 * 6.277394771575928f;
  float _340 = exp2(_339);
  float _341 = saturate(_326);
  float _342 = log2(_341);
  float _343 = _342 * 0.012683313339948654f;
  float _344 = exp2(_343);
  float _345 = _344 + -0.8359375f;
  float _346 = max(0.0f, _345);
  float _347 = _344 * 18.6875f;
  float _348 = 18.8515625f - _347;
  float _349 = _346 / _348;
  float _350 = log2(_349);
  float _351 = _350 * 6.277394771575928f;
  float _352 = exp2(_351);
  float _353 = _352 * 100.0f;
  float _354 = saturate(_328);
  float _355 = log2(_354);
  float _356 = _355 * 0.012683313339948654f;
  float _357 = exp2(_356);
  float _358 = _357 + -0.8359375f;
  float _359 = max(0.0f, _358);
  float _360 = _357 * 18.6875f;
  float _361 = 18.8515625f - _360;
  float _362 = _359 / _361;
  float _363 = log2(_362);
  float _364 = _363 * 6.277394771575928f;
  float _365 = exp2(_364);
  float _366 = _365 * 100.0f;
  float _367 = _340 * 207.10000610351562f;
  float _368 = mad(-1.3270000219345093f, _353, _367);
  float _369 = mad(0.2070000022649765f, _366, _368);
  float _370 = _340 * 36.5f;
  float _371 = mad(0.6809999942779541f, _353, _370);
  float _372 = mad(-0.04500000178813934f, _366, _371);
  float _373 = _340 * -4.900000095367432f;
  float _374 = mad(-0.05000000074505806f, _353, _373);
  float _375 = mad(1.187999963760376f, _366, _374);
  float _376 = _369 * (OCIOTransformXYZMatrix_004x);
  float _377 = mad((OCIOTransformXYZMatrix_004y), _372, _376);
  float _378 = mad((OCIOTransformXYZMatrix_004z), _375, _377);
  float _379 = _369 * (OCIOTransformXYZMatrix_005x);
  float _380 = mad((OCIOTransformXYZMatrix_005y), _372, _379);
  float _381 = mad((OCIOTransformXYZMatrix_005z), _375, _380);
  float _382 = _369 * (OCIOTransformXYZMatrix_006x);
  float _383 = mad((OCIOTransformXYZMatrix_006y), _372, _382);
  float _384 = mad((OCIOTransformXYZMatrix_006z), _375, _383);
  float _385 = _378 * 0.6954519748687744f;
  float _386 = mad(_381, 0.1406790018081665f, _385);
  float _387 = mad(_384, 0.1638689935207367f, _386);
  float _388 = _378 * 0.04479460045695305f;
  float _389 = mad(_381, 0.8596709966659546f, _388);
  float _390 = mad(_384, 0.0955343022942543f, _389);
  float _391 = _378 * -0.00552588002756238f;
  float _392 = mad(_381, 0.004025210160762072f, _391);
  float _393 = mad(_384, 1.0015000104904175f, _392);
  float _394 = abs(_387);
  bool _395 = (_394 > 6.103515625e-05f);
  if (_395) {
    float _397 = min(_394, 65504.0f);
    float _398 = log2(_397);
    float _399 = floor(_398);
    float _400 = exp2(_399);
    float _401 = _397 - _400;
    float _402 = _401 / _400;
    float _403 = dot(float3(_399, _402, 15.0f), float3(1024.0f, 1024.0f, 1024.0f));
    _407 = _403;
  } else {
    float _405 = _394 * 16777216.0f;
    _407 = _405;
  }
  bool _408 = (_387 > 0.0f);
  float _409 = (_408 ? 0.0f : 32768.0f);
  float _410 = _407 + _409;
  float _411 = _410 * 0.00024420025874860585f;
  float _412 = floor(_411);
  float _413 = _412 * 4095.0f;
  float _414 = _410 + 0.5f;
  float _415 = _414 - _413;
  float _416 = _415 * 0.000244140625f;
  float _417 = _412 + 0.5f;
  float _418 = _417 * 0.05882352963089943f;
  float4 _421 = OCIO_lut1d_0.SampleLevel(BilinearClamp, float2(_416, _418), 0.0f);
  float _423 = abs(_390);
  bool _424 = (_423 > 6.103515625e-05f);
  if (_424) {
    float _426 = min(_423, 65504.0f);
    float _427 = log2(_426);
    float _428 = floor(_427);
    float _429 = exp2(_428);
    float _430 = _426 - _429;
    float _431 = _430 / _429;
    float _432 = dot(float3(_428, _431, 15.0f), float3(1024.0f, 1024.0f, 1024.0f));
    _436 = _432;
  } else {
    float _434 = _423 * 16777216.0f;
    _436 = _434;
  }
  bool _437 = (_390 > 0.0f);
  float _438 = (_437 ? 0.0f : 32768.0f);
  float _439 = _436 + _438;
  float _440 = _439 * 0.00024420025874860585f;
  float _441 = floor(_440);
  float _442 = _441 * 4095.0f;
  float _443 = _439 + 0.5f;
  float _444 = _443 - _442;
  float _445 = _444 * 0.000244140625f;
  float _446 = _441 + 0.5f;
  float _447 = _446 * 0.05882352963089943f;
  float4 _448 = OCIO_lut1d_0.SampleLevel(BilinearClamp, float2(_445, _447), 0.0f);
  float _450 = abs(_393);
  bool _451 = (_450 > 6.103515625e-05f);
  if (_451) {
    float _453 = min(_450, 65504.0f);
    float _454 = log2(_453);
    float _455 = floor(_454);
    float _456 = exp2(_455);
    float _457 = _453 - _456;
    float _458 = _457 / _456;
    float _459 = dot(float3(_455, _458, 15.0f), float3(1024.0f, 1024.0f, 1024.0f));
    _463 = _459;
  } else {
    float _461 = _450 * 16777216.0f;
    _463 = _461;
  }
  bool _464 = (_393 > 0.0f);
  float _465 = (_464 ? 0.0f : 32768.0f);
  float _466 = _463 + _465;
  float _467 = _466 * 0.00024420025874860585f;
  float _468 = floor(_467);
  float _469 = _468 * 4095.0f;
  float _470 = _466 + 0.5f;
  float _471 = _470 - _469;
  float _472 = _471 * 0.000244140625f;
  float _473 = _468 + 0.5f;
  float _474 = _473 * 0.05882352963089943f;
  float4 _475 = OCIO_lut1d_0.SampleLevel(BilinearClamp, float2(_472, _474), 0.0f);
  float _477 = (_421.x) * 64.0f;
  float _478 = (_448.x) * 64.0f;
  float _479 = (_475.x) * 64.0f;
  float _480 = floor(_477);
  float _481 = floor(_478);
  float _482 = floor(_479);
  float _483 = _477 - _480;
  float _484 = _478 - _481;
  float _485 = _479 - _482;
  float _486 = _482 + 0.5f;
  float _487 = _481 + 0.5f;
  float _488 = _480 + 0.5f;
  float _489 = _486 * 0.015384615398943424f;
  float _490 = _487 * 0.015384615398943424f;
  float _491 = _488 * 0.015384615398943424f;
  float4 _494 = OCIO_lut3d_1.SampleLevel(TrilinearClamp, float3(_489, _490, _491), 0.0f);
  float _498 = _489 + 0.015384615398943424f;
  float _499 = _490 + 0.015384615398943424f;
  float _500 = _491 + 0.015384615398943424f;
  float4 _501 = OCIO_lut3d_1.SampleLevel(TrilinearClamp, float3(_498, _499, _500), 0.0f);
  bool _505 = !(_483 >= _484);
  if (!_505) {
    bool _507 = !(_484 >= _485);
    if (!_507) {
      float4 _509 = OCIO_lut3d_1.SampleLevel(TrilinearClamp, float3(_489, _490, _500), 0.0f);
      float4 _513 = OCIO_lut3d_1.SampleLevel(TrilinearClamp, float3(_489, _499, _500), 0.0f);
      float _517 = _483 - _484;
      float _518 = _484 - _485;
      float _519 = (_509.x) * _517;
      float _520 = (_509.y) * _517;
      float _521 = (_509.z) * _517;
      float _522 = (_513.x) * _518;
      float _523 = (_513.y) * _518;
      float _524 = (_513.z) * _518;
      float _525 = _522 + _519;
      float _526 = _523 + _520;
      float _527 = _524 + _521;
      _635 = _525;
      _636 = _526;
      _637 = _527;
      _638 = _483;
      _639 = _485;
    } else {
      bool _529 = !(_483 >= _485);
      if (!_529) {
        float4 _531 = OCIO_lut3d_1.SampleLevel(TrilinearClamp, float3(_489, _490, _500), 0.0f);
        float4 _535 = OCIO_lut3d_1.SampleLevel(TrilinearClamp, float3(_498, _490, _500), 0.0f);
        float _539 = _483 - _485;
        float _540 = _485 - _484;
        float _541 = (_531.x) * _539;
        float _542 = (_531.y) * _539;
        float _543 = (_531.z) * _539;
        float _544 = (_535.x) * _540;
        float _545 = (_535.y) * _540;
        float _546 = (_535.z) * _540;
        float _547 = _544 + _541;
        float _548 = _545 + _542;
        float _549 = _546 + _543;
        _635 = _547;
        _636 = _548;
        _637 = _549;
        _638 = _483;
        _639 = _484;
      } else {
        float4 _551 = OCIO_lut3d_1.SampleLevel(TrilinearClamp, float3(_498, _490, _491), 0.0f);
        float4 _555 = OCIO_lut3d_1.SampleLevel(TrilinearClamp, float3(_498, _490, _500), 0.0f);
        float _559 = _485 - _483;
        float _560 = _483 - _484;
        float _561 = (_551.x) * _559;
        float _562 = (_551.y) * _559;
        float _563 = (_551.z) * _559;
        float _564 = (_555.x) * _560;
        float _565 = (_555.y) * _560;
        float _566 = (_555.z) * _560;
        float _567 = _564 + _561;
        float _568 = _565 + _562;
        float _569 = _566 + _563;
        _635 = _567;
        _636 = _568;
        _637 = _569;
        _638 = _485;
        _639 = _484;
      }
    }
  } else {
    bool _571 = !(_484 <= _485);
    if (!_571) {
      float4 _573 = OCIO_lut3d_1.SampleLevel(TrilinearClamp, float3(_498, _490, _491), 0.0f);
      float4 _577 = OCIO_lut3d_1.SampleLevel(TrilinearClamp, float3(_498, _499, _491), 0.0f);
      float _581 = _485 - _484;
      float _582 = _484 - _483;
      float _583 = (_573.x) * _581;
      float _584 = (_573.y) * _581;
      float _585 = (_573.z) * _581;
      float _586 = (_577.x) * _582;
      float _587 = (_577.y) * _582;
      float _588 = (_577.z) * _582;
      float _589 = _586 + _583;
      float _590 = _587 + _584;
      float _591 = _588 + _585;
      _635 = _589;
      _636 = _590;
      _637 = _591;
      _638 = _485;
      _639 = _483;
    } else {
      bool _593 = !(_483 >= _485);
      if (!_593) {
        float4 _595 = OCIO_lut3d_1.SampleLevel(TrilinearClamp, float3(_489, _499, _491), 0.0f);
        float4 _599 = OCIO_lut3d_1.SampleLevel(TrilinearClamp, float3(_489, _499, _500), 0.0f);
        float _603 = _484 - _483;
        float _604 = _483 - _485;
        float _605 = (_595.x) * _603;
        float _606 = (_595.y) * _603;
        float _607 = (_595.z) * _603;
        float _608 = (_599.x) * _604;
        float _609 = (_599.y) * _604;
        float _610 = (_599.z) * _604;
        float _611 = _608 + _605;
        float _612 = _609 + _606;
        float _613 = _610 + _607;
        _635 = _611;
        _636 = _612;
        _637 = _613;
        _638 = _484;
        _639 = _485;
      } else {
        float4 _615 = OCIO_lut3d_1.SampleLevel(TrilinearClamp, float3(_489, _499, _491), 0.0f);
        float4 _619 = OCIO_lut3d_1.SampleLevel(TrilinearClamp, float3(_498, _499, _491), 0.0f);
        float _623 = _484 - _485;
        float _624 = _485 - _483;
        float _625 = (_615.x) * _623;
        float _626 = (_615.y) * _623;
        float _627 = (_615.z) * _623;
        float _628 = (_619.x) * _624;
        float _629 = (_619.y) * _624;
        float _630 = (_619.z) * _624;
        float _631 = _628 + _625;
        float _632 = _629 + _626;
        float _633 = _630 + _627;
        _635 = _631;
        _636 = _632;
        _637 = _633;
        _638 = _484;
        _639 = _483;
      }
    }
  }
  float _640 = 1.0f - _638;
  float _641 = _640 * (_494.x);
  float _642 = _640 * (_494.y);
  float _643 = _640 * (_494.z);
  float _644 = _641 + _635;
  float _645 = _642 + _636;
  float _646 = _643 + _637;
  float _647 = _639 * (_501.x);
  float _648 = _639 * (_501.y);
  float _649 = _639 * (_501.z);
  float _650 = _644 + _647;
  float _651 = _645 + _648;
  float _652 = _646 + _649;
  OutLUT[int3(((uint)(SV_DispatchThreadID.x)), ((uint)(SV_DispatchThreadID.y)), ((uint)(SV_DispatchThreadID.z)))] = float4(_650, _651, _652, 1.0f);
}
