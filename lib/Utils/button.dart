import 'package:flutter/material.dart';

class CustomButton {
  Widget type1(
      {required String text,
        required Color color,
        required VoidCallback onTap}) {
    return InkWell(
      onTap: onTap,
      child: Container(
        height: 80,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(5),
          color: color,
        ),
        child: Center(
            child: Text(
              text,
              style: TextStyle(
                  color: Colors.white, fontSize: 18, fontWeight: FontWeight.bold),
            )),
      ),
    );
  }

  Widget type2(
      {required String text,
        required Color color,
        required VoidCallback onTap}) {
    return InkWell(
      onTap: onTap,
      child: Container(
        height: 45,
        width: 180,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(5),
          color: color,
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 5),
          child: Center(
              child: Text(
                text,
                style: TextStyle(
                    color: Colors.white, fontSize: 18, fontWeight: FontWeight.bold),
              )),
        ),
      ),
    );
  }

  Widget type3(
      {required String text,
        required Color color,
        required double width,
        required double fontSize,
        required FontWeight fontWeight,
        required VoidCallback onTap}) {
    return InkWell(
      onTap: onTap,
      child: Container(
        height: 62,
        width: width,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(5),
          color: color,
        ),
        child: Center(
            child: Text(
              text,
              style: TextStyle(
                  color: Colors.white, fontSize: fontSize, fontWeight: fontWeight),
            )),
      ),
    );
  }


  Widget keys(
      {required String text,
        required Color color,
        required double fontSize,
        required FontWeight fontWeight,
        required VoidCallback onTap}){
    return InkWell(
      onTap: onTap,
      child: Container(
        height: 10,
        width: 5,
        decoration: BoxDecoration(),
        child: Text(text,
          style: TextStyle(color: Colors.white, fontSize: fontSize, fontWeight: fontWeight),),
      ),
    );
  }
}





