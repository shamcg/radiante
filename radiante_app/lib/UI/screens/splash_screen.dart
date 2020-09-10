import 'package:flutter/material.dart';
import 'package:radiante_app/UI/screens/home_screen.dart';
import 'package:radiante_app/UI/screens/home_screen.dart';
import 'package:radiante_app/UI//screens/login.dart';
import 'dart:async';
import 'package:shimmer/shimmer.dart';


class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {

  @override
  void initState(){
    super.initState();

    _mockCheckForSession().then((status) {

      if(status) {
        _navigateToLogin();
      }else{
        _navigateToHome();
      }

    });
  }

  Future<bool> _mockCheckForSession() async{
    await Future.delayed(Duration(milliseconds: 5000), () {});
    return true;
  }
  void _navigateToHome(){
    Navigator.of(context).pushReplacement(
      MaterialPageRoute(
        builder: (BuildContext context) => HomeScreen()
      ),
    );
  }
  void _navigateToLogin(){
    Navigator.of(context).pushReplacement(
      MaterialPageRoute(
          builder: (BuildContext context) => Login()
      ),
    );
  }
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
              begin: Alignment.topRight,
              end: Alignment.bottomLeft,
              colors: [Color(0xff834c9e), Color(0xffB7B259)]),),
        child: Center(
          child: Stack(
            alignment: Alignment.center,
            children: <Widget>[
              Container(
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    fit: BoxFit.fill,
                    colorFilter: new ColorFilter.mode(Colors.black.withOpacity(0.2), BlendMode.dstATop),

                    image: AssetImage('assets/images/bg.png'),
                  ),
                ),
              ),

              Shimmer.fromColors(
               baseColor: Color(0xff834c9e), highlightColor: Color(0xffB7B259),
              child: Container(
                child: Image.asset('assets/images/lg.png'),

              ),
              ),
            ],
          ),
        ),),

    );
  }
}
