import 'package:flutter/material.dart';
import 'package:valyuta/core/constants/color_const.dart';
import 'package:valyuta/core/constants/fonsize_const.dart';
import 'package:valyuta/core/constants/fontWeight_const.dart';

class Mytext extends StatelessWidget {
  final String text;
  final Color color;
  final FontWeight fontWeight;
  final double size;
  const Mytext({this.fontWeight= FontWeightConst.normal,required this.text,this.color = ColorConst.KPrimaryColor,this.size = FontSizeConst.Medium,Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(text, style: TextStyle(color: color, fontSize: size, fontWeight: fontWeight),);
  }
}