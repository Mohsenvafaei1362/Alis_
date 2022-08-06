import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';

class ImageSlider extends StatelessWidget {
  const ImageSlider({
    Key? key, required this.nameImage, required this.nameImage1, required this.nameImage2, required this.nameImage3, required this.nameImage4,
  }) : super(key: key);

final String nameImage , nameImage1 , nameImage2 , nameImage3 ,nameImage4;
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Padding(
        padding: const EdgeInsets.fromLTRB(1, 0, 1, 3),
        child: CarouselSlider(
          options: CarouselOptions(
            height: size.height * 0.26,
            aspectRatio: 2.0,
            viewportFraction: 1,
            initialPage: 0,
            enableInfiniteScroll: true,
            reverse: false,
            autoPlay: false,
            autoPlayInterval: Duration(seconds: 3),
            autoPlayAnimationDuration: Duration(milliseconds: 800),
            autoPlayCurve: Curves.fastOutSlowIn,
            enlargeCenterPage: true,
            scrollDirection: Axis.horizontal,
          ),
          items: ['${nameImage}','${nameImage1}', '${nameImage2}', '${nameImage3}', '${nameImage4}'].map((i) {
            return Builder(
              builder: (BuildContext context) {
                return Container(
                  color: Colors.white,
                  width: size.width,
                  margin: EdgeInsets.symmetric(horizontal: 5.0),
                  // decoration: BoxDecoration(color: Colors.amber),
                  child: Image.asset(
                    '$i',
                    fit: BoxFit.contain,
                    ),
                );
              },
            );
          }).toList(),
        ));
  }
}
