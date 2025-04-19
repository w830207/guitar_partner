import 'package:get/get.dart';

import 'modules/home/binding.dart';
import 'modules/home/view.dart';

enum AppPage {
  home("/home"),
  chord("/chord"),
  metronome("/metronome"),
  tuner("/tuner"),
  web("/web");

  const AppPage(this.name);

  final String name;
}

abstract class AppPages {
  static final pages = [
    GetPage(
      name: AppPage.home.name,
      page: () => const HomePage(),
      binding: HomeBinding(),
    ),
  ];
}
