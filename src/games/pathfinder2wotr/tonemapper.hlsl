// Custom Tonemapper
// We'll create a function so we can just call this in other shaders, instead of having to manage a wall of code in multiple files

#include "./DICE.hlsl"
#include "./shared.h"

float3 applyUserTonemap(float3 untonemapped, Texture2D lutTexture, SamplerState lutSampler, float3 preCompute) {
  float3 outputColor;

  outputColor = untonemapped;

  // Create LUT config
  renodx::lut::Config lut_config = renodx::lut::config::Create(
      lutSampler,
      injectedData.colorGradeLUTStrength,
      injectedData.colorGradeLUTScaling,
      renodx::lut::config::type::ARRI_C1000_NO_CUT,
      renodx::lut::config::type::LINEAR,
      preCompute);

  // New way of handling vanilla
  // Lerp untonemapped with lutcolor, and saturate
  if (injectedData.toneMapType == 0.f) {
    float3 lutColor = min(1, renodx::lut::Sample(lutTexture, lut_config, outputColor));
    outputColor = lerp(outputColor, lutColor, injectedData.colorGradeLUTStrength);
    outputColor = saturate(outputColor);
  }

  // UserColorGrading offsets
  // hard coded values that you can use to set as defaults
  // Assuming the slider is 50 with 0.02 steps and, the math comes out to offset * 1.f -- or 1.f * 1.f = 1.f
  // An offset of 1.1f will be 1.1f * 1.f = 1.1f with the sliders at 50 (default)
  float highlights = 1.f;
  float shadows = 1.f;
  float contrast = 1.f;
  float saturation = 1.f;
  float dechroma = 1.f;

  if (injectedData.toneMapType != 0) {  // UserColorGrading, pre-tonemap
    outputColor = renodx::color::grade::UserColorGrading(
        outputColor,
        injectedData.colorGradeExposure,                 // exposure
        highlights * injectedData.colorGradeHighlights,  // highlights
        shadows * injectedData.colorGradeShadows,        // shadows
        contrast * injectedData.colorGradeContrast,      // contrast
        1.f,                                             // saturation, we'll do this post-tonemap
        0.f,                                             // dechroma/blowout, we'll do this post-tonemap
        0.f);                                            // hue correction, might not need it [yet]
  }

  // Start tonemapper if/else
  if (injectedData.toneMapType == 2.f) {  // DICE
    DICESettings DICEconfig = DefaultDICESettings();
    DICEconfig.Type = 3;
    DICEconfig.ShoulderStart = 0.33f;  // Start shoulder

    float dicePaperWhite = injectedData.toneMapGameNits / 80.f;
    float dicePeakWhite = injectedData.toneMapPeakNits / 80.f;

    float sdrColor = DICETonemap(outputColor * dicePaperWhite, dicePaperWhite, DICEconfig) / dicePaperWhite;
    outputColor = DICETonemap(outputColor * dicePaperWhite, dicePeakWhite, DICEconfig) / dicePaperWhite;

    float3 lutColor = min(1, renodx::lut::Sample(lutTexture, lut_config, outputColor));
    outputColor = renodx::tonemap::UpgradeToneMap(outputColor, sdrColor, lutColor, 1.f);

  } else if (injectedData.toneMapType == 3.f) {  // baby reinhard
    float ReinhardPeak = injectedData.toneMapPeakNits / injectedData.toneMapGameNits;
    float3 sdrColor = renodx::tonemap::ReinhardScalable(outputColor, 1.f);
    outputColor = renodx::tonemap::ReinhardScalable(outputColor, ReinhardPeak);

    float3 lutColor = min(1, renodx::lut::Sample(lutTexture, lut_config, outputColor));
    outputColor = renodx::tonemap::UpgradeToneMap(outputColor, sdrColor, lutColor, 1.f);

  } else if (injectedData.toneMapType == 4.f) {  // Frostbite
    float frostbitePeak = injectedData.toneMapPeakNits / injectedData.toneMapGameNits;
    if (any(outputColor != 0.f)) {  // Avoid dividing by zero with frostbite, still artifacts; frostbite is a WIP
      float3 sdrColor = renodx::tonemap::frostbite::BT709(outputColor, 1.f);
      outputColor = renodx::tonemap::frostbite::BT709(outputColor, frostbitePeak);

      float3 lutColor = min(1, renodx::lut::Sample(lutTexture, lut_config, outputColor));   // Sample our LUT
      outputColor = renodx::tonemap::UpgradeToneMap(outputColor, sdrColor, lutColor, 1.f);  // Combine our untonemapped image with the LUT
    }

  } else if (injectedData.toneMapType == 5.f) {  // RenoDRT
    float RenoDRTPeak = (injectedData.toneMapPeakNits / injectedData.toneMapGameNits) * 100.f;

    // Color, Peak, midgray, midgraynits, exposure, highlights, shadows, contrast, saturation, dechroma, flare, hueCorrectionStrength
    float3 sdrColor = renodx::tonemap::renodrt::BT709(outputColor, 100.f, 0.18f, 18.f, 1.f, 1.f, 1.f, 1.f, 1.f, 0.5f, 0.f, 0.f);
    outputColor = renodx::tonemap::renodrt::BT709(outputColor, RenoDRTPeak, 0.18f, 18.f, 1.f, 1.f, 1.f, 1.f, 1.f, 0.5f, 0.f, 0.f);

    float3 lutColor = min(1, renodx::lut::Sample(lutTexture, lut_config, outputColor));
    outputColor = renodx::tonemap::UpgradeToneMap(outputColor, sdrColor, lutColor, 1.f);
  }

  // } else if (injectedData.toneMapType == 6.f) {  // test
  //   float RenoDRTPeak = (injectedData.toneMapPeakNits / injectedData.toneMapGameNits) * 100.f;

  //   // Color, Peak, midgray, midgraynits, exposure, highlights, shadows, contrast, saturation, dechroma, flare, hueCorrectionStrength
  //   float3 sdrColor = renodx::tonemap::renodrt::BT709(outputColor, 100.f, 0.18f, 18.f, 1.f, 1.f, 1.f, 1.f, 1.f, 0.5f, 0.f, 0.f);
  //   outputColor = renodx::tonemap::renodrt::BT709(outputColor, RenoDRTPeak, 0.18f, 18.f, 1.f, 1.f, 1.f, 1.f, 1.f, 0.5f, 0.f, 0.f);

  //   // float3 lutColor = min(1.f, renodx::lut::Sample(lutTexture, lut_config, outputColor));
  //   float3 lutColor = renodx::lut::Sample(lutTexture, lut_config, outputColor);
  //   outputColor = renodx::tonemap::UpgradeToneMap(outputColor, sdrColor, lutColor, 1.f);
  //   // outputColor = lutColor;
  // }

  if (injectedData.toneMapType != 0) {  // UserColorGrading, post-tonemap
    outputColor = renodx::color::grade::UserColorGrading(
        outputColor,
        1.f,                                             // exposure
        1.f,                                             // highlights
        1.f,                                             // shadows
        1.f,                                             // contrast
        saturation * injectedData.colorGradeSaturation,  // saturation
        dechroma * 0.f,                                  // dechroma/blowout, we do this post tonemap
        0.f);                                            // hue correction, might not need it [yet]
  }

  // outputColor = renodx::color::bt709::clamp::AP1(outputColor);  // Clamp to AP1 to avoid negative colors
  outputColor = renodx::color::bt709::clamp::BT2020(outputColor);  // Clamp to BT2020 to avoid negative colors

  return outputColor;
}