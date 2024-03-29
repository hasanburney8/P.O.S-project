import 'package:flutter/material.dart';
import 'package:pos_project/Utils/shiftButton.dart';

import 'Utils/button.dart';
import 'Utils/profileWidget.dart';


class diningScreen extends StatefulWidget {
  const diningScreen({super.key});

  @override
  State<diningScreen> createState() => _diningScreenState();
}

class _diningScreenState extends State<diningScreen> {
  @override
  String dropdownValue = 'Select';
  Widget build(BuildContext context) {
    final h = MediaQuery.sizeOf(context).height;
    final w = MediaQuery.sizeOf(context).width;
    return Scaffold(
      backgroundColor: Color(0xff31354f),
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(h*0.09), // Customize the preferred height here
        child: AppBar(
          title: Text('POS',style: TextStyle(color: Colors.white,fontSize: 30),),
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
      body: Column(
        children: [
          Container(
            height: h*0.1,
            color: Color(0xff3b4060),
            child: Row(
              children: [
                Container(height: h*0.075,width: w*0.05,color: Colors.white10,child: Icon(Icons.arrow_back,size: 60,color: Colors.white,)),
                SizedBox(width: w*0.01,),
                Text('Dining - Edit Floor Plan',style: TextStyle(color: Colors.white,fontSize: 30),)
              ],
            ),
          ),
          Container(
            height: h*0.68,
            child: Row(
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('Floor Plan',style: TextStyle(color: Colors.white,fontSize: 30),),
                    Divider(color: Colors.white10,thickness: 5,),
                    GestureDetector(
                      onTap: () {
                        showDialog(
                          context: context,
                          builder: (BuildContext context) {
                            return AlertDialog(
                              title: Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Text("Add Table",style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold)),
                                  GestureDetector(
                                      onTap: () {Navigator.of(context).pop();},
                                      child: Container(width: w * 0.055,height: h*0.06, decoration: BoxDecoration(color: Colors.grey.shade300, borderRadius: BorderRadius.circular(8.0), boxShadow: [BoxShadow(color: Colors.black.withOpacity(0.2), spreadRadius: 2, blurRadius: 5, offset: Offset(0, 3))]), child: Row(children: [Icon(Icons.close), Text('Close')],),)
                                  ),
                                ],
                              ),
                              content: Container(
                                width: w*0.4,
                                height: h*0.6,
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text('Title',style: TextStyle(fontSize: 21),),
                                    Container(
                                      decoration: BoxDecoration(
                                        border: Border.all(
                                          color: Colors.grey, // Set border color
                                          width: 1.0, // Set border width
                                        ),
                                        borderRadius: BorderRadius.circular(8.0), // Set border radius
                                      ),
                                      child: TextFormField(
                                        // Add TextFormField properties here
                                      ),
                                    ),
                                    SizedBox(height: h*0.02,),
                                    Text('Dining Section',style: TextStyle(fontSize: 21),),
                                    Container(
                                      width: w*0.5,
                                      decoration: BoxDecoration(
                                        border: Border.all(
                                          color: Colors.grey, // Set border color
                                          width: 1.0, // Set border width
                                        ),
                                        borderRadius: BorderRadius.circular(8.0), // Set border radius
                                      ),
                                      child: DropdownButton<String>(
                                        value: dropdownValue,
                                        onChanged: (String? newValue) {  // <-- Note the added '?' to allow null
                                          setState(() {
                                            dropdownValue = newValue!; // <-- Use '!' to assert non-null before assignment
                                          });
                                        },
                                        items: <String>['Select', 'Round', 'Square']
                                            .map<DropdownMenuItem<String>>((String value) {
                                          return DropdownMenuItem<String>(
                                            value: value,
                                            child: Text(value),
                                          );
                                        }).toList(),
                                      ),
                                    ),
                                    SizedBox(height: h*0.02,),
                                    Text('Table Type',style: TextStyle(fontSize: 21),),
                                    Container(
                                      width: w*0.5,
                                      decoration: BoxDecoration(
                                        border: Border.all(
                                          color: Colors.grey, // Set border color
                                          width: 1.0, // Set border width
                                        ),
                                        borderRadius: BorderRadius.circular(8.0), // Set border radius
                                      ),
                                      child: DropdownButton<String>(
                                        value: dropdownValue,
                                        onChanged: (String? newValue) {  // <-- Note the added '?' to allow null
                                          setState(() {
                                            dropdownValue = newValue!; // <-- Use '!' to assert non-null before assignment
                                          });
                                        },
                                        items: <String>['Select', 'Round', 'Square']
                                            .map<DropdownMenuItem<String>>((String value) {
                                          return DropdownMenuItem<String>(
                                            value: value,
                                            child: Text(value),
                                          );
                                        }).toList(),
                                      ),
                                    ),
                                    SizedBox(height: h*0.02,),
                                    Text('Seating Capacity',style: TextStyle(fontSize: 21),),
                                    Container(
                                      decoration: BoxDecoration(
                                        border: Border.all(
                                          color: Colors.grey, // Set border color
                                          width: 1.0, // Set border width
                                        ),
                                        borderRadius: BorderRadius.circular(8.0), // Set border radius
                                      ),
                                      child: TextFormField(
                                        // Add TextFormField properties here
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              actions: [
                                CustomButton().type3(
                                      text: 'Save',
                                      color: Colors.blueAccent,
                                      width: 200,
                                      fontSize: 20,
                                      fontWeight: FontWeight.normal,
                                      onTap: () { }
                                ),
                              ],
                            );
                          },
                        );
                      },
                      child: Text('Add Table',style: TextStyle(color: Colors.white,fontSize: 30),),
                    ),

                    Divider(color: Colors.white10,thickness: 5,),
                    GestureDetector(
                      onTap: () {
                        showDialog(
                          context: context,
                          builder: (BuildContext context) {
                            return AlertDialog(
                              title: Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Text("Add Section",style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold),),
                                  GestureDetector(
                                      onTap: () {Navigator.of(context).pop();},
                                      child: Container(width: w * 0.055,height: h*0.06, decoration: BoxDecoration(color: Colors.grey.shade300, borderRadius: BorderRadius.circular(8.0), boxShadow: [BoxShadow(color: Colors.black.withOpacity(0.2), spreadRadius: 2, blurRadius: 5, offset: Offset(0, 3))]), child: Row(children: [Icon(Icons.close), Text('Close')],),)
                                  ),
                                ],
                              ),
                              content: Container(
                                width: w*0.4,
                                height: h*0.3,
                                child: Column(
                                  children: [
                                    Divider(),
                                    SizedBox(height: h*0.02,),
                                    Container(
                                      width: w*0.4,
                                      height: h*0.25,
                                      child: Row(
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        children: [
                                          Container(
                                            width: w*0.2,
                                            height: h*0.06,
                                            decoration: BoxDecoration(
                                              border: Border.all(
                                                color: Colors.grey, // Set border color
                                                width: w*0.001, // Set border width
                                              ),
                                              borderRadius: BorderRadius.circular(8.0), // Set border radius
                                            ),
                                            child: TextFormField(),
                                          ),
                                          SizedBox(width: w*0.01,),
                                          Container(
                                            width: w*0.05,
                                            height: h*0.06,
                                            decoration: BoxDecoration(
                                              color: Colors.blueAccent,
                                              borderRadius: BorderRadius.circular(8.0),
                                            ),
                                            child: Center(child: Text('Save',style: TextStyle(color: Colors.white,fontSize: 25),)),
                                          )
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            );
                          },
                        );
                      },
                      child:Text('Add Section',style: TextStyle(color: Colors.white,fontSize: 30),),
                    ),
                  ],
                ),
                DefaultTabController(
                  length: 24,
                  child: Expanded(
                    child: Column(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          TabBar(
                            isScrollable: true,
                            tabs: [
                              Tab(child: Column(
                                children: [
                                  Row(
                                    children: [
                                      Text('Main Dining Room', style: TextStyle(color: Colors.white)),
                                      Icon(Icons.edit,color: Colors.blueAccent,),
                                      SizedBox(width: w*0.01,),
                                      Icon(Icons.delete,color: Colors.red,)
                                    ],
                                  ),
                                ],
                              )),
                              Tab(child: Column(
                                children: [
                                  Row(
                                    children: [
                                      Text('Backyard', style: TextStyle(color: Colors.white)),
                                      Icon(Icons.edit,color: Colors.blueAccent,),
                                      SizedBox(width: w*0.01,),
                                      Icon(Icons.delete,color: Colors.red,)
                                    ],
                                  ),
                                ],
                              )),
                              Tab(child: Column(
                                children: [
                                  Row(
                                    children: [
                                      Text('Patio', style: TextStyle(color: Colors.white)),
                                      Icon(Icons.edit,color: Colors.blueAccent,),
                                      SizedBox(width: w*0.01,),
                                      Icon(Icons.delete,color: Colors.red,)
                                    ],
                                  ),
                                ],
                              )),
                              Tab(child: Column(
                                children: [
                                  Row(
                                    children: [
                                      Text('Bar & More', style: TextStyle(color: Colors.white)),
                                      Icon(Icons.edit,color: Colors.blueAccent,),
                                      SizedBox(width: w*0.01,),
                                      Icon(Icons.delete,color: Colors.red,)
                                    ],
                                  ),
                                ],
                              )),
                              Tab(child: Column(
                                children: [
                                  Row(
                                    children: [
                                      Text('Test Area', style: TextStyle(color: Colors.white)),
                                      Icon(Icons.edit,color: Colors.blueAccent,),
                                      SizedBox(width: w*0.01,),
                                      Icon(Icons.delete,color: Colors.red,)
                                    ],
                                  ),
                                ],
                              )),
                              Tab(child: Column(
                                children: [
                                  Row(
                                    children: [
                                      Text('Test Dining', style: TextStyle(color: Colors.white)),
                                      Icon(Icons.edit,color: Colors.blueAccent,),
                                      SizedBox(width: w*0.01,),
                                      Icon(Icons.delete,color: Colors.red,)
                                    ],
                                  ),
                                ],
                              )),
                              Tab(child: Column(
                                children: [
                                  Row(
                                    children: [
                                      Text('Test Section 1', style: TextStyle(color: Colors.white)),
                                      Icon(Icons.edit,color: Colors.blueAccent,),
                                      SizedBox(width: w*0.01,),
                                      Icon(Icons.delete,color: Colors.red,)
                                    ],
                                  ),
                                ],
                              )),
                              Tab(child: Column(
                                children: [
                                  Row(
                                    children: [
                                      Text('Test Room', style: TextStyle(color: Colors.white)),
                                      Icon(Icons.edit,color: Colors.blueAccent,),
                                      SizedBox(width: w*0.01,),
                                      Icon(Icons.delete,color: Colors.red,)
                                    ],
                                  ),
                                ],
                              )),
                              Tab(child: Column(
                                children: [
                                  Row(
                                    children: [
                                      Text('Test Ned', style: TextStyle(color: Colors.white)),
                                      Icon(Icons.edit,color: Colors.blueAccent,),
                                      SizedBox(width: w*0.01,),
                                      Icon(Icons.delete,color: Colors.red,)
                                    ],
                                  ),
                                ],
                              )),
                              Tab(child: Column(
                                children: [
                                  Row(
                                    children: [
                                      Text('Test Area 2', style: TextStyle(color: Colors.white)),
                                      Icon(Icons.edit,color: Colors.blueAccent,),
                                      SizedBox(width: w*0.01,),
                                      Icon(Icons.delete,color: Colors.red,)
                                    ],
                                  ),
                                ],
                              )),
                              Tab(child: Column(
                                children: [
                                  Row(
                                    children: [
                                      Text('Test Arean3', style: TextStyle(color: Colors.white)),
                                      Icon(Icons.edit,color: Colors.blueAccent,),
                                      SizedBox(width: w*0.01,),
                                      Icon(Icons.delete,color: Colors.red,)
                                    ],
                                  ),
                                ],
                              )),
                              Tab(child: Column(
                                children: [
                                  Row(
                                    children: [
                                      Text('Test dining 2', style: TextStyle(color: Colors.white)),
                                      Icon(Icons.edit,color: Colors.blueAccent,),
                                      SizedBox(width: w*0.01,),
                                      Icon(Icons.delete,color: Colors.red,)
                                    ],
                                  ),
                                ],
                              )),
                              Tab(child: Column(
                                children: [
                                  Row(
                                    children: [
                                      Text('Test Area 3', style: TextStyle(color: Colors.white)),
                                      Icon(Icons.edit,color: Colors.blueAccent,),
                                      SizedBox(width: w*0.01,),
                                      Icon(Icons.delete,color: Colors.red,)
                                    ],
                                  ),
                                ],
                              )),
                              Tab(child: Column(
                                children: [
                                  Row(
                                    children: [
                                      Text('Test patio 2', style: TextStyle(color: Colors.white)),
                                      Icon(Icons.edit,color: Colors.blueAccent,),
                                      SizedBox(width: w*0.01,),
                                      Icon(Icons.delete,color: Colors.red,)
                                    ],
                                  ),
                                ],
                              )),
                              Tab(child: Column(
                                children: [
                                  Row(
                                    children: [
                                      Text('test 23', style: TextStyle(color: Colors.white)),
                                      Icon(Icons.edit,color: Colors.blueAccent,),
                                      SizedBox(width: w*0.01,),
                                      Icon(Icons.delete,color: Colors.red,)
                                    ],
                                  ),
                                ],
                              )),
                              Tab(child: Column(
                                children: [
                                  Row(
                                    children: [
                                      Text('test 34', style: TextStyle(color: Colors.white)),
                                      Icon(Icons.edit,color: Colors.blueAccent,),
                                      SizedBox(width: w*0.01,),
                                      Icon(Icons.delete,color: Colors.red,)
                                    ],
                                  ),
                                ],
                              )),
                              Tab(child: Column(
                                children: [
                                  Row(
                                    children: [
                                      Text('testoffice', style: TextStyle(color: Colors.white)),
                                      Icon(Icons.edit,color: Colors.blueAccent,),
                                      SizedBox(width: w*0.01,),
                                      Icon(Icons.delete,color: Colors.red,)
                                    ],
                                  ),
                                ],
                              )),
                              Tab(child: Column(
                                children: [
                                  Row(
                                    children: [
                                      Text('testt123', style: TextStyle(color: Colors.white)),
                                      Icon(Icons.edit,color: Colors.blueAccent,),
                                      SizedBox(width: w*0.01,),
                                      Icon(Icons.delete,color: Colors.red,)
                                    ],
                                  ),
                                ],
                              )),
                              Tab(child: Column(
                                children: [
                                  Row(
                                    children: [
                                      Text('sec101', style: TextStyle(color: Colors.white)),
                                      Icon(Icons.edit,color: Colors.blueAccent,),
                                      SizedBox(width: w*0.01,),
                                      Icon(Icons.delete,color: Colors.red,)
                                    ],
                                  ),
                                ],
                              )),
                              Tab(child: Column(
                                children: [
                                  Row(
                                    children: [
                                      Text('f34', style: TextStyle(color: Colors.white)),
                                      Icon(Icons.edit,color: Colors.blueAccent,),
                                      SizedBox(width: w*0.01,),
                                      Icon(Icons.delete,color: Colors.red,)
                                    ],
                                  ),
                                ],
                              )),
                              Tab(child: Column(
                                children: [
                                  Row(
                                    children: [
                                      Text('Dining area 2', style: TextStyle(color: Colors.white)),
                                      Icon(Icons.edit,color: Colors.blueAccent,),
                                      SizedBox(width: w*0.01,),
                                      Icon(Icons.delete,color: Colors.red,)
                                    ],
                                  ),
                                ],
                              )),
                              Tab(child: Column(
                                children: [
                                  Row(
                                    children: [
                                      Text('TaBLE 4', style: TextStyle(color: Colors.white)),
                                      Icon(Icons.edit,color: Colors.blueAccent,),
                                      SizedBox(width: w*0.01,),
                                      Icon(Icons.delete,color: Colors.red,)
                                    ],
                                  ),
                                ],
                              )),
                              Tab(child: Column(
                                children: [
                                  Row(
                                    children: [
                                      Text('bc123', style: TextStyle(color: Colors.white)),
                                      Icon(Icons.edit,color: Colors.blueAccent,),
                                      SizedBox(width: w*0.01,),
                                      Icon(Icons.delete,color: Colors.red,)
                                    ],
                                  ),
                                ],
                              )),
                              Tab(child: Column(
                                children: [
                                  Row(
                                    children: [
                                      Text('1234', style: TextStyle(color: Colors.white)),
                                      Icon(Icons.edit,color: Colors.blueAccent,),
                                      SizedBox(width: w*0.01,),
                                      Icon(Icons.delete,color: Colors.red,)
                                    ],
                                  ),
                                ],
                              )),
                            ],
                          ),
                          Expanded(
                            child: TabBarView(
                              children: [
                                GridView.builder(
                                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                                    crossAxisCount: 3,
                                    crossAxisSpacing: 1.0, // Adjust the cross axis spacing
                                    mainAxisSpacing: 1.0,// Adjust the cross axis count as needed
                                  ),
                                  itemCount: 4, // Adjust the itemCount based on the number of ProfileWidgets
                                  itemBuilder: (BuildContext context, int index) {
                                    // List of names for ProfileWidgets
                                    List<String> names = ['Test Jhon', 'Test', 'Jhon', 'Testfd'];

                                    return DiningprofileWidget(
                                      name: names[index], // Get the name from the list based on the index
                                      level: '2',
                                    );
                                  },
                                ),
                                Container(child: Center(child: Text('Content for Backyard'),),),
                                Container(child: Center(child: Text('Content for Patio'),),),
                                Container(child: Center(child: Text('Content for Bar & More'),),),
                                Container(child: Center(child: Text('Content for Test Area'),),),
                                Container(child: Center(child: Text('Content for Test Dining'),),),
                                Container(child: Center(child: Text('Content for Test Section 1'),),),
                                Container(child: Center(child: Text('Content for Test Room'),),),
                                Container(child: Center(child: Text('Content for Test Ned'),),),
                                Container(child: Center(child: Text('Content for Test Area 2'),),),
                                Container(child: Center(child: Text('Content for Test Area 3'),),),
                                Container(child: Center(child: Text('Content for test dining 2'),),),
                                Container(child: Center(child: Text('Content for Test Area 3'),),),
                                Container(child: Center(child: Text('Content for test patio 2'),),),
                                Container(child: Center(child: Text('Content for test 23'),),),
                                Container(child: Center(child: Text('Content for test 34'),),),
                                Container(child: Center(child: Text('Content for testoffice'),),),
                                Container(child: Center(child: Text('Content for testt123'),),),
                                Container(child: Center(child: Text('Content for sec101'),),),
                                Container(child: Center(child: Text('Content for f34'),),),
                                Container(child: Center(child: Text('Content for Dining area 2'),),),
                                Container(child: Center(child: Text('Content for TaBLE 4'),),),
                                Container(child: Center(child: Text('Content for bc123'),),),
                                Container(child: Center(child: Text('Content for 1234'),),),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
              ],
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Container(
                width: 50,
                height: 50,
                decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: Colors.red.shade900,
              ),
              child: Icon(Icons.add,size: 40,color: Colors.white,),
              ),
            ],
          )
        ],
      ),
    );
  }
}
