import 'package:flutter/material.dart';

class TextFieldFocusDemo extends StatelessWidget {
  const TextFieldFocusDemo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'focus demo',
      home: TextFieldFocusDemoForm(),
    );
  }
}

class TextFieldFocusDemoForm extends StatefulWidget {
  const TextFieldFocusDemoForm({Key? key}) : super(key: key);

  @override
  _TextFieldFocusDemoFormState createState() => _TextFieldFocusDemoFormState();
}

class _TextFieldFocusDemoFormState extends State<TextFieldFocusDemoForm> {
  late final FocusNode focusNode;

  @override
  void initState() {
    super.initState();
    focusNode = FocusNode();
  }

  @override
  void dispose() {
    super.dispose();
    focusNode.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Text field focus'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            const TextField(
              autofocus: true,
            ),
            TextField(
              focusNode: focusNode,
            )
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () => FocusScope.of(context).requestFocus(focusNode),
        tooltip: 'Focus second field',
        child: const Icon(Icons.edit),
      ),
    );
  }
}
