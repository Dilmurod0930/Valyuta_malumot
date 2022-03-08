import 'package:flutter/material.dart';
import 'package:valyuta/core/constants/color_const.dart';
class ThemeAPP {
  static ThemeData light = ThemeData(
    colorScheme: const ColorScheme.light(
      primary: ColorConst.KPrimaryColor,
      brightness: Brightness.light,
    )
  );
  static ThemeData dark = ThemeData(
    colorScheme: const ColorScheme.dark(
      primary: ColorConst.KPrimaryColor,
      brightness: Brightness.dark,
    )
  );
}
