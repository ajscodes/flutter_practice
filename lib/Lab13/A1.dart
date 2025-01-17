import 'package:flutter/material.dart';

class BottomSheetPractice extends StatelessWidget {
  const BottomSheetPractice({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text('Bottom Sheet Practical',style: TextStyle(color: Colors.white),)),
        backgroundColor: Colors.purple,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(onPressed: (){
              showModalBottomSheet(context: context, builder: (context){
                return Container(
                  height: 200,
                  width: double.maxFinite,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.zero,
                  ),
                  child: Center(child: Text('This is bottom sheet',style: TextStyle(fontSize: 24),)),
                );
              });
            }, child: Text('Click here'))
          ],
        ),
      ),
    );
  }
}
