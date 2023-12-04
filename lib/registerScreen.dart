import 'package:flutter/material.dart';

import 'Utils/Reusable Components/button.dart';

class registerScreen extends StatefulWidget {
  const registerScreen({super.key});

  @override
  State<registerScreen> createState() => _registerScreenState();
}

class _registerScreenState extends State<registerScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff31354f),
      appBar: AppBar(
        title: Text('POS'),
        backgroundColor: Color(0xff2a2e45),
      ),
      body:  Column(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 8),
            child: Row(

              // mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Expanded(
                  flex: 0,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                    //   ElevatedButton(
                    //     style: ButtonStyle(backgroundColor: MaterialStatePropertyAll(Colors.blue)),
                    //       onPressed: (){
                    //   }, child: Text('Home')),
                    CustomButton(text: 'Home', color: Colors.blue,),
                      SizedBox(width: 30,),
                      CustomButton(text: 'Clear Check', color: Colors.blue,),
                      // ElevatedButton(
                      //   style: ButtonStyle(backgroundColor: MaterialStatePropertyAll(Colors.blue), ),
                      //     onPressed: (){
                      // }, child: Text('Clear Check')),
                      SizedBox(width: 20,),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Text('Order Type', style: TextStyle(color: Colors.grey, fontSize: 16),),
                          Row(
                            children: [
                              TextButton(onPressed: (){

                              }, child: Text('Dining', style: TextStyle(color: Colors.amber, fontSize: 22, fontWeight: FontWeight.bold),)),
                              IconButton(onPressed: (){

                              }, icon: Icon(Icons.table_restaurant,color: Colors.white,) )
                            ],
                          ),

                        ],
                      )
                    ],
                  ),
                ),
                Expanded(
                  flex: 1,
                  child: Row(
                    children: [
                      Spacer(flex: 1,),
                  SizedBox(
                    height: 50,
                    width: 400,
                    child: TextFormField(
                      // onChanged: onChanged,
                      // controller: controller,
                      // keyboardType: TextInputType.text,
                      // style: GoogleFonts.cabin(color: Colors.black, fontSize: 15),
                      decoration: InputDecoration(
                          contentPadding:
                          const EdgeInsets.symmetric(vertical: 5.0, horizontal: 15),
                          fillColor: Colors.white,
                          filled: true,
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10.0),
                            borderSide: const BorderSide(width: 0.8),
                          ),
                          enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(6.0),
                            borderSide: BorderSide(
                              width: 1.5,
                              color: Theme.of(context).primaryColor,
                            ),
                          ),
                          suffixIcon: InkWell(child: Icon(Icons.search, color: Colors.grey,)),
                          hintText: 'Search with barcode...',

                      ),
                    ),)

                    ],
                  ),
                ),
              ],
            ),
          )
          // Padding(
          //   padding: const EdgeInsets.only(right: 25, left: 20, top: 20),
          //   child: Row(
          //     children: [
          //       Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          //         Row(
          //           children: [
          //             Container(
          //               height: 50,
          //               width: 90,
          //               color: Colors.blue,
          //               child: Center(child: Text('Home')),
          //             ),
          //             SizedBox(
          //               width: 20,
          //             ),
          //             Container(
          //               height: 50,
          //               width: 90,
          //               color: Colors.blue,
          //               child: Center(child: Text('Clear check')),
          //             ),
          //             Container(
          //               height: 50,
          //               width: 190,
          //               child: Column(children: [
          //                 Text(
          //                   'Order Type',
          //                   style: TextStyle(
          //                     color: Colors.grey,
          //                     fontWeight: FontWeight.bold,
          //                   ),
          //                 ),
          //                 Text(
          //                   'Dining',
          //                   style: TextStyle(
          //                       color: Colors.orangeAccent,
          //                       fontWeight: FontWeight.bold,
          //                       fontSize: 20),
          //                 ),
          //               ]),
          //             ),
          //           ],
          //         ),
          //         SizedBox(
          //           height: 5,
          //         ),
          //         Container(
          //           color: Colors.white,
          //           width: 350,
          //           child: TextFormField(
          //             textAlign: TextAlign.center,
          //             decoration: InputDecoration(hintText: 'Scan to add item...'),
          //           ),
          //         ),
          //         SizedBox(
          //           height: 10,
          //         ),
          //         Container(
          //           color: Color(0xff565B6A),
          //           width: 350,
          //           child: TextFormField(
          //             decoration: InputDecoration(
          //               icon: Padding(
          //                 padding: const EdgeInsets.only(left: 10),
          //                 child: Icon(
          //                   Icons.person_add_outlined,
          //                   color: Colors.white,
          //                 ),
          //               ),
          //               hintText: 'Add Customer',
          //             ),
          //           ),
          //         ),
          //         Padding(
          //           padding: const EdgeInsets.only(top: 200),
          //           child: Container(
          //             width: 350,
          //             child: Divider(
          //               height: 20,
          //               color: Colors.purple,
          //             ),
          //           ),
          //         ),
          //         Row(
          //           children: [
          //             Column(
          //               children: [
          //                 Text(
          //                   'Total',
          //                   style: TextStyle(color: Colors.white, fontSize: 20),
          //                 ),
          //                 Text(
          //                   '0 items',
          //                   style: TextStyle(color: Colors.grey),
          //                 ),
          //               ],
          //             ),
          //             SizedBox(
          //               width: 174,
          //             ),
          //             Column(
          //               crossAxisAlignment: CrossAxisAlignment.end,
          //               children: [
          //                 Row(
          //                   children: [
          //                     Text(
          //                       'Tax 0.00',
          //                       style: TextStyle(color: Colors.white),
          //                     ),
          //                   ],
          //                 ),
          //                 Row(
          //                   children: [
          //                     Container(
          //                       height: 50,
          //                       width: 85,
          //                       color: Color(0xffdc3545),
          //                       child: Column(
          //                         children: [
          //                           Text('Card Total',
          //                               style: TextStyle(
          //                                   color: Colors.white,
          //                                   fontSize: 12,
          //                                   fontWeight: FontWeight.bold)),
          //                           SizedBox(
          //                             height: 5,
          //                           ),
          //                           Text('0.00')
          //                         ],
          //                       ),
          //                     ),
          //                     Container(
          //                       height: 50,
          //                       width: 85,
          //                       color: Colors.blue,
          //                       child: Column(
          //                         children: [
          //                           Text('Reg Total',
          //                               style: TextStyle(
          //                                 fontSize: 12,
          //                                   color: Colors.white,
          //                                   fontWeight: FontWeight.bold)),
          //                           SizedBox(
          //                             height: 5,
          //                           ),
          //                           Text('-'),
          //                         ],
          //                       ),
          //                     ),
          //                   ],
          //                 )
          //               ],
          //             ),
          //           ],
          //         ),
          //         SizedBox(
          //           height: 20,
          //         ),
          //         Row(
          //           children: [
          //             Padding(
          //               padding: const EdgeInsets.only(right: 10),
          //               child: Container(
          //                 height: 45,
          //                 width: 70,
          //                 decoration: BoxDecoration(
          //                   borderRadius: BorderRadius.circular(5),
          //                   color: Colors.blueGrey,
          //                 ),
          //                 child: Center(
          //                     child: Text('Save',
          //                         style: TextStyle(color: Colors.white))),
          //               ),
          //             ),
          //             Padding(
          //               padding: const EdgeInsets.only(right: 10),
          //               child: Container(
          //                 height: 45,
          //                 width: 70,
          //                 decoration: BoxDecoration(
          //                   borderRadius: BorderRadius.circular(5),
          //                   color: Colors.blue,
          //                 ),
          //                 child: Center(
          //                     child: Text(
          //                       'Print',
          //                       style: TextStyle(color: Colors.white),
          //                     )),
          //               ),
          //             ),
          //             Container(
          //               height: 45,
          //               width: 190,
          //               decoration: BoxDecoration(
          //                 borderRadius: BorderRadius.circular(5),
          //                 color: Colors.blueGrey,
          //               ),
          //               child: Center(
          //                   child: Text('Place Order',
          //                       style: TextStyle(color: Colors.white))),
          //             ),
          //           ],
          //         )
          //       ]),
          //       // Expanded(
          //       //   child:Column(
          //       //   children: [
          //       //      ListView(
          //       //       children: [
          //       //         Text('sdjkhfkjbdfkj'),
          //       //       ],)
          //       //
          //       //   ],
          //       // ),),
          //       Column(
          //         children: [
          //           Row(
          //             mainAxisAlignment: MainAxisAlignment.end,
          //             children: [
          //               Container(
          //                   color: Colors.white,
          //                   height: 50,
          //                   width: 250,
          //                   child: TextFormField(
          //                     decoration: InputDecoration(
          //                       hintText: 'Search with barcode',
          //                       icon: Icon(
          //                         Icons.search,
          //                       ),
          //                     ),
          //                   )),
          //             ],
          //           ),
          //         ],
          //       ),
          //     ],
          //   ),
          // ),
        ],
      )
    );
  }
}
