import 'package:get/get.dart';
import 'package:shorebird_code_push/shorebird_code_push.dart';

class HomeLogic extends GetxController {
  ShorebirdUpdater updater = ShorebirdUpdater();
  int count = 0;

  onTap() {
    count++;
    if (count == 5) checkForUpdates();
  }

  Future<void> checkForUpdates() async {
    count = 0;
    Get.back();
    // Check whether a new update is available.
    final status = await updater.checkForUpdate();
    Get.snackbar("status", status.name);

    if (status == UpdateStatus.outdated) {
      try {
        Get.snackbar("updating", "updating");
        await updater.update();
        Get.snackbar("Restart app", "Restart app");
      } on UpdateException catch (error) {
        // Handle any errors that occur while updating.
      }
    }
  }
}
