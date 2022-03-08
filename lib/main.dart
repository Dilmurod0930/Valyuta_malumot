import 'package:adaptive_theme/adaptive_theme.dart';
import 'package:flutter/material.dart';
import 'package:valyuta/core/components/theme_app.dart';
import 'package:valyuta/routes/currency_routes.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  final CurrencyRoute _myRoute = CurrencyRoute();
  MyApp({Key? key}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
    return AdaptiveTheme(
      light: ThemeAPP.dark,
      dark: ThemeAPP.light,
      initial: AdaptiveThemeMode.light,
      builder: (light, dark) {
        return MaterialApp(
          debugShowCheckedModeBanner: false,
          theme: light,
          darkTheme: dark,
          initialRoute: '/main',
          onGenerateRoute: _myRoute.onGenerateRoute,
        );
      },
    );
  }
}
