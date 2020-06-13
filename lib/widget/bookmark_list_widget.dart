import 'package:flutter/widgets.dart';
import 'package:mybookmarks/model/bookmark.dart';
import 'package:mybookmarks/widget/bookmark_list_item_widget.dart';

class BookmarksListWidget extends StatelessWidget {
  final List<Bookmark> bookmarkList;

  BookmarksListWidget(this.bookmarkList);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: bookmarkList.length,
      itemBuilder: (BuildContext context, int index) {
        return BookmarkListItemWidget(bookmarkList[index]);
      },
    );
  }
}
