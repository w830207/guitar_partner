import 'dart:io';

import 'package:get/get.dart';

import 'logic.dart';

class MetronomeBinding extends Bindings {
  @override
  void dependencies() {
    if (Platform.isIOS) {
      Get.lazyPut(() => MetronomeLogicInIos());
    } else {
      Get.lazyPut(() => MetronomeLogicInAndroid());
    }
  }
}
