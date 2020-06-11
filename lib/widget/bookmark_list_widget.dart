import 'package:flutter/widgets.dart';
import 'package:mybookmarks/model/bookmark.dart';
import 'package:mybookmarks/widget/bookmark_list_item_widget.dart';

class BookmarksListWidget extends StatelessWidget {
  List<Bookmark> bookmarkList;

  BookmarksListWidget(this.bookmarkList);

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: <Widget>[
        BookmarkListItemWidget(bookmarkList[0]),
        BookmarkListItemWidget(bookmarkList[1]),
      ],
    );
  }
}
