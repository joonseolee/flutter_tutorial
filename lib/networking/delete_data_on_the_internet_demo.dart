import 'package:flutter/material.dart';
import 'package:flutter_tutorial/http/http.dart' as http;

class DeleteDataOnTheInternetDemo extends StatefulWidget {
  const DeleteDataOnTheInternetDemo({Key? key}) : super(key: key);

  @override
  _DeleteDataOnTheInternetDemoState createState() =>
      _DeleteDataOnTheInternetDemoState();
}

class _DeleteDataOnTheInternetDemoState
    extends State<DeleteDataOnTheInternetDemo> {
  late Future<Album> _futureAlbum;

  @override
  void initState() {
    super.initState();
    _futureAlbum = fetchAlbum();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Delete Data Example',
      theme: ThemeData(primarySwatch: Colors.blue),
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Delete Data Example'),
        ),
        body: Center(
          child: FutureBuilder<Album>(
            future: _futureAlbum,
            builder: (context, snapshot) {
              if (snapshot.connectionState == ConnectionState.done) {
                if (snapshot.hasData) {
                  return Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Text(snapshot.data?.title ?? 'Deleted'),
                      ElevatedButton(
                          onPressed: () {
                            setState(() {
                              _futureAlbum =
                                  deleteAlbum(snapshot.data!.id.toString());
                            });
                          },
                          child: const Text('Delete Data'))
                    ],
                  );
                } else if (snapshot.hasError) {
                  return Text('${snapshot.error}!!');
                }
              }

              return const CircularProgressIndicator();
            },
          ),
        ),
      ),
    );
  }
}

Future<Album> fetchAlbum() async {
  final response =
      await http.get('https://jsonplaceholder.typicode.com/albums/1');
  return Album.fromJson(response);
}

Future<Album> deleteAlbum(String id) async {
  final response =
      await http.delete('https://jsonplaceholder.typicode.com/albums/$id');
  return Album.fromJson(response);
}

class Album {
  final int? id;
  final String? title;

  Album({this.id, this.title});

  factory Album.fromJson(Map<String, dynamic> json) {
    return Album(id: json['id'], title: json['title']);
  }
}
