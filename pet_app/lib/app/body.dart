// ignore_for_file: use_key_in_widget_constructors, sized_box_for_whitespace

import 'package:flutter/material.dart';
import 'package:pet_app/app/listTapAnimals.dart';
import 'package:pet_app/app/productAnimals.dart';
import 'package:pet_app/app/searchBox.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SingleChildScrollView(
      child: Column(
        children: [
          SearchBox(size: size),
          listTapAnimal(),
          productCats()
        ],
      ),
    );
  }
}