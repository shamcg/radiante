import 'package:flutter/material.dart';
import 'package:radiante1_app/UI/home_page/screen.dart';
import 'package:radiante1_app/UI/home_page/widgets/home_page_body.dart';
import 'package:radiante1_app/UI/home_page/widgets/top_silder.dart';
import 'package:radiante1_app/UI/home_page/widgets/offers_slider.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Radiante',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      // debugShowCheckedModeBanner: false,
      home: HomeScreen(),
    );
  }
}

