import 'package:flutter/material.dart';
import 'file:///D:/radiante/radiante1_app/lib/UI/home_page/screen.dart';

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

