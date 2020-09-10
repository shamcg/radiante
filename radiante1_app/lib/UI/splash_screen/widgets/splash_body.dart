import 'package:flutter/material.dart';
import 'package:radiante1_app/UI/splash_screen/screen.dart';
import 'package:shimmer/shimmer.dart';

class SplashBody extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Stack(
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
    );
  }
}
