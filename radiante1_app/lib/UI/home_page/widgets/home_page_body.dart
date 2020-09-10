import 'package:flutter/material.dart';
import 'package:flutter_swiper/flutter_swiper.dart';

class HomePageBody extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;

    var height = MediaQuery.of(context).size.height;
    return Container(
      width: width,
      height: height,
      child: Column(
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Swiper(
              autoplay: true,
              itemCount: 10,
              itemBuilder: (BuildContext context, int index) {
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
            ),
          ),
        ],
      ),
    );
  }
}
