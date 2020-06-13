import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:mybookmarks/model/bookmark.dart';
import 'package:mybookmarks/util/navigation_util.dart';

class BookmarkGridItemWidget extends StatelessWidget {
  final Bookmark bookmark;

  BookmarkGridItemWidget(this.bookmark);

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Padding(
        padding: const EdgeInsets.all(12),
        child: InkWell(
          onTap: () {
            navigationToViewBookmarkPage(bookmark, context);
          },
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Text(
                bookmark.title,
                style: Theme.of(context).textTheme.headline6,
              ),
              SizedBox(
                height: 6,
              ),
              Text(bookmark.link, style: Theme.of(context).textTheme.subtitle1),
              SizedBox(
                height: 6,
              ),
              Hero(tag: bookmark.link, child: Icon(Icons.star))
            ],
          ),
        ),
      ),
    );
  }
}
