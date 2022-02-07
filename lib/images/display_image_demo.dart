import 'package:flutter/material.dart';

class DisplayImageDemo extends StatelessWidget {
  const DisplayImageDemo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var title = 'Web Images';
    return MaterialApp(
      title: title,
      home: Scaffold(
        appBar: AppBar(
          title: Text(title),
        ),
        body: ListView(
          children: <Widget>[
            Image.network('https://picsum.photos/250?image=9')
          ],
        ),
      ),
    );
  }
}
