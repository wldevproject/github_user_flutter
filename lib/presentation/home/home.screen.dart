import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:github_user_flutter/infrastructure/navigation/routes.dart';

import 'controllers/home.controller.dart';

class HomeScreen extends GetView<HomeController> {
  const HomeScreen({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('HomeScreen'),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          children: [
            Text(
              'HomeScreen is working',
              style: TextStyle(fontSize: 20),
            ),
            ElevatedButton(onPressed: (){
              Get.toNamed(Routes.USER);
            }, child: Text("Cus")),
          ],
        ),
      ),
    );
  }
}
