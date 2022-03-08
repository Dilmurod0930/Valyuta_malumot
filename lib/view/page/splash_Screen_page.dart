import 'dart:async';
import 'package:flutter/material.dart';
import 'package:valyuta/core/components/boxdecoration.dart';
import 'package:valyuta/core/constants/color_const.dart';
import 'package:valyuta/core/constants/icon-const.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();

    Timer(
        Duration(seconds: 5),
        () => Navigator.pushNamedAndRemoveUntil(
            context, '/main', (route) => false));
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                padding: EdgeInsets.only(
                    top: MediaQuery.of(context).size.height * 0.3),
                child: CircleAvatar(
                  backgroundColor: Colors.transparent,
                  radius: 100,
                  child: IconConst.logo,
                ),
              ),
              Positioned(
                bottom: MediaQuery.of(context).size.height * 0.6,
                child: Container(
                    height: MediaQuery.of(context).size.height * 0.4,
                    width: MediaQuery.of(context).size.width * 0.8,
                    decoration: MyBoxdecoration.decoration(
                        color: ColorConst.backcolor)),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
