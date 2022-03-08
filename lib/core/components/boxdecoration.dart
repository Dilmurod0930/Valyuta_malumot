import 'package:flutter/painting.dart';
import 'package:valyuta/core/constants/color_const.dart';
import 'package:valyuta/core/constants/radius_const.dart';

class MyBoxdecoration {
  static decoration({Color color = ColorConst.darkblue}) {
    return BoxDecoration(
      color: color,
      borderRadius: BorderRadius.circular(RadiusConst.Medium)
    );
  }
}