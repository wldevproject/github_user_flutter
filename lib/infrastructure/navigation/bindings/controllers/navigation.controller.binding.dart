import 'package:get/get.dart';
import 'package:github_user_flutter/presentation/navigation/controllers/navigation.controller.dart';
import 'package:github_user_flutter/presentation/profile/controllers/profile.controller.dart';
import 'package:github_user_flutter/presentation/search/controllers/search.controller.dart';
import 'package:github_user_flutter/presentation/user/controllers/user.controller.dart';


class NavigationControllerBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<NavigationController>(() => NavigationController());
    Get.lazyPut<UserController>(() => UserController());
    Get.lazyPut<SearchController>(() => SearchController());
    Get.lazyPut<ProfileController>(() => ProfileController());
  }
}
