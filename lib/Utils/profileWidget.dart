import 'package:flutter/material.dart';

class ProfileWidget extends StatelessWidget {
  final String name;
  final String level;

  const ProfileWidget({
    Key? key,
    required this.name,
    required this.level,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        // Create the green container with rounded corners
        Container(
          width: 200,
          height: 200,
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            color: Colors.greenAccent,
          ),
        ),

        // Create a smaller white container with rounded corners on top of the green one
        Positioned(
          top: 10,
          left: 10,
          child: Container(
            width: 180,
            height: 180,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: Colors.white,
            ),
          ),
        ),

        // Position the icon and text within the white container
        Positioned(
          top: 50,
          left: 60,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              // Icon with a slight padding
              Text(
                '$name\n',
                style: const TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                ),
                textAlign: TextAlign.center,
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  children: [
                    Icon(
                      Icons.chair,
                      size: 40,
                      color: Colors.black,
                    ),
                    SizedBox(width: 20,),
                    Text(
                      '$level',
                      style: const TextStyle(
                        fontSize: 10,
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}


class DiningprofileWidget extends StatelessWidget {
  final String name;
  final String level;

  const DiningprofileWidget({
    Key? key,
    required this.name,
    required this.level,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        // Create the green container with rounded corners
        Container(
          width: 350,
          height: 400,
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            color: Colors.blueGrey,
          ),
        ),

        // Create a smaller white container with rounded corners on top of the green one
        Positioned(
          top: 25,
          left: 10,
          child: Container(
            width: 330,
            height: 350,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: Colors.white,
            ),
          ),
        ),

        // Position the icon and text within the white container
        Positioned(
          top: 100,
          left: 75,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              // Icon with a slight padding
              Column(
                children: [
                  Text(
                    '$name\n',
                    style: const TextStyle(
                      fontSize: 25,
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                    ),
                    textAlign: TextAlign.center,
                  ),
                  Text(
                    'Capacity: \n',
                    style: const TextStyle(
                      fontSize: 25,
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                    ),
                    textAlign: TextAlign.center,
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 8.0),
                child: Row(
                  children: [
                    Icon(Icons.edit,color: Colors.blueAccent,size: 40,),
                    Text("Edit",style: TextStyle(color: Colors.blueAccent,fontSize: 21),),
                    SizedBox(width: 10,),
                    Icon(Icons.delete,color: Colors.red,size: 40,),
                    Text("Delete",style: TextStyle(color: Colors.red,),)
                  ],
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}