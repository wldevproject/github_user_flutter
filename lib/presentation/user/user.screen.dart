import 'package:flutter/material.dart';

import 'package:get/get.dart';

import 'controllers/user.controller.dart';

class UserScreen extends GetView<UserController> {
  const UserScreen({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('UserScreen'),
        centerTitle: true,
      ),
      body: Center(
        child: Text(
          'UserScreen is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
