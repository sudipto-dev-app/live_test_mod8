import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Assignment 08',
      color: Colors.white,
      home: Home(),
    );
  }
}
class Home extends StatelessWidget {
  Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('News Feed',style: TextStyle(color: Colors.white),),
        backgroundColor: Colors.blue,
      ),
      body: OrientationBuilder(builder: (context, orientation) =>
      (orientation == Orientation.portrait)
          ?protrait()
          : landscape(),),
    );
  }
}


class protrait extends StatelessWidget {
  protrait({super.key});
  @override
  Widget build(BuildContext context) {
    return  ListView.builder(
        itemCount: 10,
        itemBuilder: (context, index) {
          return Card(
            child: Container(
              padding: EdgeInsets.all(8.0),
              child: Image.network(
                'https://via.placeholder.com/150',
                width: 150,
                height: 150,
              ),
            ),
          );
        },
      );
  }
}

class landscape extends StatelessWidget {
  landscape({super.key});
  @override
  Widget build(BuildContext context) {
    return  GridView.builder(
        itemCount: 10,
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2
        ),
        itemBuilder: (context, index) {
          return Card(
            child: Container(
              child: Image.network(
                'https://via.placeholder.com/150',
                width: 150,
                height: 150,
              ),
            ),
          );
        },
      );
  }
}