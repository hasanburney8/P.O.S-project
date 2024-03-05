import 'package:flutter/material.dart';

class ordersContainer extends StatelessWidget {

  final String orderNumber;
  final String time;
  final String orderType;
  final String totalAmount;
  final String customer;

  const ordersContainer({
    super.key,
    required this.orderNumber,
    required this.time,
    required this.orderType,
    required this.totalAmount,
    required this.customer
  });
  
  @override
  Widget build(BuildContext context) {
    final h = MediaQuery.sizeOf(context).height;
    final w = MediaQuery.sizeOf(context).width;
    return Container(
      decoration: BoxDecoration(
        border: Border(
            top: BorderSide(
              color: Colors.black26, // Border color
              width: 2.0,         // Border width
            ),
            left: BorderSide(
              color: Colors.black26, // Border color
              width: 2.0,         // Border width
            ),
            right: BorderSide(
              color: Colors.black26, // Border color
              width: 2.0,         // Border width
            ),
        )
      ),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("Order Number : $orderNumber",style: TextStyle(color: Colors.blueAccent,fontSize: 23,fontWeight: FontWeight.bold),),
                  // SizedBox(width: w*0.1,),
                  Text("$time",style: TextStyle(fontSize: 20),),
                ],
              ),
            ),
            Text("Order Type : $orderType",style: TextStyle(color: Colors.blueAccent,fontSize: 23,fontWeight: FontWeight.w400),),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text("Total Amount : $totalAmount",style: TextStyle(color: Colors.blueAccent,fontSize: 30),),
                Row(
                  children: [
                    Container(decoration: BoxDecoration(border: Border.all(color: Colors.black12, width: 2.0,), color: Colors.white70,), height: h * 0.05, width: w * 0.07, child: Center(child: Text('Status : pay', style: TextStyle(color: Colors.red, fontSize: 20,),),),),
                    SizedBox(width: w*0.01,),
                    Container(height: h*0.05,width: w*0.07,color: Colors.blueAccent,child: Center(child: Text('Re-Open',style: TextStyle(color: Colors.white,fontSize: 20),)),),
                    SizedBox(width: w*0.01,),
                    GestureDetector(
                      onTap: () {
                        showDialog(
                          context: context,
                          builder: (BuildContext context) {
                            return AlertDialog(
                              title: Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Text('Order Details'),
                                  GestureDetector(
                                    onTap: (){Navigator.of(context).pop();},
                                      child: Container(width: w*0.05,decoration: BoxDecoration(color: Colors.grey.shade300,borderRadius: BorderRadius.circular(8.0),border: Border.all(color: Colors.black26, width: 1.0),),child: Center(child: Text("Close",style: TextStyle(fontSize: 20),)),)
                                  )
                                ],
                              ),
                              content: SizedBox(
                                height: h * 0.4,
                                width: w * 0.5,
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [

                                    Row(
                                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                      children: [
                                      Text('Order Number : $orderNumber',style: TextStyle(fontSize: 15),),
                                      Text('Status : Not Paid',style: TextStyle(fontSize: 15),)
                                    ],
                                    ),
                                    Text('Table Number : ',style: TextStyle(fontSize: 15),),
                                    Text('Table Title ',style: TextStyle(fontSize: 15),),
                                    Text('Date : ',style: TextStyle(fontSize: 15),),
                                    Divider(),
                                    SizedBox(height: h*0.02,),
                                    Container(
                                      child: Row(
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        children: [
                                          Container(
                                            width: w*0.25,
                                            child: Column(
                                              crossAxisAlignment: CrossAxisAlignment.start,
                                              children: [
                                                Text('Items',style: TextStyle(fontSize: 20),),
                                                Table(
                                                  children: [
                                                    TableRow(
                                                      children: [
                                                        Container(
                                                          color: Colors.grey,
                                                          child: TableCell(
                                                            child: Center(
                                                              child: Text(
                                                                'Item Name',
                                                                style: TextStyle(fontWeight: FontWeight.bold),
                                                              ),
                                                            ),
                                                          ),
                                                        ),
                                                        Container(
                                                          color: Colors.grey,
                                                          child: TableCell(
                                                            child: Center(
                                                              child: Text(
                                                                'Qty',
                                                                style: TextStyle(fontWeight: FontWeight.bold),
                                                              ),
                                                            ),
                                                          ),
                                                        ),
                                                        Container(
                                                          color: Colors.grey,
                                                          child: TableCell(
                                                            child: Center(
                                                              child: Text(
                                                                'Amount',
                                                                style: TextStyle(fontWeight: FontWeight.bold),
                                                              ),
                                                            ),
                                                          ),
                                                        ),
                                                      ],
                                                    ),
                                                    TableRow(
                                                      children: [
                                                        TableCell(
                                                          child: Center(
                                                            child: Text('Guest 1'),
                                                          ),
                                                        ),
                                                        TableCell(
                                                          child: Center(
                                                            child: Text('x1'),
                                                          ),
                                                        ),
                                                        TableCell(
                                                          child: Center(
                                                            child: Text('\$5.00'),
                                                          ),
                                                        ),
                                                      ],
                                                    ),
                                                    TableRow(
                                                      children: [
                                                        TableCell(
                                                          child: Center(
                                                            child: Text('Guest 2'),
                                                          ),
                                                        ),
                                                        TableCell(
                                                          child: Center(
                                                            child: Text('x1'),
                                                          ),
                                                        ),
                                                        TableCell(
                                                          child: Center(
                                                            child: Text('\$7.99'),
                                                          ),
                                                        ),
                                                      ],
                                                    ),
                                                    TableRow(
                                                      children: [
                                                        TableCell(
                                                          child: Center(
                                                            child: Text('Guest 3'),
                                                          ),
                                                        ),
                                                        TableCell(
                                                          child: Center(
                                                            child: Text('x1'),
                                                          ),
                                                        ),
                                                        TableCell(
                                                          child: Center(
                                                            child: Text('\$112.00'),
                                                          ),
                                                        ),
                                                      ],
                                                    ),
                                                    TableRow(
                                                      children: [
                                                        TableCell(
                                                          child: Center(
                                                            child: Text('Guest 4'),
                                                          ),
                                                        ),
                                                        TableCell(
                                                          child: Center(
                                                            child: Text('x1'),
                                                          ),
                                                        ),
                                                        TableCell(
                                                          child: Center(
                                                            child: Text('\$112.00'),
                                                          ),
                                                        ),
                                                      ],
                                                    ),
                                                    TableRow(
                                                      children: [
                                                        TableCell(
                                                          child: Center(
                                                            child: Text('Guest 5'),
                                                          ),
                                                        ),
                                                        TableCell(
                                                          child: Center(
                                                            child: Text(''),
                                                          ),
                                                        ),
                                                        TableCell(
                                                          child: Center(
                                                            child: Text(''),
                                                          ),
                                                        ),
                                                      ],
                                                    ),
                                                  ],
                                                ),
                                              ],
                                            ),
                                          ),
                                          SizedBox(width: w*0.02,),
                                          Column(
                                            crossAxisAlignment: CrossAxisAlignment.start,
                                            children: [
                                              Container(
                                                width: w*0.1,
                                                child: Column(
                                                  mainAxisAlignment: MainAxisAlignment.start,
                                                  crossAxisAlignment: CrossAxisAlignment.start,
                                                  children: [
                                                    Text('Transactions',style: TextStyle(fontSize: 20),),
                                                    Row(
                                                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                                      children: [
                                                        Text('Total:'),
                                                        Text('53.32'),
                                                      ],),
                                                    Row(
                                                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                                      children: [
                                                        Text('Amount Tendered:'),
                                                        Text('0.00'),
                                                      ],
                                                    ),
                                                    Row(
                                                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                                      children: [
                                                        Text('Change:'),
                                                        Text('0.00')
                                                      ],
                                                    )
                                                  ],
                                                ),
                                              ),
                                            ],
                                          ),
                                          SizedBox(width: w*0.02,),
                                          Column(
                                            children: [
                                              Container(
                                                height: h*0.05,
                                                width: w*0.1,
                                                color: Colors.green,
                                                child: Center(child: Text('Add Payment',style: TextStyle(color: Colors.white),),),
                                              ),
                                              SizedBox(height: h*0.01,),
                                              Container(
                                                height: h*0.05,
                                                width: w*0.1,
                                                color: Colors.indigoAccent,
                                                child: Center(child: Row(
                                                  mainAxisAlignment: MainAxisAlignment.center,
                                                  children: [
                                                    Icon(Icons.print,color: Colors.white,),
                                                    Text('Print',style: TextStyle(color: Colors.white),),
                                                  ],
                                                ),),
                                              )
                                            ],
                                          ),
                                        ],
                                      ),
                                    )

                                  ],
                                ),
                              ),
                            );
                          },
                        );
                      },
                      child: Container(
                        height: h * 0.05,
                        width: w * 0.05,
                        color: Colors.amber,
                        child: Center(
                          child: Text(
                            'View',
                            style: TextStyle(fontSize: 20),
                          ),
                        ),
                      ),
                    )
                  ],
                ),

              ],
            ),
            Text("Customer : $customer",style: TextStyle(color: Colors.blueAccent,fontSize: 23),)
          ],
        ),
      ),
    );
  }
}


