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
                                children: [
                                  Text('Order Details'),
                                  Container(child: Text("Close"),)
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
                                    Container(
                                      child: Row(
                                        children: [
                                          Column(
                                            crossAxisAlignment: CrossAxisAlignment.start,
                                            children: [
                                              Container(
                                                width: w*0.1,
                                                child: Column(
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




class CustomElevatedButton extends StatelessWidget {
  final VoidCallback? onPressed;
  final Color backgroundColor;
  double? horizontalPadding;
  double? verticalPadding;
  final String buttonText;

  CustomElevatedButton({
    Key? key,
    required this.onPressed,
    required this.backgroundColor,
    this.horizontalPadding,
    this.verticalPadding,
    required this.buttonText,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      style: ElevatedButton.styleFrom(
        backgroundColor: backgroundColor,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(5),
        ),
      ),
      child: Padding(
        padding: EdgeInsets.symmetric(
            vertical: verticalPadding ?? 8, horizontal: horizontalPadding ?? 0),
        child: Text(
          buttonText,
          style: TextStyle(color: Colors.white, fontSize: 18),
        ),
      ),
    );
  }
}
