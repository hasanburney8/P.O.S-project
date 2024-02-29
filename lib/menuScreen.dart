import 'package:flutter/material.dart';
import 'package:pos_project/Utils/shiftButton.dart';

import 'Utils/colors.dart';

class menuScreen extends StatefulWidget {
  const menuScreen({super.key});

  @override
  State<menuScreen> createState() => _menuScreenState();
}

class _menuScreenState extends State<menuScreen> {
  @override
  Widget build(BuildContext context) {
    final h = MediaQuery.sizeOf(context).height;
    final w = MediaQuery.sizeOf(context).width;
    return Scaffold(
      backgroundColor: Color(0xff31354f),
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(h*0.09), // Customize the preferred height here
        child: AppBar(
          title: Text('POS',style: TextStyle(fontSize: 30),),
          backgroundColor: Color(0xe42a2e45),
          actions: <Widget>[
            shiftButton().Button(context: context, text: "HELLO"),

            DropdownButton<String>(
              icon: Container( // Customizing the dropdown button arrow
                padding: EdgeInsets.all(8),
                child: Row(
                  children: [
                    Text('Hi Rehan', style: TextStyle(color: Colors.white,fontSize: 20),),
                    Icon(Icons.keyboard_arrow_down,color: Colors.white,size: 30,)
                  ],
                ),
              ),
              items: <String>['Logout',] // List of items (only 'Logout')
                  .map<DropdownMenuItem<String>>((String value) {
                return DropdownMenuItem<String>(
                  value: value,
                  child: Text(value, style: TextStyle(color: Colors.red),), // Red color for 'Logout'
                );
              }).toList(), onChanged: (String? value) {  },
            ),
            Container(
              color: Color(0xe42a2e45),
              height: 10,
              width: 50,
            )
          ],

        ),
      ),
      
      
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            children: [
              Row(
                children: [
                  Container(
                    height: h*0.8,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                          Column(
                            children: [
                              Icon(Icons.point_of_sale,color: Colors.white,size: 120,),
                              Text("Register",style: TextStyle(color: Colors.white,fontSize: 23,fontWeight: FontWeight.bold),)
                            ],
                          ),
                          SizedBox(width: w*0.04,),
                          Column(
                            children: [
                              Icon(Icons.widgets,color: Colors.white,size: 120,),
                              Text("Front",style: TextStyle(color: Colors.white,fontSize: 23,fontWeight: FontWeight.bold),),
                              Text("Counter",style: TextStyle(color: Colors.white,fontSize: 23,fontWeight: FontWeight.bold),)
                            ],
                          ),
                          SizedBox(width: w*0.04,),
                          Column(
                            children: [
                              Icon(Icons.list_alt,color: Colors.white,size: 120,),
                              Text("Orders",style: TextStyle(color: Colors.white,fontSize: 23,fontWeight: FontWeight.bold),)
                            ],
                          ),
                          SizedBox(width: w*0.04,),
                          Column(
                            children: [
                              Icon(Icons.inventory,color: Colors.white,size: 120,),
                              Text("Inventory",style: TextStyle(color: Colors.white,fontSize: 23,fontWeight: FontWeight.bold),)
                            ],
                          ),
                          SizedBox(width: w*0.04,),
                          Column(
                            children: [
                              Icon(Icons.bar_chart,color: Colors.white,size: 120,),
                              Text("Reports",style: TextStyle(color: Colors.white,fontSize: 23,fontWeight: FontWeight.bold),)
                            ],
                          ),
                          SizedBox(width: w*0.04,),
                          Column(
                            children: [
                              Icon(Icons.send,color: Colors.white,size: 120,),
                              Text("Invitation",style: TextStyle(color: Colors.white,fontSize: 23,fontWeight: FontWeight.bold),)
                            ],
                          ),
                        ],),
                        SizedBox(height: h*0.03,),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                          Column(
                            children: [
                              Icon(Icons.group,color: Colors.white,size: 120,),
                              Text("Emplyees",style: TextStyle(color: Colors.white,fontSize: 23,fontWeight: FontWeight.bold),),
                            ],
                          ),
                          SizedBox(width: w*0.04,),
                          Column(
                            children: [
                              Icon(Icons.loyalty,color: Colors.white,size: 120,),
                              Text("Loyalty",style: TextStyle(color: Colors.white,fontSize: 23,fontWeight: FontWeight.bold),),
                              Text("Points",style: TextStyle(color: Colors.white,fontSize: 23,fontWeight: FontWeight.bold),),
                            ],
                          ),
                          SizedBox(width: w*0.04,),
                          Column(
                            children: [
                              Icon(Icons.settings,color: Colors.white,size: 120,),
                              Text("Settings",style: TextStyle(color: Colors.white,fontSize: 23,fontWeight: FontWeight.bold),),
                            ],
                          ),
                          SizedBox(width: w*0.04,),
                          Column(
                            children: [
                              Icon(Icons.money_off,color: Colors.red,size: 120,),
                              Text("Refund",style: TextStyle(color: Colors.white,fontSize: 23,fontWeight: FontWeight.bold),),
                            ],
                          ),
                          SizedBox(width: w*0.04,),
                          Column(
                            children: [
                              Icon(Icons.add,color: Colors.white,size: 120,),
                              Text("Other",style: TextStyle(color: Colors.white,fontSize: 23,fontWeight: FontWeight.bold),),
                            ],
                          ),
                          SizedBox(width: w*0.04,),
                          Column(
                            children: [
                              Icon(Icons.corporate_fare,color: Colors.white,size: 120,),
                              Text("Account",style: TextStyle(color: Colors.white,fontSize: 23,fontWeight: FontWeight.bold),),
                            ],
                          ),
                        ],),
                        SizedBox(height: h*0.03,),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                          Column(
                            children: [
                              Icon(Icons.currency_exchange,color: Colors.white,size: 120,),
                              Text("Tips",style: TextStyle(color: Colors.white,fontSize: 23,fontWeight: FontWeight.bold),),
                            ],
                          ),
                          SizedBox(width: w*0.04,),
                          Column(
                            children: [
                              Icon(Icons.schedule,color: Colors.white,size: 120,),
                              Text("Start Break",style: TextStyle(color: Colors.white,fontSize: 23,fontWeight: FontWeight.bold),),
                            ],
                          ),
                          SizedBox(width: w*0.04,),
                          Column(
                            children: [
                              Icon(Icons.savings,color: Colors.white,size: 120,),
                              Text("Open",style: TextStyle(color: Colors.white,fontSize: 23,fontWeight: FontWeight.bold),),
                              Text("Drawer",style: TextStyle(color: Colors.white,fontSize: 23,fontWeight: FontWeight.bold),),
                            ],
                          ),
                          SizedBox(width: w*0.04,),
                          Column(
                            children: [
                              Icon(Icons.local_shipping_rounded,color: Colors.green,size: 120,),
                              Text("Deliverect",style: TextStyle(color: Colors.white,fontSize: 23,fontWeight: FontWeight.bold),),
                            ],
                          ),
                        ],),
                      ],
                    ),
                  ),
                  SizedBox(width: w*0.05,),
                  Container(
                    color: Color(0xe42a2e45),
                    height: h*0.8,
                    width: w*0.3,
                    child: Padding(
                      padding: const EdgeInsets.symmetric(vertical: 8.0,horizontal: 10),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SizedBox(height: h*0.01,),
                          Text('College Park Bait & ',style: TextStyle(color: Colors.blueGrey.shade200,fontSize: 50),),
                          Text('Tackle',style: TextStyle(color: Colors.blueGrey.shade200,fontSize: 50),),
                          SizedBox(height: h*0.02,),
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            // mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              Text('Logged In',style: TextStyle(color: Colors.grey,fontSize: 20),),
                              SizedBox(width: w*0.1,),
                              Text('Last Order',style: TextStyle(color: Colors.grey,fontSize: 20),),
                            ],
                          ),
                          SizedBox(height: h*0.01,),
                          Row(
                            children: [
                              Text('Rehan The Goat',style: TextStyle(color: Colors.white,fontSize: 20),),
                              SizedBox(width: w*0.065,),
                              Icon(Icons.attach_money,color:Colors.white,size: 20,),
                              Text('12.99',style: TextStyle(color: Colors.white,fontSize: 20),),
                            ],
                          )
                        ],
                      ),
                    ),
                  )
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
