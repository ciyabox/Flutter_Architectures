import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:mobx_system_demo/Business/managers/store_manager.dart';
import 'package:mobx_system_demo/UI/widgets/screen_widgets/home_screen_widgets.dart';

class HomeScreen extends StatelessWidget {
  static const route = "HomeScreen";

  final homeScreenWidgets = HomeScreenWidgets();

  init() {
    storeManager.localStore..getFutureValue();
  }

  @override
  Widget build(BuildContext context) {
    init();
    return Scaffold(
      appBar: AppBar(centerTitle: true, title: Text("Home")),
      body: Center(child: Text(route)),
    );
  }
}
