import 'package:get/get.dart';
import 'non_reactive_navigation/Page1.controller.dart';
import 'non_reactive_navigation/Page1.view.dart';

import 'non_reactive_navigation/Page2.controller.dart';

class AppRoutes {
  static final routes = [
    GetPage(
        name: 'non-reactive-navigation',
        page: () => Page1View(),
        binding: BindingsBuilder(() {
          Get.put(Page1Controller());
          Get.lazyPut(() => Page2Controller());
        }))
  ];
}
