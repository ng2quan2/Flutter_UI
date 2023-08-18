// ignore_for_file: file_names, camel_case_types

import 'package:flutter/material.dart';
import 'package:pet_app/common/common.dart';

// ignore: use_key_in_widget_constructors
class Container_Details extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Transform.translate(
      offset: const Offset(0, -100),
      child: Container(
        width: size.width * 0.8,
        height: size.height * 0.2,
        decoration: BoxDecoration(
          color: Colors.white.withOpacity(0.7),
          borderRadius: const BorderRadius.all(Radius.circular(40)),
          boxShadow: [
            BoxShadow(
              blurRadius: 25.0,
              color: Colors.black.withOpacity(0.2),
            )
          ]
        ),
        child: Transform.translate(
          offset: const Offset(0, 0),
          child: const Column(
            children: [
              Padding(
                padding:
                    EdgeInsets.only(top: 20, left: 24, right: 24, bottom: 12),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      petName_1,
                      style: TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.w800,
                        color: kTextColor,
                      ),
                    ),
                    Icon(
                      Icons.female,
                      color: kTextColor,
                      size: 40,
                    ),
                  ],
                ),
              ),
              Padding(
                padding:
                    EdgeInsets.only(top: 12, left: 24, right: 24, bottom: 12),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      typePet_1,
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.w400,
                        color: kTextColor,
                      ),
                    ),
                    Text(
                      yearPet_1,
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.w400,
                        color: kTextColor,
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding:
                    EdgeInsets.only(top: 12, left: 24, right: 24, bottom: 12),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Icon(
                      Icons.location_on,
                      color: kTextColor,
                    ),
                    Text(
                      addressPet_1,
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w400,
                        color: kTextColor,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
