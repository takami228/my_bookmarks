import 'package:flutter/widgets.dart';
import 'package:mybookmarks/model/bookmark.dart';
import 'package:mybookmarks/widget/bookmark_grid_item_widget.dart';

class BookmarksGridWidget extends StatelessWidget {
  final List<Bookmark> bookmarkList;

  BookmarksGridWidget(this.bookmarkList);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 6),
      child: GridView.builder(
        itemCount: bookmarkList.length,
        itemBuilder: (BuildContext context, int index) {
          return BookmarkGridItemWidget(bookmarkList[index]);
        },
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          childAspectRatio: 1.5,
          crossAxisCount: 2,
          crossAxisSpacing: 6,
        ),
      ),
    );
  }
}
