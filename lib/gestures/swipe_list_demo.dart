import 'package:flutter/material.dart';

class SwipeListDemo extends StatefulWidget {
  const SwipeListDemo({Key? key}) : super(key: key);

  @override
  _SwipeListDemoState createState() => _SwipeListDemoState();
}

class _SwipeListDemoState extends State<SwipeListDemo> {
  final items = List<String>.generate(29, (i) => 'Item ${i + 1}');

  @override
  Widget build(BuildContext context) {
    const title = 'Dismissing Items';
    return MaterialApp(
      title: title,
      theme: ThemeData(primarySwatch: Colors.blue),
      home: Scaffold(
        appBar: AppBar(title: const Text(title)),
        body: ListView.builder(
          itemCount: items.length,
          itemBuilder: (context, index) {
            final item = items[index];

            return Dismissible(
              key: Key(item),
              onDismissed: (direction) {
                setState(() {
                  items.removeAt(index);
                });

                ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                  content: Text('$item dismissed'),
                ));
              },
              background: Container(
                color: Colors.red,
              ),
              child: ListTile(
                title: Text(item),
              ),
            );
          },
        ),
      ),
    );
  }
}
