import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:guitar_partner/router.dart';
import 'package:package_info_plus/package_info_plus.dart';

import 'logic.dart';

class HomePage extends GetView<HomeLogic> {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          IconButton(
            onPressed: () async {
              PackageInfo packageInfo = await PackageInfo.fromPlatform();
              if (context.mounted) {
                showAboutDialog(
                  context: context,
                  applicationName: packageInfo.appName,
                  children: [
                    GestureDetector(
                      onTap: controller.onTap,
                      child: Text("APP version:${packageInfo.version}"),
                    ),
                  ],
                );
              }
            },
            icon: const Icon(Icons.settings),
          ),
        ],
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextButton(
              onPressed: () {
                Get.toNamed(AppPage.chord.name);
              },
              child: const Text("Chord"),
            ),
            TextButton(
              onPressed: () {
                Get.toNamed(AppPage.metronome.name);
              },
              child: const Text("Metronome"),
            ),
            TextButton(
              onPressed: () {
                Get.toNamed(AppPage.tuner.name);
              },
              child: const Text("Tuner"),
            ),
            TextButton(
              onPressed: () {
                Get.toNamed(AppPage.web.name);
              },
              child: const Text("Data From"),
            ),
          ],
        ),
      ),
    );
  }
}
