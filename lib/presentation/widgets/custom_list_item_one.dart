import 'package:flutter/material.dart';
import 'package:github_user_flutter/infrastructure/utils/constants.dart';

class CustomListItemOne extends StatelessWidget {
  const CustomListItemOne({
    super.key,
    required this.thumbnail,
    required this.title,
    required this.user,
    required this.cardColor,
    this.onTap,
    this.onLongPress,
  });

  final String thumbnail;
  final String title;
  final String user;
  final Color cardColor;
  final GestureTapCallback? onTap;
  final GestureLongPressCallback? onLongPress;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 5.0, horizontal: 16),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(10),
        child: Material(
          child: InkWell(
            onTap: onTap,
            onLongPress: onLongPress,
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Expanded(
                  flex: 1,
                  child: Image.network(thumbnail),
                ),
                Expanded(
                  flex: 4,
                  child: _DescriptionOne(
                    title: title,
                    user: user,
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.only(top: 10, right: 5),
                  child: Icon(
                    Icons.more_vert,
                    size: 16.0,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class _DescriptionOne extends StatelessWidget {
  const _DescriptionOne({
    required this.title,
    required this.user,
  });

  final String title;
  final String user;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(10.0, 8.0, 8.0, 0.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Text(
            title,
            style: const TextStyle(
              fontWeight: FontWeight.w500,
              fontSize: 16.0,
            ),
          ),
          const Padding(padding: EdgeInsets.symmetric(vertical: 2.0)),
          Text(
            user,
            style: const TextStyle(fontSize: 10.0),
          ),
        ],
      ),
    );
  }
}
