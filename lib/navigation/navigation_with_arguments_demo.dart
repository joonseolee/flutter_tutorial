import 'package:flutter/material.dart';

class NavigationWithArgumentsDemo extends StatelessWidget {
  const NavigationWithArgumentsDemo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      routes: {
        ExtractArgumentsScreen.routeName: (context) =>
            const ExtractArgumentsScreen(),
      },
      onGenerateRoute: (settings) {
        if (settings.name == PassArgumentsScreen.routeName) {
          final args = settings.arguments as ScreenArguments;
          return MaterialPageRoute(builder: (context) {
            return PassArgumentsScreen(
                title: args.title, message: args.message);
          });
        }
        assert(false, 'Need to implement ${settings.name}');
        return null;
      },
      title: 'Navigation with Arguments',
      home: const HomeScreen(),
    );
  }
}

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home Screen'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            ElevatedButton(
              child: const Text('Navigate to screen that extracts arguments'),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const ExtractArgumentsScreen(),
                      settings: RouteSettings(
                          arguments: ScreenArguments(
                        'Extract Arguments Screen',
                        'This message is extracted in the build method.',
                      ))),
                );
              },
            ),
            ElevatedButton(
              child: const Text("Navigate to a named that accepts arguments"),
              onPressed: () {
                Navigator.pushNamed(context, PassArgumentsScreen.routeName,
                    arguments: ScreenArguments(
                      'Accept Arguments Screen',
                      'This message is extracted in the onGenerateRoute function.',
                    ));
              },
            )
          ],
        ),
      ),
    );
  }
}

class ExtractArgumentsScreen extends StatelessWidget {
  static const routeName = '/extractArguments';

  const ExtractArgumentsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final ScreenArguments args =
        ModalRoute.of(context)!.settings.arguments as ScreenArguments;

    return Scaffold(
      appBar: AppBar(title: Text(args.title)),
      body: Center(
        child: Text(args.message),
      ),
    );
  }
}

class PassArgumentsScreen extends StatelessWidget {
  static const routeName = '/passArguments';

  final String title;
  final String message;

  const PassArgumentsScreen(
      {Key? key, required this.title, required this.message})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(title)),
      body: Center(
        child: Text(message),
      ),
    );
  }
}

class ScreenArguments {
  final String title;
  final String message;

  ScreenArguments(this.title, this.message);
}
