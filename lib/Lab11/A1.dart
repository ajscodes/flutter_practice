import 'package:flutter/material.dart';

class ListCity extends StatelessWidget {
  ListCity({super.key});

  List<String> city = [
    'Rajkot',
    'New York',
    'Berlin',
    'Vadodara',
    'Tokyo',
    'Jamnagar',
    'Toronto',
    'Paris',
    'Ahmadabad',
    'Sydney',
    'Mumbai',
    'Dubai',
    'Singapore',
    'London'
  ];
  List<Map<String, dynamic>> citycountry = [
    {'name': 'Rajkot', 'country': 'India'},
    {'name': 'New York', 'country': 'United States'},
    {'name': 'Berlin', 'country': 'Germany'},
    {'name': 'Vadodara', 'country': 'India'},
    {'name': 'Tokyo', 'country': 'Japan'},
    {'name': 'Jamnagar', 'country': 'India'},
    {'name': 'Toronto', 'country': 'Canada'},
    {'name': 'Paris', 'country': 'France'},
    {'name': 'Ahmadabad', 'country': 'India'},
    {'name': 'Sydney', 'country': 'Australia'},
    {'name': 'Mumbai', 'country': 'India'},
    {'name': 'Dubai', 'country': 'United Arab Emirates'},
    {'name': 'Singapore', 'country': 'Singapore'},
    {'name': 'London', 'country': 'United Kingdom'},
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "List of cities",
          style: TextStyle(color: Colors.white),
        ),
        centerTitle: true,
        backgroundColor: Colors.blue,
      ),
      body: Stack(
        children: [
          Positioned.fill(
              child: Image.network(
            "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQvz9oH6YPpnPQzO_SKKqE7_5gpwuisbnB4IA&s",
            fit: BoxFit.cover,
          )),
          ListView.builder(
              itemCount: citycountry.length,
              itemBuilder: (context, index) {
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
                    title: Text(citycountry[index]['name']),
                    subtitle: Text(citycountry[index]['country']),
                    trailing: Icon(Icons.arrow_forward),
                    onTap: () {
                      print(
                          "Tapped on ${citycountry[index]['name']} which is in ${citycountry[index]['country']}.");
                    },
                  ),
                );
              }),
        ],
      ),
    );
  }
}
