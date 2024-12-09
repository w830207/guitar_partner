import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:guitar_partner/router.dart';

import 'modules/home/view.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: const ColorScheme.light(
          primary: Color(0xFF343434),
          surface: Color(0xFFF1F0F0),
        ),
      ),
      home: const HomePage(),
      getPages: AppPages.pages,
    );
  }
}
