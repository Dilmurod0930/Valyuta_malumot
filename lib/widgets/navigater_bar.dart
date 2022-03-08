import 'package:flutter/material.dart';
import 'package:valyuta/core/constants/color_const.dart';
import 'package:valyuta/core/constants/icon-const.dart';

class MyBar extends StatelessWidget {
  var onTap;
  int index;
  MyBar({required this.index, required this.onTap, Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      selectedItemColor: ColorConst.KPrimaryColor,
      onTap: onTap,
      currentIndex: index,
      items: [
        BottomNavigationBarItem(
            backgroundColor: Colors.white, icon: IconConst.home, label: 'Home'),
        BottomNavigationBarItem(
            backgroundColor: Colors.white,
            icon: IconConst.info,
            label: 'Info'),
        BottomNavigationBarItem(
            backgroundColor: Colors.white,
            icon: IconConst.search,
            label: 'Search'),
      ],
      type: BottomNavigationBarType.fixed,
    );
  }
}
