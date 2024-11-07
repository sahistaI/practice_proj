import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class Contactus extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
   return Scaffold(
     appBar: AppBar(
       title: Text(
         'About Us'
       ),
     ),
     body: Container(
        width: double.infinity,
        height: 600,
        color: Colors.grey.withOpacity(0.8),
       child: Row(
         children: [
           Container(
             margin: EdgeInsets.symmetric(horizontal: 10),
             width: 500,
             height: 550,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(21),
                color: Colors.white,
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Container(
                      child: Text('How it started',
                      style: TextStyle(
                        fontWeight:FontWeight.bold,
                        fontSize: 20,
                        color: Colors.redAccent,
                      ),),
                    margin: EdgeInsets.only(right:250),
                  ),
                  Container(
                    width: double.infinity,
                    child: Text('Our Dream is Global Learning Tranformation',
                      style: TextStyle(
                        fontWeight:FontWeight.bold,
                        fontSize: 40,
                        color: Colors.black,
                      ),textAlign: TextAlign.center,),
                    margin: EdgeInsets.only(left:10,top: 50),
                  ),
                  Container(
                    width: double.infinity,
                    child: Text('WsCube Tech courses are open for anyone and everyone with a thirst for knowledge and passion for learning. We encourage students to learn with curiosity and pursue a career in a field of their interest. Our courses are aimed at teaching practical applications in a very straightforward and career-oriented way. We also hold recurring batches for Digital Marketing Training in Jodhpur and offer corporate training in digital marketing to help you to secure high jobs with excellent packages.',
                      style: TextStyle(
                        fontSize: 20,
                        color: Colors.black,
                      ),textAlign: TextAlign.center,),
                    margin: EdgeInsets.only(left:10,top: 10),
                  ),

                ],
              ),

           ),

           Padding(
             padding: const EdgeInsets.symmetric(vertical:27,horizontal: 20),

             child: Column(

               children: [

                 Container(
                   width: 450,
                   height: 300,
                   child: Image.asset("assets/images/bg_about.png",fit: BoxFit.cover,),
                   decoration: BoxDecoration(
                     borderRadius: BorderRadius.circular(21),
                   ),
                 ),

                 Row(

                   children: [
                         Container(
                           margin: EdgeInsets.only(top:20,right: 65),
                           width: 150,
                           height: 100,
                           child: Column(
                             children: [
                               Padding(
                                 padding: const EdgeInsets.only(right:90,),
                                 child: Text('3.5',style: TextStyle(
                                   fontWeight: FontWeight.bold,
                                   fontSize: 25,
                                 ),
                                 ),
                               ),
                               SizedBox(height: 10,),
                               Padding(
                                 padding: const EdgeInsets.only(right:12.0),
                                 child: Text('Years Experiance',style: TextStyle(
                                   fontSize: 15,
                                 ),),
                               )
                             ],
                           ),
                         decoration: BoxDecoration(
                         borderRadius: BorderRadius.circular(11),
                           color: Colors.white,
                         ),
                      ),


                     SizedBox(
                       width: 50,
                     ),
                     Container(
                       margin: EdgeInsets.only(top:20,),
                       width: 150,
                       height: 100,
                       child: Column(
                         children: [
                           Padding(
                             padding: const EdgeInsets.only(right:95.0),
                             child: Text('23',style: TextStyle(
                               fontSize: 25,fontWeight: FontWeight.bold
                             ),),
                           ),
                           SizedBox(height: 10,),
                           Padding(
                             padding: const EdgeInsets.only(right:75),
                             child: Text('Projects',style: TextStyle(
                                 fontSize: 15,
                             ),),
                           ),

                         ],

                       ),
                       decoration: BoxDecoration(
                         borderRadius: BorderRadius.circular(11),
                         color: Colors.white,
                       ),
                     ),
                   ],
                 ),
                 Row(
                   mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                   children: [
                     Container(
                       margin: EdgeInsets.only(top:20,right: 65),
                       width: 150,
                       height: 100,
                       child: Column(
                         children: [
                           Padding(
                             padding: const EdgeInsets.only(right:80,),
                             child: Text('830+',style: TextStyle(
                               fontWeight: FontWeight.bold,
                               fontSize: 25,
                             ),
                             ),
                           ),
                           SizedBox(height: 10,),
                           Padding(
                             padding: const EdgeInsets.only(right:16),
                             child: Text('Positive Reviews',style: TextStyle(
                               fontSize: 15,
                             ),),
                           )
                         ],
                       ),
                       decoration: BoxDecoration(
                         borderRadius: BorderRadius.circular(11),
                         color: Colors.white,
                       ),
                     ),
                     SizedBox(
                       width: 50,
                     ),
                     Container(
                       margin: EdgeInsets.only(top:20,),
                       width: 150,
                       height: 100,
                       child: Column(
                         children: [
                           Padding(
                             padding: const EdgeInsets.only(right:65.0),
                             child: Text('1000K',style: TextStyle(
                                 fontSize: 25,fontWeight: FontWeight.bold
                             ),),
                           ),
                           SizedBox(height: 10,),
                           Padding(
                             padding: const EdgeInsets.only(right: 20),
                             child: Text('Trusted Students',style: TextStyle(
                               fontSize: 15,
                             ),),
                           ),

                         ],

                       ),
                       decoration: BoxDecoration(
                         borderRadius: BorderRadius.circular(11),
                         color: Colors.white,
                       ),
                     ),
                   ],
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