import 'package:flutter/material.dart';

import 'package:get/get.dart';

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
        child: Text(
          'DetailScreen is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
