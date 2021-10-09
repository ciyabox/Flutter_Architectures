import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:mobx_system_demo/Business/managers/store_manager.dart';
import 'package:mobx_system_demo/Business/state_management/notifier/global_notifier.dart';
import 'package:mobx_system_demo/UI/widgets/screen_widgets/home_screen_widgets.dart';

class HomeScreen extends StatelessWidget {
  static const route = "HomeScreen";

  final homeScreenWidgets = HomeScreenWidgets();
  final tempNotifier = GlobalNotifier<int>(11);

  init() {
    storeManager.localStore..getFutureValue();
  }

  @override
  Widget build(BuildContext context) {
    init();
    return Scaffold(
      appBar: AppBar(centerTitle: true, title: Text("Home")),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            Observer(
              builder: (context) => Row(
                children: [
                  Expanded(
                    child: homeScreenWidgets.textWidget(
                      text: storeManager.localStore.futureValue.toString(),
                      margin: const EdgeInsets.all(4),
                    ),
                  ),
                  Expanded(
                    child: homeScreenWidgets.iconButtonWidget(
                      icon: Icons.exposure_minus_1,
                      onPressed: () => storeManager.localStore.value -= 1,
                    ),
                  ),
                  Expanded(
                    child: homeScreenWidgets.textWidget(
                      text: storeManager.localStore.value.toString(),
                      margin: const EdgeInsets.all(4),
                    ),
                  ),
                  Expanded(
                    child: homeScreenWidgets.iconButtonWidget(
                      icon: Icons.plus_one,
                      onPressed: () => storeManager.localStore.value += 1,
                    ),
                  ),
                ],
              ),
            ),
            Row(
              children: [
                Spacer(),
                Expanded(
                  child: homeScreenWidgets.iconButtonWidget(
                    icon: Icons.exposure_minus_1,
                    onPressed: () {
                      tempNotifier.value -= 1;
                    },
                  ),
                ),
                Expanded(
                  child: ValueListenableBuilder<int>(
                    valueListenable: tempNotifier,
                    builder: (context, value, child) =>
                        homeScreenWidgets.textWidget(
                      text: value.toString(),
                    ),
                  ),
                ),
                Expanded(
                  child: homeScreenWidgets.iconButtonWidget(
                    icon: Icons.plus_one,
                    onPressed: () {
                      tempNotifier.value += 1;
                    },
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
