import 'package:flutter/material.dart';
import 'Contact.dart';

class ContactDiary extends StatefulWidget {
  const ContactDiary({super.key});

  @override
  State<ContactDiary> createState() => _ContactDiaryState();
}

class _ContactDiaryState extends State<ContactDiary> {

  TextEditingController nameController = TextEditingController();
  TextEditingController contactController = TextEditingController();
  List<Contact> contacts = List.empty(growable: true);

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
              controller: nameController,
              decoration: InputDecoration(
                  hintText: 'Contact Name',
                  labelText: 'Contact Name',
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(10)))),
            ),
            SizedBox(
              height: 10,
            ),
            TextField(
              controller: contactController,
              decoration: InputDecoration(
                  hintText: 'Contact Number',
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(10)))),
            ),
            SizedBox(
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton(
                  onPressed: () {
                    String name = nameController.text.trim();
                    String contact = contactController.text.trim();
                    if(name.isNotEmpty && contact.isNotEmpty){
                      setState(() {
                        contacts.add(Contact(name: name, contact: contact));
                      });
                    }
                  },
                  child: Text('Save'),
                ),

                ElevatedButton(onPressed: () => {

                }, child: Text('Update')),
              ],
            ),
            SizedBox(height: 10,),
            contacts.isEmpty ? Text('No contact found') :
            Expanded(
              child: ListView.builder(
                itemCount: contacts.length,
                itemBuilder: (context, index) => getRow(index),
              ),
            )
          ],
        ),
      ),
    );
  }

  Widget getRow(int index) {
    return ListTile(
      title: Column(
        children: [
          Text(contacts[index].name),
          Text(contacts[index].contact)
        ],
      ),
    );
  }
}
