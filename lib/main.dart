import 'package:flutter/material.dart';

import 'page_router.dart' as page_router;

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
      home: const MyHomePage(title: 'Flutter Tutorial'),
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
  List<Widget> showPages() {
    return page_router.pages
        .map((page) => Center(
              child: ListTile(
                title: Text(page.title),
                subtitle: Text(page.url),
                onTap: () {
                  Navigator.of(context).push(_createRoute(page));
                },
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

Route _createRoute(page_router.Page page) {
  return PageRouteBuilder(
      pageBuilder: (context, animation, secondaryAnimation) => page.widget,
      transitionsBuilder: (context, animation, secondaryAnimation, child) {
        return child;
      });
}
