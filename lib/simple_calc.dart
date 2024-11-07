import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SimpleCalc extends StatefulWidget{
  @override
  State<StatefulWidget> createState() => SimpleStatePage();

}
class SimpleStatePage extends State<SimpleCalc> {
  TextEditingController no1Controller = TextEditingController();
  TextEditingController no2Controller = TextEditingController();

  int flag =0;
  String result = "";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.lightBlueAccent,
        title: Text('Calculator',style:TextStyle(
          fontSize: 25,fontWeight: FontWeight.bold,
          color: Colors.black.withOpacity(0.5),
        ),),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextField(
              controller: no1Controller,
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
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextField(
              controller: no2Controller,
              keyboardType: TextInputType.number,
              decoration: InputDecoration(
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(11),
                  borderSide: BorderSide(
                    color: Colors.deepPurple,
                  ),
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
              InkWell(
                onTap: (){
                  flag = 1;
                  setState(() {

                  });
                },
              ),

              Container(
                width: 50,
                height: 50,
                decoration: myDecoration(),
                child: Center(child: Text("+", style: TextStyle(fontSize: 21, color: Colors.white),)),
              ),

              InkWell(
                onTap: (){
                  flag =2;
                  setState(() {

                  });
                },
              ),
              Container(
                width: 50,
                height: 50,
                decoration: myDecoration(),
                child: Center(child: Text("-", style: TextStyle(fontSize: 21, color: Colors.white),)),
              ),

              InkWell(
                onTap: (){
                  flag =3;
                  setState(() {

                  });
                },
              ),

              Container(
                width: 50,
                height: 50,
                decoration: myDecoration(),
                child: Center(child: Text("*", style: TextStyle(fontSize: 21, color: Colors.white),)),
              ),

              InkWell(
                onTap: (){
                  flag =4;
                  setState(() {

                  });
                },
              ),

              Container(
                width: 50,
                height: 50,
                decoration: myDecoration(),
                child: Center(child: Text("/", style: TextStyle(fontSize: 21, color: Colors.white),)),
              ),

              ElevatedButton(onPressed: (){

                int no1 = int.parse(no1Controller.text);
                int no2 = int.parse(no2Controller.text);

                if(flag==1){
                  result = "The Sum of $no1 and $no2 is ${no1+no2}";
                } else if (flag == 2){
                  int sub =0;
                  if(no1>no2){
                    sub = no1-no2;
                  }else {
                    sub = no2-no1;
                  }
                  result = "The Difference between $no1 and $no2 is $sub";
                } else if (flag == 3){
                  result = "The Product of $no1 and $no2 is ${no1*no2}";
                } else if(flag == 4){
                  result = "The Division of $no1 and $no2 is ${no1/no2}";
                } else {
                  /// no operator used!
                  result = "Please choose any operator!!";
                }

                setState(() {

                });


              }, child: Text("$result", style: TextStyle(color: Colors.white, fontSize: 16, fontWeight: FontWeight.bold),))


            ],
          )

        ],
      ),

    );
  }

  BoxDecoration myDecoration() {
  return BoxDecoration(
  borderRadius: BorderRadius.circular(11),
  color: Colors.deepPurple
  );
}

 }
