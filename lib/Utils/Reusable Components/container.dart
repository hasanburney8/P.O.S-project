import 'package:flutter/material.dart';

class CustomContainer extends StatelessWidget {
  final String text; final Color color;
   CustomContainer({super.key, required this.text, required this.color});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 1),
      width: 640,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(4),
        // color: Color(0xFF1C659B),
        color: color,
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 12),
        child: Center(
          child: Text(text, style: TextStyle(color: Colors.white, fontSize: 26),),
        ),
      ),
    );
  }
}
