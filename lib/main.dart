import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:guitar_partner/router.dart';

import 'modules/home/view.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: const ColorScheme.light(primary: Colors.grey),
      ),
      home: const HomePage(),
      getPages: AppPages.pages,
    );
  }
}
