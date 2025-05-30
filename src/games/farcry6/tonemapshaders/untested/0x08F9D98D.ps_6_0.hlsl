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
  float cb2_005x : packoffset(c005.x);
  float cb2_006x : packoffset(c006.x);
  float cb2_006y : packoffset(c006.y);
  float cb2_006z : packoffset(c006.z);
  float cb2_006w : packoffset(c006.w);
  float cb2_007x : packoffset(c007.x);
  float cb2_007y : packoffset(c007.y);
  float cb2_007z : packoffset(c007.z);
  float cb2_007w : packoffset(c007.w);
  float cb2_008x : packoffset(c008.x);
  float cb2_008y : packoffset(c008.y);
  float cb2_008z : packoffset(c008.z);
  float cb2_008w : packoffset(c008.w);
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
  float4 _26 = t1.SampleLevel(s4_space2, float2(TEXCOORD0_centroid.x, TEXCOORD0_centroid.y), 0.0f);
  float _30 = max(_26.x, 0.0f);
  float _31 = max(_26.y, 0.0f);
  float _32 = max(_26.z, 0.0f);
  float _33 = min(_30, 65000.0f);
  float _34 = min(_31, 65000.0f);
  float _35 = min(_32, 65000.0f);
  float4 _36 = t4.SampleLevel(s2_space2, float2(TEXCOORD0_centroid.x, TEXCOORD0_centroid.y), 0.0f);
  float _41 = max(_36.x, 0.0f);
  float _42 = max(_36.y, 0.0f);
  float _43 = max(_36.z, 0.0f);
  float _44 = max(_36.w, 0.0f);
  float _45 = min(_41, 5000.0f);
  float _46 = min(_42, 5000.0f);
  float _47 = min(_43, 5000.0f);
  float _48 = min(_44, 5000.0f);
  float _51 = _24.x * cb0_028z;
  float _52 = _51 + cb0_028x;
  float _53 = cb2_027w / _52;
  float _54 = 1.0f - _53;
  float _55 = abs(_54);
  float _57 = cb2_027y * _55;
  float _59 = _57 - cb2_027z;
  float _60 = saturate(_59);
  float _61 = max(_60, _48);
  float _62 = saturate(_61);
  float _66 = cb2_006x * TEXCOORD0_centroid.x;
  float _67 = cb2_006y * TEXCOORD0_centroid.y;
  float _70 = _66 + cb2_006z;
  float _71 = _67 + cb2_006w;
  float _75 = cb2_007x * TEXCOORD0_centroid.x;
  float _76 = cb2_007y * TEXCOORD0_centroid.y;
  float _79 = _75 + cb2_007z;
  float _80 = _76 + cb2_007w;
  float _84 = cb2_008x * TEXCOORD0_centroid.x;
  float _85 = cb2_008y * TEXCOORD0_centroid.y;
  float _88 = _84 + cb2_008z;
  float _89 = _85 + cb2_008w;
  float4 _90 = t1.SampleLevel(s2_space2, float2(_70, _71), 0.0f);
  float _92 = max(_90.x, 0.0f);
  float _93 = min(_92, 65000.0f);
  float4 _94 = t1.SampleLevel(s2_space2, float2(_79, _80), 0.0f);
  float _96 = max(_94.y, 0.0f);
  float _97 = min(_96, 65000.0f);
  float4 _98 = t1.SampleLevel(s2_space2, float2(_88, _89), 0.0f);
  float _100 = max(_98.z, 0.0f);
  float _101 = min(_100, 65000.0f);
  float4 _102 = t4.SampleLevel(s2_space2, float2(_70, _71), 0.0f);
  float _104 = max(_102.x, 0.0f);
  float _105 = min(_104, 5000.0f);
  float4 _106 = t4.SampleLevel(s2_space2, float2(_79, _80), 0.0f);
  float _108 = max(_106.y, 0.0f);
  float _109 = min(_108, 5000.0f);
  float4 _110 = t4.SampleLevel(s2_space2, float2(_88, _89), 0.0f);
  float _112 = max(_110.z, 0.0f);
  float _113 = min(_112, 5000.0f);
  float4 _114 = t7.SampleLevel(s2_space2, float2(TEXCOORD0_centroid.x, TEXCOORD0_centroid.y), 0.0f);
  float _120 = cb2_005x * _114.x;
  float _121 = cb2_005x * _114.y;
  float _122 = cb2_005x * _114.z;
  float _123 = _93 - _33;
  float _124 = _97 - _34;
  float _125 = _101 - _35;
  float _126 = _120 * _123;
  float _127 = _121 * _124;
  float _128 = _122 * _125;
  float _129 = _126 + _33;
  float _130 = _127 + _34;
  float _131 = _128 + _35;
  float _132 = _105 - _45;
  float _133 = _109 - _46;
  float _134 = _113 - _47;
  float _135 = _120 * _132;
  float _136 = _121 * _133;
  float _137 = _122 * _134;
  float _138 = _135 + _45;
  float _139 = _136 + _46;
  float _140 = _137 + _47;
  float4 _141 = t5.SampleLevel(s2_space2, float2(TEXCOORD0_centroid.x, TEXCOORD0_centroid.y), 0.0f);
  float _145 = _138 - _129;
  float _146 = _139 - _130;
  float _147 = _140 - _131;
  float _148 = _145 * _62;
  float _149 = _146 * _62;
  float _150 = _147 * _62;
  float _151 = _148 + _129;
  float _152 = _149 + _130;
  float _153 = _150 + _131;
  float _154 = dot(float3(_151, _152, _153), float3(0.2125999927520752f, 0.7152000069618225f, 0.0722000002861023f));
  float _158 = t0[0].SExposureData_020;
  float _160 = t0[0].SExposureData_004;
  float _162 = cb2_018x * 0.5f;
  float _163 = _162 * cb2_018y;
  float _164 = _160.x - _163;
  float _165 = cb2_018y * cb2_018x;
  float _166 = 1.0f / _165;
  float _167 = _164 * _166;
  float _168 = _154 / _158.x;
  float _169 = _168 * 5464.01611328125f;
  float _170 = _169 + 9.99999993922529e-09f;
  float _171 = log2(_170);
  float _172 = _171 - _164;
  float _173 = _172 * _166;
  float _174 = saturate(_173);
  float2 _175 = t8.SampleLevel(s2_space2, float3(TEXCOORD0_centroid.x, TEXCOORD0_centroid.y, _174), 0.0f);
  float _178 = max(_175.y, 1.0000000116860974e-07f);
  float _179 = _175.x / _178;
  float _180 = _179 + _167;
  float _181 = _180 / _166;
  float _182 = _181 - _160.x;
  float _183 = -0.0f - _182;
  float _185 = _183 - cb2_027x;
  float _186 = max(0.0f, _185);
  float _189 = cb2_026z * _186;
  float _190 = _182 - cb2_027x;
  float _191 = max(0.0f, _190);
  float _193 = cb2_026w * _191;
  bool _194 = (_182 < 0.0f);
  float _195 = select(_194, _189, _193);
  float _196 = exp2(_195);
  float _197 = _196 * _151;
  float _198 = _196 * _152;
  float _199 = _196 * _153;
  float _204 = cb2_024y * _141.x;
  float _205 = cb2_024z * _141.y;
  float _206 = cb2_024w * _141.z;
  float _207 = _204 + _197;
  float _208 = _205 + _198;
  float _209 = _206 + _199;
  float _214 = _207 * cb2_025x;
  float _215 = _208 * cb2_025y;
  float _216 = _209 * cb2_025z;
  float _217 = dot(float3(_214, _215, _216), float3(0.2125999927520752f, 0.7152000069618225f, 0.0722000002861023f));
  float _218 = t0[0].SExposureData_012;
  float _220 = _217 * 5464.01611328125f;
  float _221 = _220 * _218.x;
  float _222 = _221 + 9.99999993922529e-09f;
  float _223 = log2(_222);
  float _224 = _223 + 16.929765701293945f;
  float _225 = _224 * 0.05734497308731079f;
  float _226 = saturate(_225);
  float _227 = _226 * _226;
  float _228 = _226 * 2.0f;
  float _229 = 3.0f - _228;
  float _230 = _227 * _229;
  float _231 = _215 * 0.8450999855995178f;
  float _232 = _216 * 0.14589999616146088f;
  float _233 = _231 + _232;
  float _234 = _233 * 2.4890189170837402f;
  float _235 = _233 * 0.3754962384700775f;
  float _236 = _233 * 2.811495304107666f;
  float _237 = _233 * 5.519708156585693f;
  float _238 = _217 - _234;
  float _239 = _230 * _238;
  float _240 = _239 + _234;
  float _241 = _230 * 0.5f;
  float _242 = _241 + 0.5f;
  float _243 = _242 * _238;
  float _244 = _243 + _234;
  float _245 = _214 - _235;
  float _246 = _215 - _236;
  float _247 = _216 - _237;
  float _248 = _242 * _245;
  float _249 = _242 * _246;
  float _250 = _242 * _247;
  float _251 = _248 + _235;
  float _252 = _249 + _236;
  float _253 = _250 + _237;
  float _254 = 1.0f / _244;
  float _255 = _240 * _254;
  float _256 = _255 * _251;
  float _257 = _255 * _252;
  float _258 = _255 * _253;
  float _262 = cb2_020x * TEXCOORD0_centroid.x;
  float _263 = cb2_020y * TEXCOORD0_centroid.y;
  float _266 = _262 + cb2_020z;
  float _267 = _263 + cb2_020w;
  float _270 = dot(float2(_266, _267), float2(_266, _267));
  float _271 = 1.0f - _270;
  float _272 = saturate(_271);
  float _273 = log2(_272);
  float _274 = _273 * cb2_021w;
  float _275 = exp2(_274);
  float _279 = _256 - cb2_021x;
  float _280 = _257 - cb2_021y;
  float _281 = _258 - cb2_021z;
  float _282 = _279 * _275;
  float _283 = _280 * _275;
  float _284 = _281 * _275;
  float _285 = _282 + cb2_021x;
  float _286 = _283 + cb2_021y;
  float _287 = _284 + cb2_021z;
  float _288 = t0[0].SExposureData_000;
  float _290 = max(_158.x, 0.0010000000474974513f);
  float _291 = 1.0f / _290;
  float _292 = _291 * _288.x;
  bool _295 = ((uint)(cb2_069y) == 0);
  float _301;
  float _302;
  float _303;
  float _357;
  float _358;
  float _359;
  float _435;
  float _436;
  float _437;
  float _538;
  float _539;
  float _540;
  float _565;
  float _577;
  float _605;
  float _617;
  float _629;
  float _630;
  float _631;
  float _658;
  float _659;
  float _660;
  if (!_295) {
    float _297 = _292 * _285;
    float _298 = _292 * _286;
    float _299 = _292 * _287;
    _301 = _297;
    _302 = _298;
    _303 = _299;
  } else {
    _301 = _285;
    _302 = _286;
    _303 = _287;
  }
  float _304 = _301 * 0.6130970120429993f;
  float _305 = mad(0.33952298760414124f, _302, _304);
  float _306 = mad(0.04737899824976921f, _303, _305);
  float _307 = _301 * 0.07019399851560593f;
  float _308 = mad(0.9163540005683899f, _302, _307);
  float _309 = mad(0.013451999984681606f, _303, _308);
  float _310 = _301 * 0.02061600051820278f;
  float _311 = mad(0.10956999659538269f, _302, _310);
  float _312 = mad(0.8698149919509888f, _303, _311);
  float _313 = log2(_306);
  float _314 = log2(_309);
  float _315 = log2(_312);
  float _316 = _313 * 0.04211956635117531f;
  float _317 = _314 * 0.04211956635117531f;
  float _318 = _315 * 0.04211956635117531f;
  float _319 = _316 + 0.6252607107162476f;
  float _320 = _317 + 0.6252607107162476f;
  float _321 = _318 + 0.6252607107162476f;
  float4 _322 = t6.SampleLevel(s2_space2, float3(_319, _320, _321), 0.0f);
  bool _328 = ((int)(uint)(cb1_018w) > (int)-1);
  if (_328 && RENODX_TONE_MAP_TYPE == 0.f) {
    float _332 = cb2_017x * _322.x;
    float _333 = cb2_017x * _322.y;
    float _334 = cb2_017x * _322.z;
    float _336 = _332 + cb2_017y;
    float _337 = _333 + cb2_017y;
    float _338 = _334 + cb2_017y;
    float _339 = exp2(_336);
    float _340 = exp2(_337);
    float _341 = exp2(_338);
    float _342 = _339 + 1.0f;
    float _343 = _340 + 1.0f;
    float _344 = _341 + 1.0f;
    float _345 = 1.0f / _342;
    float _346 = 1.0f / _343;
    float _347 = 1.0f / _344;
    float _349 = cb2_017z * _345;
    float _350 = cb2_017z * _346;
    float _351 = cb2_017z * _347;
    float _353 = _349 + cb2_017w;
    float _354 = _350 + cb2_017w;
    float _355 = _351 + cb2_017w;
    _357 = _353;
    _358 = _354;
    _359 = _355;
  } else {
    _357 = _322.x;
    _358 = _322.y;
    _359 = _322.z;
  }
  float _360 = _357 * 23.0f;
  float _361 = _360 + -14.473931312561035f;
  float _362 = exp2(_361);
  float _363 = _358 * 23.0f;
  float _364 = _363 + -14.473931312561035f;
  float _365 = exp2(_364);
  float _366 = _359 * 23.0f;
  float _367 = _366 + -14.473931312561035f;
  float _368 = exp2(_367);
  float _369 = dot(float3(_362, _365, _368), float3(0.2125999927520752f, 0.7152000069618225f, 0.0722000002861023f));
  float _374 = dot(float3(_362, _365, _368), float3(_362, _365, _368));
  float _375 = rsqrt(_374);
  float _376 = _375 * _362;
  float _377 = _375 * _365;
  float _378 = _375 * _368;
  float _379 = cb2_001x - _376;
  float _380 = cb2_001y - _377;
  float _381 = cb2_001z - _378;
  float _382 = dot(float3(_379, _380, _381), float3(_379, _380, _381));
  float _385 = cb2_002z * _382;
  float _387 = _385 + cb2_002w;
  float _388 = saturate(_387);
  float _390 = cb2_002x * _388;
  float _391 = _369 - _362;
  float _392 = _369 - _365;
  float _393 = _369 - _368;
  float _394 = _390 * _391;
  float _395 = _390 * _392;
  float _396 = _390 * _393;
  float _397 = _394 + _362;
  float _398 = _395 + _365;
  float _399 = _396 + _368;
  float _401 = cb2_002y * _388;
  float _402 = 0.10000000149011612f - _397;
  float _403 = 0.10000000149011612f - _398;
  float _404 = 0.10000000149011612f - _399;
  float _405 = _402 * _401;
  float _406 = _403 * _401;
  float _407 = _404 * _401;
  float _408 = _405 + _397;
  float _409 = _406 + _398;
  float _410 = _407 + _399;
  float _411 = saturate(_408);
  float _412 = saturate(_409);
  float _413 = saturate(_410);
  float _420 = cb2_016x - _411;
  float _421 = cb2_016y - _412;
  float _422 = cb2_016z - _413;
  float _423 = _420 * cb2_016w;
  float _424 = _421 * cb2_016w;
  float _425 = _422 * cb2_016w;
  float _426 = _423 + _411;
  float _427 = _424 + _412;
  float _428 = _425 + _413;
  if (_328 && RENODX_TONE_MAP_TYPE == 0.f) {
    float _431 = cb2_024x * _426;
    float _432 = cb2_024x * _427;
    float _433 = cb2_024x * _428;
    _435 = _431;
    _436 = _432;
    _437 = _433;
  } else {
    _435 = _426;
    _436 = _427;
    _437 = _428;
  }
  float _438 = _435 * 0.9708889722824097f;
  float _439 = mad(0.026962999254465103f, _436, _438);
  float _440 = mad(0.002148000057786703f, _437, _439);
  float _441 = _435 * 0.01088900025933981f;
  float _442 = mad(0.9869629740715027f, _436, _441);
  float _443 = mad(0.002148000057786703f, _437, _442);
  float _444 = mad(0.026962999254465103f, _436, _441);
  float _445 = mad(0.9621480107307434f, _437, _444);
  if (_328) {
    if (RENODX_TONE_MAP_TYPE == 0.f) {
        float _450 = cb1_018y * 0.10000000149011612f;
        float _451 = log2(cb1_018z);
        float _452 = _451 + -13.287712097167969f;
        float _453 = _452 * 1.4929734468460083f;
        float _454 = _453 + 18.0f;
        float _455 = exp2(_454);
        float _456 = _455 * 0.18000000715255737f;
        float _457 = abs(_456);
        float _458 = log2(_457);
        float _459 = _458 * 1.5f;
        float _460 = exp2(_459);
        float _461 = _460 * _450;
        float _462 = _461 / cb1_018z;
        float _463 = _462 + -0.07636754959821701f;
        float _464 = _458 * 1.2750000953674316f;
        float _465 = exp2(_464);
        float _466 = _465 * 0.07636754959821701f;
        float _467 = cb1_018y * 0.011232397519052029f;
        float _468 = _467 * _460;
        float _469 = _468 / cb1_018z;
        float _470 = _466 - _469;
        float _471 = _465 + -0.11232396960258484f;
        float _472 = _471 * _450;
        float _473 = _472 / cb1_018z;
        float _474 = _473 * cb1_018z;
        float _475 = abs(_440);
        float _476 = abs(_443);
        float _477 = abs(_445);
        float _478 = log2(_475);
        float _479 = log2(_476);
        float _480 = log2(_477);
        float _481 = _478 * 1.5f;
        float _482 = _479 * 1.5f;
        float _483 = _480 * 1.5f;
        float _484 = exp2(_481);
        float _485 = exp2(_482);
        float _486 = exp2(_483);
        float _487 = _484 * _474;
        float _488 = _485 * _474;
        float _489 = _486 * _474;
        float _490 = _478 * 1.2750000953674316f;
        float _491 = _479 * 1.2750000953674316f;
        float _492 = _480 * 1.2750000953674316f;
        float _493 = exp2(_490);
        float _494 = exp2(_491);
        float _495 = exp2(_492);
        float _496 = _493 * _463;
        float _497 = _494 * _463;
        float _498 = _495 * _463;
        float _499 = _496 + _470;
        float _500 = _497 + _470;
        float _501 = _498 + _470;
        float _502 = _487 / _499;
        float _503 = _488 / _500;
        float _504 = _489 / _501;
        float _505 = _502 * 9.999999747378752e-05f;
        float _506 = _503 * 9.999999747378752e-05f;
        float _507 = _504 * 9.999999747378752e-05f;
        float _508 = 5000.0f / cb1_018y;
        float _509 = _505 * _508;
        float _510 = _506 * _508;
        float _511 = _507 * _508;
        _538 = _509;
        _539 = _510;
        _540 = _511;
    } else {
      float3 tonemapped = ApplyCustomToneMap(float3(_440, _443, _445));
      _538 = tonemapped.x, _539 = tonemapped.y, _540 = tonemapped.z;
    }
      } else {
        float _513 = _440 + 0.020616600289940834f;
        float _514 = _443 + 0.020616600289940834f;
        float _515 = _445 + 0.020616600289940834f;
        float _516 = _513 * _440;
        float _517 = _514 * _443;
        float _518 = _515 * _445;
        float _519 = _516 + -7.456949970219284e-05f;
        float _520 = _517 + -7.456949970219284e-05f;
        float _521 = _518 + -7.456949970219284e-05f;
        float _522 = _440 * 0.9837960004806519f;
        float _523 = _443 * 0.9837960004806519f;
        float _524 = _445 * 0.9837960004806519f;
        float _525 = _522 + 0.4336790144443512f;
        float _526 = _523 + 0.4336790144443512f;
        float _527 = _524 + 0.4336790144443512f;
        float _528 = _525 * _440;
        float _529 = _526 * _443;
        float _530 = _527 * _445;
        float _531 = _528 + 0.24617899954319f;
        float _532 = _529 + 0.24617899954319f;
        float _533 = _530 + 0.24617899954319f;
        float _534 = _519 / _531;
        float _535 = _520 / _532;
        float _536 = _521 / _533;
        _538 = _534;
        _539 = _535;
        _540 = _536;
      }
      float _541 = _538 * 1.6047500371932983f;
      float _542 = mad(-0.5310800075531006f, _539, _541);
      float _543 = mad(-0.07366999983787537f, _540, _542);
      float _544 = _538 * -0.10208000242710114f;
      float _545 = mad(1.1081299781799316f, _539, _544);
      float _546 = mad(-0.006049999967217445f, _540, _545);
      float _547 = _538 * -0.0032599999103695154f;
      float _548 = mad(-0.07275000214576721f, _539, _547);
      float _549 = mad(1.0760200023651123f, _540, _548);
      if (_328) {
        // float _551 = max(_543, 0.0f);
        // float _552 = max(_546, 0.0f);
        // float _553 = max(_549, 0.0f);
        // bool _554 = !(_551 >= 0.0030399328097701073f);
        // if (!_554) {
        //   float _556 = abs(_551);
        //   float _557 = log2(_556);
        //   float _558 = _557 * 0.4166666567325592f;
        //   float _559 = exp2(_558);
        //   float _560 = _559 * 1.0549999475479126f;
        //   float _561 = _560 + -0.054999999701976776f;
        //   _565 = _561;
        // } else {
        //   float _563 = _551 * 12.923210144042969f;
        //   _565 = _563;
        // }
        // bool _566 = !(_552 >= 0.0030399328097701073f);
        // if (!_566) {
        //   float _568 = abs(_552);
        //   float _569 = log2(_568);
        //   float _570 = _569 * 0.4166666567325592f;
        //   float _571 = exp2(_570);
        //   float _572 = _571 * 1.0549999475479126f;
        //   float _573 = _572 + -0.054999999701976776f;
        //   _577 = _573;
        // } else {
        //   float _575 = _552 * 12.923210144042969f;
        //   _577 = _575;
        // }
        // bool _578 = !(_553 >= 0.0030399328097701073f);
        // if (!_578) {
        //   float _580 = abs(_553);
        //   float _581 = log2(_580);
        //   float _582 = _581 * 0.4166666567325592f;
        //   float _583 = exp2(_582);
        //   float _584 = _583 * 1.0549999475479126f;
        //   float _585 = _584 + -0.054999999701976776f;
        //   _658 = _565;
        //   _659 = _577;
        //   _660 = _585;
        // } else {
        //   float _587 = _553 * 12.923210144042969f;
        //   _658 = _565;
        //   _659 = _577;
        //   _660 = _587;
        // }
        _658 = renodx::color::srgb::EncodeSafe(_543);
        _659 = renodx::color::srgb::EncodeSafe(_546);
        _660 = renodx::color::srgb::EncodeSafe(_549);

      } else {
        float _589 = saturate(_543);
        float _590 = saturate(_546);
        float _591 = saturate(_549);
        bool _592 = ((uint)(cb1_018w) == -2);
        if (!_592) {
          bool _594 = !(_589 >= 0.0030399328097701073f);
          if (!_594) {
            float _596 = abs(_589);
            float _597 = log2(_596);
            float _598 = _597 * 0.4166666567325592f;
            float _599 = exp2(_598);
            float _600 = _599 * 1.0549999475479126f;
            float _601 = _600 + -0.054999999701976776f;
            _605 = _601;
          } else {
            float _603 = _589 * 12.923210144042969f;
            _605 = _603;
          }
          bool _606 = !(_590 >= 0.0030399328097701073f);
          if (!_606) {
            float _608 = abs(_590);
            float _609 = log2(_608);
            float _610 = _609 * 0.4166666567325592f;
            float _611 = exp2(_610);
            float _612 = _611 * 1.0549999475479126f;
            float _613 = _612 + -0.054999999701976776f;
            _617 = _613;
          } else {
            float _615 = _590 * 12.923210144042969f;
            _617 = _615;
          }
          bool _618 = !(_591 >= 0.0030399328097701073f);
          if (!_618) {
            float _620 = abs(_591);
            float _621 = log2(_620);
            float _622 = _621 * 0.4166666567325592f;
            float _623 = exp2(_622);
            float _624 = _623 * 1.0549999475479126f;
            float _625 = _624 + -0.054999999701976776f;
            _629 = _605;
            _630 = _617;
            _631 = _625;
          } else {
            float _627 = _591 * 12.923210144042969f;
            _629 = _605;
            _630 = _617;
            _631 = _627;
          }
        } else {
          _629 = _589;
          _630 = _590;
          _631 = _591;
        }
        float _636 = abs(_629);
        float _637 = abs(_630);
        float _638 = abs(_631);
        float _639 = log2(_636);
        float _640 = log2(_637);
        float _641 = log2(_638);
        float _642 = _639 * cb2_000z;
        float _643 = _640 * cb2_000z;
        float _644 = _641 * cb2_000z;
        float _645 = exp2(_642);
        float _646 = exp2(_643);
        float _647 = exp2(_644);
        float _648 = _645 * cb2_000y;
        float _649 = _646 * cb2_000y;
        float _650 = _647 * cb2_000y;
        float _651 = _648 + cb2_000x;
        float _652 = _649 + cb2_000x;
        float _653 = _650 + cb2_000x;
        float _654 = saturate(_651);
        float _655 = saturate(_652);
        float _656 = saturate(_653);
        _658 = _654;
        _659 = _655;
        _660 = _656;
      }
      float _664 = cb2_023x * TEXCOORD0_centroid.x;
      float _665 = cb2_023y * TEXCOORD0_centroid.y;
      float _668 = _664 + cb2_023z;
      float _669 = _665 + cb2_023w;
      float4 _672 = t9.SampleLevel(s0_space2, float2(_668, _669), 0.0f);
      float _674 = _672.x + -0.5f;
      float _675 = _674 * cb2_022x;
      float _676 = _675 + 0.5f;
      float _677 = _676 * 2.0f;
      float _678 = _677 * _658;
      float _679 = _677 * _659;
      float _680 = _677 * _660;
      float _684 = float((uint)(cb2_019z));
      float _685 = float((uint)(cb2_019w));
      float _686 = _684 + SV_Position.x;
      float _687 = _685 + SV_Position.y;
      uint _688 = uint(_686);
      uint _689 = uint(_687);
      uint _692 = cb2_019x + -1u;
      uint _693 = cb2_019y + -1u;
      int _694 = _688 & _692;
      int _695 = _689 & _693;
      float4 _696 = t3.Load(int3(_694, _695, 0));
      float _700 = _696.x * 2.0f;
      float _701 = _696.y * 2.0f;
      float _702 = _696.z * 2.0f;
      float _703 = _700 + -1.0f;
      float _704 = _701 + -1.0f;
      float _705 = _702 + -1.0f;
      float _706 = _703 * cb2_025w;
      float _707 = _704 * cb2_025w;
      float _708 = _705 * cb2_025w;
      float _709 = _706 + _678;
      float _710 = _707 + _679;
      float _711 = _708 + _680;
      float _712 = dot(float3(_709, _710, _711), float3(0.2125999927520752f, 0.7152000069618225f, 0.0722000002861023f));
      SV_Target.x = _709;
      SV_Target.y = _710;
      SV_Target.z = _711;
      SV_Target.w = _712;
      SV_Target_1.x = _712;
      SV_Target_1.y = 0.0f;
      SV_Target_1.z = 0.0f;
      SV_Target_1.w = 0.0f;
      OutputSignature output_signature = { SV_Target, SV_Target_1 };
      return output_signature;
}
