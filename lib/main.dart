import 'package:flutter/material.dart';
import './views/list.dart';

void main() => runApp(new MyApp());

class MyApp extends StatelessWidget {
  final AppListView listView = new AppListView();

  @override
  Widget build(BuildContext context) {
    var title = 'Awesome Pigtails';

    return new MaterialApp(
      title: title,
      theme: new ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: new Scaffold(
        appBar: new AppBar(
          title: new Text(title),
        ),
        body: listView.build(),
      )
    );
  }
}
