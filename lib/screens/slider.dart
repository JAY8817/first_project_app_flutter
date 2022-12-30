// ignore_for_file: camel_case_types

import 'package:flutter/material.dart';
import 'package:flutter_image_slideshow/flutter_image_slideshow.dart';

class myslider extends StatefulWidget {
  const myslider({super.key});

  @override
  State<myslider> createState() => _mysliderState();
}

class _mysliderState extends State<myslider> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Container(
          decoration: BoxDecoration(borderRadius: BorderRadius.circular(20)),
          child: Card(
            child: ImageSlideshow(
              /// Width of the [ImageSlideshow].
              width: double.infinity,

              /// Height of the [ImageSlideshow].
              height: 200,

              /// The page to show when first creating the [ImageSlideshow].
              initialPage: 0,

              /// The color to paint the indicator.
              indicatorColor: Colors.blue,

              /// The color to paint behind th indicator.
              indicatorBackgroundColor: Colors.grey,

              /// The widgets to display in the [ImageSlideshow].
              /// Add the sample image file into the images folder
              children: [
                Image.network(
                  'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSp4soujrLK1AIehgiy-glz7QfRPYwBbhsuaA&usqp=CAU',
                  fit: BoxFit.cover,
                ),
                Image.network(
                  'https://b.zmtcdn.com/data/pictures/chains/7/19507357/a59b515b9afc0b21aaa8a55d2d997d38.jpg?fit=around|771.75:416.25&crop=771.75:416.25;*,*',
                  fit: BoxFit.cover,
                ),
                Image.network(
                  'https://th.bing.com/th/id/OIP.8kqnqtekYvhPqpxnkC_vtgHaEo?pid=ImgDet&rs=1',
                  fit: BoxFit.cover,
                ),
              ],

              /// Called whenever the page in the center of the viewport changes.
              onPageChanged: (value) {
                print('Page changed: $value');
              },

              /// Auto scroll interval.
              /// Do not auto scroll with null or 0.
              autoPlayInterval: 3000,

              /// Loops back to first slide.
              isLoop: true,
            ),
          ),
        ),
      ),
    );
  }
}
