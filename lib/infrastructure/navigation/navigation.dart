import 'package:flutter/material.dart';

import 'package:get/get.dart';

import 'package:github_user_flutter/data/domain/config.dart';

import '../../presentation/screens.dart';
import 'bindings/controllers/controllers_bindings.dart';
import 'routes.dart';

class EnvironmentsBadge extends StatelessWidget {
  final Widget child;
  EnvironmentsBadge({required this.child});
  @override
  Widget build(BuildContext context) {
    var env = ConfigEnvironments.getEnvironments()['env'];
    return env != Environments.PRODUCTION
        ? Banner(
            location: BannerLocation.topStart,
            message: env!,
            color: env == Environments.QAS ? Colors.blue : Colors.purple,
            child: child,
          )
        : SizedBox(child: child);
  }
}

class Nav {
  static List<GetPage> routes = [
    GetPage(
      name: Routes.HOME,
      page: () => const HomeScreen(),
      binding: HomeControllerBinding(),
    ),
    GetPage(
      name: Routes.NAVIGATION,
      page: () => const NavigationScreen(),
      binding: NavigationControllerBinding(),
    ),
    GetPage(
      name: Routes.USER,
      page: () => const UserScreen(),
    ),
    GetPage(
      name: Routes.SEARCH,
      page: () => const SearchScreen(),
    ),
    GetPage(
      name: Routes.PROFILE,
      page: () => const ProfileScreen(),
    ),
    GetPage(
      name: Routes.DETAIL,
      page: () => const DetailScreen(),
      binding: DetailControllerBinding(),
    ),
  ];
}
