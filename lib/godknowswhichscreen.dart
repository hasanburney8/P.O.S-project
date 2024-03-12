import 'package:flutter/material.dart';

class Screenview extends StatefulWidget {
  const Screenview({super.key});

  @override
  State<Screenview> createState() => _ScreenviewState();
}

class _ScreenviewState extends State<Screenview> {
  @override
  Widget build(BuildContext context) {
    final h = MediaQuery.sizeOf(context).height;
    final w = MediaQuery.sizeOf(context).width;
    return Scaffold(
      backgroundColor: Color(0xff31354f),
      appBar: AppBar(
        title: const Text(
          'POS',
          style: TextStyle(color: Colors.white),
        ),
        backgroundColor: const Color(0xff2a2e45),
      ),
      body: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('Pay for this order', style: TextStyle(fontWeight: FontWeight.bold,color: Colors.white, fontSize: 40)),
                  Text('Order Subtotal', style: TextStyle(color: Colors.white, fontSize: 20)),
                  Text('Tax', style: TextStyle(color: Colors.white, fontSize: 20)),
                  Text('Total', style: TextStyle(color: Colors.white, fontSize: 20)),
                  Text('Total Cash', style: TextStyle(color: Colors.white, fontSize: 20)),
                  Text('Paid', style: TextStyle(color: Colors.white, fontSize: 20)),
                ],
              ),
            ),
            Container(
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    width: w*0.70,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Divider(color: Colors.grey,),
                        Table(
                          children: [
                            TableRow(
                              children: [
                                TableCell(
                                  child: Center(
                                    child: Text(
                                      'Payment',
                                      style: TextStyle(fontSize: 21,fontWeight: FontWeight.bold,color: Colors.white,),
                                    ),
                                  ),
                                ),
                                TableCell(
                                  child: Center(
                                    child: Text(
                                      'Amount(Card | Reg)',
                                      style: TextStyle(fontSize: 21,fontWeight: FontWeight.bold,color: Colors.white),
                                    ),
                                  ),
                                ),
                                TableCell(
                                  child: Center(
                                    child: Text(
                                      'Paid Amount',
                                      style: TextStyle(fontSize: 21,fontWeight: FontWeight.bold,color: Colors.white),
                                    ),
                                  ),
                                ),
                                TableCell(
                                  child: Center(
                                    child: Text(
                                      'Status',
                                      style: TextStyle(fontSize: 21,fontWeight: FontWeight.bold,color: Colors.white),
                                    ),
                                  ),
                                ),
                                TableCell(
                                  child: Center(
                                    child: Text(
                                      'Mode',
                                      style: TextStyle(fontSize: 21,fontWeight: FontWeight.bold,color: Colors.white),
                                    ),
                                  ),
                                ),
                                TableCell(
                                  child: Center(
                                    child: Text(
                                      'Receipt',
                                      style: TextStyle(fontSize: 21,fontWeight: FontWeight.bold,color: Colors.white),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            TableRow(
                              children: [
                                TableCell(
                                  child: Center(
                                    child: Text(
                                      'Payment',
                                      style: TextStyle(fontWeight: FontWeight.bold,color: Colors.white),
                                    ),
                                  ),
                                ),
                                TableCell(
                                  child: Center(
                                    child: Text(
                                      'Amount(Card | Reg)',
                                      style: TextStyle(fontWeight: FontWeight.bold,color: Colors.white),
                                    ),
                                  ),
                                ),
                                TableCell(
                                  child: Center(
                                    child: Text(
                                      'Paid Amount',
                                      style: TextStyle(fontWeight: FontWeight.bold,color: Colors.white),
                                    ),
                                  ),
                                ),
                                TableCell(
                                  child: Center(
                                    child: Text(
                                      'Status',
                                      style: TextStyle(fontWeight: FontWeight.bold,color: Colors.white),
                                    ),
                                  ),
                                ),
                                TableCell(
                                  child: Center(
                                    child: Text(
                                      'Mode',
                                      style: TextStyle(fontWeight: FontWeight.bold,color: Colors.white),
                                    ),
                                  ),
                                ),
                                TableCell(
                                  child: Center(
                                    child: Text(
                                      'Receipt',
                                      style: TextStyle(fontWeight: FontWeight.bold,color: Colors.white),
                                    ),
                                  ),
                                ),
                              ]
                            )
                          ],
                        ),
                        SizedBox(
                          height: h*0.7,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Container(
                              width: w*0.34,
                              height: h*0.06,
                              decoration : BoxDecoration(
                                border: Border.all(color: Colors.white,width: 2.0)
                              ),
                              child: Center(child: Text('Add items',style: TextStyle(fontSize: 21,color: Colors.white),)),
                            ),
                            Container(
                              width: w*0.34,
                              height: h*0.06,
                              decoration : BoxDecoration(
                                  border: Border.all(color: Colors.white,width: 2.0)
                              ),
                              child: Center(child: Text('Add items',style: TextStyle(fontSize: 21,color: Colors.white),)),
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),

    );
  }
}
