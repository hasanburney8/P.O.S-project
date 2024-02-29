import 'package:flutter/material.dart';
import 'package:pos_project/loginScreen.dart';

class shiftButton {
  Widget Button({
    required BuildContext context,
    required String text,
    }){
    return Container(
      height: MediaQuery.sizeOf(context).height*0.1,
      width: MediaQuery.sizeOf(context).width*0.2,
      decoration: BoxDecoration(
          color: Color(0xff31354f),
          borderRadius: BorderRadius.circular(10),
          border: Border.all(
          color: Colors.yellow,
            width: 2
        )
      ),
      child: Center(child: Text('Shift Started On: 16-02-24',style: TextStyle(color: Colors.yellow,fontSize: 20),)),
    );
  }
}
