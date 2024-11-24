import 'package:get/get.dart';

import 'logic.dart';

class TunerBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => TunerLogic());
  }
}
