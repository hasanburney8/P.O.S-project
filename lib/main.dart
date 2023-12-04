import 'package:flutter/material.dart';
import 'package:pos_project/demoruns.dart';
import 'package:pos_project/register.dart';
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
      home: registerScreen(), //this connects the homescreen
      // home: HomeScreen(),
    );
  }
}

