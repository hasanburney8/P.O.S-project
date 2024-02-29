import 'package:flutter/material.dart';

class generalKeypad extends StatelessWidget {
  final String title;
  final Color color;
  final VoidCallback onPress;

  const generalKeypad({Key?key, required this.title, this.color= const Color(0xFFFFFFFF),required this.onPress});


  @override
  Widget build(BuildContext context) {
    return Expanded(
        child: InkWell(
            child: Container(
              height: 50,
              width: 50,
              decoration: BoxDecoration(
                shape: BoxShape.rectangle,
                color: color,
                border: Border.all(color: Colors.black)
              ),
              child: Center(
                child: Text(title,style: TextStyle(fontSize: 15, color: Colors.black),),
              ),
            ),
          ),
    );
  }
}

class generalKeypadBackspace extends StatelessWidget {
  final Color color;
  final VoidCallback onPress;
  const generalKeypadBackspace({Key?key, this.color= const Color(0xFFFFFFFF),required this.onPress});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: InkWell(
        onTap: onPress,
        child: Container(
          height: 50,
          width: 50,
          decoration: BoxDecoration(
              shape: BoxShape.rectangle,
              color: color,
              border: Border.all(color: Colors.black)
          ),
          child: Center(
            child: Icon(Icons.backspace,color: Colors.black,),
          ),
        ),
      ),
    );
  }
}

