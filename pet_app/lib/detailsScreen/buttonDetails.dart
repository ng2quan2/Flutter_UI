// ignore_for_file: file_names, camel_case_types

import 'package:flutter/material.dart';
import 'package:pet_app/common/common.dart';

// ignore: use_key_in_widget_constructors
class Button_Details extends StatelessWidget {
  const Button_Details({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SingleChildScrollView(
      scrollDirection: Axis.vertical,
      child: Container(
        width: size.width * 1,
        height: size.height * 0.15,
        decoration: const BoxDecoration(
            borderRadius: BorderRadius.only(
                topLeft: Radius.circular(40), topRight: Radius.circular(40)),
            color: kBackgroundColorButton),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 40),
              child: Material(
                  type: MaterialType.transparency,
                  child: Ink(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: kButtonColor,
                      shape: BoxShape.rectangle,
                    ),
                    child: InkWell(
                      borderRadius: BorderRadius.circular(40),
                      onTap: () {
                      
                      },
                      child: const Padding(
                        padding: EdgeInsets.all(20.0),
                        child: Icon(
                          Icons.favorite_border,
                          size: 30.0,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  )
                  )
                ),

            Padding(
              padding: const EdgeInsets.only(right: 40),
              child: Container(
                width: size.width * 0.5,
                height: size.height * 0.07,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: kButtonColor
                ),
                child: const Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text('Adoption', 
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                      fontWeight: FontWeight.w800
                    ),),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
