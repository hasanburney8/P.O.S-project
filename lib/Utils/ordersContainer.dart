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
                    Container(height: h*0.05,width: w*0.05,color: Colors.amber,child: Center(child: Text('View',style: TextStyle(fontSize: 20),)),),
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
