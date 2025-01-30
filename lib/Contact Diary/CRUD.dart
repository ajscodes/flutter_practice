import 'package:flutter/material.dart';
import 'Contact.dart';

class ContactDiary extends StatefulWidget {
  const ContactDiary({super.key});

  @override
  State<ContactDiary> createState() => _ContactDiaryState();
}

class _ContactDiaryState extends State<ContactDiary> {
  List<Contact> contacts = [];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(
          child: Text(
            'Contact Diary',
            style: TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.bold,
              color: Colors.white,
            ),
          ),
        ),
        backgroundColor: Colors.orange,
      ),
      body: Padding(
        padding: EdgeInsets.all(8),
        child: Column(
          children: [
            SizedBox(
              height: 10,
            ),
            TextField(
              decoration: InputDecoration(
                  hintText: 'Contact Name',
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(10)))),
            ),
            SizedBox(
              height: 10,
            ),
            TextField(
              decoration: InputDecoration(
                  hintText: 'Number',
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(10)))),
            ),
            SizedBox(height: 10,),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton(onPressed: () => {}, child: Text('Save')),
                ElevatedButton(onPressed: () => {}, child: Text('Update')),
              ],
            ),
            ListView.builder(itemCount: contacts.length,itemBuilder: (context,index) => )
          ],
        ),
      ),
    );
  }
}
