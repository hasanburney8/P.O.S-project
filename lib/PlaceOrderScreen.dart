import 'package:flutter/material.dart';
import 'package:pos_project/Utils/button.dart';
import 'package:pos_project/Utils/colors.dart';
import 'package:pos_project/Utils/generalKeypad.dart';
import 'Utils/loginKeypad.dart';


class placeOrderScreen extends StatefulWidget {
  const placeOrderScreen({super.key});

  @override
  State<placeOrderScreen> createState() => _placeOrderScreenState();
}

class _placeOrderScreenState extends State<placeOrderScreen> {

  var userInput = ' ';
  var amountText = TextEditingController();

  @override
  Widget build(BuildContext context) {
    final h = MediaQuery.sizeOf(context).height;
    final w = MediaQuery.sizeOf(context).width;
    return Scaffold(
      backgroundColor: backgroundColor,
      appBar: AppBar(backgroundColor: darkBlueColor, title: const Text('POS', style: TextStyle(color: Colors.white),),
      ),
      body: Row(
        children: [
          Padding(
            padding: EdgeInsets.all(10.0),
            child: Container(
              decoration: BoxDecoration(
                  color: Color(0xff555870), borderRadius: BorderRadius.circular(6.0)
              ),
              width: w*0.48, height: h*0.87,
              child: Column(
                  children: [
                    Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          GestureDetector(child: Icon(Icons.arrow_back,color: Colors.white,size: 30.0,),),
                          Text('Cart(x)', style: TextStyle(fontSize: 24, color: Colors.white),),
                          GestureDetector(child: Icon(Icons.more_horiz,color: Colors.white,size: 30.0,),),
                        ],
                      ),
                    ),
                    Container(
                      decoration: BoxDecoration(borderRadius: BorderRadius.circular(5)),
                      child: Column(
                        children: [
                          Row(
                            children: [
                              Padding(
                                padding: EdgeInsets.symmetric(horizontal: h*0.02),
                                child: Container(
                                  width: w*0.455,height: h*0.075,
                                  decoration: BoxDecoration(
                                      color: Color(0xff666A87)
                                  ),
                                  child: Row(
                                    children: [
                                      Icon(Icons.person_add, size: 40, color: Colors.white),
                                      Text('Add Customer', style: TextStyle(fontSize: 24, color: Colors.white),),
                                    ],
                                  ),
                                ),
                              ),
                            ],
                          ),
                          Divider(color: Colors.white,),
                          Container(
                            decoration: BoxDecoration(color: Colors.black45),
                            child: Row(
                              children: [
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children:
                                  [
                                    Text('Item name',style: TextStyle(fontSize: 20,color: Colors.white),),
                                    SizedBox(height: h*0.008,),
                                    Container(decoration: BoxDecoration(color: Colors.red),child: Text('Out Of Stock',style: TextStyle(fontSize: 15,color: Colors.white),),),
                                    SizedBox(height: h*0.008,),
                                    Container(decoration: BoxDecoration(color: Colors.blueAccent), child: Text('Add Special Instruction',style: TextStyle(fontSize: 15,color: Colors.white),),),
                                  ],
                                ),
                                SizedBox(width: w*0.25,),
                                Column(
                                  children: [
                                    Row(
                                      children: [
                                        Icon(Icons.remove_circle,color: Colors.red,),
                                        SizedBox(width: w*0.005,),
                                        Text('quantity',style: TextStyle(color: Colors.white),),
                                        SizedBox(width: w*0.005,),
                                        Icon(Icons.add_circle,color: Colors.red,),
                                      ],
                                    )
                                  ],
                                ),
                                SizedBox(width: w*0.01,),
                                Column(
                                  children: [
                                    Text('price',style: TextStyle(color: Colors.white),),
                                    SizedBox(height: h*0.005,),
                                    Text('price',style: TextStyle(color: Colors.red),)
                                  ],
                                ),
                                SizedBox(width: w*0.025,),
                                Icon(Icons.cancel,color: Colors.red,)
                              ],
                            ),
                          ),
                          SizedBox(
                            height: h*0.4,
                          ),
                          Divider(
                            color: Colors.white,
                          ),
                          Row(
                            children: [
                              SizedBox(
                                width: w*0.01,
                              ),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text('Total', style: TextStyle(color: Colors.white, fontSize: 24, fontWeight: FontWeight.bold),),
                                  SizedBox(height: 3,),
                                  Text('0 Items', style: TextStyle(color: Colors.white70, fontSize: 20,)),
                                ],
                              ),
                              SizedBox(
                                width: w*0.27,
                              ),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.end,
                                children: [
                                  Row(
                                    children: [
                                      Text('Tax \$0.00', style: TextStyle(color: Colors.white, fontSize: 18),),
                                    ],
                                  ),
                                  SizedBox(height: 5,),
                                  Row(
                                    children: [
                                      Container(
                                        padding: EdgeInsets.all(5), height: 80, width: 110, color: Colors.red.shade900,
                                        child: Column(
                                          children: [
                                            Text('Card Total', style: TextStyle(color: Colors.white, fontSize: 20, fontWeight: FontWeight.bold)),
                                            Divider(height: 5, thickness: 1, color: Colors.white,),
                                            Text('\$0.00', style: TextStyle(color: Colors.white, fontSize: 25, fontWeight: FontWeight.bold),)
                                          ],
                                        ),
                                      ),
                                      SizedBox(width: 1,),
                                      Container(padding: EdgeInsets.all(5), height: 80, width: 110, color: Colors.blue,
                                        child: Column(
                                          children: [
                                            Text('Reg Total', style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold, fontSize: 20)),
                                            Divider(height: 5, thickness: 1, color: Colors.white,),
                                            Text('\$0.00', style: TextStyle(color: Colors.white,fontSize: 25,fontWeight: FontWeight.bold),),
                                          ],
                                        ),
                                      ),
                                    ],
                                  )
                                ],
                              ),
                            ],
                          ),
                          Row(
                            children: [
                              SizedBox(width: w*0.01,),
                              CustomButton().type3(text: 'Merge', color: Colors.grey, width: w*0.11, fontSize: 25, fontWeight: FontWeight.normal, onTap: (){}),
                              SizedBox(width: w*0.02,),
                              CustomButton().type3(text: 'Tip', color: Colors.blueAccent, width: w*0.11, fontSize: 25, fontWeight: FontWeight.normal, onTap: (){})
                            ],
                          )
                        ],
                      ),
                    )
                  ]
              ),
            ),
          ),
          SizedBox(width: 10,),
          Container(
            width: w*0.48,
            height: h*0.87,
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text('price',style: TextStyle(color: Colors.white,fontSize: 30),),
                    Container(height: h*0.05, width: w*0.12,decoration: BoxDecoration(color: Colors.white,borderRadius: BorderRadius.circular(8.0)),
                      child: Center(
                          child:
                          Text('Split Custom Amount',
                            style: TextStyle(fontSize:20,color: Colors.blueGrey,),
                          )
                      ),
                    )
                  ],
                ),
                SizedBox(height: h*0.02,),
                Container(height: h*0.05, width: w*0.5, decoration: BoxDecoration(border: Border.all(color: Colors.grey, width: 2.0,),),
                  child: Center(child: Text('Please Add Payment',style: TextStyle(color: Colors.grey),)),
                ),
                SizedBox(height: h*0.46,),
                Divider(height: 5, color: Colors.blue.shade900, thickness: 2,),
                SizedBox(height: h*0.009,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text('Remaining Payment',style: TextStyle(fontSize:20,fontWeight:FontWeight.bold ,color: textActiveColor),),
                    Text('price',style: TextStyle(fontSize:20,color: textActiveColor),),
                  ],
                ),
                SizedBox(height: h*0.009,),
                Row(
                  children: [
                    CustomButton().type3(text: 'cash', color: Colors.blueAccent, width: w*0.235, fontSize: 25, fontWeight: FontWeight.normal, onTap: (){}),
                    SizedBox(width: w*0.01,),
                    InkWell(
                      onTap: (){},
                      child: Container(
                        decoration: BoxDecoration(
                            color: Colors.blueAccent,
                            borderRadius: BorderRadius.circular(5)
                        ),
                        child: GestureDetector(
                          onTap: (){
                            showDialog(
                              context: context,
                              builder: (BuildContext context) {
                                return AlertDialog(
                                  title: Center(child: Text("Confirm Amount")),
                                  content: SizedBox(
                                    height: 500,
                                    width: 280,
                                    child:
                                    Column(
                                      children: [
                                        Container(
                                          decoration: BoxDecoration(
                                            border: Border.all(color: Colors.black)
                                          ),
                                          child: Column(
                                            children: [
                                            Align(alignment: Alignment.bottomRight ,child: Text(userInput.toString(), style: TextStyle(fontSize: 30,color: Colors.black),)),
                                            SizedBox(height: 15,),
                                            ],
                                          )
                                        ),

                                        Row(
                                          children: [
                                            generalKeypad(title: "1", onPress: (){
                                              userInput+='1';
                                                setState(() {

                                                });
                                            }),
                                            generalKeypad(title: '2',onPress: () {
                                              userInput+='2';
                                              setState(() {

                                              });
                                            },),
                                            generalKeypad(title: '3',onPress: () {
                                              userInput+='3';
                                              print("3");
                                              setState(() {

                                              });
                                            },),
                                          ],
                                        ),
                                        Row(
                                          children: [
                                            generalKeypad(title: '4',onPress: () {
                                              userInput+='4';
                                              setState(() {

                                              });
                                            },),
                                            generalKeypad(title: '5',onPress: () {
                                              userInput+='5';
                                              setState(() {

                                              });
                                            },),
                                            generalKeypad(title: '6',onPress: () {
                                              userInput+='6';
                                              setState(() {

                                              });},),
                                          ],
                                        ),
                                        Row(
                                          children: [
                                            generalKeypad(title: '7',onPress: () {
                                              userInput+='7';
                                              setState(() {

                                              });
                                            },),
                                            generalKeypad(title: '8',onPress: () {
                                              userInput+='8';
                                              setState(() {

                                              });
                                            },),
                                            generalKeypad(title: '9',onPress: () {
                                              userInput+='9';
                                              setState(() {

                                              });
                                            },),
                                          ],
                                        ),
                                        Row(
                                          children: [
                                            generalKeypadBackspace(onPress :(){
                                              userInput = userInput.substring(0,userInput.length-1);
                                              setState(() {

                                              });
                                            }),
                                            generalKeypad(title: '0',onPress: () {
                                              userInput+='0';
                                              setState(() {

                                              });
                                            },),
                                            generalKeypad(title: '.',onPress: () {
                                              userInput+='.';
                                              setState(() {

                                              });
                                            },),
                                          ],
                                        ),
                                        Container(
                                          color: Colors.blueAccent,
                                          height: 50,
                                          width: double.maxFinite,
                                          child: Center(child: (Text("OK",style: TextStyle(color: Colors.white,fontSize: 15),))),
                                        )
                                      ],
                                    ),
                                  ),
                                  actions: [
                                    TextButton(
                                      onPressed: () {
                                        Navigator.of(context).pop();
                                      },
                                      child: Text("Cancel"),
                                    ),
                                    TextButton(
                                      onPressed: () {
                                        // Add your logic to add a customer here
                                        Navigator.of(context).pop();
                                      },
                                      child: Text("Ok"),
                                    ),
                                  ],
                                );
                              },
                            );
                          },
                          child: Row(
                            children: [
                              Container(
                                height: 62,
                                width: w*0.234,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(5),
                                  color: Colors.blueAccent,
                                ),
                                child: Center(
                                    child: Text(
                                      "Credit Card",
                                      style: TextStyle(
                                          color: Colors.white, fontSize: 18, fontWeight: FontWeight.bold),
                                    )),
                              ),
                            ],
                          ),
                          // child: CustomButton().type3(text: 'Credit Card', color: Colors.blueAccent, width: w*0.235, fontSize: 25, fontWeight: FontWeight.normal, onTap: (){}),
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: h*0.01,),
                Row(
                  children: [
                    CustomButton().type3(text: 'Discount', color: Colors.blueAccent, width: w*0.153, fontSize: 25, fontWeight: FontWeight.normal, onTap: (){}),
                    SizedBox(width: w*0.01,),
                    CustomButton().type3(text: '#EBT', color: Colors.blueAccent, width: w*0.153, fontSize: 25, fontWeight: FontWeight.normal, onTap: (){}),
                    SizedBox(width: w*0.01,),
                    CustomButton().type3(text: 'Account', color: Colors.blueAccent, width: w*0.153, fontSize: 25, fontWeight: FontWeight.normal, onTap: (){}),

                  ],
                ),
                SizedBox(height: h*0.02,),
                Container(
                  child: CustomButton().type3(text: 'Order Complete', color: Colors.grey, width: w, fontSize: 25, fontWeight: FontWeight.normal, onTap: (){}),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
