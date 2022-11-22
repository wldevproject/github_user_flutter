import 'package:get/get.dart';

class NavigationController extends GetxController {
  var tabIndex = 0.obs;

  @override
  void onInit() {
    super.onInit();
    tabIndex.value = 0;
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
  }

  void onItemTapped(int index) {
    tabIndex.value = index;
    print("halaman ${Get.currentRoute}");
    update();
  }
}
