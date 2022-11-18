class UserSearchResponseModel {
  int? totalCount;
  bool? incompleteResults;
  List<Items>? items;

  UserSearchResponseModel(
      {this.totalCount, this.incompleteResults, this.items});

  UserSearchResponseModel.fromJson(Map<String, dynamic> json) {
    if (json["total_count"] is int) {
      totalCount = json["total_count"];
    }
    if (json["incomplete_results"] is bool) {
      incompleteResults = json["incomplete_results"];
    }
    if (json["items"] is List) {
      items = json["items"] == null
          ? null
          : (json["items"] as List).map((e) => Items.fromJson(e)).toList();
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _data = <String, dynamic>{};
    _data["total_count"] = totalCount;
    _data["incomplete_results"] = incompleteResults;
    if (items != null) {
      _data["items"] = items?.map((e) => e.toJson()).toList();
    }
    return _data;
  }
}

class Items {
  String? login;
  int? id;
  String? nodeId;
  String? avatarUrl;
  String? gravatarId;
  String? url;
  String? htmlUrl;
  String? followersUrl;
  String? followingUrl;
  String? gistsUrl;
  String? starredUrl;
  String? subscriptionsUrl;
  String? organizationsUrl;
  String? reposUrl;
  String? eventsUrl;
  String? receivedEventsUrl;
  String? type;
  bool? siteAdmin;
  int? score;

  Items(
      {this.login,
      this.id,
      this.nodeId,
      this.avatarUrl,
      this.gravatarId,
      this.url,
      this.htmlUrl,
      this.followersUrl,
      this.followingUrl,
      this.gistsUrl,
      this.starredUrl,
      this.subscriptionsUrl,
      this.organizationsUrl,
      this.reposUrl,
      this.eventsUrl,
      this.receivedEventsUrl,
      this.type,
      this.siteAdmin,
      this.score});

  Items.fromJson(Map<String, dynamic> json) {
    if (json["login"] is String) {
      login = json["login"];
    }
    if (json["id"] is int) {
      id = json["id"];
    }
    if (json["node_id"] is String) {
      nodeId = json["node_id"];
    }
    if (json["avatar_url"] is String) {
      avatarUrl = json["avatar_url"];
    }
    if (json["gravatar_id"] is String) {
      gravatarId = json["gravatar_id"];
    }
    if (json["url"] is String) {
      url = json["url"];
    }
    if (json["html_url"] is String) {
      htmlUrl = json["html_url"];
    }
    if (json["followers_url"] is String) {
      followersUrl = json["followers_url"];
    }
    if (json["following_url"] is String) {
      followingUrl = json["following_url"];
    }
    if (json["gists_url"] is String) {
      gistsUrl = json["gists_url"];
    }
    if (json["starred_url"] is String) {
      starredUrl = json["starred_url"];
    }
    if (json["subscriptions_url"] is String) {
      subscriptionsUrl = json["subscriptions_url"];
    }
    if (json["organizations_url"] is String) {
      organizationsUrl = json["organizations_url"];
    }
    if (json["repos_url"] is String) {
      reposUrl = json["repos_url"];
    }
    if (json["events_url"] is String) {
      eventsUrl = json["events_url"];
    }
    if (json["received_events_url"] is String) {
      receivedEventsUrl = json["received_events_url"];
    }
    if (json["type"] is String) {
      type = json["type"];
    }
    if (json["site_admin"] is bool) {
      siteAdmin = json["site_admin"];
    }
    if (json["score"] is int) {
      score = json["score"];
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _data = <String, dynamic>{};
    _data["login"] = login;
    _data["id"] = id;
    _data["node_id"] = nodeId;
    _data["avatar_url"] = avatarUrl;
    _data["gravatar_id"] = gravatarId;
    _data["url"] = url;
    _data["html_url"] = htmlUrl;
    _data["followers_url"] = followersUrl;
    _data["following_url"] = followingUrl;
    _data["gists_url"] = gistsUrl;
    _data["starred_url"] = starredUrl;
    _data["subscriptions_url"] = subscriptionsUrl;
    _data["organizations_url"] = organizationsUrl;
    _data["repos_url"] = reposUrl;
    _data["events_url"] = eventsUrl;
    _data["received_events_url"] = receivedEventsUrl;
    _data["type"] = type;
    _data["site_admin"] = siteAdmin;
    _data["score"] = score;
    return _data;
  }
}
