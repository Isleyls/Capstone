import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';

/*void main() {
  runApp(MyApp());
}*/

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Carousel Example',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: CarouselDemo(),
    );
  }
}

class CarouselDemo extends StatelessWidget {
  final List<String> images = [
    'lesson.jpg',
    'lesson.jpg',
    'carharttColar.jpg',
    'carharttColar.jpg',
    'carharttColar.jpg',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Carousel Demo'),
      ),
      body: Center(
        child: CarouselSlider(
          options: CarouselOptions(
            height: 400,
            enlargeCenterPage: true,
            autoPlay: true,
            aspectRatio:  16 / 3,
            autoPlayCurve: Curves.fastOutSlowIn,
            enableInfiniteScroll: true,
            autoPlayAnimationDuration: Duration(milliseconds: 800),
            viewportFraction: 0.8,
          ),
          items: images.map((item) {
            return Builder(
              builder: (BuildContext context) {
                return Container(
                  width: MediaQuery.of(context).size.width,
                  margin: EdgeInsets.symmetric(horizontal: 5.0),
                  decoration: BoxDecoration(
                    color: Colors.grey,
                  ),
                  child: Image.network(
                    item,
                    fit: BoxFit.cover,
                  ),
                );
              },
            );
          }).toList(),
        ),
      ),
    );
  }
}
