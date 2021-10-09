import 'package:flutter/material.dart';

import 'Business/helpers/route_generator.dart';
import 'UI/screens/splash_screen.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Project Title',
      debugShowCheckedModeBanner: false,
      initialRoute: SplashScreen.route,
      onGenerateRoute: RouteGenerator.generateRoute,
    );
  }
}
