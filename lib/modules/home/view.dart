import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:guitar_partner/router.dart';

import 'logic.dart';

class HomePage extends GetView<HomeLogic> {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextButton(
              onPressed: () {
                Get.toNamed(AppPage.chord.name);
              },
              child: const Text("查和弦"),
            ),
            TextButton(
              onPressed: () {
                Get.toNamed(AppPage.metronome.name);
              },
              child: const Text("節拍器"),
            ),
            TextButton(
              onPressed: () {
                Get.toNamed(AppPage.tuner.name);
              },
              child: const Text("調音器"),
            ),
          ],
        ),
      ),
    );
  }
}
