import 'package:flutter/material.dart';
import 'package:flutter_practice/try1/t1.dart';
import 'package:flutter_practice/try2/t2.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Tasks',
      initialRoute: '/',
      routes: {
        '/': (context) => HomeScreen(),
        '/try1': (context) => Try1(),
        '/try2': (context) => Try2(),
      },
    );
  }
}

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(
            child: Text(
              "Lab Management Window",
              style: TextStyle(fontWeight: FontWeight.bold,color: Colors.white),
            )),
        backgroundColor: Colors.blueAccent,),
      body: Center(
        child: Column(
          children: [
            ElevatedButton(
              onPressed: () => Navigator.pushNamed(context, '/try1'),
              child: Text("Try1"),
            ),
            ElevatedButton(
              onPressed: () => Navigator.pushNamed(context, '/try2'),
              child: Text("Try2"),
            ),
          ],
        ),
      ),
    );
  }
}
