import 'package:flutter/material.dart';

class TodoDemo extends StatelessWidget {
  const TodoDemo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Todo Demo',
      home: TodoScreen(),
    );
  }
}

class TodoScreen extends StatelessWidget {
  final List<Todo> todos = List<Todo>.generate(
      20,
      (i) => Todo(
          'Todo $i', 'A description of what needs to be done for Todo $i'));

  TodoScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Todos')),
      body: ListView.builder(
          itemCount: todos.length,
          itemBuilder: (context, index) {
            return ListTile(
              title: Text(todos[index].title),
              onTap: () {
                // way 1
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) =>
                            DetailScreen(todo: todos[index])));

                // way 2
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const DetailScreen2(),
                        settings: RouteSettings(arguments: todos[index])));
              },
            );
          }),
    );
  }
}

// way 1 - passing the arguments in the constructor
class DetailScreen extends StatelessWidget {
  final Todo todo;

  const DetailScreen({Key? key, required this.todo}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(todo.title),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Text(todo.description),
      ),
    );
  }
}

// way2 - routeSettings
class DetailScreen2 extends StatelessWidget {
  const DetailScreen2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final todo = ModalRoute.of(context)!.settings.arguments as Todo;

    return Scaffold(
      appBar: AppBar(
        title: Text(todo.title),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Text(todo.description),
      ),
    );
  }
}

class Todo {
  final String title;
  final String description;

  Todo(this.title, this.description);
}
