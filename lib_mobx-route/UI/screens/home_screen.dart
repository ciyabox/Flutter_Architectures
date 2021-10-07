import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:mobx_system_demo/Business/managers/store_manager.dart';

class HomeScreen extends StatelessWidget {
  static const route = "HomeScreen";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(centerTitle: true, title: Text("Home")),
      body: Column(
        children: [
          Observer(
            builder: (_) {
              return Padding(
                padding: const EdgeInsets.all(20.0),
                child: Row(
                  children: [
                    Expanded(
                        child: Text(
                      storeManager.localStore.valueInt.toString(),
                    )),
                    Expanded(
                      child: IconButton(
                        onPressed: () {
                          storeManager.localStore.valueInt += 1;
                        },
                        icon: Icon(Icons.plus_one),
                      ),
                    ),
                    Expanded(
                      child: IconButton(
                        onPressed: () {
                          storeManager.localStore.valueInt -= 1;
                        },
                        icon: Icon(Icons.exposure_minus_1),
                      ),
                    ),
                  ],
                ),
              );
            },
          ),
        ],
      ),
    );
  }
}
