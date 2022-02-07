import 'package:flutter/material.dart';

class RipplesDemo extends StatelessWidget {
  const RipplesDemo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    const title = 'InkWell Demo';
    return const MaterialApp(title: title, home: MyHomePage(title: title));
  }
}

class MyHomePage extends StatelessWidget {
  final String title;

  const MyHomePage({Key? key, required this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
      ),
      body: const Center(child: MyButton()),
    );
  }
}

class MyButton extends StatelessWidget {
  const MyButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
          content: Text('Tap'),
        ));
      },
      child: Container(
        padding: const EdgeInsets.all(12.0),
        child: const Text('Flat Button'),
      ),
    );
  }
}
