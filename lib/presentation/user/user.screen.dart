import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:github_user_flutter/infrastructure/navigation/routes.dart';
import 'package:github_user_flutter/infrastructure/theme/colors.dart';
import 'package:github_user_flutter/presentation/widgets/custom_list_item_one.dart';

import 'controllers/user.controller.dart';

class UserScreen extends GetView<UserController> {
  const UserScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('GitHub Users'),
        centerTitle: true,
        actions: <Widget>[
          IconButton(
            icon: const Icon(Icons.search_rounded),
            tooltip: 'Edit',
            onPressed: () => Get.toNamed(Routes.SEARCH),
          ),
        ],
      ),
      body: Obx(() {
      if (controller.isLoading.value) {
        return const Center(child: CircularProgressIndicator());
      } else {
        return ListView.builder(
          physics: const BouncingScrollPhysics(),
          padding: const EdgeInsets.all(8),
          itemCount: controller.datas.length,
          itemBuilder: (BuildContext context, int index) {
            return CustomListItemOne(
                thumbnail: controller.datas[index]?.avatarUrl ?? '',
                title: controller.datas[index]?.login ?? '',
                user: controller.datas[index]?.htmlUrl ?? '',
                cardColor: primaryGrey,
                onTap : () => Get.toNamed(Routes.DETAIL, arguments: controller.datas[index]?.avatarUrl));
          },
        );
      }
      }),
    );
  }
}
