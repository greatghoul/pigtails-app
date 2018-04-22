import 'package:flutter/material.dart';

void main() => runApp(new MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var title = 'Awesome Pigtails';

    return new MaterialApp(
      title: title,
      theme: new ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or press Run > Flutter Hot Reload in IntelliJ). Notice that the
        // counter didn't reset back to zero; the application is not restarted.
        primarySwatch: Colors.blue,
      ),
      home: new Scaffold(
        appBar: new AppBar(
          title: new Text(title),
        ),
        body: buildView(),
      )
    );
  }

  Widget buildImage(String url) {
    return new Padding(
      padding: new EdgeInsets.all(5.0),
      child: new Image.network(url),
    );
  }

  CustomScrollView buildView() {
    return new CustomScrollView(
      primary: false,
      slivers: <Widget>[
        new SliverPadding(
          padding: const EdgeInsets.all(5.0),
          sliver: new SliverGrid.count(
            crossAxisCount: 2,
            children: <Widget>[
              buildImage('https://i.imgur.com/vkXREFp.jpg'),
              buildImage('https://i.imgur.com/FNayMJ0.jpg'),
              buildImage('https://i.imgur.com/1MZgz91.jpg'),
              buildImage('https://i.imgur.com/nJ2ieTM.jpg'),
              buildImage('https://i.imgur.com/PefNHDp.jpg'),
              buildImage('https://i.imgur.com/MgyZchU.jpg'),
              buildImage('https://i.imgur.com/XQwuRBw.jpg'),
              buildImage('https://i.imgur.com/aY0oD97.png'),
            ],
          ),
        ),
      ],
    );
  }
}
