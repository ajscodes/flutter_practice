import 'package:flutter/material.dart';

class ScrollInside extends StatelessWidget {
  const ScrollInside({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text('ListView/GridView Inside ScrollView',style: TextStyle(color: Colors.white),)),
        backgroundColor: Colors.blueGrey,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              color: Colors.yellow,
              height: 300,
              child: ListView.builder(itemCount: 10, itemBuilder: (context,index){
                return Container(
                  margin: EdgeInsets.symmetric(vertical: 5),
                  decoration: BoxDecoration(
                      color: Colors.white.withOpacity(0.7),
                      border: Border.all(
                          color: Colors.blueGrey,
                          width: 1
                      ),
                      borderRadius: BorderRadius.circular(10)
                  ),
                  child: ListTile(
                    title: Text('Item $index'),
                  ),
                );
              }),
            ),

            Divider(thickness: 2, color: Colors.black),

            Container(
              height: 250,
              child: GridView.builder(
                scrollDirection: Axis.horizontal,
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2, // Number of columns
                  crossAxisSpacing: 10,
                  mainAxisSpacing: 10,
                ),
                itemCount: 30,
                itemBuilder: (context, index) {
                  return Card(
                    color: Colors.blueAccent,
                    child: Center(
                      child: Text('Item $index', style: TextStyle(color: Colors.white)),
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}