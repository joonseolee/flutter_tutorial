import 'package:flutter/material.dart';

class SimpleNavigationDemo extends StatelessWidget {
  const SimpleNavigationDemo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // routes 를 설정할때는 initialRoute 를 꼭 넣어줘야하고
      // home 값이 들어갈순없다.
      initialRoute: '/navigation',
      routes: {
        '/navigation': (context) => const FirstScreen(),
        '/navigation/second': (context) => const SecondScreen()
      },
    );
  }
}

class FirstScreen extends StatelessWidget {
  const FirstScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('First Screen')),
      body: Center(
        child: ElevatedButton(
          child: const Text('Launch screen'),
          onPressed: () {
            Navigator.pushNamed(context, '/navigation/second');
          },
        ),
      ),
    );
  }
}

class SecondScreen extends StatelessWidget {
  const SecondScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Second Screen'),
      ),
      body: ElevatedButton(
        onPressed: () {
          Navigator.pop(context);
        },
        child: const Text('Go back!'),
      ),
    );
  }
}
