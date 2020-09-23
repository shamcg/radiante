import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class TopSlider extends StatefulWidget {

  TopSlider() : super();

  final String title = "Top Slider";
  @override
  TopSliderState createState() => TopSliderState();
}



class TopSliderState extends State<TopSlider> {

  int _current = 0;
  List imgList = [
    'assets/images/slide1.png',
    'assets/images/slide1.png',
    'assets/images/slide1.png',
    'assets/images/slide1.png',
  ];
  List<T> map<T>(List list, Function handler){
    List<T> result = [];
    for (var i=0; i < list.length; i++){
      result.add(handler(i,list[i]));
    }
    return result;
  }
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          CarouselSlider(
      options: CarouselOptions(
        height: 173,
        initialPage: 0,
        enlargeCenterPage: true,
        autoPlay: true,
        autoPlayInterval: Duration(seconds: 2),
        autoPlayAnimationDuration: Duration(milliseconds: 2000),
        // pauseAutoPlayOnTouch: Duration(seconds: 10),
      ),
              items: imgList.map((imgUrl) {
                return Builder(
                    builder: (BuildContext context){
                      return Container(
                        width: MediaQuery.of(context).size.width,
                        margin: EdgeInsets.symmetric(horizontal: 10.0),
                      // decoration: BoxDecoration(
                      // image: DecorationImage(
                      // image: AssetImage('assets/images/topsliderbg.png'),
                      // fit: BoxFit.cover,
                      // ),),
                        child: ShaderMask(

                          shaderCallback: (bounds) =>
                            LinearGradient(
                              // center: Alignment.topLeft,
                                colors: [
                              Color(0xff3A96AD).withOpacity(0.5),
                              Color(0xffFFC228).withOpacity(0.5),
                            ],
                            tileMode: TileMode.mirror,
                        ).createShader(bounds),
                      child: Image.asset(
                      imgUrl,
                      fit: BoxFit.fill,
                      ),
                      ),);
                    },);
              }).toList(),),

    // onPageChanged: (index){
    // setState(() {
    // _current = index;
    // });
    // },
SizedBox(
height: 1,
),
              // Row(
              // mainAxisAlignment: MainAxisAlignment.center,
              // children: map<Widget>(imgList, (index, url){
              //   return Container(
              //     width: 10,
              //     height: 10,
              //     margin: EdgeInsets.symmetric(horizontal: 2.0, vertical: 10.0),
              //     decoration: BoxDecoration(shape: BoxShape.circle,
              //     color: _current == index ? Colors.redAccent : Colors.green,
              //     ),
              //   );
              // },
              // ),
              // ),
        ],
      ),
    );
  }
}
