import 'package:example_project/UI/screens/home_screen.dart';
import 'package:example_project/UI/screens/splash_screen.dart';
import 'package:flutter/material.dart';

class RouteGenerator {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case SplashScreen.route:
        return MaterialPageRoute(builder: (context) => SplashScreen());
      case HomeScreen.route:
        return MaterialPageRoute(builder: (context) => HomeScreen());
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
