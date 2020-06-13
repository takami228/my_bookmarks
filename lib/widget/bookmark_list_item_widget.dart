import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:mybookmarks/model/bookmark.dart';
import 'package:mybookmarks/util/navigation_util.dart';

class BookmarkListItemWidget extends StatelessWidget {
  final Bookmark bookmark;

  BookmarkListItemWidget(this.bookmark);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(12),
      child: InkWell(
        onTap: () {
          navigationToViewBookmarkPage(bookmark, context);
        },
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text(
                  bookmark.title,
                  style: Theme.of(context).textTheme.headline6,
                ),
                SizedBox(
                  height: 6,
                ),
                Text(bookmark.link,
                    style: Theme.of(context).textTheme.subtitle1),
              ],
            ),
            Hero(tag: bookmark.title, child: Icon(Icons.star, size: 40))
          ],
        ),
      ),
    );
  }
}
