import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class Signup extends StatefulWidget{
  @override
  State<StatefulWidget> createState() => SignupPage();

}
class SignupPage extends State<Signup>{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Icon(Icons.arrow_back,color: Colors.black,size: 25,),
        backgroundColor: Colors.grey.withOpacity(0.8),
      ),

      body: Container(
        child: Column(
          children: [
               Row(
                 mainAxisAlignment: MainAxisAlignment.start,
                 children: [
                   Text('Create Account',style: TextStyle(
                    fontSize: 25,
                    fontWeight: FontWeight.bold,
                                 ),),
                 ],
               ),
            SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text('Username',style: TextStyle(
                    fontSize: 20,
                  ),),
                ],
              ),
            ),

          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextField(
                  obscureText: false,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(11),
                      borderSide: BorderSide(
                        color: Colors.deepPurple,
                      ),
                    ),
                  ),
                ),
          ),
            SizedBox(
              height: 5,
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text('Phone number',style: TextStyle(
                    fontSize: 20,
                  ),),
                ],
              ),
            ),

            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextField(
                obscureText: false,
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(11),
                    borderSide: BorderSide(
                      color: Colors.deepPurple,
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 5,
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text('Email',style: TextStyle(
                    fontSize: 20,
                  ),),
                ],
              ),
            ),

            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextField(
                obscureText: false,
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(11),
                    borderSide: BorderSide(
                      color: Colors.deepPurple,
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 5,
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text('Password',style: TextStyle(
                    fontSize: 20,
                  ),),
                ],
              ),
            ),

            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextField(
                obscureText: false,
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(11),
                    borderSide: BorderSide(
                      color: Colors.deepPurple,
                    ),
                  ),
                ),
              ),
            ),

          SizedBox(
            height: 30,
          ),
            Row(
              mainAxisAlignment:MainAxisAlignment.start ,
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal:15),
                  child: Text('Sign in',style: TextStyle(
                  fontSize:25, fontWeight: FontWeight.bold,
                    color: Colors.black,
                  ),),
                )
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: FloatingActionButton(
                  backgroundColor: Colors.grey,
                    onPressed: (){},
                  child: Icon(Icons.arrow_right_alt,size: 50,color: Colors.black,),),
                ),
              ],
            )
              ],
            ),
        ),


    );
  }

}