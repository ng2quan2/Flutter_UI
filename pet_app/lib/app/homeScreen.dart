// ignore_for_file: file_names, use_key_in_widget_constructors, camel_case_types

import 'package:flutter/material.dart';
import 'package:pet_app/app/body.dart';
import 'package:pet_app/common/common.dart';
import 'package:pet_app/drawer/login.dart';
import 'package:pet_app/drawer/settings.dart';

import 'package:rating_dialog/rating_dialog.dart';

class homeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // ignore: unused_local_variable

    return Scaffold(
      drawer: Drawer(
        backgroundColor: kBackgroundColor,
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            DrawerHeader(
                decoration: const BoxDecoration(
                  color: Color.fromARGB(255, 161, 189, 146),
                ),
                child: Column(
                  children: [
                    Container(
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(20),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey.withOpacity(0.5),
                            spreadRadius: 3,
                            blurRadius: 7,
                            offset: const Offset(0, 3),
                          ),
                        ],
                      ),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(20),
                        child: Image.asset(
                          'assets/images/avatar_home.jpg',
                          width: 100,
                          height: 100,
                          fit: BoxFit.fill,
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 12,
                    ),
                    const Text(
                      // ignore: prefer_interpolation_to_compose_strings
                      'Hello, ' + owner_1,
                      style: TextStyle(fontSize: 18, color: kTextColor),
                    )
                  ],
                )),
            // ListTile(
            //   leading: const Icon(Icons.timelapse),
            //   title: Text(
            //       '${DateTime.now().hour}:${DateTime.now().minute} - Good ${greeting()}',
            //       style: const TextStyle(
            //           color: kTextColor,
            //           fontSize: 18,
            //           fontWeight: FontWeight.bold)),
            // ),
            ListTile(
              leading: const Icon(Icons.home),
              title: const Text('Home',
                  style: TextStyle(
                    color: kTextColor,
                    fontSize: 16,
                  )),
              onTap: () {
                //  Navigator.pushNamedAndRemoveUntil(context, '/home', (route) => false);
                Navigator.pop(context);
              },
            ),
            ListTile(
              leading: const Icon(Icons.map),
              title: const Text('Map',
                  style: TextStyle(
                    color: kTextColor,
                    fontSize: 16,
                  )),
              onTap: () {},
            ),
            ListTile(
              leading: const Icon(Icons.settings),
              title: const Text('Settings',
                  style: TextStyle(
                    color: kTextColor,
                    fontSize: 16,
                  )),
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => const Settings()));
              },
            ),
            ListTile(
              leading: const Icon(Icons.star),
              title: const Text('Rating',
                  style: TextStyle(
                    color: kTextColor,
                    fontSize: 16,
                  )),
              onTap: () {
                showDialog(
                  context: context,
                  barrierDismissible: true,
                  builder: (context) => _dialog,
                );
              },
            ),
            ListTile(
              leading: const Icon(Icons.logout),
              title: const Text('Logout',
                  style: TextStyle(
                    color: kTextColor,
                    fontSize: 16,
                  )),
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const LoginRoute()));
              },
            ),
          ],
        ),
      ),
      appBar: buildAppBar(),
      body: Body(),
      // bottomNavigationBar: MyBottomNavbar(),
    );
  }

  AppBar buildAppBar() {
    return AppBar(
      backgroundColor: kBackgroundColor,
      toolbarHeight: 100,
      iconTheme: const IconThemeData(color: kTextColor),
      elevation: 0,
      title: Center(
        child: Column(
          children: [
            Container(
                margin: const EdgeInsets.only(left: 0),
                child: const Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(
                      'Location',
                      style: TextStyle(
                          fontWeight: FontWeight.w300, color: kTextColor),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Center(
                      child: Expanded(
                          child: Column(
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Icon(
                                Icons.add_location,
                                color: kTextColor,
                              ),
                              SizedBox(width: 5),
                              Text(
                                'Toronto',
                                style: TextStyle(
                                    fontWeight: FontWeight.w800,
                                    color: kTextColor),
                              ),
                            ],
                          ),
                        ],
                      )),
                    ),
                  ],
                ))
          ],
        ),
      ),
      actions: [
        Padding(
          padding: const EdgeInsets.all(20),
          child: ClipRRect(
            borderRadius: BorderRadius.circular(40),
            child: Image.asset(
              'assets/images/avatar_home.jpg',
              fit: BoxFit.fill,
            ),
          ),
        )
      ],
    );
  }
}

final _dialog = RatingDialog(
  initialRating: 1.0,
  title: const Text(
    'Do you love this app?',
    textAlign: TextAlign.center,
    style: TextStyle(
      fontSize: 24,
      color: kTextColor,
      fontWeight: FontWeight.bold,
    ),
  ),

  message: const Text(
    'Rating for me!',
    textAlign: TextAlign.center,
    style: TextStyle(fontSize: 14, color: kTextColor),
  ),
  image: Image.asset(
    'assets/images/cat.png',
    width: 100,
    height: 100,
    color: kTextColor,
  ),
  submitButtonText: 'Rate now!',
  showCloseButton: true,
  // commentHint: 'Set your custom comment hint',
  // onCancelled: () => print('cancelled'),
  onSubmitted: (response) {
    // print('rating: ${response.rating}, comment: ${response.comment}');

    // if (response.rating < 3.0) {
    //   // send their comments to your email or anywhere you wish
    //   // ask the user to contact you instead of leaving a bad review
    // } else {
    //   _rateAndReviewApp();
    // }
  },
);
