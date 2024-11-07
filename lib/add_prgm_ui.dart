import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class AddPage extends StatefulWidget{

  @override
  State<StatefulWidget> createState() => AddStatePage();
}

class AddStatePage extends State<AddPage>{
  var number1 = TextEditingController();
  var number2 = TextEditingController();
  var result = "";


  @override
  Widget build(BuildContext context) {
   return Scaffold(
     appBar: AppBar(
       backgroundColor: Colors.lightBlue.withOpacity(0.5),
       centerTitle:true,
       title: Text('Home',style: TextStyle(
         fontSize: 21,fontWeight: FontWeight.bold
       ),),
     ),
     body:
     Container(
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
               color:Colors.lightBlue.withOpacity(0.5),
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
       
        ElevatedButton(
          style: ElevatedButton.styleFrom(
            minimumSize: Size(380.0, 50.0),
            backgroundColor:Colors.lightBlue.withOpacity(0.5),
            foregroundColor: Colors.black,
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
          fontSize: 21,fontWeight: FontWeight.bold),
        ),),
           SizedBox(
             height:40,
           ),
           Text(result,style: TextStyle(
             fontSize:21,fontWeight:FontWeight.bold,
             color:Colors.black,
           ),),
       
       
          ]),
     )
   );
  }

}