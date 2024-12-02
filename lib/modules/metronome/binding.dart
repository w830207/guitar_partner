import 'package:get/get.dart';

import 'logic.dart';

class MetronomeBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => MetronomeLogic());
  }
}
