import 'package:flutter/material.dart';
import 'package:valyuta/models/currence_model.dart';
import 'package:valyuta/view/page/splash_Screen_page.dart';
import 'package:valyuta/view/screens/currense_home_page.dart';
import 'package:valyuta/view/screens/main_page.dart';

class CurrencyRoute {
  Route? onGenerateRoute(RouteSettings s) {
    var args = s.arguments;
    switch (s.name) {
      case '/main':
        return MaterialPageRoute(builder: (_) => const MainPage());
      case '/':
        return MaterialPageRoute(builder: (_) => const SplashScreen());
      case '/home':
        return MaterialPageRoute(
            builder: (_) => HomePage(
                  currencyModel: args as List<CurrencyModel>,
                ));
    }
  }
}
