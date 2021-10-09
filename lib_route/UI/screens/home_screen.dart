import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  static const route = "HomeScreen";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(centerTitle: true, title: Text("Home")),
      body: Center(child: Text(route)),
    );
  }
}
