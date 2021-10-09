import 'package:flutter/material.dart';

import '../../UI/screens/home_screen.dart';

class SplashScreen extends StatelessWidget {
  static const route = "SplashScreen";

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () => Future.value(false),
      child: Scaffold(
        body: FutureBuilder<bool>(
          future: startFunction(),
          builder: (_, snapshot) {
            if (snapshot.hasData)
              WidgetsBinding.instance?.addPostFrameCallback(
                (_) => Navigator.pushReplacementNamed(context, HomeScreen.route),
              );
            return Center(child: Text(route));
          },
        ),
      ),
    );
  }

  Future<bool> startFunction() async {
    await Future.delayed(Duration(seconds: 3));
    return true;
  }
}
