import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class WhatsApp extends StatelessWidget{

  List <Map<String, dynamic>> profileData = [
    {
      "profile":"assets/images/profile_1.png",
      "name": "Riya",
      "msg":"Hey! Are you using whatsapp?",
      "unreadmsg": 2,
      "time ago" : "1 hr ago",
    },
    {
      "profile":"assets/images/profile_1.png",
      "name": "Priya",
      "msg":"What are you doing tomorrow?",
      "unreadmsg": 2,
      "time ago" : "2 min ago",
    },
    {
      "profile":"assets/images/profile_1.png",
      "name": "Raman",
      "msg": "What are you doing tomorrow?",
      "unreadmsg": 2,
      "time ago" : "Yesterday",
    },
    {
      "profile":"assets/images/profile_1.png",
      "name": "Rajesh",
      "msg": "Hey! Are you using whatsapp?",
      "unreadmsg": 2,
      "time ago" : "18/10/2024",
    },
    {
      "profile":"assets/images/profile_1.png",
      "name": "Sara",
      "msg": "What are you doing tomorrow?",
      "unreadmsg": 2,
      "time ago" : "17/10/2024",
    },

    {
      "profile":"assets/images/profile_1.png",
      "name": "Priya",
      "msg": "Hey! Are you using whatsapp?",
      "unreadmsg": 2,
      "time ago" : "15/10/2024",
    },
    {
      "profile":"assets/images/profile_1.png",
      "name": "Raman",
      "msg": "What are you doing tomorrow?",
      "unreadmsg": 2,
      "time ago" : "Yesterday",
    },
    {
      "profile":"assets/images/profile_1.png",
      "name": "Rajesh",
      "msg": "Hey! Are you using whatsapp?",
      "unreadmsg": 2,
      "time ago" : "18/10/2024",
    },
    {
      "profile":"assets/images/profile_1.png",
      "name": "Sara",
      "msg": "What are you doing tomorrow?",
      "unreadmsg": 2,
      "time ago" : "5 hr ago",
    },



  ];


  @override
  Widget build(BuildContext context) {
   return Scaffold(
     appBar: AppBar(
       title: Text('WhatsApp',style:TextStyle(
         fontSize: 25,fontWeight: FontWeight.bold,
         color: Colors.green,
       ),),
     ),
     body: SingleChildScrollView(
       child: Padding(
         padding: const EdgeInsets.only(top: 10),
         child: Column(
           children: profileData.map((element){
             return Column(
               children: [
                 Container(
                  width: double.infinity,
                   height: 100,
                   color: Colors.white70,
                   child: Row(
                     crossAxisAlignment: CrossAxisAlignment.start,
                     mainAxisAlignment:MainAxisAlignment.spaceBetween,
                     children: [
                       Center(
                         child: Container(
                           width: 70,
                           height: 70,
                           decoration: BoxDecoration(
                             shape: BoxShape.circle,
                             color: Colors.blueGrey,
                           ),
                           child: ClipOval(
                             child: Image.asset(element['profile'],fit:BoxFit.cover,
                             width: 70,
                             height: 70,),
                           ),
                         ),
                       ),
                       Padding(
                         padding: const EdgeInsets.only(left:15),
                         child: Column(
                           crossAxisAlignment: CrossAxisAlignment.start,
                           mainAxisAlignment: MainAxisAlignment.center,
                           children: [
                             Text(element['name'],style: TextStyle(
                                 fontSize: 22,fontWeight: FontWeight.bold
                             ),),
                             SizedBox(
                               height: 10,
                             ),
                             Text(element['msg'],style: TextStyle(
                                 fontSize:15,
                             ),),
                           ],
                         ),
                       ),
                       Center(
                         child: Column(

                           children: [
                             Text(element['time ago'],style: TextStyle(
                                 fontSize:18,
                             ),),
                             SizedBox(
                               height: 10,
                             ),
                             Container(
                               width: 40,
                               height: 40,
                               child: Center(
                                 child: Text(element['unreadmsg'].toString(),style: TextStyle(
                                   fontWeight: FontWeight.bold,fontSize: 15
                                 ),),
                               ),
                               decoration: BoxDecoration(
                                 shape: BoxShape.circle,
                                 color: Colors.green.withOpacity(0.5),
                               ),
                             ),

                           ],
                         ),
                       ),

                     ],
                   ),

                 ),
                 Divider(),
               ],
             );

         }).toList(),

             ),
       ),
     ),


   );
  }

}