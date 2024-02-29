import 'package:flutter/material.dart';

class DialogeBox extends StatelessWidget {
  const DialogeBox({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: ElevatedButton(
        onPressed: (){
          showDialog(
              context: context,
              builder: (context){
                return simpleDialogBox();
              });
        },
        child: const Text("Open Dialoge Box"),
      ),
    );
  }
}


Widget simpleDialogBox(){
  return Dialog(
    child: Padding(
      padding: const EdgeInsets.all(20),
      child: SizedBox(
        width: 500,
        height: 280,
      ),
    ),
  );
}