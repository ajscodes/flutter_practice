import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class DateFormatScreen extends StatelessWidget {
  DateFormatScreen({super.key});

  DateTime now = DateTime.now();

  //Formatters
  List<String> dateFormat = [
    'dd/MM/yyyy',
    'dd-MM-yyyy',
    'dd-MMM-yyyy',
    'dd-MM-yy',
    'dd MMM, yyyy',
    'yyyy/MM/dd',
    'MM/dd/yyyy',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Date Formatter'),
      ),
      body: ListView.builder(itemCount: dateFormat.length, itemBuilder: (context,index){
        String formattedDate = DateFormat(dateFormat[index]).format(now);
        return ListTile(
          title: Text(
            dateFormat[index],
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
          subtitle: Text(formattedDate),
        );
    }),
    );
  }
}
