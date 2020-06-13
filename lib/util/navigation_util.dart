import 'package:flutter/material.dart';
import 'package:mybookmarks/model/bookmark.dart';
import 'package:mybookmarks/page/add_bookmark_page.dart';
import 'package:mybookmarks/page/view_bookmark_page.dart';

void navigationToViewBookmarkPage(Bookmark bookmark, BuildContext context) {
  Navigator.of(context).push(
      MaterialPageRoute(builder: (context) => ViewBookmarkPage(bookmark)));
}

Future navigationToAddBookmarkPage(BuildContext context) {
  return Navigator.of(context)
      .push(MaterialPageRoute(builder: (context) => AddBookmarkPage()));
}
