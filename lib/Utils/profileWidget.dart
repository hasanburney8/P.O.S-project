// import 'package:flutter/material.dart';
//
// class ProfileWidget extends StatelessWidget {
//   final String name;
//   final String level;
//   final Color ringColor;
//
//   const ProfileWidget({
//     Key? key,
//     required this.name,
//     required this.level,
//     required this.ringColor,
//   }) : super(key: key);
//
//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       width: 100,
//       height: 100,
//       decoration: BoxDecoration(
//         shape: BoxShape.circle,
//         // Combine two decorations for ring and fill
//         gradient: RadialGradient(
//           colors: [ringColor, Colors.white],
//           stops: [0.8, 1.0],
//         ),
//       ),
//       child: Center(
//         child: Column(
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: [
//             // Icon with a slight padding
//             Padding(
//               padding: const EdgeInsets.all(8.0),
//               child: Icon(
//                 Icons.chair,
//                 size: 60,
//                 color: Colors.black,
//               ),
//             ),
//             // Text below the icon
//             Text(
//               '$name\n$level',
//               style: const TextStyle(
//                 fontSize: 12,
//                 fontWeight: FontWeight.bold,
//                 color: Colors.black,
//               ),
//               textAlign: TextAlign.center,
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }








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
              // Text below the icon
              // Text(
              //   '$name\n$level',
              //   style: const TextStyle(
              //     fontSize: 10,
              //     fontWeight: FontWeight.bold,
              //     color: Colors.black,
              //   ),
              //   textAlign: TextAlign.center,
              // ),
            ],
          ),
        ),
      ],
    );
  }
}

