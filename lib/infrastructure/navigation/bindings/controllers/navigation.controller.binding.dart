import 'package:get/get.dart';

import '../../../../presentation/navigation/controllers/navigation.controller.dart';

class NavigationControllerBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<NavigationController>(
      () => NavigationController(),
    );
  }
}
