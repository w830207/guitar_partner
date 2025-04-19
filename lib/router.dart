import 'package:get/get.dart';
import 'package:guitar_partner/modules/metronome/binding.dart';
import 'package:guitar_partner/modules/metronome/view.dart';
import 'package:guitar_partner/modules/tuner/binding.dart';
import 'package:guitar_partner/modules/tuner/view.dart';
import 'package:guitar_partner/modules/web/binding.dart';
import 'package:guitar_partner/modules/web/view.dart';

import 'modules/chord/binding.dart';
import 'modules/chord/view.dart';
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
    GetPage(
      name: AppPage.chord.name,
      page: () => const ChordPage(),
      binding: ChordBinding(),
    ),
    GetPage(
      name: AppPage.metronome.name,
      page: () => const MetronomePage(),
      binding: MetronomeBinding(),
    ),
    GetPage(
      name: AppPage.tuner.name,
      page: () => const TunerPage(),
      binding: TunerBinding(),
    ),
    GetPage(
      name: AppPage.web.name,
      page: () => const WebPage(),
      binding: WebBinding(),
    ),
  ];
}
