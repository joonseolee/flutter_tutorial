import 'package:flutter/material.dart';

class AdoptFont extends StatelessWidget {
  const AdoptFont({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Package Fonts',
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Package Fonts'),
      ),
      body: const Text(
        'Using the KOHIBaeum font!',
        style: TextStyle(fontFamily: 'KohiBaeum'),
      ),
    );
  }
}
