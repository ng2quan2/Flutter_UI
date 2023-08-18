// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:pet_app/detailsScreen/buttonDetails.dart';
import 'package:pet_app/detailsScreen/containerDetails.dart';
import 'package:pet_app/detailsScreen/homeScreenDetails.dart';
import 'package:pet_app/detailsScreen/owner.dart';
import 'package:pet_app/common/common.dart';

class SecondRoute extends StatelessWidget {
  const SecondRoute({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(context),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          children: [
            homeScreenDetails(),
            Container_Details(),
            Owner_Details(),
            const Button_Details()
          ],
        ),
      ),
    );
  }
}

AppBar buildAppBar(context) {
    return AppBar(
      backgroundColor: kBackgroundColorProducts_1,
      elevation: 0,
      leading: IconButton(
        icon: const Icon(
          Icons.arrow_back_ios,
          color: kTextColor,
        ),
        onPressed: () {
          Navigator.pop(context);
        },
      ),
      actions: [
        Padding(
          padding: const EdgeInsets.only(bottom: 6, right: 10),
          child: IconButton(
            onPressed: (){}, 
            icon: const Icon(Icons.ios_share_outlined, color: kTextColor, size: 30)
          )
        )
      ],
    );
  }