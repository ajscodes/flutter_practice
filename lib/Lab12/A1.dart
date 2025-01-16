import 'package:flutter/material.dart';

class ScrollWhole extends StatelessWidget {
  const ScrollWhole({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              height: 300,
              color: Colors.red,
              child: Center(child: Text('Section-1',style: TextStyle(fontSize: 24,color: Colors.white),),),
            ),
            Container(
              height: 300,
              color: Colors.blue,
              child: Center(child: Text('Section-2',style: TextStyle(fontSize: 24,color: Colors.white),),),
            ),
            Container(
              height: 300,
              color: Colors.yellow,
              child: Center(child: Text('Section-3',style: TextStyle(fontSize: 24,color: Colors.white),),),
            ),
            Container(
              height: 300,
              color: Colors.green,
              child: Center(child: Text('Section-4',style: TextStyle(fontSize: 24,color: Colors.white),),),
            )
          ],
        ),
      ),
    );
  }
}
