// ignore_for_file: file_names, use_key_in_widget_constructors, camel_case_types, no_leading_underscores_for_local_identifiers

import 'package:flutter/material.dart';
// import 'package:pet_app/app/homeScreen.dart';
import 'package:pet_app/common/common.dart';
import 'package:pet_app/detailsScreen/appBarDetailsProduct.dart';
// import 'package:pet_app/detailsScreen/homeScreenDetails.dart';

class listTapAnimal extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    Future<void> _showAlertDialog() async {
      return showDialog<void>(
        context: context,
        barrierDismissible: false,
        builder: (BuildContext context) {
          return AlertDialog(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(24),
            ),
            title: Transform.translate(
              offset: const Offset(0, -26),
              child: FractionallySizedBox(
                widthFactor: 1.21,
                child: Container(
                  decoration: const BoxDecoration(
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(24),
                        topRight: Radius.circular(24)),
                    color: Colors.red,
                  ),
                  height: 100,
                  child: const Center(
                      child: Icon(
                    Icons.error_outline_rounded,
                    color: Colors.white,
                    size: 40,
                  )),
                ),
              ),
            ),
            content: Transform.translate(
              offset: const Offset(0, -20),
              child: const SingleChildScrollView(
                child: ListBody(
                  children: <Widget>[
                    Text(
                      'Oops...',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                          color: Colors.black),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      Errors,
                      textAlign: TextAlign.center,
                      style: TextStyle(fontSize: 16, color: Colors.black),
                    ),
                  ],
                ),
              ),
            ),
            actions: <Widget>[
              Transform.translate(
                offset: const Offset(0, -20),
                child: Center(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        width: size.width * 0.4,
                        height: size.height * 0.05,
                        decoration: const BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(12)),
                          color: kPrimaryColor,
                        ),
                        child: TextButton(
                          child: const Text(
                            'Okay',
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 18,
                                fontWeight: FontWeight.bold),
                          ),
                          onPressed: () {
                            Navigator.of(context).pop();
                          },
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          );
        },
      );
    }

    return Padding(
      padding: const EdgeInsets.only(right: 16, left: 16, top: 24, bottom: 24),
      child: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Row(
          children: [
            Column(
              children: [
                Container(
                    padding: const EdgeInsets.all(8),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(16),
                        border: Border.all(
                          color: Colors.grey,
                          width: 2,
                        ),
                        color: kPrimaryColor),
                    child: IconButton(
                      onPressed: () {
                        // _showAlertDialog();
                      },
                      icon: Image.asset('assets/images/cat.png',
                          width: size.width * 0.1,
                          height: size.height * 0.05,
                          color: Colors.white),
                      iconSize: 50,
                    )),
                const SizedBox(
                  height: 10,
                ),
                const Text(Cats,
                    style: TextStyle(
                      color: kTextColor,
                      fontSize: 16,
                    ))
              ],
            ),
            SizedBox(
              width: size.width * 0.058,
            ),
            Column(
              children: [
                Container(
                    padding: const EdgeInsets.all(8),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(16),
                        border: Border.all(
                          color: Colors.grey,
                          width: 2,
                        ),
                        color: Colors.white),
                    child: IconButton(
                      onPressed: () {
                        _showAlertDialog();
                      },
                      icon: Image.asset('assets/images/dog.png',
                          width: size.width * 0.1,
                          height: size.height * 0.05,
                          color: kTextColor),
                      iconSize: 50,
                    )),
                const SizedBox(
                  height: 10,
                ),
                const Text(Dogs,
                    style: TextStyle(
                      color: kTextColor,
                      fontSize: 16,
                    ))
              ],
            ),
            SizedBox(
              width: size.width * 0.058,
            ),
            Column(
              children: [
                Container(
                    padding: const EdgeInsets.all(8),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(16),
                        border: Border.all(
                          color: Colors.grey,
                          width: 2,
                        ),
                        color: Colors.white),
                    child: IconButton(
                      onPressed: () {
                        _showAlertDialog();
                      },
                      icon: Image.asset('assets/images/rabbit.png',
                          width: size.width * 0.1,
                          height: size.height * 0.05,
                          color: kTextColor),
                      iconSize: 50,
                    )),
                const SizedBox(
                  height: 10,
                ),
                const Text(Rabbits,
                    style: TextStyle(
                      color: kTextColor,
                      fontSize: 16,
                    ))
              ],
            ),
            SizedBox(
              width: size.width * 0.058,
            ),
            Column(
              children: [
                Container(
                    padding: const EdgeInsets.all(8),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(16),
                        border: Border.all(
                          color: Colors.grey,
                          width: 2,
                        ),
                        color: Colors.white),
                    child: IconButton(
                      onPressed: () {
                        _showAlertDialog();
                      },
                      icon: Image.asset('assets/images/parrot.png',
                          width: size.width * 0.1,
                          height: size.height * 0.05,
                          color: kTextColor),
                      iconSize: 50,
                    )),
                const SizedBox(
                  height: 10,
                ),
                const Text(Parrots,
                    style: TextStyle(
                      color: kTextColor,
                      fontSize: 16,
                    ))
              ],
            ),
            SizedBox(
              width: size.width * 0.058,
            ),
            Column(
              children: [
                Container(
                    padding: const EdgeInsets.all(8),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(16),
                        border: Border.all(
                          color: Colors.grey,
                          width: 2,
                        ),
                        color: Colors.white),
                    child: IconButton(
                      onPressed: () {
                        _showAlertDialog();
                      },
                      icon: Image.asset('assets/images/horse.png',
                          width: size.width * 0.1,
                          height: size.height * 0.05,
                          color: kTextColor),
                      iconSize: 50,
                    )),
                const SizedBox(
                  height: 10,
                ),
                const Text(Horses,
                    style: TextStyle(
                      color: kTextColor,
                      fontSize: 16,
                    ))
              ],
            ),

            SizedBox(
              width: size.width * 0.058,
            ),
            Column(
              children: [
                Container(
                    padding: const EdgeInsets.all(8),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(16),
                        border: Border.all(
                          color: Colors.grey,
                          width: 2,
                        ),
                        color: Colors.white),
                    child: IconButton(
                      onPressed: () {
                        Navigator.push(context, 
                        MaterialPageRoute(builder: (context) => SecondRoute()));
                      },
                      icon: Image.asset('assets/images/monkey.png',
                          width: size.width * 0.1,
                          height: size.height * 0.05,
                          color: kTextColor),
                      iconSize: 50,
                    )),
                const SizedBox(
                  height: 10,
                ),
                const Text('Monkey',
                    style: TextStyle(
                      color: kTextColor,
                      fontSize: 16,
                    ))
              ],
            ),
          ],
        ),
      ),
    );
  }
}
