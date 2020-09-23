import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

class OffersSlider extends StatefulWidget {

  OffersSlider() : super();

  final String title = "Top Slider";
  @override
  OffersSliderState createState() => OffersSliderState();
}



class OffersSliderState extends State<OffersSlider> {

  int _current = 0;
  List imgList = [
    'assets/images/offersliderbg.png',
    'assets/images/offersliderbg.png',
    'assets/images/offersliderbg.png',
    'assets/images/offersliderbg.png',

  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          CarouselSlider(
            options: CarouselOptions(
              height: 72,
              initialPage: 0,
              // enlargeCenterPage: true,
              // autoPlay: false,
              // autoPlayInterval: Duration(seconds: 2),
              // autoPlayAnimationDuration: Duration(milliseconds: 2000),
              // pauseAutoPlayOnTouch: Duration(seconds: 10),
            ),
            items: imgList.map((imgUrl) {
              return Builder(
                builder: (BuildContext context){
                  return Container(
                    width: MediaQuery.of(context).size.width,
                    margin: EdgeInsets.symmetric(horizontal: 5.0),
                    // decoration: BoxDecoration(
                    //   color: Colors.green.withOpacity(0.0),
                    // ),
                    child: Card(
                      child: Row(
                        children: [
                          Column(
                              children:<Widget> [
                                const ListTile(
                      title: Text('Code'),
                      subtitle: Text (''),),
                          Image.asset(
                            imgUrl,
                            // fit: BoxFit.fitHeight,
                            colorBlendMode: BlendMode.softLight,
                          ),
                        ],
                      ),
                  ],),
                  ),);
                },
              );
            }).toList(),),

          // onPageChanged: (index){
          // setState(() {
          // _current = index;
          // });
          // },


         ],
      ),
    );
  }
}
