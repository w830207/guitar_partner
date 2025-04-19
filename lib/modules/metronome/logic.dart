import 'dart:async';

import 'package:flame_audio/flame_audio.dart';
import 'package:get/get.dart';

const int minute = 60;
const int minBpm = 1;
const int maxBpm = 320;

class MetronomeLogic extends GetxController with GetTickerProviderStateMixin {
  RxInt bpm = 60.obs;

  RxBool isPlaying = false.obs;

  Timer? timer1;
  Timer? timer2;

  late AudioPool player1;
  late AudioPool player2;

  Rx<MeterType> meterType = MeterType.single.obs;

  RxInt tickCount = 0.obs;
  RxInt tockCount = 0.obs;

  @override
  void onInit() {
    super.onInit();
    _loadSource();
  }

  _loadSource() async {
    await FlameAudio.audioCache.loadAll(['beat1.mp3', 'beat2.mp3']);
    player1 = await FlameAudio.createPool('beat1.mp3', maxPlayers: 4);
    player2 = await FlameAudio.createPool('beat2.mp3', maxPlayers: 8);
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
        player1.start();
        tickCount.value++;

        tockCount.value = 0;
        int target = meterType.value.beats - 1;
        if (target > 0) {
          timer2 = Timer.periodic(
            Duration(microseconds: microseconds2.toInt()),
            (t) async {
              // 播放輕音
              // print("tock");
              player2.start();
              tockCount.value++;

              if (tockCount.value == target) t.cancel();
            },
          );
        }
      },
    );
  }

  stop() {
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
    timer1?.cancel();
    timer2?.cancel();
    super.onClose();
  }
}

enum MeterType {
  single(beats: 1, img: "assets/single.webp"),
  duple(beats: 2, img: "assets/duple.webp"),
  // triple(beats: 3, img: "assets/triple.webp"),
  // quadruple(beats: 4, img: "assets/quadruple.webp")
  ;

  const MeterType({
    required this.beats,
    required this.img,
  });

  final int beats;
  final String img;
}
