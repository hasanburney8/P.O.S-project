import 'package:flutter/material.dart';
import 'Utils/colors.dart';
import 'Utils/loginKeypad.dart';

class loginScreen extends StatefulWidget {
  const loginScreen({super.key});

  @override
  State<loginScreen> createState() => _loginScreenState();
}

class _loginScreenState extends State<loginScreen> {

  var userInput = ' ';
  var answer = ' ';

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text("POS"),
          backgroundColor: Color(0xe42a2e45),
          elevation: 10.0,
        ),
        backgroundColor: Color(0xff2a2e45),
        body: Padding(
          padding: const EdgeInsets.only(top: 120.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Column(
                children: [
                  Text("10:09 PM",style:TextStyle(color: Colors.white,fontSize: 70),),
                  Text("Day, Month Date",style:TextStyle(color: Colors.white,fontSize: 20),),
                  SizedBox(height: MediaQuery.of(context).size.height * 0.1,),
                  Text("PT EXPRESS",style:TextStyle(color: Colors.white,fontSize: 35),),
                ],
              ),


              Column(
                children: [
                  Container(
                    height: MediaQuery.sizeOf(context).height*0.4,
                    width: MediaQuery.sizeOf(context).width*0.3,
                    child: Expanded(
                      child: Column(
                        children: [
                          // SizedBox(height: 10,),
                          Row(
                            children: [
                              MyButton(title: '1',onPress: () {
                                userInput+='1';
                                setState(() {

                                });
                              },),
                              MyButton(title: '2',onPress: () {
                                userInput+='2';
                                setState(() {

                                });
                              },),
                              MyButton(title: '3',onPress: () {
                                userInput+='3';
                                setState(() {

                                });
                              },),
                            ],
                          ),
                          // SizedBox(height: 10,),
                          Row(
                            children: [
                              MyButton(title: '4',onPress: () {
                                userInput+='4';
                                setState(() {

                                });
                              },),
                              MyButton(title: '5',onPress: () {
                                userInput+='5';
                                setState(() {

                                });
                              },),
                              MyButton(title: '6',onPress: () {
                                userInput+='6';
                                setState(() {

                                });},),
                            ],
                          ),
                          // SizedBox(height: 10,),
                          Row(
                            children: [
                              MyButton(title: '7',onPress: () {
                                userInput+='7';
                                setState(() {

                                });
                              },),
                              MyButton(title: '8',onPress: () {
                                userInput+='8';
                                setState(() {

                                });
                              },),
                              MyButton(title: '9',onPress: () {
                                userInput+='9';
                                setState(() {

                                });
                              },),
                            ],
                          ),
                          // SizedBox(height: 10,),
                          Row(
                            children: [
                              MyButton(title: 'DEL',onPress: () {
                                userInput = userInput.substring(0,userInput.length-1);
                                setState(() {

                                });
                              },),
                              MyButton(title: '0',onPress: () {
                                userInput+='0';
                                setState(() {

                                });},),
                              MyButton(title: '.',onPress: () {
                                userInput+='.';
                                setState(() {

                                });},),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

