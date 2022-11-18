import 'package:get/get.dart';

import '../../../../presentation/detail/controllers/detail.controller.dart';

class DetailControllerBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<DetailController>(
      () => DetailController(),
    );
  }
}
