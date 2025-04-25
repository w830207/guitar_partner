import 'package:get/get.dart';
import 'package:shorebird_code_push/shorebird_code_push.dart';
import 'package:webview_flutter/webview_flutter.dart';

class HomeLogic extends GetxController {
  late WebViewController webViewController;
  final String homepage = 'https://demo-pas.cgshow-1t1b-2.com/Mobile/Index';
  ShorebirdUpdater updater = ShorebirdUpdater();

  @override
  void onReady() {
    super.onReady();
    checkForUpdates();
  }

  @override
  void onInit() {
    super.onInit();

    webViewController = WebViewController()
      ..setJavaScriptMode(JavaScriptMode.unrestricted)
      ..setNavigationDelegate(
        NavigationDelegate(
          onProgress: (int progress) {},
          onPageStarted: (String url) {},
          onPageFinished: (String url) {},
          onHttpError: (HttpResponseError error) {},
          onWebResourceError: (WebResourceError error) {},
          onNavigationRequest: (NavigationRequest request) {
            // if (request.url.startsWith('https://www.youtube.com/')) {
            //   return NavigationDecision.prevent;
            // }
            return NavigationDecision.navigate;
          },
        ),
      )
      ..loadRequest(Uri.parse(homepage));
  }

  onPressed() {
    webViewController.loadRequest(Uri.parse(homepage));
  }

  Future<void> checkForUpdates() async {
    // Check whether a new update is available.
    final status = await updater.checkForUpdate();
    Get.snackbar("patch status", status.name);

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
