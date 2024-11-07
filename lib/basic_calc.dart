import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CalcPage extends StatefulWidget{
  @override
  State<StatefulWidget> createState() => CalcStatePage();

}
class CalcStatePage extends State<CalcPage> {
  var number1 = TextEditingController();
  var number2 = TextEditingController();
  var result = "";
  @override
  Widget build(BuildContext context) {
     return Scaffold(
       appBar: AppBar(

         title: Text('Basic Calculator',style: TextStyle(
             fontSize: 21,fontWeight: FontWeight.bold
         ),),
         centerTitle: true,
           backgroundColor:Colors.redAccent.withOpacity(0.5),
       ),
         body:
         Container(
           decoration: BoxDecoration(
             gradient: LinearGradient(
               begin: Alignment.bottomLeft,
               end: Alignment.topRight,
               colors: [
                 Colors.transparent,
                 Colors.redAccent.withOpacity(0.2),
                 Colors.white70
               ]
             ),
           ),
           child: Column(
               children: [
                 Row(
                   mainAxisAlignment: MainAxisAlignment.center,
                   children: [
                     Container(
                       margin: EdgeInsets.only(top:50),
                       width: 200,
                       height: 200,
                       child: Icon(Icons.calculate_outlined,size: 150,color: Colors.black,),
                       decoration: BoxDecoration(
                         borderRadius: BorderRadius.circular(51),
                         color:Colors.redAccent.withOpacity(0.5),
                       ),
                     )

                   ],
                 ),
                 SizedBox(
                   height: 50,
                 ),

                 Padding(
                   padding: const EdgeInsets.all(15.0),
                   child: TextField(
                     controller: number1,
                     keyboardType: TextInputType.number,
                     decoration: InputDecoration(
                       border: OutlineInputBorder(
                         borderRadius: BorderRadius.circular(11),
                         borderSide: BorderSide(
                           color: Colors.deepPurple,
                         ),
                       ),
                       hintText: "Enter Number 1",
                       prefixIcon: Icon(Icons.confirmation_num_outlined),
                     ),
                   ),
                 ),
                 SizedBox(
                   height: 20,
                 ),

                 Padding(
                   padding: const EdgeInsets.all(15.0),
                   child: TextField(
                     keyboardType: TextInputType.number,
                     controller: number2,
                     decoration: InputDecoration(
                       border: OutlineInputBorder(
                           borderRadius: BorderRadius.circular(11),
                           borderSide: BorderSide(
                             color: Colors.deepPurple,
                           )
                       ),
                       hintText: "Enter Number 2",
                       prefixIcon: Icon(Icons.confirmation_num_outlined),
                     ),
                   ),
                 ),
                 SizedBox(
                   height: 30,
                 ),

                 Row(
                   mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                   children: [
                     ElevatedButton(
                       style: ElevatedButton.styleFrom(
                         minimumSize: Size(80, 50.0),
                         backgroundColor:Colors.redAccent.withOpacity(0.5),
                         foregroundColor: Colors.white70,
                         shape: RoundedRectangleBorder(
                           borderRadius: BorderRadius.circular(11),
                         ),
                       ),

                       onPressed: (){
                         var num1 = int.parse(number1.text.toString());
                         var num2 = int.parse(number2.text.toString());
                         var sum = num1+num2;
                         result = "The Sum of $num1 and $num2 is : $sum";
                         setState(() {
                         });

                       }, child: Text("Add",style: TextStyle(
                         fontSize: 25,fontWeight: FontWeight.bold),
                     ),),

                     ElevatedButton(
                       style: ElevatedButton.styleFrom(
                         minimumSize: Size(80, 50.0),
                         backgroundColor:Colors.redAccent.withOpacity(0.5),
                         foregroundColor: Colors.white70,
                         shape: RoundedRectangleBorder(
                           borderRadius: BorderRadius.circular(11),
                         ),
                       ),

                       onPressed: (){
                         var num1 = int.parse(number1.text.toString());
                         var num2 = int.parse(number2.text.toString());
                         var sub = num1-num2;
                         result = "The Sub of $num1 and $num2 is : $sub";
                         setState(() {
                         });

                       }, child: Text("Sub",style: TextStyle(
                         fontSize: 25,fontWeight: FontWeight.bold),
                     ),),

                     ElevatedButton(
                       style: ElevatedButton.styleFrom(
                         minimumSize: Size(80, 50.0),
                         backgroundColor:Colors.redAccent.withOpacity(0.5),
                         foregroundColor: Colors.white70,
                         shape: RoundedRectangleBorder(
                           borderRadius: BorderRadius.circular(11),
                         ),
                       ),

                       onPressed: (){
                         var num1 = int.parse(number1.text.toString());
                         var num2 = int.parse(number2.text.toString());
                         var mul = num1*num2;
                         result = "The Sum of $num1 and $num2 is : $mul";
                         setState(() {
                         });

                       }, child: Text("Mul",style: TextStyle(
                         fontSize: 25,fontWeight: FontWeight.bold),
                     ),),

                     ElevatedButton(
                       style: ElevatedButton.styleFrom(
                         minimumSize: Size(80, 50.0),
                         backgroundColor:Colors.redAccent.withOpacity(0.5),
                         foregroundColor: Colors.white70,
                         shape: RoundedRectangleBorder(
                           borderRadius: BorderRadius.circular(11),
                         ),
                       ),

                       onPressed: (){
                         var num1 = int.parse(number1.text.toString());
                         var num2 = int.parse(number2.text.toString());
                         var div = num1 ~/ num2;
                         result = "The Sum of $num1 and $num2 is : $div";
                         setState(() {
                         });

                       }, child: Text("Div",style: TextStyle(
                         fontSize: 25,fontWeight: FontWeight.bold),
                     ),),

                   ],
                 ),
                 SizedBox(
                   height:40,
                 ),
                 Text(result,style: TextStyle(
                   fontSize:25,fontWeight:FontWeight.bold,
                   color:Colors.black,
                 ),),


               ]),
         )
     );
    }

}