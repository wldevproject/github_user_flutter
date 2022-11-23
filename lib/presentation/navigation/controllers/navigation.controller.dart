import 'package:get/get.dart';

class NavigationController extends GetxController {
  var tabIndex = 0;

  @override
  void onInit() {
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

  void onItemTapped(int index) {
    tabIndex = index;
    print("halaman ${Get.currentRoute}");
    print("index ${tabIndex}");
    update();
  }
}
