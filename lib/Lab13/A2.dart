import 'package:flutter/material.dart';
import 'package:flutter_practice/Lab13/Home.dart';
import 'package:flutter_practice/Lab13/Profile.dart';
import 'package:flutter_practice/Lab13/Search.dart';

class IndexScreenDrawer extends StatefulWidget {
  const IndexScreenDrawer({super.key});

  @override
  State<IndexScreenDrawer> createState() => _IndexScreenState();
}

class _IndexScreenState extends State<IndexScreenDrawer> {
  int idx = 0;

  final List<Widget> _pages = [
    HomePage(),
    SearchPage(),
    ProfilePage(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Center(
          child: Text(
            'Navigation Drawer Practical',
            style: TextStyle(color: Colors.white),
          ),
        ),
        backgroundColor: Colors.blue,
      ),

      body: _pages[idx],

      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            const DrawerHeader(
              decoration: BoxDecoration(
                color: Colors.orange,
              ),
              child: Text(
                'Navigation Drawer',
                style: TextStyle(color: Colors.white, fontSize: 24),
              ),
            ),
            ListTile(
              leading: const Icon(Icons.home),
              title: const Text('Home'),
              onTap: () {
                setState(() {
                  idx = 0;
                });
                Navigator.of(context).pop(); // Close the drawer
              },
            ),
            ListTile(
              leading: const Icon(Icons.search),
              title: const Text('Search'),
              onTap: () {
                setState(() {
                  idx = 1;
                });
                Navigator.of(context).pop(); // Close the drawer
              },
            ),
            ListTile(
              leading: const Icon(Icons.person),
              title: const Text('Profile'),
              onTap: () {
                setState(() {
                  idx = 2;
                });
                Navigator.of(context).pop(); // Close the drawer
              },
            ),
          ],
        ),
      ),
    );
  }
}
