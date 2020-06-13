import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:mybookmarks/model/bookmark.dart';

class BookmarkListTileWidget extends StatelessWidget {
  final Bookmark bookmark;

  BookmarkListTileWidget(this.bookmark);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(bookmark.title, style: Theme.of(context).textTheme.headline6),
      subtitle:
          Text(bookmark.link, style: Theme.of(context).textTheme.subtitle1),
      onTap: () => print(bookmark.title),
    );
  }
}
