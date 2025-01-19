import 'package:flutter/material.dart';
import 'package:flutter_practice/Lab13/Home.dart';
import 'package:flutter_practice/Lab13/Profile.dart';
import 'package:flutter_practice/Lab13/Search.dart';

class IndexScreen extends StatefulWidget {
  const IndexScreen({super.key});

  @override
  State<IndexScreen> createState() => _IndexScreenState();
}

class _IndexScreenState extends State<IndexScreen> {
  int idx = 0;

  @override
  Widget build(BuildContext context) {
    List<Widget> list = [
      HomePage(),SearchPage(),ProfilePage()
    ];

    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text('Bottom NavigationBar Practical',style: TextStyle(color: Colors.white),)),
        backgroundColor: Colors.orange,
      ),
      body: list[idx],

      bottomNavigationBar: BottomNavigationBar(
        currentIndex: idx,
          onTap: (value){
            setState(() {
              idx = value;
            });
          },
          items: [
            BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
            BottomNavigationBarItem(icon: Icon(Icons.search), label: "Search"),
            BottomNavigationBarItem(icon: Icon(Icons.person), label: "Profile"),
      ],),
    );
  }
}
