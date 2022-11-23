import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:github_user_flutter/infrastructure/theme/colors.dart';
import 'package:github_user_flutter/infrastructure/utils/constants.dart';
import 'package:github_user_flutter/presentation/screens.dart';
import 'package:line_icons/line_icons.dart';
import 'controllers/navigation.controller.dart';

class NavigationScreen extends GetView<NavigationController> {
  const NavigationScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetBuilder<NavigationController>(
      builder: (controller){
        return Scaffold(
            body: SafeArea(child: IndexedStack(
              index: controller.tabIndex,
              children: const [
                UserScreen(),
                SearchScreen(),
                ProfileScreen()
              ],
            )),
            bottomNavigationBar: BottomNavigationBar(
              backgroundColor: baseColor,
              selectedFontSize: 14,
              unselectedFontSize: 14,
              showSelectedLabels: false,
              showUnselectedLabels: false,
              type: BottomNavigationBarType.fixed,
              enableFeedback: true,
              currentIndex: controller.tabIndex,
              onTap: controller.onItemTapped,
              selectedItemColor: selectedColor,
              items: [
                navBarItem(label: homePage, icon: const Icon(LineIcons.home)),
                navBarItem(label: searchPage, icon: const Icon(LineIcons.search)),
                navBarItem(label: profilePage, icon: const Icon(LineIcons.user)),
              ],
            ));
      },

    );
  }

  BottomNavigationBarItem navBarItem(
      {required String label, required Icon icon}) {
    return BottomNavigationBarItem(
      label: label,
      icon: icon,
      activeIcon: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            boxShadow: [
              BoxShadow(
                  color: selectedColor.withOpacity(0.3),
                  offset: const Offset(0, 4),
                  blurRadius: 20),
            ],
          ),
          child: icon),
    );
  }
}
