import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  final String text; final Color color;
  CustomButton({super.key, required this.text, required this.color});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      child: Container(
        height: 45,
        width: 150 ,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(5),
          color: color,
        ),
        child: Center(child: Text(text, style: TextStyle(color: Colors.white, fontSize: 18),)),
      ),
    );
  }
}
