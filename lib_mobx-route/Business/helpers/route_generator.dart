import 'package:flutter/material.dart';

import '../../UI/screens/home_screen.dart';
import '../../UI/screens/splash_screen.dart';

class RouteGenerator {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case SplashScreen.route:
        return MaterialPageRoute(
          builder: (context) => SplashScreen(),
          settings: settings,
        );
      case HomeScreen.route:
        return MaterialPageRoute(
          builder: (context) => HomeScreen(),
          settings: settings,
        );
      default:
        return MaterialPageRoute(
          builder: (context) => Scaffold(
            appBar: AppBar(),
            body: Center(child: Text("ERROR")),
          ),
        );
    }
  }
}
