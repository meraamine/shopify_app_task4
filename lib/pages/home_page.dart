import 'package:carousel_slider/carousel_slider.dart';
import 'package:dots_indicator/dots_indicator.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int currentPosition = 0;
  List<String> imageList = [
    'https://m.media-amazon.com/images/I/71+3zEyDcDL._AC_SL1500_.jpg',
    'https://m.media-amazon.com/images/I/61fJ5PPb2DL._AC_SL1200_.jpg',
    'https://m.media-amazon.com/images/I/61FCICUNAyL._AC_SL1500_.jpg',
    'https://m.media-amazon.com/images/I/51TuW5XAkKL.jpg',
    'https://i.ebayimg.com/images/g/m10AAOSwXYllMj38/s-l1600.jpg'
    // Add more image URLs or paths here
  ];

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        CarouselSlider(
          items: [
            //1st Image of Slider
            Container(
              height: 400,
              width: 400,
              margin: EdgeInsets.all(5.0),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(6.0),
                image: DecorationImage(
                  image: NetworkImage(
                      "https://m.media-amazon.com/images/I/71+3zEyDcDL._AC_SL1500_.jpg"),
                  fit: BoxFit.cover,
                ),
              ),
            ),

            //2nd Image of Slider
            Container(
              height: 350,
              width: 350,
              margin: EdgeInsets.all(5.0),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(6.0),
                image: DecorationImage(
                  image: NetworkImage(
                      "https://m.media-amazon.com/images/I/61fJ5PPb2DL._AC_SL1200_.jpg"),
                  fit: BoxFit.cover,
                ),
              ),
            ),

            //3rd Image of Slider
            Container(
              height: 400,
              width: 400,
              margin: EdgeInsets.all(5.0),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(6.0),
                image: DecorationImage(
                  image: NetworkImage(
                      "https://m.media-amazon.com/images/I/61FCICUNAyL._AC_SL1500_.jpg"),
                  fit: BoxFit.cover,
                ),
              ),
            ),

            //4th Image of Slider
            Container(
              height: 350,
              width: 350,
              margin: EdgeInsets.all(5.0),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(6.0),
                image: DecorationImage(
                  image: NetworkImage(
                      "https://m.media-amazon.com/images/I/51TuW5XAkKL.jpg"),
                  fit: BoxFit.cover,
                ),
              ),
            ),

            //5th Image of Slider
            Container(
              height: 350,
              width: 350,
              margin: EdgeInsets.all(5.0),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(6.0),
                image: DecorationImage(
                  image: NetworkImage(
                      "https://i.ebayimg.com/images/g/m10AAOSwXYllMj38/s-l1600.jpg"),
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ],

          //Slider Container properties
          options: CarouselOptions(
            onPageChanged: (index, _) {
              currentPosition = index;
              setState(() {});
            },
            height: 300,
            aspectRatio: 16 / 9,
            viewportFraction: 0.8,
            initialPage: 0,
            enableInfiniteScroll: true,
            reverse: false,
            autoPlay: true,
            autoPlayInterval: Duration(seconds: 3),
            autoPlayAnimationDuration: Duration(milliseconds: 800),
            autoPlayCurve: Curves.fastOutSlowIn,
            enlargeCenterPage: true,
            enlargeFactor: 0.3,
            scrollDirection: Axis.horizontal,
          ),

          //options: CarouselOptions(
          // onPageChanged: (index, _) {
          //   currentPosition = index;
          //    setState(() {});
          //  },
          //  height: 150,
          //  aspectRatio: 16 / 9,
          // viewportFraction: 0.8,
          // initialPage: 0,
          //  enableInfiniteScroll: true,
          //  reverse: false,
          // autoPlay: true,
          // autoPlayInterval: Duration(seconds: 3),
          //  autoPlayAnimationDuration: Duration(milliseconds: 800),
          // autoPlayCurve: Curves.fastOutSlowIn,
          // enlargeCenterPage: true,
          //enlargeFactor: 0.3,
          // scrollDirection: Axis.horizontal,
          // ),
          //items: imageList
          //    .map((imageUrl) {
          // return Builder(
          // builder: (BuildContext context) {
          // return Container(
          //    width: MediaQuery.of(context).size.width,
          //     margin: EdgeInsets.symmetric(horizontal: 5.0),
          //        decoration: BoxDecoration(color: Colors.amber),
          //      child: Image.network(imageUrl, fit:BoxFit.cover),);
          //   },
          // );
          //}).toList(),
        ),
        DotsIndicator(
          dotsCount: 5,
          position: currentPosition,
          decorator: DotsDecorator(
            size: const Size.square(9.0),
            activeSize: const Size(18.0, 9.0),
            activeShape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(5.0)),
          ),
        )
      ],
    );
  }
}
