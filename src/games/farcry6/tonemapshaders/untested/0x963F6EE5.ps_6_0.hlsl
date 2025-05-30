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

Texture3D<float2> t7 : register(t7);

Texture2D<float4> t8 : register(t8);

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
  float _23 = t2.SampleLevel(s4_space2, float2(TEXCOORD0_centroid.x, TEXCOORD0_centroid.y), 0.0f);
  float4 _25 = t1.SampleLevel(s4_space2, float2(TEXCOORD0_centroid.x, TEXCOORD0_centroid.y), 0.0f);
  float _29 = max(_25.x, 0.0f);
  float _30 = max(_25.y, 0.0f);
  float _31 = max(_25.z, 0.0f);
  float _32 = min(_29, 65000.0f);
  float _33 = min(_30, 65000.0f);
  float _34 = min(_31, 65000.0f);
  float4 _35 = t4.SampleLevel(s2_space2, float2(TEXCOORD0_centroid.x, TEXCOORD0_centroid.y), 0.0f);
  float _40 = max(_35.x, 0.0f);
  float _41 = max(_35.y, 0.0f);
  float _42 = max(_35.z, 0.0f);
  float _43 = max(_35.w, 0.0f);
  float _44 = min(_40, 5000.0f);
  float _45 = min(_41, 5000.0f);
  float _46 = min(_42, 5000.0f);
  float _47 = min(_43, 5000.0f);
  float _50 = _23.x * cb0_028z;
  float _51 = _50 + cb0_028x;
  float _52 = cb2_027w / _51;
  float _53 = 1.0f - _52;
  float _54 = abs(_53);
  float _56 = cb2_027y * _54;
  float _58 = _56 - cb2_027z;
  float _59 = saturate(_58);
  float _60 = max(_59, _47);
  float _61 = saturate(_60);
  float _65 = cb2_013x * TEXCOORD0_centroid.x;
  float _66 = cb2_013y * TEXCOORD0_centroid.y;
  float _69 = _65 + cb2_013z;
  float _70 = _66 + cb2_013w;
  float _73 = dot(float2(_69, _70), float2(_69, _70));
  float _74 = abs(_73);
  float _75 = log2(_74);
  float _76 = _75 * cb2_014x;
  float _77 = exp2(_76);
  float _78 = saturate(_77);
  float _82 = cb2_011x * TEXCOORD0_centroid.x;
  float _83 = cb2_011y * TEXCOORD0_centroid.y;
  float _86 = _82 + cb2_011z;
  float _87 = _83 + cb2_011w;
  float _88 = _86 * _78;
  float _89 = _87 * _78;
  float _90 = _88 + TEXCOORD0_centroid.x;
  float _91 = _89 + TEXCOORD0_centroid.y;
  float _95 = cb2_012x * TEXCOORD0_centroid.x;
  float _96 = cb2_012y * TEXCOORD0_centroid.y;
  float _99 = _95 + cb2_012z;
  float _100 = _96 + cb2_012w;
  float _101 = _99 * _78;
  float _102 = _100 * _78;
  float _103 = _101 + TEXCOORD0_centroid.x;
  float _104 = _102 + TEXCOORD0_centroid.y;
  float4 _105 = t1.SampleLevel(s2_space2, float2(_90, _91), 0.0f);
  float _109 = max(_105.x, 0.0f);
  float _110 = max(_105.y, 0.0f);
  float _111 = max(_105.z, 0.0f);
  float _112 = min(_109, 65000.0f);
  float _113 = min(_110, 65000.0f);
  float _114 = min(_111, 65000.0f);
  float4 _115 = t1.SampleLevel(s2_space2, float2(_103, _104), 0.0f);
  float _119 = max(_115.x, 0.0f);
  float _120 = max(_115.y, 0.0f);
  float _121 = max(_115.z, 0.0f);
  float _122 = min(_119, 65000.0f);
  float _123 = min(_120, 65000.0f);
  float _124 = min(_121, 65000.0f);
  float4 _125 = t4.SampleLevel(s2_space2, float2(_90, _91), 0.0f);
  float _129 = max(_125.x, 0.0f);
  float _130 = max(_125.y, 0.0f);
  float _131 = max(_125.z, 0.0f);
  float _132 = min(_129, 5000.0f);
  float _133 = min(_130, 5000.0f);
  float _134 = min(_131, 5000.0f);
  float4 _135 = t4.SampleLevel(s2_space2, float2(_103, _104), 0.0f);
  float _139 = max(_135.x, 0.0f);
  float _140 = max(_135.y, 0.0f);
  float _141 = max(_135.z, 0.0f);
  float _142 = min(_139, 5000.0f);
  float _143 = min(_140, 5000.0f);
  float _144 = min(_141, 5000.0f);
  float _149 = 1.0f - cb2_009x;
  float _150 = 1.0f - cb2_009y;
  float _151 = 1.0f - cb2_009z;
  float _156 = _149 - cb2_010x;
  float _157 = _150 - cb2_010y;
  float _158 = _151 - cb2_010z;
  float _159 = saturate(_156);
  float _160 = saturate(_157);
  float _161 = saturate(_158);
  float _162 = _159 * _32;
  float _163 = _160 * _33;
  float _164 = _161 * _34;
  float _165 = cb2_009x * _112;
  float _166 = cb2_009y * _113;
  float _167 = cb2_009z * _114;
  float _168 = _165 + _162;
  float _169 = _166 + _163;
  float _170 = _167 + _164;
  float _171 = cb2_010x * _122;
  float _172 = cb2_010y * _123;
  float _173 = cb2_010z * _124;
  float _174 = _168 + _171;
  float _175 = _169 + _172;
  float _176 = _170 + _173;
  float _177 = _159 * _44;
  float _178 = _160 * _45;
  float _179 = _161 * _46;
  float _180 = cb2_009x * _132;
  float _181 = cb2_009y * _133;
  float _182 = cb2_009z * _134;
  float _183 = cb2_010x * _142;
  float _184 = cb2_010y * _143;
  float _185 = cb2_010z * _144;
  float4 _186 = t5.SampleLevel(s2_space2, float2(TEXCOORD0_centroid.x, TEXCOORD0_centroid.y), 0.0f);
  float _190 = _177 - _174;
  float _191 = _190 + _180;
  float _192 = _191 + _183;
  float _193 = _178 - _175;
  float _194 = _193 + _181;
  float _195 = _194 + _184;
  float _196 = _179 - _176;
  float _197 = _196 + _182;
  float _198 = _197 + _185;
  float _199 = _192 * _61;
  float _200 = _195 * _61;
  float _201 = _198 * _61;
  float _202 = _199 + _174;
  float _203 = _200 + _175;
  float _204 = _201 + _176;
  float _205 = dot(float3(_202, _203, _204), float3(0.2125999927520752f, 0.7152000069618225f, 0.0722000002861023f));
  float _209 = t0[0].SExposureData_020;
  float _211 = t0[0].SExposureData_004;
  float _213 = cb2_018x * 0.5f;
  float _214 = _213 * cb2_018y;
  float _215 = _211.x - _214;
  float _216 = cb2_018y * cb2_018x;
  float _217 = 1.0f / _216;
  float _218 = _215 * _217;
  float _219 = _205 / _209.x;
  float _220 = _219 * 5464.01611328125f;
  float _221 = _220 + 9.99999993922529e-09f;
  float _222 = log2(_221);
  float _223 = _222 - _215;
  float _224 = _223 * _217;
  float _225 = saturate(_224);
  float2 _226 = t7.SampleLevel(s2_space2, float3(TEXCOORD0_centroid.x, TEXCOORD0_centroid.y, _225), 0.0f);
  float _229 = max(_226.y, 1.0000000116860974e-07f);
  float _230 = _226.x / _229;
  float _231 = _230 + _218;
  float _232 = _231 / _217;
  float _233 = _232 - _211.x;
  float _234 = -0.0f - _233;
  float _236 = _234 - cb2_027x;
  float _237 = max(0.0f, _236);
  float _240 = cb2_026z * _237;
  float _241 = _233 - cb2_027x;
  float _242 = max(0.0f, _241);
  float _244 = cb2_026w * _242;
  bool _245 = (_233 < 0.0f);
  float _246 = select(_245, _240, _244);
  float _247 = exp2(_246);
  float _248 = _247 * _202;
  float _249 = _247 * _203;
  float _250 = _247 * _204;
  float _255 = cb2_024y * _186.x;
  float _256 = cb2_024z * _186.y;
  float _257 = cb2_024w * _186.z;
  float _258 = _255 + _248;
  float _259 = _256 + _249;
  float _260 = _257 + _250;
  float _265 = _258 * cb2_025x;
  float _266 = _259 * cb2_025y;
  float _267 = _260 * cb2_025z;
  float _268 = dot(float3(_265, _266, _267), float3(0.2125999927520752f, 0.7152000069618225f, 0.0722000002861023f));
  float _269 = t0[0].SExposureData_012;
  float _271 = _268 * 5464.01611328125f;
  float _272 = _271 * _269.x;
  float _273 = _272 + 9.99999993922529e-09f;
  float _274 = log2(_273);
  float _275 = _274 + 16.929765701293945f;
  float _276 = _275 * 0.05734497308731079f;
  float _277 = saturate(_276);
  float _278 = _277 * _277;
  float _279 = _277 * 2.0f;
  float _280 = 3.0f - _279;
  float _281 = _278 * _280;
  float _282 = _266 * 0.8450999855995178f;
  float _283 = _267 * 0.14589999616146088f;
  float _284 = _282 + _283;
  float _285 = _284 * 2.4890189170837402f;
  float _286 = _284 * 0.3754962384700775f;
  float _287 = _284 * 2.811495304107666f;
  float _288 = _284 * 5.519708156585693f;
  float _289 = _268 - _285;
  float _290 = _281 * _289;
  float _291 = _290 + _285;
  float _292 = _281 * 0.5f;
  float _293 = _292 + 0.5f;
  float _294 = _293 * _289;
  float _295 = _294 + _285;
  float _296 = _265 - _286;
  float _297 = _266 - _287;
  float _298 = _267 - _288;
  float _299 = _293 * _296;
  float _300 = _293 * _297;
  float _301 = _293 * _298;
  float _302 = _299 + _286;
  float _303 = _300 + _287;
  float _304 = _301 + _288;
  float _305 = 1.0f / _295;
  float _306 = _291 * _305;
  float _307 = _306 * _302;
  float _308 = _306 * _303;
  float _309 = _306 * _304;
  float _313 = cb2_020x * TEXCOORD0_centroid.x;
  float _314 = cb2_020y * TEXCOORD0_centroid.y;
  float _317 = _313 + cb2_020z;
  float _318 = _314 + cb2_020w;
  float _321 = dot(float2(_317, _318), float2(_317, _318));
  float _322 = 1.0f - _321;
  float _323 = saturate(_322);
  float _324 = log2(_323);
  float _325 = _324 * cb2_021w;
  float _326 = exp2(_325);
  float _330 = _307 - cb2_021x;
  float _331 = _308 - cb2_021y;
  float _332 = _309 - cb2_021z;
  float _333 = _330 * _326;
  float _334 = _331 * _326;
  float _335 = _332 * _326;
  float _336 = _333 + cb2_021x;
  float _337 = _334 + cb2_021y;
  float _338 = _335 + cb2_021z;
  float _339 = t0[0].SExposureData_000;
  float _341 = max(_209.x, 0.0010000000474974513f);
  float _342 = 1.0f / _341;
  float _343 = _342 * _339.x;
  bool _346 = ((uint)(cb2_069y) == 0);
  float _352;
  float _353;
  float _354;
  float _408;
  float _409;
  float _410;
  float _486;
  float _487;
  float _488;
  float _589;
  float _590;
  float _591;
  float _616;
  float _628;
  float _656;
  float _668;
  float _680;
  float _681;
  float _682;
  float _709;
  float _710;
  float _711;
  if (!_346) {
    float _348 = _343 * _336;
    float _349 = _343 * _337;
    float _350 = _343 * _338;
    _352 = _348;
    _353 = _349;
    _354 = _350;
  } else {
    _352 = _336;
    _353 = _337;
    _354 = _338;
  }
  float _355 = _352 * 0.6130970120429993f;
  float _356 = mad(0.33952298760414124f, _353, _355);
  float _357 = mad(0.04737899824976921f, _354, _356);
  float _358 = _352 * 0.07019399851560593f;
  float _359 = mad(0.9163540005683899f, _353, _358);
  float _360 = mad(0.013451999984681606f, _354, _359);
  float _361 = _352 * 0.02061600051820278f;
  float _362 = mad(0.10956999659538269f, _353, _361);
  float _363 = mad(0.8698149919509888f, _354, _362);
  float _364 = log2(_357);
  float _365 = log2(_360);
  float _366 = log2(_363);
  float _367 = _364 * 0.04211956635117531f;
  float _368 = _365 * 0.04211956635117531f;
  float _369 = _366 * 0.04211956635117531f;
  float _370 = _367 + 0.6252607107162476f;
  float _371 = _368 + 0.6252607107162476f;
  float _372 = _369 + 0.6252607107162476f;
  float4 _373 = t6.SampleLevel(s2_space2, float3(_370, _371, _372), 0.0f);
  bool _379 = ((int)(uint)(cb1_018w) > (int)-1);
  if (_379 && RENODX_TONE_MAP_TYPE == 0.f) {
    float _383 = cb2_017x * _373.x;
    float _384 = cb2_017x * _373.y;
    float _385 = cb2_017x * _373.z;
    float _387 = _383 + cb2_017y;
    float _388 = _384 + cb2_017y;
    float _389 = _385 + cb2_017y;
    float _390 = exp2(_387);
    float _391 = exp2(_388);
    float _392 = exp2(_389);
    float _393 = _390 + 1.0f;
    float _394 = _391 + 1.0f;
    float _395 = _392 + 1.0f;
    float _396 = 1.0f / _393;
    float _397 = 1.0f / _394;
    float _398 = 1.0f / _395;
    float _400 = cb2_017z * _396;
    float _401 = cb2_017z * _397;
    float _402 = cb2_017z * _398;
    float _404 = _400 + cb2_017w;
    float _405 = _401 + cb2_017w;
    float _406 = _402 + cb2_017w;
    _408 = _404;
    _409 = _405;
    _410 = _406;
  } else {
    _408 = _373.x;
    _409 = _373.y;
    _410 = _373.z;
  }
  float _411 = _408 * 23.0f;
  float _412 = _411 + -14.473931312561035f;
  float _413 = exp2(_412);
  float _414 = _409 * 23.0f;
  float _415 = _414 + -14.473931312561035f;
  float _416 = exp2(_415);
  float _417 = _410 * 23.0f;
  float _418 = _417 + -14.473931312561035f;
  float _419 = exp2(_418);
  float _420 = dot(float3(_413, _416, _419), float3(0.2125999927520752f, 0.7152000069618225f, 0.0722000002861023f));
  float _425 = dot(float3(_413, _416, _419), float3(_413, _416, _419));
  float _426 = rsqrt(_425);
  float _427 = _426 * _413;
  float _428 = _426 * _416;
  float _429 = _426 * _419;
  float _430 = cb2_001x - _427;
  float _431 = cb2_001y - _428;
  float _432 = cb2_001z - _429;
  float _433 = dot(float3(_430, _431, _432), float3(_430, _431, _432));
  float _436 = cb2_002z * _433;
  float _438 = _436 + cb2_002w;
  float _439 = saturate(_438);
  float _441 = cb2_002x * _439;
  float _442 = _420 - _413;
  float _443 = _420 - _416;
  float _444 = _420 - _419;
  float _445 = _441 * _442;
  float _446 = _441 * _443;
  float _447 = _441 * _444;
  float _448 = _445 + _413;
  float _449 = _446 + _416;
  float _450 = _447 + _419;
  float _452 = cb2_002y * _439;
  float _453 = 0.10000000149011612f - _448;
  float _454 = 0.10000000149011612f - _449;
  float _455 = 0.10000000149011612f - _450;
  float _456 = _453 * _452;
  float _457 = _454 * _452;
  float _458 = _455 * _452;
  float _459 = _456 + _448;
  float _460 = _457 + _449;
  float _461 = _458 + _450;
  float _462 = saturate(_459);
  float _463 = saturate(_460);
  float _464 = saturate(_461);
  float _471 = cb2_016x - _462;
  float _472 = cb2_016y - _463;
  float _473 = cb2_016z - _464;
  float _474 = _471 * cb2_016w;
  float _475 = _472 * cb2_016w;
  float _476 = _473 * cb2_016w;
  float _477 = _474 + _462;
  float _478 = _475 + _463;
  float _479 = _476 + _464;
  if (_379 && RENODX_TONE_MAP_TYPE == 0.f) {
    float _482 = cb2_024x * _477;
    float _483 = cb2_024x * _478;
    float _484 = cb2_024x * _479;
    _486 = _482;
    _487 = _483;
    _488 = _484;
  } else {
    _486 = _477;
    _487 = _478;
    _488 = _479;
  }
  float _489 = _486 * 0.9708889722824097f;
  float _490 = mad(0.026962999254465103f, _487, _489);
  float _491 = mad(0.002148000057786703f, _488, _490);
  float _492 = _486 * 0.01088900025933981f;
  float _493 = mad(0.9869629740715027f, _487, _492);
  float _494 = mad(0.002148000057786703f, _488, _493);
  float _495 = mad(0.026962999254465103f, _487, _492);
  float _496 = mad(0.9621480107307434f, _488, _495);
  if (_379) {
    if (RENODX_TONE_MAP_TYPE == 0.f) {
        float _501 = cb1_018y * 0.10000000149011612f;
        float _502 = log2(cb1_018z);
        float _503 = _502 + -13.287712097167969f;
        float _504 = _503 * 1.4929734468460083f;
        float _505 = _504 + 18.0f;
        float _506 = exp2(_505);
        float _507 = _506 * 0.18000000715255737f;
        float _508 = abs(_507);
        float _509 = log2(_508);
        float _510 = _509 * 1.5f;
        float _511 = exp2(_510);
        float _512 = _511 * _501;
        float _513 = _512 / cb1_018z;
        float _514 = _513 + -0.07636754959821701f;
        float _515 = _509 * 1.2750000953674316f;
        float _516 = exp2(_515);
        float _517 = _516 * 0.07636754959821701f;
        float _518 = cb1_018y * 0.011232397519052029f;
        float _519 = _518 * _511;
        float _520 = _519 / cb1_018z;
        float _521 = _517 - _520;
        float _522 = _516 + -0.11232396960258484f;
        float _523 = _522 * _501;
        float _524 = _523 / cb1_018z;
        float _525 = _524 * cb1_018z;
        float _526 = abs(_491);
        float _527 = abs(_494);
        float _528 = abs(_496);
        float _529 = log2(_526);
        float _530 = log2(_527);
        float _531 = log2(_528);
        float _532 = _529 * 1.5f;
        float _533 = _530 * 1.5f;
        float _534 = _531 * 1.5f;
        float _535 = exp2(_532);
        float _536 = exp2(_533);
        float _537 = exp2(_534);
        float _538 = _535 * _525;
        float _539 = _536 * _525;
        float _540 = _537 * _525;
        float _541 = _529 * 1.2750000953674316f;
        float _542 = _530 * 1.2750000953674316f;
        float _543 = _531 * 1.2750000953674316f;
        float _544 = exp2(_541);
        float _545 = exp2(_542);
        float _546 = exp2(_543);
        float _547 = _544 * _514;
        float _548 = _545 * _514;
        float _549 = _546 * _514;
        float _550 = _547 + _521;
        float _551 = _548 + _521;
        float _552 = _549 + _521;
        float _553 = _538 / _550;
        float _554 = _539 / _551;
        float _555 = _540 / _552;
        float _556 = _553 * 9.999999747378752e-05f;
        float _557 = _554 * 9.999999747378752e-05f;
        float _558 = _555 * 9.999999747378752e-05f;
        float _559 = 5000.0f / cb1_018y;
        float _560 = _556 * _559;
        float _561 = _557 * _559;
        float _562 = _558 * _559;
        _589 = _560;
        _590 = _561;
        _591 = _562;
    } else {
      float3 tonemapped = ApplyCustomToneMap(float3(_491, _494, _496));
      _589 = tonemapped.x, _590 = tonemapped.y, _591 = tonemapped.z;
    }
      } else {
        float _564 = _491 + 0.020616600289940834f;
        float _565 = _494 + 0.020616600289940834f;
        float _566 = _496 + 0.020616600289940834f;
        float _567 = _564 * _491;
        float _568 = _565 * _494;
        float _569 = _566 * _496;
        float _570 = _567 + -7.456949970219284e-05f;
        float _571 = _568 + -7.456949970219284e-05f;
        float _572 = _569 + -7.456949970219284e-05f;
        float _573 = _491 * 0.9837960004806519f;
        float _574 = _494 * 0.9837960004806519f;
        float _575 = _496 * 0.9837960004806519f;
        float _576 = _573 + 0.4336790144443512f;
        float _577 = _574 + 0.4336790144443512f;
        float _578 = _575 + 0.4336790144443512f;
        float _579 = _576 * _491;
        float _580 = _577 * _494;
        float _581 = _578 * _496;
        float _582 = _579 + 0.24617899954319f;
        float _583 = _580 + 0.24617899954319f;
        float _584 = _581 + 0.24617899954319f;
        float _585 = _570 / _582;
        float _586 = _571 / _583;
        float _587 = _572 / _584;
        _589 = _585;
        _590 = _586;
        _591 = _587;
      }
      float _592 = _589 * 1.6047500371932983f;
      float _593 = mad(-0.5310800075531006f, _590, _592);
      float _594 = mad(-0.07366999983787537f, _591, _593);
      float _595 = _589 * -0.10208000242710114f;
      float _596 = mad(1.1081299781799316f, _590, _595);
      float _597 = mad(-0.006049999967217445f, _591, _596);
      float _598 = _589 * -0.0032599999103695154f;
      float _599 = mad(-0.07275000214576721f, _590, _598);
      float _600 = mad(1.0760200023651123f, _591, _599);
      if (_379) {
        // float _602 = max(_594, 0.0f);
        // float _603 = max(_597, 0.0f);
        // float _604 = max(_600, 0.0f);
        // bool _605 = !(_602 >= 0.0030399328097701073f);
        // if (!_605) {
        //   float _607 = abs(_602);
        //   float _608 = log2(_607);
        //   float _609 = _608 * 0.4166666567325592f;
        //   float _610 = exp2(_609);
        //   float _611 = _610 * 1.0549999475479126f;
        //   float _612 = _611 + -0.054999999701976776f;
        //   _616 = _612;
        // } else {
        //   float _614 = _602 * 12.923210144042969f;
        //   _616 = _614;
        // }
        // bool _617 = !(_603 >= 0.0030399328097701073f);
        // if (!_617) {
        //   float _619 = abs(_603);
        //   float _620 = log2(_619);
        //   float _621 = _620 * 0.4166666567325592f;
        //   float _622 = exp2(_621);
        //   float _623 = _622 * 1.0549999475479126f;
        //   float _624 = _623 + -0.054999999701976776f;
        //   _628 = _624;
        // } else {
        //   float _626 = _603 * 12.923210144042969f;
        //   _628 = _626;
        // }
        // bool _629 = !(_604 >= 0.0030399328097701073f);
        // if (!_629) {
        //   float _631 = abs(_604);
        //   float _632 = log2(_631);
        //   float _633 = _632 * 0.4166666567325592f;
        //   float _634 = exp2(_633);
        //   float _635 = _634 * 1.0549999475479126f;
        //   float _636 = _635 + -0.054999999701976776f;
        //   _709 = _616;
        //   _710 = _628;
        //   _711 = _636;
        // } else {
        //   float _638 = _604 * 12.923210144042969f;
        //   _709 = _616;
        //   _710 = _628;
        //   _711 = _638;
        // }
        _709 = renodx::color::srgb::EncodeSafe(_594);
        _710 = renodx::color::srgb::EncodeSafe(_597);
        _711 = renodx::color::srgb::EncodeSafe(_600);

      } else {
        float _640 = saturate(_594);
        float _641 = saturate(_597);
        float _642 = saturate(_600);
        bool _643 = ((uint)(cb1_018w) == -2);
        if (!_643) {
          bool _645 = !(_640 >= 0.0030399328097701073f);
          if (!_645) {
            float _647 = abs(_640);
            float _648 = log2(_647);
            float _649 = _648 * 0.4166666567325592f;
            float _650 = exp2(_649);
            float _651 = _650 * 1.0549999475479126f;
            float _652 = _651 + -0.054999999701976776f;
            _656 = _652;
          } else {
            float _654 = _640 * 12.923210144042969f;
            _656 = _654;
          }
          bool _657 = !(_641 >= 0.0030399328097701073f);
          if (!_657) {
            float _659 = abs(_641);
            float _660 = log2(_659);
            float _661 = _660 * 0.4166666567325592f;
            float _662 = exp2(_661);
            float _663 = _662 * 1.0549999475479126f;
            float _664 = _663 + -0.054999999701976776f;
            _668 = _664;
          } else {
            float _666 = _641 * 12.923210144042969f;
            _668 = _666;
          }
          bool _669 = !(_642 >= 0.0030399328097701073f);
          if (!_669) {
            float _671 = abs(_642);
            float _672 = log2(_671);
            float _673 = _672 * 0.4166666567325592f;
            float _674 = exp2(_673);
            float _675 = _674 * 1.0549999475479126f;
            float _676 = _675 + -0.054999999701976776f;
            _680 = _656;
            _681 = _668;
            _682 = _676;
          } else {
            float _678 = _642 * 12.923210144042969f;
            _680 = _656;
            _681 = _668;
            _682 = _678;
          }
        } else {
          _680 = _640;
          _681 = _641;
          _682 = _642;
        }
        float _687 = abs(_680);
        float _688 = abs(_681);
        float _689 = abs(_682);
        float _690 = log2(_687);
        float _691 = log2(_688);
        float _692 = log2(_689);
        float _693 = _690 * cb2_000z;
        float _694 = _691 * cb2_000z;
        float _695 = _692 * cb2_000z;
        float _696 = exp2(_693);
        float _697 = exp2(_694);
        float _698 = exp2(_695);
        float _699 = _696 * cb2_000y;
        float _700 = _697 * cb2_000y;
        float _701 = _698 * cb2_000y;
        float _702 = _699 + cb2_000x;
        float _703 = _700 + cb2_000x;
        float _704 = _701 + cb2_000x;
        float _705 = saturate(_702);
        float _706 = saturate(_703);
        float _707 = saturate(_704);
        _709 = _705;
        _710 = _706;
        _711 = _707;
      }
      float _715 = cb2_023x * TEXCOORD0_centroid.x;
      float _716 = cb2_023y * TEXCOORD0_centroid.y;
      float _719 = _715 + cb2_023z;
      float _720 = _716 + cb2_023w;
      float4 _723 = t8.SampleLevel(s0_space2, float2(_719, _720), 0.0f);
      float _725 = _723.x + -0.5f;
      float _726 = _725 * cb2_022x;
      float _727 = _726 + 0.5f;
      float _728 = _727 * 2.0f;
      float _729 = _728 * _709;
      float _730 = _728 * _710;
      float _731 = _728 * _711;
      float _735 = float((uint)(cb2_019z));
      float _736 = float((uint)(cb2_019w));
      float _737 = _735 + SV_Position.x;
      float _738 = _736 + SV_Position.y;
      uint _739 = uint(_737);
      uint _740 = uint(_738);
      uint _743 = cb2_019x + -1u;
      uint _744 = cb2_019y + -1u;
      int _745 = _739 & _743;
      int _746 = _740 & _744;
      float4 _747 = t3.Load(int3(_745, _746, 0));
      float _751 = _747.x * 2.0f;
      float _752 = _747.y * 2.0f;
      float _753 = _747.z * 2.0f;
      float _754 = _751 + -1.0f;
      float _755 = _752 + -1.0f;
      float _756 = _753 + -1.0f;
      float _757 = _754 * cb2_025w;
      float _758 = _755 * cb2_025w;
      float _759 = _756 * cb2_025w;
      float _760 = _757 + _729;
      float _761 = _758 + _730;
      float _762 = _759 + _731;
      float _763 = dot(float3(_760, _761, _762), float3(0.2125999927520752f, 0.7152000069618225f, 0.0722000002861023f));
      SV_Target.x = _760;
      SV_Target.y = _761;
      SV_Target.z = _762;
      SV_Target.w = _763;
      SV_Target_1.x = _763;
      SV_Target_1.y = 0.0f;
      SV_Target_1.z = 0.0f;
      SV_Target_1.w = 0.0f;
      OutputSignature output_signature = { SV_Target, SV_Target_1 };
      return output_signature;
}
