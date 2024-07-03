import 'package:flutter/material.dart';
import 'package:flutter_1/pages/home.dart';
import 'package:flutter_1/pages/counter.dart';
import 'package:flutter_1/pages/loginpage.dart';

import 'models/category_model.dart';

void main() {
  runApp( MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({super.key});


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: Colors.white,
        useMaterial3: true,
        fontFamily: 'Poppins',
      ),
      home: LoginPage(),
    );
  }
}