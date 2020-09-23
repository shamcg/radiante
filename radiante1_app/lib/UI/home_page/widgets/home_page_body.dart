import 'package:flutter/material.dart';
import 'package:flutter_swiper/flutter_swiper.dart';
import 'package:radiante1_app/UI/home_page/widgets/home_slider.dart';
import 'top_silder.dart';
import 'offers_slider.dart';

class HomePageBody extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;

    var height = MediaQuery.of(context).size.height;
    return Center(
      child: Container(
        // width: 375,
        // height: height,
        child: Column(
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  TopSlider(),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                  Text("Offers"),
                  Text("More"),

                      ],
                  ),
                  SizedBox(height: 1,),
                  OffersSlider(),
                  Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                      Text("Services"),
              Text("See All"),],
                  ),
                  Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        SizedBox(height: 1,),
                        Column(
                          children: [
                            Image(
                                image: AssetImage('assets/images/serv01.png'),
                            height: 77,
                            width: 77,
                            ),
                            // SizedBox(height: 1,),
                            Text("Fillers",
                              style: TextStyle(
                                  color: Color(0xff3A96AD),
                                  fontSize: 18.0),),
                          ],
                        ),
                        Column(
                          children: [
                            Image(
                              image: AssetImage('assets/images/serv02.png'),
                              height: 77,
                              width: 77,
                            ),
                            Text("Fillers",
                              style: TextStyle(
                                  color: Color(0xff3A96AD),
                                  fontSize: 18.0),),
                          ],
                        ),
                        Column(
                          children: [
                            Image(
                              image: AssetImage('assets/images/serv03.png'),
                              height: 77,
                              width: 77,
                            ),
                            Text("Fillers",
                              style: TextStyle(
                                  color: Color(0xff3A96AD),
                                  fontSize: 18.0),),
                          ],
                        ),
                        Column(
                          children: [
                            Image(
                              image: AssetImage('assets/images/serv04.png'),
                              height: 77,
                              width: 77,
                            ),
                            Text("Fillers",
                              style: TextStyle(
                                  color: Color(0xff3A96AD),
                                  fontSize: 18.0),),
                          ],
                        ),
                      ],
                  ),



                ],
              ),
              // Swiper(
              //   autoplay: true,
              //   itemCount: 10,
              //   itemBuilder: (BuildContext context, int index) {
              //     return Image.asset(
              //       'assets/images/slide1.png',
              //       // images[index],
              //       fit: BoxFit.fill,
              //     );
              //   },
              //   viewportFraction: 0.8,
              //   scale: 0.9,
              //   layout: SwiperLayout.TINDER,
              //   itemHeight: 200,
              //   itemWidth: 400,
              //   control: SwiperControl(),
              //   pagination: SwiperPagination(),
              // ),
            ),
          ],
        ),
      ),
    );
  }
}
