import 'package:get/get.dart';

import 'logic.dart';

class ChordBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => ChordLogic());
  }
}
