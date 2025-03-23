#include "../common.hlsl"

Texture2D<float4> t0 : register(t0);
SamplerState s0_s : register(s0);
cbuffer cb0 : register(b0){
  float4 cb0[6];
}

void main(
  float4 v0 : SV_Position0,
  float2 v1 : TEXCOORD0,
  uint v2 : SV_IsFrontFace0,
  out float4 o0 : SV_Target0)
{
  float4 r0,r1;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.xyzw = t0.Sample(s0_s, v1.xy).xyzw;
  r0.rgb = renodx::math::SignPow(r0.rgb, 2.f);
  r0.rgba = lerp(r0.rgba, cb0[5].rgba, cb0[5].w);
  o0.xyz = renodx::math::SignSqrt(r0.rgb);
  o0.w = r0.w;
  return;
}