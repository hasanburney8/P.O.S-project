// import 'package:flutter/material.dart';
//
// class tapBar extends StatelessWidget {
//   const tapBar({super.key});
//
//   @override
//   Widget build(BuildContext context) {
//     return AlertDialog(
//       title: Container(
//           child:
//           Row(
//             mainAxisAlignment: MainAxisAlignment.spaceBetween,
//             children: [
//               Row(
//                 children: [
//                   Center(child: Text("Select Table Type",style: TextStyle(fontSize: 25),)),
//                   SizedBox(width: w*0.01,),
//                   Icon(Icons.edit,color: Colors.blueAccent,size: 30,),
//                   Text("Add/Edit Dining",style: TextStyle(color: Colors.blueAccent,fontSize: 20),),
//                 ],
//               ),
//               Container(
//                 height: h * 0.05,
//                 width: w * 0.07,
//                 decoration: BoxDecoration(
//                   color: Colors.grey.shade200,
//                 ),
//                 child: Center(
//                   child: Row(
//                     mainAxisAlignment: MainAxisAlignment.center, // Center the row horizontally
//                     children: [
//                       Icon(Icons.close),
//                       SizedBox(width: 4), // Add some space between the icon and text
//                       Text("Close",style: TextStyle(),),
//                     ],
//                   ),
//                 ),
//               ),
//             ],
//           )
//       ),
//       content: SizedBox(
//         height: h*0.6,
//         width: w*0.7,
//         child:
//         Column(
//           children: [
//             Divider(
//               height: 14,
//               thickness: 0.7,
//               color: Colors.grey,
//             ),
//             Column(
//               children: [
//                 Align(alignment: Alignment.bottomLeft ,child: Text("tapBar", style: TextStyle(fontSize: 30,color: Colors.black),)),
//                 SizedBox(height: 15,),
//                 DefaultTabController(
//                   length: 11, // Number of additional tabs
//                   child: Column(
//                     children: [
//                       TabBar(
//                         isScrollable: true, // Allow tabs to scroll if too many
//                         tabs: [
//                           Tab(text: 'Main Dining Room'),
//                           Tab(text: 'Backyard'),
//                           Tab(text: 'Patio'),
//                           Tab(text: 'Bar & More'),
//                           Tab(text: 'Test Area'),
//                           Tab(text: 'Test Dining'),
//                           Tab(text: 'Test Section 1'),
//                           Tab(text: 'Test Room'),
//                           Tab(text: 'Test Ned'),
//                           Tab(text: 'Test Area 2'),
//                           Tab(text: 'Test Area 3'),
//                         ],
//                       ),
//                       Expanded(
//                         child: TabBarView(
//                           children: [
//                             Center(
//                               child: Text('Main Dining Room Content'),
//                             ),
//                             Center(
//                               child: Text('Backyard Content'),
//                             ),
//                             Center(
//                               child: Text('Patio Content'),
//                             ),
//                             Center(
//                               child: Text('Bar & More Content'),
//                             ),
//                             Center(
//                               child: Text('Test Area Content'),
//                             ),
//                             Center(
//                               child: Text('Test Dining Content'),
//                             ),
//                             Center(
//                               child: Text('Test Section 1 Content'),
//                             ),
//                             Center(
//                               child: Text('Test Room Content'),
//                             ),
//                             Center(
//                               child: Text('Test Ned Content'),
//                             ),
//                             Center(
//                               child: Text('Test Area 2 Content'),
//                             ),
//                             Center(
//                               child: Text('Test Area 3 Content'),
//                             ),
//                           ],
//                         ),
//                       ),
//                     ],
//                   ),
//                 ),
//               ],
//             ),
//             Column(
//               children: [
//                 Align(alignment: Alignment.bottomLeft ,child: Text("tapBar", style: TextStyle(fontSize: 30,color: Colors.black),)),
//                 SizedBox(height: 15,),
//               ],
//             )
//           ],
//         ),
//       ),
//       actions: [
//         TextButton(
//           onPressed: () {
//             Navigator.of(context).pop();
//           },
//           child: Text("Cancel"),
//         ),
//         TextButton(
//           onPressed: () {
//             // Add your logic to add a customer here
//             Navigator.of(context).pop();
//           },
//           child: Text("Ok"),
//         ),
//       ],
//     );
//   }
// }
