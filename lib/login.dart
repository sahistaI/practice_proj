import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class LoginPage extends StatefulWidget{


  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {

  var emailText = TextEditingController();
  var password = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.grey.withOpacity(0.8),
        title: Text('Login',style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold,
            color: Colors.black),),
        centerTitle: true,
      ),
     body:
        Column(
          children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                margin: EdgeInsets.only(top:50),
                width: 200,
                height: 200,
                child: Icon(Icons.flutter_dash_rounded,size: 150,color: Colors.black,),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(51),
                  color: Colors.grey.withOpacity(0.8),
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
                controller: emailText,
                obscureText: false,
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(11),
                    borderSide: BorderSide(
                      color: Colors.deepPurple,
                    ),
                  ),
                  hintText: "Username",
                  prefixIcon: Icon(Icons.mail_lock),
                ),
              ),
            ),
            SizedBox(
              height: 10,
            ),

            Padding(
              padding: const EdgeInsets.all(15.0),
              child: TextField(
                controller: password,
                obscureText: true,
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(11),
                    borderSide: BorderSide(
                      color: Colors.deepPurple,
                    ),
                  ),
                  hintText: "Password",
                  prefixIcon: Icon(Icons.remove_red_eye),
                ),
              ),
            ),
            SizedBox(
              height: 3,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal:25.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Text('Forgot Password?',style: TextStyle(
                    color: Colors.black.withOpacity(0.8),
                    fontSize: 15
                  ),),

                ],
              ),
            ),
            SizedBox(
              height:40,
            ),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor:Colors.grey.withOpacity(0.8),

              ),
              onPressed: (){
            }, child: Text('Login',
                style: TextStyle(fontSize: 21,color: Colors.black,)),
            )

    ],
        )




    );
  }
}