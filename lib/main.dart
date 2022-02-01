import 'dart:developer';

import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Tutorial',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  List<Page> pages = [
    Page('Animate a widget using a physics simulation', 'wwf'),
    Page('Animate the properties of a container', 'wwf')
  ];

  List<Widget> showPages() {
    return pages
        .map((page) => Center(
              child: ListTile(
                title: Text(page.title),
                subtitle: Text(page.url),
                onTap: () => {},
                focusColor: Colors.blue,
              ),
            ))
        .toList();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(widget.title),
        ),
        body: ListView(
          children: showPages(),
        ));
  }
}

class Page {
  final String title;
  final String url;

  Page(this.title, this.url);
}
