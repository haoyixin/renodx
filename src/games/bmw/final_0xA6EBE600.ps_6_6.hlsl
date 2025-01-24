#include "./common.hlsl"

Texture2D<float4> t0 : register(t0);

Texture2D<float4> t1 : register(t1);

cbuffer cb0 : register(b0) {
  float cb0_007z : packoffset(c007.z);
};

SamplerState s0 : register(s0);

SamplerState s1 : register(s1);

float4 main(
  noperspective float2 TEXCOORD : TEXCOORD,
  noperspective float4 SV_Position : SV_Position
) : SV_Target {
  float4 SV_Target;
  float4 _11 = t0.Sample(s0, float2((TEXCOORD.x), (TEXCOORD.y)));
  // float _16 = max(6.103519990574569e-05f, (_11.x));
  // float _17 = max(6.103519990574569e-05f, (_11.y));
  // float _18 = max(6.103519990574569e-05f, (_11.z));
  float _16 = _11.x;
  float _17 = _11.y;
  float _18 = _11.z;

  float _40 = (((bool)((_16 > 0.040449999272823334f))) ? (exp2(((log2(((_16 * 0.9478672742843628f) + 0.05213269963860512f))) * 2.4000000953674316f))) : (_16 * 0.07739938050508499f));
  float _41 = (((bool)((_17 > 0.040449999272823334f))) ? (exp2(((log2(((_17 * 0.9478672742843628f) + 0.05213269963860512f))) * 2.4000000953674316f))) : (_17 * 0.07739938050508499f));
  float _42 = (((bool)((_18 > 0.040449999272823334f))) ? (exp2(((log2(((_18 * 0.9478672742843628f) + 0.05213269963860512f))) * 2.4000000953674316f))) : (_18 * 0.07739938050508499f));

  float4 _57 = t1.Sample(s1, float2((TEXCOORD.x), (TEXCOORD.y)));

  return FinalizeUEOutput(_57, _11, true, true);

  float _67 = exp2(((log2((_57.x))) * 0.012683313339948654f));
  float _68 = exp2(((log2((_57.y))) * 0.012683313339948654f));
  float _69 = exp2(((log2((_57.z))) * 0.012683313339948654f));
  float _94 = (exp2(((log2(((max(0.0f, (_67 + -0.8359375f))) / (18.8515625f - (_67 * 18.6875f))))) * 6.277394771575928f))) * 10000.0f;
  float _95 = (exp2(((log2(((max(0.0f, (_68 + -0.8359375f))) / (18.8515625f - (_68 * 18.6875f))))) * 6.277394771575928f))) * 10000.0f;
  float _96 = (exp2(((log2(((max(0.0f, (_69 + -0.8359375f))) / (18.8515625f - (_69 * 18.6875f))))) * 6.277394771575928f))) * 10000.0f;
  float _118 = _94;
  float _119 = _95;
  float _120 = _96;
  if ((((bool)(((_11.w) > 0.0f))) && ((bool)(((_11.w) < 1.0f))))) {
    float _103 = max(_94, 0.0f);
    float _104 = max(_95, 0.0f);
    float _105 = max(_96, 0.0f);
    float _113 = ((((1.0f / (((dot(float3(_103, _104, _105), float3(0.26269999146461487f, 0.6779999732971191f, 0.059300001710653305f))) / (cb0_007z)) + 1.0f)) * (cb0_007z)) + -1.0f) * (_11.w)) + 1.0f;
    _118 = (_113 * _103);
    _119 = (_113 * _104);
    _120 = (_113 * _105);
  }
  float _121 = 1.0f - (_11.w);
  float _140 = exp2(((log2((((_118 * _121) + (((mad(0.04330150783061981f, _42, (mad(0.32926714420318604f, _41, (_40 * 0.6274880170822144f))))) * 300.0f) * (cb0_007z))) * 9.999999747378752e-05f))) * 0.1593017578125f));
  float _141 = exp2(((log2((((_119 * _121) + (((mad(0.011359544470906258f, _42, (mad(0.9195171594619751f, _41, (_40 * 0.06910824030637741f))))) * 300.0f) * (cb0_007z))) * 9.999999747378752e-05f))) * 0.1593017578125f));
  float _142 = exp2(((log2((((_120 * _121) + (((mad(0.8954997062683105f, _42, (mad(0.08802297711372375f, _41, (_40 * 0.016396233811974525f))))) * 300.0f) * (cb0_007z))) * 9.999999747378752e-05f))) * 0.1593017578125f));
  SV_Target.x = (exp2(((log2(((1.0f / ((_140 * 18.6875f) + 1.0f)) * ((_140 * 18.8515625f) + 0.8359375f)))) * 78.84375f)));
  SV_Target.y = (exp2(((log2(((1.0f / ((_141 * 18.6875f) + 1.0f)) * ((_141 * 18.8515625f) + 0.8359375f)))) * 78.84375f)));
  SV_Target.z = (exp2(((log2(((1.0f / ((_142 * 18.6875f) + 1.0f)) * ((_142 * 18.8515625f) + 0.8359375f)))) * 78.84375f)));
  SV_Target.w = 1.0f;
  return SV_Target;
}
