import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:github_user_flutter/presentation/widgets/main_bottom_navigation_bar.dart';

import 'controllers/navigation.controller.dart';

class NavigationScreen extends GetView<NavigationController> {
  const NavigationScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('NavigationScreen'),
          centerTitle: true,
        ),
        body: Center(
          child: Text(
            'NavigationScreen is working',
            style: TextStyle(fontSize: 20),
          ),
        ),
        bottomNavigationBar:
            MainBottomNavigationBar(currentIndex: controller.tabIndex.value));
  }
}
