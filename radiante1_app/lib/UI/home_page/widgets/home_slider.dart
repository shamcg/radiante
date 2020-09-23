import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:carousel_pro/carousel_pro.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/services.dart';

class HomeSlider extends StatelessWidget {
  CarouselController buttonCarouselController = CarouselController();
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: <Widget>[
        CarouselSlider(
            items: [
              Container(
                height: 180,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10.0),
                  image: DecorationImage(
                    image: (
                        AssetImage('assets/images/slide1.png')
                    ),


                  fit: BoxFit.fill,
                  ),
                ),
              ),
              Container(
                height: 180,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10.0),
                  image: DecorationImage(
                    image: (
                        AssetImage('assets/images/slide1.png')
                    ),


                  fit: BoxFit.fill,
                  ),
                ),
              )
            ],
            carouselController: buttonCarouselController,
            options: CarouselOptions(
              height: 200,
              autoPlay: true,
          autoPlayCurve: Curves.fastOutSlowIn,
          enableInfiniteScroll: true,
          autoPlayAnimationDuration: Duration(milliseconds: 800),
          aspectRatio: 2.0,
          enlargeCenterPage: true,
          viewportFraction: 0.9,
          // aspectRatio: 2.0,
          // initialPage: 2,
        ),),
        RaisedButton(onPressed: () => buttonCarouselController.nextPage(
          duration: Duration(milliseconds: 300),
          curve: Curves.linear),
          child: Text('→'),
        ),
      ]
    );
  }


      // Carousel(
      //   boxFit: BoxFit.fill,
      //   images: [
      //     AssetImage('assets/images/slide1.png'),
      //     AssetImage('assets/images/slide1.png'),
      //     AssetImage('assets/images/slide1.png'),
      //   ],
      //   autoplay: true,
      //   showIndicator: false,
      //   // indicatorBgPadding: 3.0,
      //     dotBgColor: Colors.grey.withOpacity(0.5),
      //   borderRadius: false,
      //   dotColor: Colors.white,
      //   dotSize: 10.0,
      //   // dotSpacing: 15.0,
      //   moveIndicatorFromBottom: 180.0,
      //   // noRadiusForIndicator: true,
      //   overlayShadow: true,
      //   overlayShadowColors: Colors.white.withOpacity(0.1),
      //   overlayShadowSize: 0.7,
      // ),


}
