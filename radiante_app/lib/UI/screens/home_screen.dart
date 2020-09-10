import 'package:flutter/cupertino.dart';
import 'package:flutter/cupertino.dart' as prefix0;
import 'package:flutter/material.dart';
import 'package:flutter_swiper/flutter_swiper.dart';
import 'package:carousel_pro/carousel_pro.dart';


class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar
        (
        title: Text('Home'),
      ),
      body: Column(
        children: <Widget>[
        Swiper(
          autoplay: true,
          itemCount: 10,
          itemBuilder: (BuildContext context, int index){
            return Image.asset(
              'assets/images/slide1.png',
              // images[index],
              fit: BoxFit.fill,
            );
          },
viewportFraction: 0.8,
        scale: 0.9,
        layout: SwiperLayout.TINDER,
        itemHeight: 200,
          itemWidth: 400,
          control: SwiperControl(),
          pagination: SwiperPagination(),
        ),],
      ),
    );
  }
}
