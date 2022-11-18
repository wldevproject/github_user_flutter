import 'package:get/get.dart';

class DetailController extends GetxController {
  var image = ''.obs;

  @override
  void onInit() {
    image.value = Get.arguments;
    super.onInit();
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
  }

}
