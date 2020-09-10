import 'package:flutter/material.dart';
class LoginBody extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
    alignment: Alignment.center,
    child: Column(
    children: <Widget>[
    Container(
    margin: EdgeInsets.all(8.0),
    child: TextField(
    decoration: InputDecoration(
    hintText: "Enter Username"
    ),
    ),
    ),
    Container(
    margin: EdgeInsets.all(8.0),
    child: TextField(
    decoration: InputDecoration(
    hintText: "Enter Password"
    ),
    ),),
    MaterialButton(
    onPressed: (){},
child: Text("Login", style: TextStyle(color:Colors.white)),
color: Colors.blueAccent,
)
],),);
  }
}
