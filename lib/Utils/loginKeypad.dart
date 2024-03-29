import 'package:flutter/material.dart';

class MyButton extends StatelessWidget {
  final String title;
  final Color color;
  final VoidCallback onPress;

  const MyButton({Key?key, required this.title, this.color= const Color(0xe42a2e45),required this.onPress});

  @override
  Widget build(BuildContext context) {
    return Expanded(
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 10),
          child: InkWell(
            child: Container(
              height: 50,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: color,
              ),
              child: Center(
                child: Text(title,style: TextStyle(fontSize: 20, color: Colors.white),),
              ),
            ),
          ),
        )
    );
  }
}
