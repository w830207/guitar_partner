import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:webview_flutter/webview_flutter.dart';

import 'float_button.dart';
import 'logic.dart';

class HomePage extends GetView<HomeLogic> {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Stack(
        children: [
          WebViewWidget(controller: controller.webViewController),
          FloatButton(
            onPressed: controller.onPressed,
          ),
        ],
      )),
    );
  }
}
