import 'dart:async';

import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:just_audio/just_audio.dart';
import 'package:soundpool/soundpool.dart';

abstract class MetronomeLogic extends GetxController {
  final int minute = 60;

  RxInt bpm = 60.obs;

  RxBool isPlaying = false.obs;

  Timer? timer1;
  Timer? timer2;

  Rx<MeterType> meterType = MeterType.single.obs;

  late final Soundpool pool;
  int metronomeup = 999;
  int metronome = 999;

  RxInt tickCount = 0.obs;
  RxInt tockCount = 0.obs;

  late final AudioPlayer player1;
  late final AudioPlayer player2;

  changeBpm(int value) {
    bpm.call(value);
  }

  changeMeterType(MeterType type) {
    meterType.call(type);
  }

  play();

  stop();
}

class MetronomeLogicInAndroid extends MetronomeLogic {
  @override
  play() {
    tickCount.value = 0;
    isPlaying.call(true);
    double milliseconds = minute / bpm.value * 1000;
    timer1 = Timer.periodic(
      Duration(milliseconds: milliseconds.toInt()),
      (timer) async {
        // 播放重音
        // print("tick");
        pool.play(metronomeup);
        tickCount.value++;

        tockCount.value = 0;
        int target = meterType.value.beats - 1;
        if (target > 0) {
          timer2 = Timer.periodic(
            Duration(
                milliseconds: (milliseconds / meterType.value.beats).toInt()),
            (t) async {
              // 播放輕音
              // print("tock");
              pool.play(metronome);
              tockCount.value++;

              if (tockCount.value == target) t.cancel();
            },
          );
        }
      },
    );
  }

  @override
  stop() {
    tickCount.value = 0;
    tockCount.value = 0;

    timer1!.cancel();
    if (timer2 != null) timer2!.cancel();
    isPlaying.call(false);
  }

  @override
  void onInit() {
    super.onInit();
    pool = Soundpool.fromOptions();
    rootBundle.load("assets/beat1.mp3").then((asset) {
      pool.load(asset).then((id) {
        return metronomeup = id;
      });
    });
    rootBundle.load("assets/beat2.mp3").then((asset) {
      pool.load(asset).then((id) {
        return metronome = id;
      });
    });
  }

  @override
  void onClose() {
    if (timer1 != null) timer1!.cancel();
    pool.dispose();
    super.onClose();
  }
}

class MetronomeLogicInIos extends MetronomeLogic {
  @override
  play() {
    tickCount.value = 0;
    isPlaying.call(true);
    double milliseconds = minute / bpm.value * 1000;
    timer1 = Timer.periodic(
      Duration(milliseconds: milliseconds.toInt()),
      (timer) async {
        // 播放重音
        // print("tick");
        await player1.seek(Duration.zero);
        player1.play();
        tickCount.value++;

        tockCount.value = 0;
        int target = meterType.value.beats - 1;
        if (target > 0) {
          timer2 = Timer.periodic(
            Duration(
                milliseconds: (milliseconds / meterType.value.beats).toInt()),
            (t) async {
              // 播放輕音
              // print("tock");
              await player2.seek(Duration.zero);
              player2.play();

              tockCount.value++;
              if (tockCount.value == target) t.cancel();
            },
          );
        }
      },
    );
  }

  @override
  stop() {
    tickCount.value = 0;
    tockCount.value = 0;
    player1.stop();
    player2.stop();

    timer1!.cancel();
    if (timer2 != null) timer2!.cancel();
    isPlaying.call(false);
  }

  @override
  void onInit() {
    super.onInit();
    player1 = AudioPlayer();
    player2 = AudioPlayer();

    player1.setAsset(
      "assets/beat1.mp3",
      preload: true,
    );
    player2.setAsset(
      "assets/beat2.mp3",
      preload: true,
    );
  }

  @override
  void onClose() {
    if (timer1 != null) timer1!.cancel();
    player1.dispose();
    player2.dispose();
    super.onClose();
  }
}

enum MeterType {
  single(beats: 1, img: "assets/single.webp"),
  duple(beats: 2, img: "assets/duple.webp"),
  triple(beats: 3, img: "assets/triple.webp"),
  quadruple(beats: 4, img: "assets/quadruple.webp");

  const MeterType({
    required this.beats,
    required this.img,
  });

  final int beats;
  final String img;
}
