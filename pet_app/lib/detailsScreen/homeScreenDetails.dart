// ignore_for_file: file_names, use_key_in_widget_constructors, camel_case_types, must_be_immutable

import 'package:flutter/material.dart';
import 'package:pet_app/detailsScreen/carouselsImage.dart';

class homeScreenDetails extends StatelessWidget {
  List<String> images = [
    "assets/images/cat-8.png",
    "assets/images/cat-7.png",
    "assets/images/cat-9.png",
  ];

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Transform.translate(
      offset: const Offset(0, -10),
      child: Carousel_Image(size: size, images: images));

    // bottomNavigationBar: MyBottomNavbar(),
  }
}

class monkeyScreen extends StatelessWidget {
  List<String> images = [
    "assets/images/monkey_img.jpg",
  ];

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Transform.translate(
      offset: const Offset(0, -10),
      child: Carousel_Image(size: size, images: images));

    // bottomNavigationBar: MyBottomNavbar(),
  }
}