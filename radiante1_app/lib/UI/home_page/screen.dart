import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'widgets/home_page_body.dart';



class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0.0,
        brightness: Brightness.dark,
        // title: Text('Home'),
    leading: GestureDetector(
    onTap: () { /* Write listener code here */ },
    child: Icon(
    Icons.menu,
      color: Color(0xff3A96AD),// add custom icons also
    ),
      ),
      actions: <Widget>[
        Padding(
            padding: EdgeInsets.only(right: 20.0),
            child: GestureDetector(
              onTap: () {},
              child: Icon(
                Icons.notifications,
                size: 26.0,
              ),
            )
        ),
        // Padding(
        //     padding: EdgeInsets.only(right: 20.0),
        //     child: GestureDetector(
        //       onTap: () {},
        //       child: Icon(
        //           Icons.more_vert
        //       ),
        //     )
        // ),
      ],
        actionsIconTheme: IconThemeData(
            size: 30.0,
            color: Color(0xff3A96AD),
            opacity: 10.0
        ),
      ),
      body: HomePageBody(),
    );
  }
}
