import 'dart:async';
import 'dart:convert';

import 'package:get/get.dart';
import 'package:github_user_flutter/data/domain/config.dart';
import 'package:github_user_flutter/data/models/user_detail_model.dart';
import 'package:github_user_flutter/data/models/user_followers_model.dart';
import 'package:github_user_flutter/data/models/user_following_model.dart';
import 'package:github_user_flutter/data/models/user_list_model.dart';
import 'package:github_user_flutter/data/models/user_search_model.dart';

// Http api for Contact
class GithubService extends GetConnect {
  var baseURL = ConfigEnvironments.getEnvironments()['url'];
  var bearer = ConfigEnvironments.getEnvironments()['bearer'];

  Future<List<UserListResponseModel?>?> fetchUserList() async {
    var path = "users";

    try {
      // var response = await get('$baseURL/$path', headers: {"Authorization": "Bearer $bearer"});
      var response = await get('$baseURL/$path');

      final parsed = response.body.cast<Map<String, dynamic>>();

      if ((response.statusCode)! >= 200 && (response.statusCode)! < 404) {
        return parsed.map<UserListResponseModel?>((json) => UserListResponseModel.fromJson(json)).toList();
      } else {
        return parsed.map<UserListResponseModel?>((json) => UserListResponseModel.fromJson(json)).toList();
      }
    } on TimeoutException catch (_) {
      return null;
    } catch (e) {
      return null;
    }
  }

  Future<UserDetailResponseModel?> fetchUserDetail() async {
    var path = "users/:login";
    try {
      // var response = await get('$baseURL/$path', headers: {"Authorization": "Bearer $bearer"});
      var response = await get('$baseURL/$path');

      if ((response.statusCode)! >= 200 && (response.statusCode)! < 404) {
        return UserDetailResponseModel.fromJson(response.body);
      } else {
        return UserDetailResponseModel.fromJson(response.body);
      }
    } on TimeoutException catch (_) {
      return null;
    } catch (e) {
      return null;
    }
  }

  Future<List<UserFollowersResponseModel?>?> fetchUserFollowers() async {
    var path = "users/:login/followers";

    try {
      // var response = await get('$baseURL/$path', headers: {"Authorization": "Bearer $bearer"});
      var response = await get('$baseURL/$path');

      final parsed = response.body.cast<Map<String, dynamic>>();

      if ((response.statusCode)! >= 200 && (response.statusCode)! < 404) {
        return parsed.map<UserFollowersResponseModel?>((json) => UserFollowersResponseModel.fromJson(json)).toList();
      } else {
        return parsed.map<UserFollowersResponseModel?>((json) => UserFollowersResponseModel.fromJson(json)).toList();
      }
    } on TimeoutException catch (_) {
      return null;
    } catch (e) {
      return null;
    }
  }

  Future<List<UserFollowingResponseModel?>?> fetchUserFollowing() async {
    var path = "users/:login/following";

    try {
      // var response = await get('$baseURL/$path', headers: {"Authorization": "Bearer $bearer"});
      var response = await get('$baseURL/$path');

      final parsed = response.body.cast<Map<String, dynamic>>();

      if ((response.statusCode)! >= 200 && (response.statusCode)! < 404) {
        return parsed.map<UserFollowingResponseModel?>((json) => UserFollowingResponseModel.fromJson(json)).toList();
      } else {
        return parsed.map<UserFollowingResponseModel?>((json) => UserFollowingResponseModel.fromJson(json)).toList();
      }
    } on TimeoutException catch (_) {
      return null;
    } catch (e) {
      return null;
    }
  }

  Future<UserSearchResponseModel?> fetchUserSearch() async {
    var path = "search/users?q=irfani&page=1&per_page=10";

    try {
      // var response = await get('$baseURL/$path', headers: {"Authorization": "Bearer $bearer"});
      var response = await get('$baseURL/$path');

      if ((response.statusCode)! >= 200 && (response.statusCode)! < 404) {
        return UserSearchResponseModel.fromJson(response.body);
      } else {
        return UserSearchResponseModel.fromJson(response.body);
      }
    } on TimeoutException catch (_) {
      return null;
    } catch (e) {
      return null;
    }
  }
}
