import 'package:flutter/material.dart';
import 'package:pos_project/Utils/container.dart';
import 'Utils/button.dart';
import 'Utils/profileWidget.dart';

class registerScreen extends StatefulWidget {
  const registerScreen({super.key});

  @override
  State<registerScreen> createState() => _registerScreenState();
}

class _registerScreenState extends State<registerScreen> {
  List<String> itemsList = [
    'CHOCOLATE',
    'CHOCOLATES 2',
    'DONUT',
    'DRINKS',
    'HEALTHCARE',
    'LOTTO',
    'STEAKS',
    'FOOD',
    'CHICKEN',
    'FISH',
    'SWEETS'
  ];
  List<String> subItemsList = [
    'CHOCOLATE',
    'ANDRE CHAMPAGNE',
    '24 MINI HEINEKEN',
    '4 PK STEEL STB',
    'BOUNTY',
    'STEAKS',
    'FASTEST ROAD TO 1,000,000 BOOK',
    'GOLD RUSH CLASSIC'
  ];
  @override
  Widget build(BuildContext context) {
    final h = MediaQuery.sizeOf(context).height;
    final w = MediaQuery.sizeOf(context).width;
    return Scaffold(
        resizeToAvoidBottomInset: false,
        backgroundColor: Color(0xff31354f),
        appBar: AppBar(
          title: const Text(
            'POS',
            style: TextStyle(color: Colors.white),
          ),
          backgroundColor: const Color(0xff2a2e45),
        ),
        body: Column(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 8),
              child: Row(
                children: [
                  Expanded(
                    flex: 0,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        CustomButton().type3(
                            text: 'Home',
                            color: Colors.blue,
                            width: 230,
                            fontSize: 21,
                            fontWeight: FontWeight.normal,
                            onTap: () {}),
                        const SizedBox(
                          width: 30,
                        ),
                        CustomButton().type3(
                            text: 'Clear Check',
                            color: Colors.blue,
                            width: 230,
                            fontSize: 21,
                            fontWeight: FontWeight.normal,
                            onTap: () {}),
                        const SizedBox(
                          width: 20,
                        ),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Text(
                              'Order Type',
                              style:
                                  TextStyle(color: Colors.grey, fontSize: 17),
                            ),
                            Row(
                              children: [
                                TextButton(
                                    onPressed: () {},
                                    child: Text(
                                      'Dining',
                                      style: TextStyle(
                                          color: Colors.amber,
                                          fontSize: 25,
                                          fontWeight: FontWeight.bold),
                                    )),
                                IconButton(
                                    onPressed: () {},
                                    icon: Icon(
                                      Icons.table_restaurant,
                                      color: Colors.white,
                                      size: 28,
                                    ))
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
                        Spacer(
                          flex: 1,
                        ),
                        SizedBox(
                          height: 50,
                          width: 400,
                          child: TextFormField(
                            // onChanged: onChanged,
                            // controller: controller,
                            // keyboardType: TextInputType.text,
                            // style: GoogleFonts.cabin(color: Colors.black, fontSize: 15),
                            decoration: InputDecoration(
                              contentPadding: const EdgeInsets.symmetric(
                                  vertical: 5.0, horizontal: 15),
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
                              suffixIcon: InkWell(
                                  child: Icon(
                                Icons.search,
                                color: Colors.grey,
                              )),
                              hintText: 'Search with barcode...',
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Expanded(
              child: Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 25, vertical: 8),
                child: Row(
                  children: [
                    Expanded(
                      flex: 3,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SizedBox(
                            height: 60,
                            width: double.infinity,
                            child: TextFormField(
                              // onChanged: onChanged,
                              // controller: controller,
                              // keyboardType: TextInputType.text,
                              // style: GoogleFonts.cabin(color: Colors.black, fontSize: 15),
                              decoration: InputDecoration(
                                  contentPadding: const EdgeInsets.symmetric(
                                      vertical: 5.0, horizontal: 15),
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
                                  suffixIcon: InkWell(
                                      child: Icon(
                                    Icons.qr_code_scanner,
                                    color: Colors.grey.shade800,
                                    size: 30,
                                  )),
                                  hintText: 'Scan to add item...',
                                  hintStyle: TextStyle(fontSize: 18)),
                            ),
                          ),
                          InkWell(
                            onTap: () {},
                            child: Container(
                              decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(5)),
                              child: Padding(
                                padding: const EdgeInsets.symmetric(
                                    horizontal: 10, vertical: 10),
                                child: GestureDetector(
                                  onTap: () {
                                    showDialog(
                                      context: context,
                                      builder: (BuildContext context) {
                                        return AlertDialog(
                                          title: Text("Add Customerrr"),
                                          content: Text(
                                              "Do you want to add a new customer?"),
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
                                              child: Text("Add"),
                                            ),
                                          ],
                                        );
                                      },
                                    );
                                  },
                                  child: Row(
                                    children: [
                                      Icon(
                                        Icons.person_add,
                                        size: 33,
                                        color: Colors
                                            .white, // Adjust the color as needed
                                      ),
                                      SizedBox(
                                        width: 20,
                                      ),
                                      Text(
                                        'Add Customer',
                                        style: TextStyle(
                                            fontSize: 24,
                                            color: Colors
                                                .white), // Adjust the color as needed
                                      )
                                    ],
                                  ),
                                ),
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Column(
                              children: [
                                CustomContainer(text: 'Take Out', color: Colors.blue.shade900,),

                                Container(
                                  margin: EdgeInsets.symmetric(vertical: 1),
                                  width: 640,
                                  height: 55,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(4),
                                    // color: Color(0xFF1C659B),
                                    color: Color(0xFF2A2E45),
                                  ),
                                  child: GestureDetector(
                                    onTap: (){
                                      showDialog(
                                          context: context,
                                          builder: (BuildContext context){
                                            return AlertDialog(
                                              title: Container(
                                                  child:
                                                  Row(
                                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                                    children: [
                                                      Row(
                                                        children: [
                                                          Center(child: Text("Select Table Type",style: TextStyle(fontSize: 25),)),
                                                          SizedBox(width: w*0.01,),
                                                          Icon(Icons.edit,color: Colors.blueAccent,size: 30,),
                                                          Text("Add/Edit Dining",style: TextStyle(color: Colors.blueAccent,fontSize: 20),),
                                                        ],
                                                      ),
                                                      Container(
                                                        height: h * 0.05,
                                                        width: w * 0.07,
                                                        decoration: BoxDecoration(
                                                          color: Colors.grey.shade200,
                                                        ),
                                                        child: Center(
                                                          child: Row(
                                                            mainAxisAlignment: MainAxisAlignment.center, // Center the row horizontally
                                                            children: [
                                                              Icon(Icons.close),
                                                              SizedBox(width: 4), // Add some space between the icon and text
                                                              Text("Close",style: TextStyle(),),
                                                            ],
                                                          ),
                                                        ),
                                                      ),
                                                    ],
                                                  )
                                              ),
                                              content: SizedBox(
                                                height: h*0.6,
                                                width: w*0.7,
                                                child:
                                                Column(
                                                  children: [
                                                    Container(
                                                      width: double.infinity,
                                                      child: SizedBox(
                                                        height: h*0.6, // Or any other specific height
                                                        child: Container(
                                                          child:
                                                            DefaultTabController(
                                                              length: 23,
                                                              child: Column(
                                                                children: [
                                                                  TabBar(
                                                                    isScrollable: true,
                                                                    tabs: [
                                                                      Tab(child: Text('Main Dining Room', style: TextStyle(color: Colors.black,),),),
                                                                      Tab(child: Text('Backyard', style: TextStyle(color: Colors.black,),),),
                                                                      Tab(child: Text('Patio', style: TextStyle(color: Colors.black,),),),
                                                                      Tab(child: Text('Bar & More', style: TextStyle(color: Colors.black,),),),
                                                                      Tab(child: Text('Test Area', style: TextStyle(color: Colors.black,),),),
                                                                      Tab(child: Text('Test Dining', style: TextStyle(color: Colors.black,),),),
                                                                      Tab(child: Text('Test Section 1', style: TextStyle(color: Colors.black,),),),
                                                                      Tab(child: Text('Test Room', style: TextStyle(color: Colors.black,),),),
                                                                      Tab(child: Text('Test Ned', style: TextStyle(color: Colors.black,),),),
                                                                      Tab(child: Text('Test Area 2', style: TextStyle(color: Colors.black,),),),
                                                                      Tab(child: Text('Test Area 3', style: TextStyle(color: Colors.black,),),),
                                                                      Tab(child: Text('test dining 2', style: TextStyle(color: Colors.black,),),),
                                                                      Tab(child: Text('test patio 2', style: TextStyle(color: Colors.black,),),),
                                                                      Tab(child: Text('test 23', style: TextStyle(color: Colors.black,),),),
                                                                      Tab(child: Text('test 34', style: TextStyle(color: Colors.black,),),),
                                                                      Tab(child: Text('testoffice', style: TextStyle(color: Colors.black,),),),
                                                                      Tab(child: Text('testt123', style: TextStyle(color: Colors.black,),),),
                                                                      Tab(child: Text('sec101', style: TextStyle(color: Colors.black,),),),
                                                                      Tab(child: Text('f34', style: TextStyle(color: Colors.black,),),),
                                                                      Tab(child: Text('Dining area 2', style: TextStyle(color: Colors.black,),),),
                                                                      Tab(child: Text('TaBLE 4', style: TextStyle(color: Colors.black,),),),
                                                                      Tab(child: Text('bc123', style: TextStyle(color: Colors.black,),),),
                                                                      Tab(child: Text('1234', style: TextStyle(color: Colors.black,),),),
                                                                    ],
                                                                  ),
                                                                  Flexible(
                                                                    child: TabBarView(
                                                                      children: [
                                                                        // Container(child: Center(child: Text('Content for Main Dining Room'),),),
                                                                        ProfileWidget(
                                                                          name: 'Test Jhon',
                                                                          level: '2',
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
                                                      )

                                                    ),
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
                                          });
                                    },
                                  ),
                                ),

                                CustomContainer(text: 'Catering', color: Color(0xFF2A2E45),),
                              ],
                            ),
                          SizedBox(
                            height: 150,
                          ),
                          Divider(
                            height: 14,
                            thickness: 0.7,
                            color: Colors.deepPurple.shade600,
                          ),

                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    'Total',
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 24,
                                        fontWeight: FontWeight.bold),
                                  ),
                                  SizedBox(
                                    height: 3,
                                  ),
                                  Text(
                                    '0 Items',
                                    style: TextStyle(
                                      color: Colors.white70,
                                      fontSize: 20,
                                    ),
                                  ),
                                ],
                              ),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.end,
                                children: [
                                  Row(
                                    children: [
                                      Text(
                                        'Tax \$0.00',
                                        style: TextStyle(
                                            color: Colors.white, fontSize: 18),
                                      ),
                                    ],
                                  ),
                                  SizedBox(
                                    height: 5,
                                  ),
                                  Row(
                                    children: [
                                      Container(
                                        padding: EdgeInsets.all(5),
                                        height: 80,
                                        width: 110,
                                        color: Colors.red.shade900,
                                        child: Column(
                                          children: [
                                            Text('Card Total',
                                                style: TextStyle(
                                                    color: Colors.white,
                                                    fontSize: 20,
                                                    fontWeight:
                                                        FontWeight.bold)),
                                            Divider(
                                              height: 5,
                                              thickness: 1,
                                              color: Colors.white,
                                            ),
                                            Text(
                                              '\$0.00',
                                              style: TextStyle(
                                                  color: Colors.white,
                                                  fontSize: 25,
                                                  fontWeight: FontWeight.bold),
                                            )
                                          ],
                                        ),
                                      ),
                                      SizedBox(
                                        width: 1,
                                      ),
                                      Container(
                                        padding: EdgeInsets.all(5),
                                        height: 80,
                                        width: 110,
                                        color: Colors.blue,
                                        child: Column(
                                          children: [
                                            Text('Reg Total',
                                                style: TextStyle(
                                                    color: Colors.white,
                                                    fontWeight: FontWeight.bold,
                                                    fontSize: 20)),
                                            Divider(
                                              height: 5,
                                              thickness: 1,
                                              color: Colors.white,
                                            ),
                                            Text(
                                              '\$0.00',
                                              style: TextStyle(
                                                  color: Colors.white,
                                                  fontSize: 25,
                                                  fontWeight: FontWeight.bold),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ],
                                  )
                                ],
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                    Expanded(
                        flex: 1,
                        child: ListView.builder(
                          scrollDirection: Axis.vertical,
                          itemCount: itemsList.length,
                          itemBuilder: (BuildContext context, index) {
                            return Padding(
                              padding: const EdgeInsets.symmetric(
                                  horizontal: 16, vertical: 8),
                              child: CustomButton().type1(
                                text: itemsList[index],
                                color: Colors.blueAccent,
                                onTap: () {},
                              ),
                            );
                          },
                        )),
                    Expanded(
                        flex: 3,
                        child: Column(
                          children: [
                            Expanded(
                              child: Padding(
                                padding: const EdgeInsets.symmetric(
                                    horizontal: 10, vertical: 8),
                                child: GridView.builder(
                                    scrollDirection: Axis.vertical,
                                    itemCount: subItemsList.length,
                                    gridDelegate:
                                        SliverGridDelegateWithFixedCrossAxisCount(
                                      crossAxisCount: 3,
                                      mainAxisSpacing: 26,
                                      crossAxisSpacing: 28,
                                      childAspectRatio: 3.0,
                                    ),
                                    itemBuilder: (context, index) {
                                      return CustomButton().type2(
                                        text: subItemsList[index],
                                        color: Colors.blueAccent,
                                        onTap: () {},
                                      );
                                    }),
                              ),
                            )
                          ],
                        )),
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 8),
              child: Row(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      CustomButton().type3(
                          text: 'Save',
                          color: Colors.blueGrey.shade400,
                          width: 160,
                          fontSize: 26,
                          fontWeight: FontWeight.bold,
                          onTap: () {}),
                      SizedBox(
                        width: 40,
                      ),
                      InkWell(
                        onTap: () {},
                        child: Container(
                          height: 62,
                          width: 130,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(5),
                            color: Colors.blueAccent,
                          ),
                          child: Row(
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(left: 18),
                                child: Text(
                                  'Print',
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 21,
                                  ),
                                ),
                              ),
                              SizedBox(
                                width: 16,
                              ),
                              VerticalDivider(
                                thickness: 1,
                                color: Colors.blue.shade800,
                              ),
                              Icon(
                                Icons.arrow_drop_down,
                                size: 26,
                              )
                            ],
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 60,
                      ),
                      CustomButton().type3(
                          text: 'Place Order',
                          color: Colors.blueGrey.shade400,
                          width: 380,
                          fontSize: 22,
                          fontWeight: FontWeight.normal,
                          onTap: () {}),
                      SizedBox(
                        width: 40,
                      ),
                      CustomButton().type3(
                          text: 'Open Cash Drawer',
                          color: Colors.blueAccent,
                          width: 200,
                          fontSize: 20,
                          fontWeight: FontWeight.normal,
                          onTap: () {}),
                      SizedBox(
                        width: 20,
                      ),
                      CustomButton().type3(
                          text: 'Print Last Invoice',
                          color: Colors.blueAccent,
                          width: 190,
                          fontSize: 20,
                          fontWeight: FontWeight.normal,
                          onTap: () {}),
                      SizedBox(
                        width: 20,
                      ),
                      CustomButton().type3(
                          text: 'Orders',
                          color: Colors.blueAccent,
                          width: 130,
                          fontSize: 20,
                          fontWeight: FontWeight.normal,
                          onTap: () {}),
                    ],
                  ),
                ],
              ),
            ),
            Container(
              padding: EdgeInsets.symmetric(
                horizontal: 15,
              ),
              height: 45,
              color: Color(0xff2a2e45),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Icon(
                    Icons.error_outlined,
                    color: Colors.red,
                    size: 26,
                  ),
                  SizedBox(
                    width: 8,
                  ),
                  Text(
                    'Not Connected',
                    textAlign: TextAlign.end,
                    style: TextStyle(fontSize: 18, color: Colors.red),
                  ),
                ],
              ),
            ),
          ],
        ));
  }
}
