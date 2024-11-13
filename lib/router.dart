import 'package:get/get.dart';

import 'modules/chord/binding.dart';
import 'modules/chord/view.dart';
import 'modules/home/binding.dart';
import 'modules/home/view.dart';

enum AppPage {
  home("/home"),
  chord("/chord");

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
    GetPage(
      name: AppPage.chord.name,
      page: () => const ChordPage(),
      binding: ChordBinding(),
    ),
  ];
}
