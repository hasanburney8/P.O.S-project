import 'package:flutter/material.dart';
import 'package:pos_project/PlaceOrderScreen.dart';
import 'package:pos_project/Utils/shiftButton.dart';
import 'package:pos_project/demoruns.dart';
import 'package:pos_project/dialougebox.dart';
import 'package:pos_project/godknowswhichscreen.dart';
import 'package:pos_project/loginScreen.dart';
import 'package:pos_project/menuScreen.dart';
import 'package:pos_project/registerScreen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Screenview(), //this connects the homescreen
      // home: HomeScreen(),
    );
  }
}



