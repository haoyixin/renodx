#include "../../common.hlsli"
struct SExposureData {
  float SExposureData_000;
  float SExposureData_004;
  float SExposureData_008;
  float SExposureData_012;
  float SExposureData_016;
  float SExposureData_020;
};

StructuredBuffer<SExposureData> t0 : register(t0);

Texture2D<float4> t1 : register(t1);

Texture2D<float> t2 : register(t2);

Texture2D<float4> t3 : register(t3);

Texture2D<float4> t4 : register(t4);

Texture2D<float4> t5 : register(t5);

Texture3D<float4> t6 : register(t6);

Texture2D<float4> t7 : register(t7);

Texture3D<float2> t8 : register(t8);

Texture2D<float4> t9 : register(t9);

cbuffer cb0 : register(b0) {
  float cb0_028x : packoffset(c028.x);
  float cb0_028z : packoffset(c028.z);
};

cbuffer cb1 : register(b1) {
  float cb1_018y : packoffset(c018.y);
  float cb1_018z : packoffset(c018.z);
  uint cb1_018w : packoffset(c018.w);
};

cbuffer cb2 : register(b2) {
  float cb2_000x : packoffset(c000.x);
  float cb2_000y : packoffset(c000.y);
  float cb2_000z : packoffset(c000.z);
  float cb2_001x : packoffset(c001.x);
  float cb2_001y : packoffset(c001.y);
  float cb2_001z : packoffset(c001.z);
  float cb2_002x : packoffset(c002.x);
  float cb2_002y : packoffset(c002.y);
  float cb2_002z : packoffset(c002.z);
  float cb2_002w : packoffset(c002.w);
  float cb2_009x : packoffset(c009.x);
  float cb2_009y : packoffset(c009.y);
  float cb2_009z : packoffset(c009.z);
  float cb2_010x : packoffset(c010.x);
  float cb2_010y : packoffset(c010.y);
  float cb2_010z : packoffset(c010.z);
  float cb2_011x : packoffset(c011.x);
  float cb2_011y : packoffset(c011.y);
  float cb2_011z : packoffset(c011.z);
  float cb2_011w : packoffset(c011.w);
  float cb2_012x : packoffset(c012.x);
  float cb2_012y : packoffset(c012.y);
  float cb2_012z : packoffset(c012.z);
  float cb2_012w : packoffset(c012.w);
  float cb2_013x : packoffset(c013.x);
  float cb2_013y : packoffset(c013.y);
  float cb2_013z : packoffset(c013.z);
  float cb2_013w : packoffset(c013.w);
  float cb2_014x : packoffset(c014.x);
  float cb2_015x : packoffset(c015.x);
  float cb2_015y : packoffset(c015.y);
  float cb2_015z : packoffset(c015.z);
  float cb2_015w : packoffset(c015.w);
  float cb2_016x : packoffset(c016.x);
  float cb2_016y : packoffset(c016.y);
  float cb2_016z : packoffset(c016.z);
  float cb2_016w : packoffset(c016.w);
  float cb2_017x : packoffset(c017.x);
  float cb2_017y : packoffset(c017.y);
  float cb2_017z : packoffset(c017.z);
  float cb2_017w : packoffset(c017.w);
  float cb2_018x : packoffset(c018.x);
  float cb2_018y : packoffset(c018.y);
  uint cb2_019x : packoffset(c019.x);
  uint cb2_019y : packoffset(c019.y);
  uint cb2_019z : packoffset(c019.z);
  uint cb2_019w : packoffset(c019.w);
  float cb2_020x : packoffset(c020.x);
  float cb2_020y : packoffset(c020.y);
  float cb2_020z : packoffset(c020.z);
  float cb2_020w : packoffset(c020.w);
  float cb2_021x : packoffset(c021.x);
  float cb2_021y : packoffset(c021.y);
  float cb2_021z : packoffset(c021.z);
  float cb2_021w : packoffset(c021.w);
  float cb2_022x : packoffset(c022.x);
  float cb2_023x : packoffset(c023.x);
  float cb2_023y : packoffset(c023.y);
  float cb2_023z : packoffset(c023.z);
  float cb2_023w : packoffset(c023.w);
  float cb2_024x : packoffset(c024.x);
  float cb2_024y : packoffset(c024.y);
  float cb2_024z : packoffset(c024.z);
  float cb2_024w : packoffset(c024.w);
  float cb2_025x : packoffset(c025.x);
  float cb2_025y : packoffset(c025.y);
  float cb2_025z : packoffset(c025.z);
  float cb2_025w : packoffset(c025.w);
  float cb2_026x : packoffset(c026.x);
  float cb2_026z : packoffset(c026.z);
  float cb2_026w : packoffset(c026.w);
  float cb2_027x : packoffset(c027.x);
  float cb2_027y : packoffset(c027.y);
  float cb2_027z : packoffset(c027.z);
  float cb2_027w : packoffset(c027.w);
  uint cb2_069y : packoffset(c069.y);
};

SamplerState s0_space2 : register(s0, space2);

SamplerState s2_space2 : register(s2, space2);

SamplerState s4_space2 : register(s4, space2);

struct OutputSignature {
  float4 SV_Target : SV_Target;
  float4 SV_Target_1 : SV_Target1;
};

OutputSignature main(
  linear float2 TEXCOORD0_centroid : TEXCOORD0_centroid,
  noperspective float4 SV_Position : SV_Position,
  nointerpolation uint SV_IsFrontFace : SV_IsFrontFace
) {
  float4 SV_Target;
  float4 SV_Target_1;
  float _24 = t2.SampleLevel(s4_space2, float2(TEXCOORD0_centroid.x, TEXCOORD0_centroid.y), 0.0f);
  float _29 = cb2_015x * TEXCOORD0_centroid.x;
  float _30 = cb2_015y * TEXCOORD0_centroid.y;
  float _33 = _29 + cb2_015z;
  float _34 = _30 + cb2_015w;
  float4 _35 = t7.SampleLevel(s0_space2, float2(_33, _34), 0.0f);
  float _39 = saturate(_35.x);
  float _40 = saturate(_35.z);
  float _43 = cb2_026x * _40;
  float _44 = _39 * 6.283199787139893f;
  float _45 = cos(_44);
  float _46 = sin(_44);
  float _47 = _43 * _45;
  float _48 = _46 * _43;
  float _49 = 1.0f - _35.y;
  float _50 = saturate(_49);
  float _51 = _47 * _50;
  float _52 = _48 * _50;
  float _53 = _51 + TEXCOORD0_centroid.x;
  float _54 = _52 + TEXCOORD0_centroid.y;
  float4 _55 = t1.SampleLevel(s4_space2, float2(_53, _54), 0.0f);
  float _59 = max(_55.x, 0.0f);
  float _60 = max(_55.y, 0.0f);
  float _61 = max(_55.z, 0.0f);
  float _62 = min(_59, 65000.0f);
  float _63 = min(_60, 65000.0f);
  float _64 = min(_61, 65000.0f);
  float4 _65 = t4.SampleLevel(s2_space2, float2(_53, _54), 0.0f);
  float _70 = max(_65.x, 0.0f);
  float _71 = max(_65.y, 0.0f);
  float _72 = max(_65.z, 0.0f);
  float _73 = max(_65.w, 0.0f);
  float _74 = min(_70, 5000.0f);
  float _75 = min(_71, 5000.0f);
  float _76 = min(_72, 5000.0f);
  float _77 = min(_73, 5000.0f);
  float _80 = _24.x * cb0_028z;
  float _81 = _80 + cb0_028x;
  float _82 = cb2_027w / _81;
  float _83 = 1.0f - _82;
  float _84 = abs(_83);
  float _86 = cb2_027y * _84;
  float _88 = _86 - cb2_027z;
  float _89 = saturate(_88);
  float _90 = max(_89, _77);
  float _91 = saturate(_90);
  float _95 = cb2_013x * _53;
  float _96 = cb2_013y * _54;
  float _99 = _95 + cb2_013z;
  float _100 = _96 + cb2_013w;
  float _103 = dot(float2(_99, _100), float2(_99, _100));
  float _104 = abs(_103);
  float _105 = log2(_104);
  float _106 = _105 * cb2_014x;
  float _107 = exp2(_106);
  float _108 = saturate(_107);
  float _112 = cb2_011x * _53;
  float _113 = cb2_011y * _54;
  float _116 = _112 + cb2_011z;
  float _117 = _113 + cb2_011w;
  float _118 = _116 * _108;
  float _119 = _117 * _108;
  float _120 = _118 + _53;
  float _121 = _119 + _54;
  float _125 = cb2_012x * _53;
  float _126 = cb2_012y * _54;
  float _129 = _125 + cb2_012z;
  float _130 = _126 + cb2_012w;
  float _131 = _129 * _108;
  float _132 = _130 * _108;
  float _133 = _131 + _53;
  float _134 = _132 + _54;
  float4 _135 = t1.SampleLevel(s2_space2, float2(_120, _121), 0.0f);
  float _139 = max(_135.x, 0.0f);
  float _140 = max(_135.y, 0.0f);
  float _141 = max(_135.z, 0.0f);
  float _142 = min(_139, 65000.0f);
  float _143 = min(_140, 65000.0f);
  float _144 = min(_141, 65000.0f);
  float4 _145 = t1.SampleLevel(s2_space2, float2(_133, _134), 0.0f);
  float _149 = max(_145.x, 0.0f);
  float _150 = max(_145.y, 0.0f);
  float _151 = max(_145.z, 0.0f);
  float _152 = min(_149, 65000.0f);
  float _153 = min(_150, 65000.0f);
  float _154 = min(_151, 65000.0f);
  float4 _155 = t4.SampleLevel(s2_space2, float2(_120, _121), 0.0f);
  float _159 = max(_155.x, 0.0f);
  float _160 = max(_155.y, 0.0f);
  float _161 = max(_155.z, 0.0f);
  float _162 = min(_159, 5000.0f);
  float _163 = min(_160, 5000.0f);
  float _164 = min(_161, 5000.0f);
  float4 _165 = t4.SampleLevel(s2_space2, float2(_133, _134), 0.0f);
  float _169 = max(_165.x, 0.0f);
  float _170 = max(_165.y, 0.0f);
  float _171 = max(_165.z, 0.0f);
  float _172 = min(_169, 5000.0f);
  float _173 = min(_170, 5000.0f);
  float _174 = min(_171, 5000.0f);
  float _179 = 1.0f - cb2_009x;
  float _180 = 1.0f - cb2_009y;
  float _181 = 1.0f - cb2_009z;
  float _186 = _179 - cb2_010x;
  float _187 = _180 - cb2_010y;
  float _188 = _181 - cb2_010z;
  float _189 = saturate(_186);
  float _190 = saturate(_187);
  float _191 = saturate(_188);
  float _192 = _189 * _62;
  float _193 = _190 * _63;
  float _194 = _191 * _64;
  float _195 = cb2_009x * _142;
  float _196 = cb2_009y * _143;
  float _197 = cb2_009z * _144;
  float _198 = _195 + _192;
  float _199 = _196 + _193;
  float _200 = _197 + _194;
  float _201 = cb2_010x * _152;
  float _202 = cb2_010y * _153;
  float _203 = cb2_010z * _154;
  float _204 = _198 + _201;
  float _205 = _199 + _202;
  float _206 = _200 + _203;
  float _207 = _189 * _74;
  float _208 = _190 * _75;
  float _209 = _191 * _76;
  float _210 = cb2_009x * _162;
  float _211 = cb2_009y * _163;
  float _212 = cb2_009z * _164;
  float _213 = cb2_010x * _172;
  float _214 = cb2_010y * _173;
  float _215 = cb2_010z * _174;
  float4 _216 = t5.SampleLevel(s2_space2, float2(TEXCOORD0_centroid.x, TEXCOORD0_centroid.y), 0.0f);
  float _220 = _207 - _204;
  float _221 = _220 + _210;
  float _222 = _221 + _213;
  float _223 = _208 - _205;
  float _224 = _223 + _211;
  float _225 = _224 + _214;
  float _226 = _209 - _206;
  float _227 = _226 + _212;
  float _228 = _227 + _215;
  float _229 = _222 * _91;
  float _230 = _225 * _91;
  float _231 = _228 * _91;
  float _232 = _229 + _204;
  float _233 = _230 + _205;
  float _234 = _231 + _206;
  float _235 = dot(float3(_232, _233, _234), float3(0.2125999927520752f, 0.7152000069618225f, 0.0722000002861023f));
  float _239 = t0[0].SExposureData_020;
  float _241 = t0[0].SExposureData_004;
  float _243 = cb2_018x * 0.5f;
  float _244 = _243 * cb2_018y;
  float _245 = _241.x - _244;
  float _246 = cb2_018y * cb2_018x;
  float _247 = 1.0f / _246;
  float _248 = _245 * _247;
  float _249 = _235 / _239.x;
  float _250 = _249 * 5464.01611328125f;
  float _251 = _250 + 9.99999993922529e-09f;
  float _252 = log2(_251);
  float _253 = _252 - _245;
  float _254 = _253 * _247;
  float _255 = saturate(_254);
  float2 _256 = t8.SampleLevel(s2_space2, float3(TEXCOORD0_centroid.x, TEXCOORD0_centroid.y, _255), 0.0f);
  float _259 = max(_256.y, 1.0000000116860974e-07f);
  float _260 = _256.x / _259;
  float _261 = _260 + _248;
  float _262 = _261 / _247;
  float _263 = _262 - _241.x;
  float _264 = -0.0f - _263;
  float _266 = _264 - cb2_027x;
  float _267 = max(0.0f, _266);
  float _269 = cb2_026z * _267;
  float _270 = _263 - cb2_027x;
  float _271 = max(0.0f, _270);
  float _273 = cb2_026w * _271;
  bool _274 = (_263 < 0.0f);
  float _275 = select(_274, _269, _273);
  float _276 = exp2(_275);
  float _277 = _276 * _232;
  float _278 = _276 * _233;
  float _279 = _276 * _234;
  float _284 = cb2_024y * _216.x;
  float _285 = cb2_024z * _216.y;
  float _286 = cb2_024w * _216.z;
  float _287 = _284 + _277;
  float _288 = _285 + _278;
  float _289 = _286 + _279;
  float _294 = _287 * cb2_025x;
  float _295 = _288 * cb2_025y;
  float _296 = _289 * cb2_025z;
  float _297 = dot(float3(_294, _295, _296), float3(0.2125999927520752f, 0.7152000069618225f, 0.0722000002861023f));
  float _298 = t0[0].SExposureData_012;
  float _300 = _297 * 5464.01611328125f;
  float _301 = _300 * _298.x;
  float _302 = _301 + 9.99999993922529e-09f;
  float _303 = log2(_302);
  float _304 = _303 + 16.929765701293945f;
  float _305 = _304 * 0.05734497308731079f;
  float _306 = saturate(_305);
  float _307 = _306 * _306;
  float _308 = _306 * 2.0f;
  float _309 = 3.0f - _308;
  float _310 = _307 * _309;
  float _311 = _295 * 0.8450999855995178f;
  float _312 = _296 * 0.14589999616146088f;
  float _313 = _311 + _312;
  float _314 = _313 * 2.4890189170837402f;
  float _315 = _313 * 0.3754962384700775f;
  float _316 = _313 * 2.811495304107666f;
  float _317 = _313 * 5.519708156585693f;
  float _318 = _297 - _314;
  float _319 = _310 * _318;
  float _320 = _319 + _314;
  float _321 = _310 * 0.5f;
  float _322 = _321 + 0.5f;
  float _323 = _322 * _318;
  float _324 = _323 + _314;
  float _325 = _294 - _315;
  float _326 = _295 - _316;
  float _327 = _296 - _317;
  float _328 = _322 * _325;
  float _329 = _322 * _326;
  float _330 = _322 * _327;
  float _331 = _328 + _315;
  float _332 = _329 + _316;
  float _333 = _330 + _317;
  float _334 = 1.0f / _324;
  float _335 = _320 * _334;
  float _336 = _335 * _331;
  float _337 = _335 * _332;
  float _338 = _335 * _333;
  float _342 = cb2_020x * TEXCOORD0_centroid.x;
  float _343 = cb2_020y * TEXCOORD0_centroid.y;
  float _346 = _342 + cb2_020z;
  float _347 = _343 + cb2_020w;
  float _350 = dot(float2(_346, _347), float2(_346, _347));
  float _351 = 1.0f - _350;
  float _352 = saturate(_351);
  float _353 = log2(_352);
  float _354 = _353 * cb2_021w;
  float _355 = exp2(_354);
  float _359 = _336 - cb2_021x;
  float _360 = _337 - cb2_021y;
  float _361 = _338 - cb2_021z;
  float _362 = _359 * _355;
  float _363 = _360 * _355;
  float _364 = _361 * _355;
  float _365 = _362 + cb2_021x;
  float _366 = _363 + cb2_021y;
  float _367 = _364 + cb2_021z;
  float _368 = t0[0].SExposureData_000;
  float _370 = max(_239.x, 0.0010000000474974513f);
  float _371 = 1.0f / _370;
  float _372 = _371 * _368.x;
  bool _375 = ((uint)(cb2_069y) == 0);
  float _381;
  float _382;
  float _383;
  float _437;
  float _438;
  float _439;
  float _515;
  float _516;
  float _517;
  float _618;
  float _619;
  float _620;
  float _645;
  float _657;
  float _685;
  float _697;
  float _709;
  float _710;
  float _711;
  float _738;
  float _739;
  float _740;
  if (!_375) {
    float _377 = _372 * _365;
    float _378 = _372 * _366;
    float _379 = _372 * _367;
    _381 = _377;
    _382 = _378;
    _383 = _379;
  } else {
    _381 = _365;
    _382 = _366;
    _383 = _367;
  }
  float _384 = _381 * 0.6130970120429993f;
  float _385 = mad(0.33952298760414124f, _382, _384);
  float _386 = mad(0.04737899824976921f, _383, _385);
  float _387 = _381 * 0.07019399851560593f;
  float _388 = mad(0.9163540005683899f, _382, _387);
  float _389 = mad(0.013451999984681606f, _383, _388);
  float _390 = _381 * 0.02061600051820278f;
  float _391 = mad(0.10956999659538269f, _382, _390);
  float _392 = mad(0.8698149919509888f, _383, _391);
  float _393 = log2(_386);
  float _394 = log2(_389);
  float _395 = log2(_392);
  float _396 = _393 * 0.04211956635117531f;
  float _397 = _394 * 0.04211956635117531f;
  float _398 = _395 * 0.04211956635117531f;
  float _399 = _396 + 0.6252607107162476f;
  float _400 = _397 + 0.6252607107162476f;
  float _401 = _398 + 0.6252607107162476f;
  float4 _402 = t6.SampleLevel(s2_space2, float3(_399, _400, _401), 0.0f);
  bool _408 = ((int)(uint)(cb1_018w) > (int)-1);
  if (_408 && RENODX_TONE_MAP_TYPE == 0.f) {
    float _412 = cb2_017x * _402.x;
    float _413 = cb2_017x * _402.y;
    float _414 = cb2_017x * _402.z;
    float _416 = _412 + cb2_017y;
    float _417 = _413 + cb2_017y;
    float _418 = _414 + cb2_017y;
    float _419 = exp2(_416);
    float _420 = exp2(_417);
    float _421 = exp2(_418);
    float _422 = _419 + 1.0f;
    float _423 = _420 + 1.0f;
    float _424 = _421 + 1.0f;
    float _425 = 1.0f / _422;
    float _426 = 1.0f / _423;
    float _427 = 1.0f / _424;
    float _429 = cb2_017z * _425;
    float _430 = cb2_017z * _426;
    float _431 = cb2_017z * _427;
    float _433 = _429 + cb2_017w;
    float _434 = _430 + cb2_017w;
    float _435 = _431 + cb2_017w;
    _437 = _433;
    _438 = _434;
    _439 = _435;
  } else {
    _437 = _402.x;
    _438 = _402.y;
    _439 = _402.z;
  }
  float _440 = _437 * 23.0f;
  float _441 = _440 + -14.473931312561035f;
  float _442 = exp2(_441);
  float _443 = _438 * 23.0f;
  float _444 = _443 + -14.473931312561035f;
  float _445 = exp2(_444);
  float _446 = _439 * 23.0f;
  float _447 = _446 + -14.473931312561035f;
  float _448 = exp2(_447);
  float _449 = dot(float3(_442, _445, _448), float3(0.2125999927520752f, 0.7152000069618225f, 0.0722000002861023f));
  float _454 = dot(float3(_442, _445, _448), float3(_442, _445, _448));
  float _455 = rsqrt(_454);
  float _456 = _455 * _442;
  float _457 = _455 * _445;
  float _458 = _455 * _448;
  float _459 = cb2_001x - _456;
  float _460 = cb2_001y - _457;
  float _461 = cb2_001z - _458;
  float _462 = dot(float3(_459, _460, _461), float3(_459, _460, _461));
  float _465 = cb2_002z * _462;
  float _467 = _465 + cb2_002w;
  float _468 = saturate(_467);
  float _470 = cb2_002x * _468;
  float _471 = _449 - _442;
  float _472 = _449 - _445;
  float _473 = _449 - _448;
  float _474 = _470 * _471;
  float _475 = _470 * _472;
  float _476 = _470 * _473;
  float _477 = _474 + _442;
  float _478 = _475 + _445;
  float _479 = _476 + _448;
  float _481 = cb2_002y * _468;
  float _482 = 0.10000000149011612f - _477;
  float _483 = 0.10000000149011612f - _478;
  float _484 = 0.10000000149011612f - _479;
  float _485 = _482 * _481;
  float _486 = _483 * _481;
  float _487 = _484 * _481;
  float _488 = _485 + _477;
  float _489 = _486 + _478;
  float _490 = _487 + _479;
  float _491 = saturate(_488);
  float _492 = saturate(_489);
  float _493 = saturate(_490);
  float _500 = cb2_016x - _491;
  float _501 = cb2_016y - _492;
  float _502 = cb2_016z - _493;
  float _503 = _500 * cb2_016w;
  float _504 = _501 * cb2_016w;
  float _505 = _502 * cb2_016w;
  float _506 = _503 + _491;
  float _507 = _504 + _492;
  float _508 = _505 + _493;
  if (_408 && RENODX_TONE_MAP_TYPE == 0.f) {
    float _511 = cb2_024x * _506;
    float _512 = cb2_024x * _507;
    float _513 = cb2_024x * _508;
    _515 = _511;
    _516 = _512;
    _517 = _513;
  } else {
    _515 = _506;
    _516 = _507;
    _517 = _508;
  }
  float _518 = _515 * 0.9708889722824097f;
  float _519 = mad(0.026962999254465103f, _516, _518);
  float _520 = mad(0.002148000057786703f, _517, _519);
  float _521 = _515 * 0.01088900025933981f;
  float _522 = mad(0.9869629740715027f, _516, _521);
  float _523 = mad(0.002148000057786703f, _517, _522);
  float _524 = mad(0.026962999254465103f, _516, _521);
  float _525 = mad(0.9621480107307434f, _517, _524);
  if (_408) {
    if (RENODX_TONE_MAP_TYPE == 0.f) {
        float _530 = cb1_018y * 0.10000000149011612f;
        float _531 = log2(cb1_018z);
        float _532 = _531 + -13.287712097167969f;
        float _533 = _532 * 1.4929734468460083f;
        float _534 = _533 + 18.0f;
        float _535 = exp2(_534);
        float _536 = _535 * 0.18000000715255737f;
        float _537 = abs(_536);
        float _538 = log2(_537);
        float _539 = _538 * 1.5f;
        float _540 = exp2(_539);
        float _541 = _540 * _530;
        float _542 = _541 / cb1_018z;
        float _543 = _542 + -0.07636754959821701f;
        float _544 = _538 * 1.2750000953674316f;
        float _545 = exp2(_544);
        float _546 = _545 * 0.07636754959821701f;
        float _547 = cb1_018y * 0.011232397519052029f;
        float _548 = _547 * _540;
        float _549 = _548 / cb1_018z;
        float _550 = _546 - _549;
        float _551 = _545 + -0.11232396960258484f;
        float _552 = _551 * _530;
        float _553 = _552 / cb1_018z;
        float _554 = _553 * cb1_018z;
        float _555 = abs(_520);
        float _556 = abs(_523);
        float _557 = abs(_525);
        float _558 = log2(_555);
        float _559 = log2(_556);
        float _560 = log2(_557);
        float _561 = _558 * 1.5f;
        float _562 = _559 * 1.5f;
        float _563 = _560 * 1.5f;
        float _564 = exp2(_561);
        float _565 = exp2(_562);
        float _566 = exp2(_563);
        float _567 = _564 * _554;
        float _568 = _565 * _554;
        float _569 = _566 * _554;
        float _570 = _558 * 1.2750000953674316f;
        float _571 = _559 * 1.2750000953674316f;
        float _572 = _560 * 1.2750000953674316f;
        float _573 = exp2(_570);
        float _574 = exp2(_571);
        float _575 = exp2(_572);
        float _576 = _573 * _543;
        float _577 = _574 * _543;
        float _578 = _575 * _543;
        float _579 = _576 + _550;
        float _580 = _577 + _550;
        float _581 = _578 + _550;
        float _582 = _567 / _579;
        float _583 = _568 / _580;
        float _584 = _569 / _581;
        float _585 = _582 * 9.999999747378752e-05f;
        float _586 = _583 * 9.999999747378752e-05f;
        float _587 = _584 * 9.999999747378752e-05f;
        float _588 = 5000.0f / cb1_018y;
        float _589 = _585 * _588;
        float _590 = _586 * _588;
        float _591 = _587 * _588;
        _618 = _589;
        _619 = _590;
        _620 = _591;
    } else {
      float3 tonemapped = ApplyCustomToneMap(float3(_520, _523, _525));
      _618 = tonemapped.x, _619 = tonemapped.y, _620 = tonemapped.z;
    }
      } else {
        float _593 = _520 + 0.020616600289940834f;
        float _594 = _523 + 0.020616600289940834f;
        float _595 = _525 + 0.020616600289940834f;
        float _596 = _593 * _520;
        float _597 = _594 * _523;
        float _598 = _595 * _525;
        float _599 = _596 + -7.456949970219284e-05f;
        float _600 = _597 + -7.456949970219284e-05f;
        float _601 = _598 + -7.456949970219284e-05f;
        float _602 = _520 * 0.9837960004806519f;
        float _603 = _523 * 0.9837960004806519f;
        float _604 = _525 * 0.9837960004806519f;
        float _605 = _602 + 0.4336790144443512f;
        float _606 = _603 + 0.4336790144443512f;
        float _607 = _604 + 0.4336790144443512f;
        float _608 = _605 * _520;
        float _609 = _606 * _523;
        float _610 = _607 * _525;
        float _611 = _608 + 0.24617899954319f;
        float _612 = _609 + 0.24617899954319f;
        float _613 = _610 + 0.24617899954319f;
        float _614 = _599 / _611;
        float _615 = _600 / _612;
        float _616 = _601 / _613;
        _618 = _614;
        _619 = _615;
        _620 = _616;
      }
      float _621 = _618 * 1.6047500371932983f;
      float _622 = mad(-0.5310800075531006f, _619, _621);
      float _623 = mad(-0.07366999983787537f, _620, _622);
      float _624 = _618 * -0.10208000242710114f;
      float _625 = mad(1.1081299781799316f, _619, _624);
      float _626 = mad(-0.006049999967217445f, _620, _625);
      float _627 = _618 * -0.0032599999103695154f;
      float _628 = mad(-0.07275000214576721f, _619, _627);
      float _629 = mad(1.0760200023651123f, _620, _628);
      if (_408) {
        // float _631 = max(_623, 0.0f);
        // float _632 = max(_626, 0.0f);
        // float _633 = max(_629, 0.0f);
        // bool _634 = !(_631 >= 0.0030399328097701073f);
        // if (!_634) {
        //   float _636 = abs(_631);
        //   float _637 = log2(_636);
        //   float _638 = _637 * 0.4166666567325592f;
        //   float _639 = exp2(_638);
        //   float _640 = _639 * 1.0549999475479126f;
        //   float _641 = _640 + -0.054999999701976776f;
        //   _645 = _641;
        // } else {
        //   float _643 = _631 * 12.923210144042969f;
        //   _645 = _643;
        // }
        // bool _646 = !(_632 >= 0.0030399328097701073f);
        // if (!_646) {
        //   float _648 = abs(_632);
        //   float _649 = log2(_648);
        //   float _650 = _649 * 0.4166666567325592f;
        //   float _651 = exp2(_650);
        //   float _652 = _651 * 1.0549999475479126f;
        //   float _653 = _652 + -0.054999999701976776f;
        //   _657 = _653;
        // } else {
        //   float _655 = _632 * 12.923210144042969f;
        //   _657 = _655;
        // }
        // bool _658 = !(_633 >= 0.0030399328097701073f);
        // if (!_658) {
        //   float _660 = abs(_633);
        //   float _661 = log2(_660);
        //   float _662 = _661 * 0.4166666567325592f;
        //   float _663 = exp2(_662);
        //   float _664 = _663 * 1.0549999475479126f;
        //   float _665 = _664 + -0.054999999701976776f;
        //   _738 = _645;
        //   _739 = _657;
        //   _740 = _665;
        // } else {
        //   float _667 = _633 * 12.923210144042969f;
        //   _738 = _645;
        //   _739 = _657;
        //   _740 = _667;
        // }
        _738 = renodx::color::srgb::EncodeSafe(_623);
        _739 = renodx::color::srgb::EncodeSafe(_626);
        _740 = renodx::color::srgb::EncodeSafe(_629);

      } else {
        float _669 = saturate(_623);
        float _670 = saturate(_626);
        float _671 = saturate(_629);
        bool _672 = ((uint)(cb1_018w) == -2);
        if (!_672) {
          bool _674 = !(_669 >= 0.0030399328097701073f);
          if (!_674) {
            float _676 = abs(_669);
            float _677 = log2(_676);
            float _678 = _677 * 0.4166666567325592f;
            float _679 = exp2(_678);
            float _680 = _679 * 1.0549999475479126f;
            float _681 = _680 + -0.054999999701976776f;
            _685 = _681;
          } else {
            float _683 = _669 * 12.923210144042969f;
            _685 = _683;
          }
          bool _686 = !(_670 >= 0.0030399328097701073f);
          if (!_686) {
            float _688 = abs(_670);
            float _689 = log2(_688);
            float _690 = _689 * 0.4166666567325592f;
            float _691 = exp2(_690);
            float _692 = _691 * 1.0549999475479126f;
            float _693 = _692 + -0.054999999701976776f;
            _697 = _693;
          } else {
            float _695 = _670 * 12.923210144042969f;
            _697 = _695;
          }
          bool _698 = !(_671 >= 0.0030399328097701073f);
          if (!_698) {
            float _700 = abs(_671);
            float _701 = log2(_700);
            float _702 = _701 * 0.4166666567325592f;
            float _703 = exp2(_702);
            float _704 = _703 * 1.0549999475479126f;
            float _705 = _704 + -0.054999999701976776f;
            _709 = _685;
            _710 = _697;
            _711 = _705;
          } else {
            float _707 = _671 * 12.923210144042969f;
            _709 = _685;
            _710 = _697;
            _711 = _707;
          }
        } else {
          _709 = _669;
          _710 = _670;
          _711 = _671;
        }
        float _716 = abs(_709);
        float _717 = abs(_710);
        float _718 = abs(_711);
        float _719 = log2(_716);
        float _720 = log2(_717);
        float _721 = log2(_718);
        float _722 = _719 * cb2_000z;
        float _723 = _720 * cb2_000z;
        float _724 = _721 * cb2_000z;
        float _725 = exp2(_722);
        float _726 = exp2(_723);
        float _727 = exp2(_724);
        float _728 = _725 * cb2_000y;
        float _729 = _726 * cb2_000y;
        float _730 = _727 * cb2_000y;
        float _731 = _728 + cb2_000x;
        float _732 = _729 + cb2_000x;
        float _733 = _730 + cb2_000x;
        float _734 = saturate(_731);
        float _735 = saturate(_732);
        float _736 = saturate(_733);
        _738 = _734;
        _739 = _735;
        _740 = _736;
      }
      float _744 = cb2_023x * TEXCOORD0_centroid.x;
      float _745 = cb2_023y * TEXCOORD0_centroid.y;
      float _748 = _744 + cb2_023z;
      float _749 = _745 + cb2_023w;
      float4 _752 = t9.SampleLevel(s0_space2, float2(_748, _749), 0.0f);
      float _754 = _752.x + -0.5f;
      float _755 = _754 * cb2_022x;
      float _756 = _755 + 0.5f;
      float _757 = _756 * 2.0f;
      float _758 = _757 * _738;
      float _759 = _757 * _739;
      float _760 = _757 * _740;
      float _764 = float((uint)(cb2_019z));
      float _765 = float((uint)(cb2_019w));
      float _766 = _764 + SV_Position.x;
      float _767 = _765 + SV_Position.y;
      uint _768 = uint(_766);
      uint _769 = uint(_767);
      uint _772 = cb2_019x + -1u;
      uint _773 = cb2_019y + -1u;
      int _774 = _768 & _772;
      int _775 = _769 & _773;
      float4 _776 = t3.Load(int3(_774, _775, 0));
      float _780 = _776.x * 2.0f;
      float _781 = _776.y * 2.0f;
      float _782 = _776.z * 2.0f;
      float _783 = _780 + -1.0f;
      float _784 = _781 + -1.0f;
      float _785 = _782 + -1.0f;
      float _786 = _783 * cb2_025w;
      float _787 = _784 * cb2_025w;
      float _788 = _785 * cb2_025w;
      float _789 = _786 + _758;
      float _790 = _787 + _759;
      float _791 = _788 + _760;
      float _792 = dot(float3(_789, _790, _791), float3(0.2125999927520752f, 0.7152000069618225f, 0.0722000002861023f));
      SV_Target.x = _789;
      SV_Target.y = _790;
      SV_Target.z = _791;
      SV_Target.w = _792;
      SV_Target_1.x = _792;
      SV_Target_1.y = 0.0f;
      SV_Target_1.z = 0.0f;
      SV_Target_1.w = 0.0f;
      OutputSignature output_signature = { SV_Target, SV_Target_1 };
      return output_signature;
}
