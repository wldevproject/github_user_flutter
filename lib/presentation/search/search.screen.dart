import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:github_user_flutter/infrastructure/navigation/routes.dart';
import 'package:github_user_flutter/infrastructure/theme/colors.dart';
import 'package:github_user_flutter/presentation/widgets/custom_list_item_one.dart';

import 'controllers/search.controller.dart';

class SearchScreen extends GetView<SearchController> {
  const SearchScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('GitHub Search'),
          centerTitle: true,
        ),
        body: Obx(() {
          if (controller.isLoading.value) {
            return const Center(child: CircularProgressIndicator());
          } else {
            return Column(
              children: [
                Padding(
                  padding: const EdgeInsets.all(16),
                  child: Form(
                    // key: _viewModel.formKey,
                    child: TextFormField(
                      // controller: _viewModel.titleAddress,
                      decoration: InputDecoration(
                          hintText: 'Search',
                          hintStyle: const TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.w400,
                          ).copyWith(color: primaryHint),
                          contentPadding: const EdgeInsets.symmetric(
                              vertical: 12.0, horizontal: 12),
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10.0))),
                    ),
                  ),
                ),
                Expanded(
                  child: ListView.builder(
                    physics: const BouncingScrollPhysics(),
                    padding: const EdgeInsets.all(8),
                    itemCount: controller.datas.length,
                    itemBuilder: (BuildContext context, int index) {
                      return CustomListItemOne(
                          thumbnail: controller.datas[index]?.avatarUrl ?? '',
                          title: controller.datas[index]?.login ?? '',
                          user: controller.datas[index]?.htmlUrl ?? '',
                          cardColor: primaryGrey,
                          onTap: () => Get.toNamed(Routes.DETAIL));
                    },
                  ),
                ),
              ],
            );
          }
        }));
  }
}
