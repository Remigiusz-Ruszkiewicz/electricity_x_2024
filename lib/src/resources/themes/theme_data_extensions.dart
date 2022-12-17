import 'package:flutter/material.dart';

import 'custom/custom_colors.dart';
import 'custom/custom_sizes.dart';
import 'custom/custom_text_styles.dart';

extension ThemeDataExtensions on ThemeData {
  static final Map<InputDecorationTheme, CustomColors> _customColors = <InputDecorationTheme, CustomColors>{};
  static CustomColors? emptyCustomColors;
  static final Map<InputDecorationTheme, CustomTextStyles> _customTextStyles =
      <InputDecorationTheme, CustomTextStyles>{};
  static CustomTextStyles? emptyCustomTextStyles;
  static final Map<InputDecorationTheme, CustomSizes> _customSizes = <InputDecorationTheme, CustomSizes>{};
  static CustomSizes? emptyCustomSizes;

  void addCustomSizes(CustomSizes custom) {
    _customSizes[inputDecorationTheme] = custom;
  }

  void addCustomColors(CustomColors custom) {
    _customColors[inputDecorationTheme] = custom;
  }

  void addCustomTextDecoration(CustomTextStyles custom) {
    _customTextStyles[inputDecorationTheme] = custom;
  }

  CustomSizes get customSizes {
    CustomSizes? o = _customSizes[inputDecorationTheme];
    if (o != null) {
      emptyCustomSizes ??= CustomSizes();
      o = emptyCustomSizes;
    }

    return o!;
  }

  CustomTextStyles get customTextStyles {
    CustomTextStyles? o = _customTextStyles[inputDecorationTheme];
    if (o != null) {
      emptyCustomTextStyles ??= CustomTextStyles();
      o = emptyCustomTextStyles;
    }
    return o!;
  }

  CustomColors get customColors {
    CustomColors? o = _customColors[inputDecorationTheme];
    if (o != null) {
      emptyCustomColors ??= CustomColors();
      o = emptyCustomColors;
    }
    return o!;
  }
}
