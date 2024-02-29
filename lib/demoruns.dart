import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  String? selectedValue; // Variable to store the selected item

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('DropdownButton in AppBar'),
          actions: [
            DropdownButton<String>(
              value: selectedValue, // Currently selected item
              onChanged: (String? newValue) {
                setState(() {
                  selectedValue = newValue; // Update selected item
                });
              },
              icon: Container( // Customizing the dropdown button arrow
                padding: EdgeInsets.all(8),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(5),
                ),
                child: Text(
                  'Logout',
                  style: TextStyle(color: Colors.black),
                ),
              ),
              items: <String>['Logout'] // List of items (only 'Logout')
                  .map<DropdownMenuItem<String>>((String value) {
                return DropdownMenuItem<String>(
                  value: value,
                  child: Text(
                    value,
                    style: TextStyle(color: Colors.red), // Red color for 'Logout'
                  ),
                );
              }).toList(),
            ),
          ],
        ),
        body: Center(
          child: Text(
            'Body content goes here',
            style: TextStyle(fontSize: 20),
          ),
        ),
      ),
    );
  }
}
