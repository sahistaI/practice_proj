import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class TipCalc extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        height:double.infinity,
        color: Color(0xFFf5f3f4),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              width: 400,
              height: 100,
              color: Colors.white,
              child: Image.asset("assets/images/tip.jpg",fit: BoxFit.cover,),
            ),
            SizedBox(
              height: 30,
            ),
            Container(
              width: 350,
              height: 250,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(21),
                color: Color(0xFFffffff),
              ),
              child: Column(
                mainAxisAlignment:MainAxisAlignment.center,
                children: [
                  Text('Total p/person',style: TextStyle(
                    fontWeight:FontWeight.bold,fontSize: 25,
                  ),),
                  SizedBox(
                    height: 10,
                  ),
                  Container(
                    child: Text("\$000",style: TextStyle(
                        fontSize:35
                    ),),
                  //  child: Image.asset("assets/images/zero.jpg"),
                  ),
                SizedBox(
                  height:10,
                ),
                Container(
                  width: double.infinity,
                  height: 2,
                  color: Colors.black,
                  child: Text("_____________________"),
                ),
                  SizedBox(
                    height: 10,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Column(
                        children: [
                          Text("Total bill",style: TextStyle(
                            fontSize:20
                          ),),
                          Text("\$000",style: TextStyle(
                              fontSize:25
                          ),),
                        ],
                      ),
                      SizedBox(
                        width: 180,
                      ),
                      Column(
                        children: [
                          Text("Total tip",style: TextStyle(
                              fontSize:20
                          ),),
                          Text("\$000",style: TextStyle(
                              fontSize:25
                          ),),
                        ],
                      ),


                    ],




                  ),

                ],
              ),
            ),
            SizedBox(
              height: 30,
            ),
            Row(
              children: [
                Container(
                  width: 100,
                    height: 60,
                    color: Colors.white70,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Text('Enter',style: TextStyle(
                          fontSize: 20, fontWeight: FontWeight.bold
                        ),),
                        Text('your bill',style: TextStyle(
                          fontSize: 18,
                        ),),
                      ],
                    ),
                ),
                SizedBox(
                  width: 10,
                ),

                Container(
                  color: Colors.white70,
                  width: 250,
                  height: 50,
                  child: SizedBox(
                    child: Container(
                      margin: EdgeInsets.only(right:190),
                      height: 5,
                        width: 4,
                        child: Image.asset("assets/images/dollar.png",)),
                  )),

              ],
            ),
            SizedBox(
              height: 30,
            ),
            Row(
              children: [
                Container(
                  width: 100,
                  height: 60,
                  color: Colors.white70,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text('Choose',style: TextStyle(
                          fontSize: 20, fontWeight: FontWeight.bold
                      ),),
                      Text('your tip',style: TextStyle(
                        fontSize: 18,
                      ),),
                    ],
                  ),
                ),
                SizedBox(
                  width: 10,
                ),

                Row(
                  children: [
                    Container(
                      decoration: BoxDecoration(
                        color: Color(0xFF01c9be),
                        borderRadius: BorderRadius.circular(11),
                      ),

                      width: 80,
                      height: 50,
                      child: Center(
                        child: Text('10%',style: TextStyle(
                            fontSize: 30, fontWeight: FontWeight.bold,
                          color: Colors.white70
                        ),),
                      ),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Container(
                      decoration: BoxDecoration(
                        color: Color(0xFF01c9be),
                        borderRadius: BorderRadius.circular(11),
                      ),
                      width: 80,
                      height: 50,
                      child: Center(
                        child: Text('15%',style: TextStyle(
                            fontSize: 30, fontWeight: FontWeight.bold,
                            color: Colors.white70
                        ),),
                      ),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Container(
                      decoration: BoxDecoration(
                        color: Color(0xFF01c9be),
                        borderRadius: BorderRadius.circular(11),
                      ),
                      width: 80,
                      height: 50,
                      child: Center(
                        child: Text('20%',style: TextStyle(
                            fontSize: 30, fontWeight: FontWeight.bold,
                            color: Colors.white70
                        ),),
                      ),
                    ),
                  ],
                ),

              ],
            ),
            SizedBox(
              height: 20,
            ),

            Container(
              margin: EdgeInsets.only(left:70),
              child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      foregroundColor: Colors.white,
                      minimumSize:Size(250,50),
                      backgroundColor:Color(0xFF01c9be),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(11),
                      )

                  ),
                  onPressed: (){

                  }, child: Text('Custom Tip',style: TextStyle(
                fontSize: 30,
              ),)),
            ),
            SizedBox(
              height: 20,
            ),

            Row(
              children: [
                Container(
                  width: 100,
                  height: 60,
                  color: Colors.white70,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text('Split',style: TextStyle(
                          fontSize: 20, fontWeight: FontWeight.bold
                      ),),
                      Text('the total',style: TextStyle(
                        fontSize: 18,
                      ),),
                    ],
                  ),
                ),
                SizedBox(
                  width: 10,
                ),

                Row(
                  children: [
                    Container(
                      color: Color(0xFF01c9be),
                      width: 80,
                      height: 50,
                      child: Center(
                        child: Text('-',style: TextStyle(
                            fontSize: 40, fontWeight: FontWeight.bold,
                            color: Colors.white70
                        ),),
                      ),
                    ),
                    Container(
                      color: Colors.white70,
                      width: 100,
                      height: 50,
                      child: Center(
                        child: Text('2',style: TextStyle(
                            fontSize: 40, fontWeight: FontWeight.bold,
                            color: Colors.black
                        ),),
                      ),
                    ),
                    Container(
                      color: Color(0xFF01c9be),
                      width: 80,
                      height: 50,
                      child: Center(
                        child: Text('+',style: TextStyle(
                            fontSize: 40, fontWeight: FontWeight.bold,
                            color: Colors.white70
                        ),),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ],
        ),
      )

    );
  }

}