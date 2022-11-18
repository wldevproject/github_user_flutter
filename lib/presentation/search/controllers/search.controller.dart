import 'package:get/get.dart';
import 'package:github_user_flutter/data/datasource/remote/github_service.dart';
import 'package:github_user_flutter/data/models/user_search_model.dart';

class SearchController extends GetxController {
  late final GithubService _githubService;

  var isLoading = true.obs;
  var isNotData = false.obs;
  var isNotResponse = false.obs;

  var datas = List<Items?>.empty().obs;

  @override
  void onInit() {
    _githubService = Get.put(GithubService());
    userSearch();
    super.onInit();
  }

  Future<void> userSearch() async {
    try {
      isLoading(true);
      final response = await _githubService.fetchUserSearch();

      if (response != null) {
        var data = response;
        datas.value = data.items ?? [];

        if (datas.isNotEmpty) {
          isNotData(true);
        } else {
          isNotData(false);
        }
        isNotResponse(false);
      } else {
        isNotResponse(true);
      }
    } finally {
      isLoading(false);
    }
  }
}
