import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'logic.dart';

class TunerPage extends GetView<TunerLogic> {
  const TunerPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: Obx(() {
          return Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              mainAxisSize: MainAxisSize.max,
              children: [
                Text(
                  controller.note.value,
                  style: const TextStyle(
                      color: Colors.black,
                      fontSize: 65.0,
                      fontWeight: FontWeight.bold),
                ),
                Text(
                  controller.status.value,
                  style: const TextStyle(
                    color: Colors.black,
                    fontSize: 18.0,
                  ),
                ),
                Offstage(
                  offstage: controller.isRecording.value,
                  child: TextButton(
                    onPressed: controller.start,
                    child: const Text("START"),
                  ),
                ),
              ]);
        }),
      ),
    );
  }
}
