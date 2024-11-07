import 'package:flutter/material.dart';
import 'package:strawbery/aboutus.dart';
import 'package:strawbery/add_prgm_ui.dart';
import 'package:strawbery/basic_calc.dart';
import 'package:strawbery/bmi.dart';
import 'package:strawbery/bmi_page.dart';
import 'package:strawbery/home_page.dart';
import 'package:strawbery/login.dart';
import 'package:strawbery/signup.dart';
import 'package:strawbery/simple_calc.dart';
import 'package:strawbery/tipcalc.dart';
import 'package:strawbery/whatsapp_ui.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Stawbery Pavolava',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.redAccent),
        useMaterial3: true,
      ),
      home: SimpleCalc()
    );
  }
}

