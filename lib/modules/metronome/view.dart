import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:numberpicker/numberpicker.dart';

import 'logic.dart';

class MetronomePage extends GetView<MetronomeLogic> {
  const MetronomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Obx(() {
            int tickIndex = controller.tickCount.value % 4;
            int tockAmount = controller.meterType.value.beats - 1;
            int tockIndex =
                controller.tockCount.value % controller.meterType.value.beats;

            return Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                for (int i = 1; i <= 4; i++)
                  Builder(
                    builder: (context) {
                      bool isTickHere = tickIndex == i;
                      if (i == 4 && tickIndex == 0) isTickHere = true;
                      if (controller.tickCount.value == 0) isTickHere = false;

                      return Row(
                        children: [
                          Container(
                            width: 30,
                            height: 30,
                            decoration: BoxDecoration(
                              color: isTickHere && tockIndex == 0
                                  ? Colors.blue
                                  : Colors.black,
                              shape: BoxShape.circle,
                            ),
                          ),
                          for (int j = 1; j <= tockAmount; j++)
                            Builder(builder: (context) {
                              bool isTockHere = tockIndex == j;

                              return Container(
                                width: 10,
                                height: 10,
                                margin: const EdgeInsets.only(left: 5),
                                decoration: BoxDecoration(
                                  color: isTickHere && isTockHere
                                      ? Colors.blue
                                      : Colors.black,
                                  shape: BoxShape.circle,
                                ),
                              );
                            }),
                        ],
                      );
                    },
                  ),
              ],
            );
          }),
          Obx(() {
            return IgnorePointer(
              ignoring: controller.isPlaying.value,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  IconButton(
                    onPressed: controller.decreaseBpm,
                    icon: const Icon(Icons.remove),
                  ),
                  NumberPicker(
                    minValue: minBpm,
                    maxValue: maxBpm,
                    itemHeight: 100,
                    axis: Axis.horizontal,
                    selectedTextStyle: Theme.of(context)
                        .textTheme
                        .headlineSmall
                        ?.copyWith(color: Colors.blue),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(16),
                      border: Border.all(color: Colors.black26),
                    ),
                    value: controller.bpm.value,
                    onChanged: controller.changeBpm,
                  ),
                  IconButton(
                    onPressed: controller.increaseBpm,
                    icon: const Icon(Icons.add),
                  ),
                ],
              ),
            );
          }),
          Obx(() {
            return IgnorePointer(
              ignoring: controller.isPlaying.value,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  for (MeterType meterType in MeterType.values)
                    InkWell(
                      onTap: () {
                        controller.changeMeterType(meterType);
                      },
                      child: Image.asset(
                        meterType.img,
                        color: meterType == controller.meterType.value
                            ? Colors.black
                            : Colors.black26,
                        width: 50,
                        height: 50,
                      ),
                    ),
                ],
              ),
            );
          }),
          Obx(() {
            return IconButton(
              onPressed: controller.isPlaying.value
                  ? controller.stop
                  : controller.play,
              icon: Icon(
                controller.isPlaying.value
                    ? Icons.stop_circle
                    : Icons.play_circle,
                size: 80,
              ),
            );
          }),
        ],
      ),
    );
  }
}
