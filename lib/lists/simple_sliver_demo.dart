import 'package:flutter/material.dart';

class SimpleSliverDemo extends StatelessWidget {
  const SimpleSliverDemo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    const title = 'Floating App Bar';

    return MaterialApp(
      title: title,
      home: Scaffold(
        body: CustomScrollView(
          slivers: <Widget>[
            const SliverAppBar(
              title: Text(title),
              floating: true,
              flexibleSpace: Placeholder(),
              expandedHeight: 200,
            ),
            SliverGrid.count(
              crossAxisCount: 4,
              children:
                  List<Widget>.generate(10, (index) => Text('middle $index')),
            ),
            SliverList(
              delegate: SliverChildBuilderDelegate(
                  (context, index) => ListTile(title: Text('Item #$index')),
                  childCount: 1000),
            )
          ],
        ),
      ),
    );
  }
}
