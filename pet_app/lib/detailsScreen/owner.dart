// ignore_for_file: file_names, camel_case_types

import 'package:flutter/material.dart';
import 'package:pet_app/common/common.dart';

// ignore: use_key_in_widget_constructors
class Owner_Details extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Column(
      children: [
        SingleChildScrollView(
            scrollDirection: Axis.vertical,
            child: Transform.translate(
              offset: const Offset(10, -70),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(40),
                    child: Image.asset(
                      'assets/images/avatar_home.jpg',
                      fit: BoxFit.fill,
                      width: size.width * 0.1,
                      height: size.height * 0.05,
                    ),
                  ),
                  const Padding(
                    padding: EdgeInsets.only(right: 80, bottom: 6, top: 10),
                    child: Column(
                      children: [
                        Text(
                          owner_1,
                          style: TextStyle(
                              color: kBlackName,
                              fontSize: 20,
                              fontWeight: FontWeight.w600),
                        ),
                        Padding(
                          padding: EdgeInsets.only(right: 70, bottom: 6),
                          child: Text(job,
                            style: TextStyle(
                                color: kBlackName,
                                fontSize: 18,
                                fontWeight: FontWeight.w400),
                          ),
                        ),
                      ],
                    ),
                  ),

                  const Padding(
                    padding: EdgeInsets.only(bottom: 6, right: 20),
                    child: Text(
                      dateUpload,
                      style: TextStyle(
                          color: kBlack12,
                          fontSize: 20,
                          fontWeight: FontWeight.w600),
                    ),
                  ),
                ],
              ),
            )
          ),
        Transform.translate(
  offset: const Offset(0, -50),
  child: const Padding(
    padding: EdgeInsets.only(left: 14, right: 14),
    child: Row(
      children: [
        Expanded(
          child: Text(
            descriptionPet_1,
            style: TextStyle(
              color: kBlack12,
              fontSize: 18,
            ),
            maxLines: null,
            overflow: TextOverflow.clip,
            textAlign: TextAlign.justify,
          ),
        ),
      ],
    ),
  ),
)
      ],
    );
  }
}