import 'dart:developer';

import 'package:flutter/material.dart';

class TextFieldChangeDemo extends StatelessWidget {
  const TextFieldChangeDemo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'focus demo',
      home: TextFieldChangeDemoForm(),
    );
  }
}

class TextFieldChangeDemoForm extends StatefulWidget {
  const TextFieldChangeDemoForm({Key? key}) : super(key: key);

  @override
  _TextFieldChangeDemoFormState createState() =>
      _TextFieldChangeDemoFormState();
}

class _TextFieldChangeDemoFormState extends State<TextFieldChangeDemoForm> {
  final myController = TextEditingController();

  @override
  void initState() {
    super.initState();
    myController.addListener(_printLatestValue);
  }

  @override
  void dispose() {
    super.dispose();
    myController.dispose();
  }

  _printLatestValue() {
    log("Second text field: ${myController.text}");
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Retrieve Text Input'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: <Widget>[
            TextField(
              onChanged: (text) {
                log("First text field: $text");
              },
            ),
            TextField(
              controller: myController,
            ),
          ],
        ),
      ),
    );
  }
}
