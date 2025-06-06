#include "../common.hlsl"

Texture2D<float4> t2 : register(t2);
Texture2D<float4> t1 : register(t1);
Texture2D<float4> t0 : register(t0);
SamplerState s2_s : register(s2);
SamplerState s1_s : register(s1);
SamplerState s0_s : register(s0);
cbuffer cb0 : register(b0){
  float4 cb0[18];
}

void main(
  float4 v0 : SV_Position0,
  linear centroid float4 v1 : TEXCOORD0,
  linear centroid float2 v2 : TEXCOORD1,
  out float4 o0 : SV_Target0)
{
  float4 r0,r1;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.xyzw = t1.Sample(s1_s, v2.xy).xyzw;
  r0.xyz = float3(1.59579468,-0.813476562,0) * r0.www;
  r1.xyzw = t0.Sample(s0_s, v2.xy).xyzw;
  r0.xyz = r1.www * float3(1.16412354,1.16412354,1.16412354) + r0.xyz;
  r1.xyzw = t2.Sample(s2_s, v2.xy).xyzw;
  r0.xyz = r1.www * float3(0,-0.391448975,2.01782227) + r0.xyz;
  r0.xyz = float3(-0.87065506,0.529705048,-1.08166885) + r0.xyz;
  r0.xyz = v1.xyz * r0.xyz;
  o0.xyz = saturate(cb0[17].xyz * r0.xyz);
  o0.w = v1.w;
  o0.rgb = renodx::color::srgb::Decode(o0.rgb);
  o0.rgb = PostToneMapScale(o0.rgb);
  return;
}