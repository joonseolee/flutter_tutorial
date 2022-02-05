import 'dart:developer';

import 'package:flutter/material.dart';

class SnackBarDemo extends StatelessWidget {
  const SnackBarDemo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'SnackBar Demo',
      home: Scaffold(
        appBar: AppBar(
          title: const Text('SnackBar Demo'),
        ),
        body: const SnackBarPage(),
      ),
    );
  }
}

class SnackBarPage extends StatelessWidget {
  const SnackBarPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final snackBar = SnackBar(
      content: const Text('Hey it is a snackbar'),
      action: SnackBarAction(
        label: 'Undo',
        onPressed: () {
          log("I'm clicked");
        },
      ),
    );

    return Center(
      child: ElevatedButton(
        onPressed: () {
          // deprecated
          // Scaffold.of(context).showSnackBar(snackBar);
          ScaffoldMessenger.of(context).showSnackBar(snackBar);
        },
        child: const Text('Show SnackBar!'),
      ),
    );
  }
}
