import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';

class BMIPage extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: double.infinity,
        margin: EdgeInsets.symmetric(vertical:40),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Center(
              child: Stack(
                children:<Widget>[
                  Center(
                    child: Container(
                      child: Image.asset("assets/images/heart.jpg",fit:BoxFit.cover,),
                    ),
                  ),
                  SizedBox(
                    height: 250,
                    child: Center(
                      child: Text('22.6',style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.black26,
                        fontSize: 35,
                      ),),
                    ),
                  )
                ],
              ),
            ),
            SizedBox(
              height: 50,
            ),
            Container(
              child: Text('Healthy',style: TextStyle(
                fontWeight: FontWeight.bold,
                color: Color(0xFF86ccc4),
                fontSize: 41,
              ),),
            ),
            SizedBox(
              height: 30,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Container(
                  width: 150,
                  height: 150,
                  child: Column(
                    mainAxisAlignment:MainAxisAlignment.center,
                    children: [
                      Text('Male',style: TextStyle(
                        fontSize: 25,
                      ),),
                      SizedBox(
                        height: 60,
                        child: Image.asset("assets/images/male.jpg",fit: BoxFit.cover),
                      )
                    ],
                  ),
                ),
                Container(
                  width: 150,
                  height: 150,
                  child: Column(
                    mainAxisAlignment:MainAxisAlignment.center,
                    children: [
                      Text('Female',style: TextStyle(
                        fontSize: 25,
                      ),),
                      SizedBox(
                        height: 60,
                        child: Image.asset("assets/images/female.png",fit: BoxFit.cover),
                      )
                    ],
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 30,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Container(
                  width: 100,
                  height: 100,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text('Age',style: TextStyle(
                        fontSize: 20,
                      ),),
                      Text('22',style: TextStyle(
                        fontSize: 30,fontWeight:FontWeight.bold
                      ),),
                    ],
                  ),
                ),
                Container(
                  width: 1,
                  height: 100,
                  color: Colors.grey.withOpacity(0.9),
                ),
                Container(
                  width: 100,
                  height: 100,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text('Height',style: TextStyle(
                        fontSize: 20,
                      ),),
                      Text('175',style: TextStyle(
                          fontSize: 30,fontWeight:FontWeight.bold
                      ),),
                    ],
                  ),
                ),
                Container(
                  width: 1,
                  height: 100,
                  color: Colors.grey.withOpacity(0.9),
                ),
                Container(
                  width: 100,
                  height: 100,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text('Weight',style: TextStyle(
                        fontSize: 20,
                      ),),
                      Text('75',style: TextStyle(
                          fontSize: 30,fontWeight:FontWeight.bold
                      ),),
                    ],
                  ),
                ),

              ],
            ),
            SizedBox(
              height: 40,
            ),
            ElevatedButton(
                style: ElevatedButton.styleFrom(
                  foregroundColor: Colors.white,
                  minimumSize:Size(400,60),
                  backgroundColor:Color(0xFF86ccc4),
                  shape: RoundedRectangleBorder(
                    side: BorderSide(width: 1,color: Colors.blueGrey)
                  )

                ),
                onPressed: (){

            }, child: Text('Calculate BMI',style: TextStyle(
              fontSize: 31,
            ),))
          ],
        ),
      ),

    );
  }

}