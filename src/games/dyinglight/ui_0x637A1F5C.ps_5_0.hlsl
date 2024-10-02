#include "./shared.h"

// ---- Created with 3Dmigoto v1.3.16 on Sat May 25 22:39:14 2024
Texture2D<float4> t1 : register(t1);

Texture2D<float4> t0 : register(t0);

SamplerState s1_s : register(s1);

SamplerState s0_s : register(s0);

cbuffer cb0 : register(b0)
{
  float4 cb0[4];
}




// 3Dmigoto declarations
#define cmp -


void main(
  float4 v0 : SV_POSITION0,
  float4 v1 : TEXCOORD0,
  out float4 o0 : SV_TARGET0)
{
  float4 r0,r1;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.xy = cb0[2].zz * v1.xy;
  r0.xy = floor(r0.xy);
  r0.z = 1 / cb0[2].z;
  r0.yz = r0.xy * r0.zz + cb0[2].ww;
  r0.w = 0.25 + r0.z;
  r1.x = 20 * cb0[1].x;
  r1.x = floor(r1.x);
  r0.x = r1.x * 0.00999999978 + r0.y;
  r0.y = t1.Sample(s1_s, r0.xw).y;
  r0.y = -cb0[3].y + r0.y;
  r0.y = cmp(0 >= r0.y);
  r0.y = r0.y ? 0 : 1;
  r1.xyzw = float4(0,0.5,0,0.75) + r0.xzxz;
  r0.x = t1.Sample(s1_s, r0.xz).y;
  r0.x = -cb0[3].x + r0.x;
  r0.x = cmp(0 >= r0.x);
  r0.x = r0.x ? 0 : 1;
  r0.z = t1.Sample(s1_s, r1.xy).y;
  r0.w = t1.Sample(s1_s, r1.zw).y;
  r0.zw = -cb0[3].zw + r0.zw;
  r0.zw = cmp(float2(0,0) >= r0.zw);
  r0.zw = r0.zw ? float2(0,0) : float2(1,1);
  r0.y = r0.y + r0.z;
  r0.y = r0.y + r0.w;
  r0.y = 0.166666999 * r0.y;
  r1.xyzw = t0.Sample(s0_s, v1.zw).xyzw;
  r0.x = saturate(r0.x * r1.w + r0.y);
  r0.y = r0.y * r0.y;
  o0.w = cb0[0].w * r0.x;
  r0.xzw = cb0[0].xyz * cb0[0].xyz;
  o0.xyz = saturate(r0.xzw * r1.xyz + r0.yyy);

  if (injectedData.toneMapGammaCorrection) { // fix srgb 2.2 mismatch
    o0.xyz = renodx::color::srgb::Encode(o0.xyz);
    o0.xyz = pow(o0.xyz, 2.2f);
  }
  o0.xyz *= injectedData.toneMapUINits/80.f;
  return;
}