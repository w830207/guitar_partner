import 'dart:async';

import 'package:audioplayers/audioplayers.dart';
import 'package:get/get.dart';

const int minute = 60;
const int minBpm = 1;
const int maxBpm = 320;

class MetronomeLogic extends GetxController with GetTickerProviderStateMixin {
  RxInt bpm = 60.obs;

  RxBool isPlaying = false.obs;

  Timer? timer1;
  Timer? timer2;

  AudioPlayer player1 = AudioPlayer();
  AudioPlayer player2 = AudioPlayer();
  AudioPlayer player3 = AudioPlayer();
  AudioPlayer player4 = AudioPlayer();

  Rx<MeterType> meterType = MeterType.single.obs;

  RxInt tickCount = 0.obs;
  RxInt tockCount = 0.obs;

  @override
  void onInit() {
    super.onInit();
    player1.setSource(AssetSource('beat1.mp3'));
    player2.setSource(AssetSource('beat2.mp3'));
    player3.setSource(AssetSource('beat2.mp3'));
    player4.setSource(AssetSource('beat2.mp3'));
    print(player1.playerId);
    print(player2.playerId);
    print(player3.playerId);
    print(player4.playerId);
  }

  changeBpm(int value) {
    bpm.call(value.clamp(minBpm, maxBpm));
  }

  increaseBpm() {
    changeBpm(bpm.value + 10);
  }

  decreaseBpm() {
    changeBpm(bpm.value - 10);
  }

  changeMeterType(MeterType type) {
    meterType.call(type);
  }

  play() {
    tickCount.value = 0;
    isPlaying.call(true);
    double microseconds = minute / bpm.value * 1000000;
    double microseconds2 = microseconds / meterType.value.beats;

    timer1 = Timer.periodic(
      Duration(microseconds: microseconds.toInt()),
      (timer) async {
        // 播放重音
        // print("tick");
        player1.resume();
        tickCount.value++;

        tockCount.value = 0;
        int target = meterType.value.beats - 1;
        if (target > 0) {
          timer2 = Timer.periodic(
            Duration(microseconds: microseconds2.toInt()),
            (t) async {
              // 播放輕音
              // print("tock");
              switch (tockCount.value % 3) {
                case 0:
                  player2.resume();
                case 1:
                  player3.resume();
                case 2:
                  player4.resume();
              }

              tockCount.value++;

              if (tockCount.value == target) t.cancel();
            },
          );
        }
      },
    );
  }

  stop() {
    player1.stop();
    player2.stop();
    player3.stop();
    player4.stop();
    timer1?.cancel();
    timer2?.cancel();
    tickCount.value = 0;
    tockCount.value = 0;
    isPlaying.call(false);
  }

  @override
  onClose() {
    player1.dispose();
    player2.dispose();
    player3.dispose();
    player4.dispose();
    timer1?.cancel();
    timer2?.cancel();
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
