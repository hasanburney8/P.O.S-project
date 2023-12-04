import 'package:flutter/material.dart';
import 'package:pos_project/Utils/Reusable%20Components/container.dart';

import 'Utils/Reusable Components/button.dart';

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
                                  color: Colors.white12,
                                  borderRadius: BorderRadius.circular(5)),
                              child: Padding(
                                padding: const EdgeInsets.symmetric(
                                    horizontal: 10, vertical: 10),
                                child: Row(
                                  children: [
                                    Icon(
                                      Icons.person_add,
                                      size: 33,
                                      color: Colors.white,
                                    ),
                                    SizedBox(
                                      width: 20,
                                    ),
                                    Text(
                                      'Add Customer',
                                      style: TextStyle(
                                          fontSize: 24, color: Colors.white),
                                    )
                                  ],
                                ),
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          SingleChildScrollView(
                            child: Column(
                              children: [
                                CustomContainer(
                                  text: 'Take Out',
                                  color: Colors.blue.shade900,
                                ),
                                CustomContainer(
                                  text: 'Dining',
                                  color: Color(0xe42a2e45),
                                ),
                                CustomContainer(
                                  text: 'Catering',
                                  color: Color(0xFF2A2E45),
                                ),
                              ],
                            ),
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
