import 'package:get/get.dart';
import 'package:github_user_flutter/data/datasource/remote/github_service.dart';
import 'package:github_user_flutter/data/models/user_list_model.dart';

class UserController extends GetxController {
  late final GithubService _githubService;

  var tabIndex = 0.obs;
  var isLoading = true.obs;
  var isNotData = false.obs;
  var isNotResponse = false.obs;

  var datas = List<UserListResponseModel?>.empty().obs;

  @override
  void onInit() {
    _githubService = Get.put(GithubService());
    print(Get.arguments);
    userList();
    super.onInit();
  }

  Future<void> userList() async {
    try {
      isLoading(true);
      final response = await _githubService.fetchUserList();

      if (response != null) {
        datas.value = response;
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
