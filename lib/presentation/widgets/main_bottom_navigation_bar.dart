import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:github_user_flutter/infrastructure/navigation/routes.dart';
import 'package:github_user_flutter/infrastructure/theme/colors.dart';
import 'package:github_user_flutter/infrastructure/utils/constants.dart';
import 'package:line_icons/line_icons.dart';

class MainBottomNavigationBar extends StatefulWidget {
  const MainBottomNavigationBar({super.key, required int currentIndex});

  @override
  State<MainBottomNavigationBar> createState() => _MainBottomNavigationBarState();
}

class _MainBottomNavigationBarState extends State<MainBottomNavigationBar> {
  int _selectedNavbar = 0;

  @override
  void initState() {
    _selectedNavbar = 0;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      backgroundColor: baseColor,
      selectedFontSize: 14,
      unselectedFontSize: 14,
      showSelectedLabels: false,
      showUnselectedLabels: false,
      type: BottomNavigationBarType.fixed,
      enableFeedback: true,
      currentIndex: _selectedNavbar,
      onTap: _changeSelectedNavBar,
      selectedItemColor: selectedColor,
      items: [
        navBarItem(label: homePage, icon: const Icon(LineIcons.home)),
        navBarItem(label: searchPage, icon: const Icon(LineIcons.search)),
        navBarItem(label: profilePage, icon: const Icon(LineIcons.user)),
      ],
    );
  }

  BottomNavigationBarItem navBarItem({required String label, required Icon icon}) {
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

  void _changeSelectedNavBar(int index) {
    setState(() {
      _selectedNavbar = index;
      print(_selectedNavbar);
      switch(index) {
        case 0: {
          Get.back();
          Get.offNamed(Routes.USER, arguments: _selectedNavbar);
        }
        break;
        case 1: {
          Get.back();
          Get.offNamed(Routes.SEARCH, arguments: _selectedNavbar);
        }
        break;
        case 2: {
          Get.back();
          Get.offNamed(Routes.DETAIL, arguments: _selectedNavbar);
        }
        break;
      }
      print("halaman  ${Get.currentRoute}");
    });
  }
}