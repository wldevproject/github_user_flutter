import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:github_user_flutter/infrastructure/utils/constants.dart';
import 'package:github_user_flutter/presentation/widgets/main_bottom_navigation_bar.dart';

import 'controllers/detail.controller.dart';

class DetailScreen extends GetView<DetailController> {
  const DetailScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('DetailScreen'),
          centerTitle: true,
        ),
        body: Center(
          child: Image.network(controller.image.value),
        ),
        bottomNavigationBar: Obx(() {
          return MainBottomNavigationBar(
              currentIndex: controller.tabIndex.value);
        }));
  }
}
