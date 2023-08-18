// ignore_for_file: file_names, camel_case_types, use_key_in_widget_constructors

import 'package:flutter/material.dart';
import 'package:pet_app/app/cat/productCat_1.dart';
import 'package:pet_app/app/cat/productCat_2.dart';
import 'package:pet_app/app/cat/productCat_3.dart';

class productCats extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SingleChildScrollView(
      scrollDirection: Axis.vertical,
      child: Column(
        children: [
          const SizedBox(
            height: 40,
          ),
          ProductCats_1(size: size),
          const SizedBox(
            height: 40,
          ),
          ProductCats_2(size: size),
          const SizedBox(
            height: 40,
          ),
          ProductCats_3(size: size),
          const SizedBox(
            height: 40,
          ),
        ],
      ),
    );
  }
}
