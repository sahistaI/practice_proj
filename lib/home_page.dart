import 'package:flutter/material.dart';

class HomePage extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
      return Scaffold(
        appBar: AppBar(
          title:Text('Row & Column'),
        ),
        body: SizedBox(
          height: 400,
          child: Row(
            children: [
              Container(
                width: 280,
                padding: EdgeInsets.all(16),
                child: Column(
                  children: [
                    ///Dish Details
                    Container(
                      margin: EdgeInsets.only(bottom:11),
                      width: double.infinity,
                      decoration: BoxDecoration(
                        color: Color(0xffE6F1FA),
                        border: Border.all(
                        width: 1,
                          color: Colors.black,
                        )
                ),
                      child: Center(
                        child: Text('Stawberry Pavolava',style: TextStyle(
                          fontSize: 18,fontWeight: FontWeight.bold)
                        ),
                      ),
                    ),
                    ///Dish Description
                    Container(
                      width: double.infinity,
                      margin: EdgeInsets.only(bottom:11),
                      decoration: BoxDecoration(
                          color: Color(0xffE6F1FA),
                          border: Border.all(
                            width: 1,
                            color: Colors.black,
                          )
                      ),
                      child: Center(
                        child: Text('Pavolava is a meringue-based dessert named after the Russian ballerine Anna Pavolava. Pavolava featues a crisp crust and soft,light inside, topped with fruit and whipped cream',style: TextStyle(
                            fontSize: 16,),textAlign: TextAlign.center),
                        ),
                      ),
                    ///Dish Rating
                    Container(
                      width: double.infinity,
                      decoration: BoxDecoration(
                          color: Color(0xffE6F1FA),
                          border: Border.all(
                            width: 1,
                            color: Colors.black,
                          )
                      ),
                      child:
                            Row (
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Icon(Icons.star, color: Colors.black.withOpacity(0.5),size: 13,),
                            Icon(Icons.star, color: Colors.black.withOpacity(0.5),size: 13,),
                            Icon(Icons.star, color: Colors.black.withOpacity(0.5),size: 13,),
                            Icon(Icons.star, color: Colors.black.withOpacity(0.5),size: 13,),
                            Icon(Icons.star, color: Colors.black.withOpacity(0.5),size: 13,),

                            Text('170 Reviews'),
                          ],
                        ),

                     ),
                    /// Details
                    Container(
                      height: 90,
                      width: double.infinity,
                      margin: EdgeInsets.only(bottom:11),
                      decoration: BoxDecoration(
                          color: Color(0xffE6F1FA),
                          border: Border.all(
                            width: 1,
                            color: Colors.black,
                          )
                      ),
                      child:
                      Row (
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Column(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Icon(Icons.kitchen_sharp,size: 13,color: Colors.green,),
                              Text('PREP:'),
                              Text('25 min'),
                            ],
                          ),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Icon(Icons.timer,size: 13,color: Colors.green,),
                              Text('COOK:'),
                              Text('1 hr'),
                            ],
                          ),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Icon(Icons.restaurant_sharp,size: 13,color: Colors.green,),
                              Text('FEEDS:'),
                              Text('4-6'),
                            ],
                          ),
                        ],
                      ),

                    ),
                  ],
                ),
              ),

              SizedBox(
                width: 600,
                child: Image.asset("assets/images/bg_cake.png",fit: BoxFit.cover,),
              ),
            ],
          ),
        )

      );
  }
  
}