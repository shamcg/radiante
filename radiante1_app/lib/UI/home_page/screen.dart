import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'widgets/home_page_body.dart';



class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar
        (
        title: Text('Home'),
      ),
      body: HomePageBody(),
    );
  }
}
