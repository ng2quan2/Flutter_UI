// ignore_for_file: camel_case_types

import 'package:flutter/material.dart';
import 'package:pet_app/detailsScreen/appBarDetailsProduct.dart';
import 'package:pet_app/common/common.dart';

class ProductCats_1 extends StatelessWidget {
  const ProductCats_1({
    super.key,
    required this.size,
  });

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Align(
          alignment: Alignment.center,
          child: Container(
            width: size.width * 0.8,
            height: size.height * 0.22,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(20),
              boxShadow: [
                    BoxShadow(
                      blurRadius: 25.0,
                      color: Colors.black.withOpacity(0.2),
                    )
                  ]
            ),
            child: const Align(
              alignment: Alignment.topRight,
              child: Padding(
                padding: EdgeInsets.only(top: 20, left: 170),
                child: Column(
                  children: [
                    Text(
                      petName_1,
                      style: TextStyle(
                          fontWeight: FontWeight.w800,
                          fontSize: 20,
                          color: kTextColor),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Text(
                      typePet_1,
                      style: TextStyle(
                          fontWeight: FontWeight.w400,
                          fontSize: 18,
                          color: kTextColor),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Text(
                      yearPet_1,
                      style: TextStyle(
                          fontWeight: FontWeight.w400,
                          fontSize: 18,
                          color: kTextColor),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Align(
                      alignment: Alignment.center,
                      child: Padding(
                        padding: EdgeInsets.only(left: 30),
                        child: Row(
                          children: [
                            Icon(
                              Icons.location_on,
                              color: kTextColor,
                            ),
                            Text(
                              distancePet_1,
                              style: TextStyle(
                                  fontWeight: FontWeight.w400,
                                  fontSize: 18,
                                  color: kTextColor),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
        Transform.translate(
          offset: const Offset(40, -26),
          child: SizedBox(
            height: size.height * 0.28,
            child: Container(
                width: size.width * 0.4,
                decoration: BoxDecoration(
                  color: kBackgroundColorProducts_1,
                  borderRadius: BorderRadius.circular(20),
                  boxShadow: [
                    BoxShadow(
                      blurRadius: 25.0,
                      color: Colors.black.withOpacity(0.2),
                    )
                  ]
                ),
                child: IconButton(
                    icon: Image.asset('assets/images/cat-8.png',),
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const SecondRoute()));
                    })),
          ),
        ),
      ],
    );
  }
}
