// ignore_for_file: file_names, camel_case_types

import 'package:flutter/material.dart';
import 'package:pet_app/common/common.dart';

class Carousel_Image extends StatelessWidget {
  const Carousel_Image({
    super.key,
    required this.size,
    required this.images,
  });

  final Size size;
  final List<String> images;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(color: kBackgroundColorProducts_1),
      height: size.height * 0.5,
      child: PageView.builder(
            itemCount: images.length,
            pageSnapping: true,
            itemBuilder: (context,pagePosition){
              return Container(
                margin: const EdgeInsets.all(0),
                child: Image.asset(images[pagePosition]));
            })
    );
  }
}
