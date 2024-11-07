import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class BMIPageNew extends StatefulWidget{
  @override
  State<StatefulWidget> createState() => BMIStatePage();
}
class BMIStatePage extends State<BMIPageNew>{
  var wtController =TextEditingController();
  var ftController = TextEditingController();
  var inContrller =TextEditingController();
  var bgColor;

  var result = "";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Your BMI'),
      ),

      body: Container(
        color: bgColor,
        child: Center(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TextField(
                controller: wtController,
                decoration: InputDecoration(
                  label:Text('Enter Your weight'),
                  prefixIcon: Icon(Icons.line_weight),
                ),
              ),
              SizedBox(
                height: 30,
              ),
              TextField(
                controller: ftController,
                decoration: InputDecoration(
                  label:Text('Enter Your Feet'),
                  prefixIcon: Icon(Icons.height),
                ),
              ),
              SizedBox(
                height: 30,
              ),
              TextField(
                controller: inContrller,
                decoration: InputDecoration(
                  label:Text('Enter Your Inch'),
                  prefixIcon: Icon(Icons.height),
                ),
              ),
              SizedBox(
                height: 30,
              ),
              ElevatedButton(
                  onPressed: (){

                var wt = wtController.text.toString();
                var ft = ftController.text.toString();
                var inch = inContrller.text.toString();

                if(wt!="" && ft!="" && inch!=""){

                  var iWt = int.parse(wt);
                  var iFt = int.parse(ft);
                  var iInch = int.parse(inch);

                  var tInch = (iFt*12)+iInch;
                  var tCM = tInch * 2.54;
                  var tM = tCM/100;

                  var bmi = iWt / (tM*tM);

                  var msg ="";

                  if (bmi > 25){
                    msg = "You're OverWeight";
                    bgColor = Colors.orange.shade200;

                  }else if (bmi < 18){
                    msg = "You're UnderWeight";
                    bgColor = Colors.red.shade200;
                  }else{
                    msg = "You're Healthy";
                    bgColor = Colors.green.shade200;
                  }

                setState(() {
                  result = "$msg \n Your BMI is: ${bmi.toStringAsFixed(2)}";
                });




                }else{
                  setState(() {
                    result = "Please fill all the required blanks!!";
                  });
                }



              }, child: Text('Calculate',style: TextStyle(
                fontSize: 21
              ),)),
              SizedBox(
                height: 20,
              ),
              Text(result,style: TextStyle(
                fontSize: 25,fontWeight: FontWeight.bold,
              ),),
            ],
          ),
        ),
      ),

    );
  }


}