import 'package:flutter/material.dart';

class AppListView {
  List<String> fetchPosts() {
    return [
      'https://i.imgur.com/vkXREFp.jpg',
      'https://i.imgur.com/FNayMJ0.jpg',
      'https://i.imgur.com/1MZgz91.jpg',
      'https://i.imgur.com/nJ2ieTM.jpg',
      'https://i.imgur.com/PefNHDp.jpg',
      'https://i.imgur.com/MgyZchU.jpg',
      'https://i.imgur.com/XQwuRBw.jpg',
      'https://i.imgur.com/aY0oD97.png',
    ];
  }

  Widget buildPost(String url) {
    return new Padding(
      padding: new EdgeInsets.all(5.0),
      child: new Image.network(url),
    );
  }

  List<Widget> buildPostList() {
    var posts = fetchPosts();
    var postWidgets = <Widget>[];

    for (var post in posts) {
       postWidgets.add(buildPost(post));
    }

    return postWidgets;
  }

  CustomScrollView build() {
    return new CustomScrollView(
      primary: false,
      slivers: <Widget>[
        new SliverPadding(
          padding: const EdgeInsets.all(5.0),
          sliver: new SliverGrid.count(
            crossAxisCount: 2,
            children: buildPostList(),
          ),
        ),
      ],
    );
  }
}
