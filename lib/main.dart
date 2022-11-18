import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:github_user_flutter/infrastructure/theme/app_theme.dart';

import 'infrastructure/navigation/navigation.dart';
import 'infrastructure/navigation/routes.dart';

void main() async {
  var initialRoute = await Routes.initialRoute;
  runApp(Main(initialRoute));
}

class Main extends StatelessWidget {
  final String initialRoute;
  Main(this.initialRoute);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      initialRoute: initialRoute,
      theme: AppTheme.light,
      getPages: Nav.routes,
    );
  }
}
