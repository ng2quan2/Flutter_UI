// ignore_for_file: avoid_unnecessary_containers

import 'package:flutter/material.dart';
import 'package:pet_app/common/common.dart';

class Settings extends StatelessWidget {
  const Settings({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: buildAppBar(context),
        body: Align(
          alignment: Alignment.topCenter,
          child: Column(
            children: [
              Container(
                height: 56,
                width: 350,
                padding: const EdgeInsets.all(16),
                decoration: BoxDecoration(
                    color: Colors.white, 
                    borderRadius: BorderRadius.circular(12)),
                child: Column(children: [
                  Container(
                    child: const Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Icon(Icons.lock),
                        Padding(
                          padding: EdgeInsets.only(right: 100),
                          child: Text(
                            'Change Password',
                            style: TextStyle(
                              color: kTextColor, 
                              fontSize: 16
                            ),
                          ),
                        ),
                        Icon(Icons.navigate_next_outlined)
                      ],
                    ),
                  )
                ]
                ),
              ),

              const SizedBox(
                height: 20,
              ),

              Container(
                height: 56,
                width: 350,
                padding: const EdgeInsets.all(16),
                decoration: BoxDecoration(
                    color: Colors.white, 
                    borderRadius: BorderRadius.circular(12)),
                child: Column(children: [
                  Container(
                    child: const Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Icon(Icons.message_rounded),
                        Padding(
                          padding: EdgeInsets.only(right: 140),
                          child: Text(
                            'Notifications',
                            style: TextStyle(
                              color: kTextColor, 
                              fontSize: 16
                            ),
                          ),
                        ),
                        Icon(Icons.navigate_next_outlined)
                      ],
                    ),
                  )
                ]
                ),
              ),

              const SizedBox(
                height: 20,
              ),

              Container(
                height: 56,
                width: 350,
                padding: const EdgeInsets.all(16),
                decoration: BoxDecoration(
                    color: Colors.white, 
                    borderRadius: BorderRadius.circular(12)),
                child: Column(children: [
                  Container(
                    child: const Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Icon(Icons.security_outlined),
                        Padding(
                          padding: EdgeInsets.only(right: 100),
                          child: Text(
                            'Primary & Security',
                            style: TextStyle(
                              color: kTextColor, 
                              fontSize: 16
                            ),
                          ),
                        ),
                        Icon(Icons.navigate_next_outlined)
                      ],
                    ),
                  )
                ]
                ),
              ),

              const SizedBox(
                height: 20,
              ),

              Container(
                height: 56,
                width: 350,
                padding: const EdgeInsets.all(16),
                decoration: BoxDecoration(
                    color: Colors.white, 
                    borderRadius: BorderRadius.circular(12)),
                child: Column(children: [
                  Container(
                    child: const Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Icon(Icons.feedback),
                        Padding(
                          padding: EdgeInsets.only(right: 160),
                          child: Text(
                            'Feedback',
                            style: TextStyle(
                              color: kTextColor, 
                              fontSize: 16
                            ),
                          ),
                        ),
                        Icon(Icons.navigate_next_outlined)
                      ],
                    ),
                  )
                ]
                ),
              ),

              const SizedBox(
                height: 20,
              ),

              Container(
                height: 56,
                width: 350,
                padding: const EdgeInsets.all(16),
                decoration: BoxDecoration(
                    color: Colors.white, 
                    borderRadius: BorderRadius.circular(12)),
                child: Column(children: [
                  Container(
                    child: const Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Icon(Icons.social_distance_outlined),
                        Padding(
                          padding: EdgeInsets.only(right: 180),
                          child: Text(
                            'Social',
                            style: TextStyle(
                              color: kTextColor, 
                              fontSize: 16
                            ),
                          ),
                        ),
                        Icon(Icons.navigate_next_outlined)
                      ],
                    ),
                  )
                ]
                ),
              ),

              
              const SizedBox(
                height: 20,
              ),


              Container(
                height: 56,
                width: 350,
                padding: const EdgeInsets.all(16),
                decoration: BoxDecoration(
                    color: Colors.white, 
                    borderRadius: BorderRadius.circular(12)),
                child: Column(children: [
                  Container(
                    child: const Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Icon(Icons.info_outline_rounded),
                        Padding(
                          padding: EdgeInsets.only(right: 180),
                          child: Text(
                            'About',
                            style: TextStyle(
                              color: kTextColor, 
                              fontSize: 16
                            ),
                          ),
                        ),
                        Icon(Icons.navigate_next_outlined)
                      ],
                    ),
                  )
                ]
                ),
              ),
            ],
          ),
        ));
  }
}

AppBar buildAppBar(context) {
  return AppBar(
    backgroundColor: kBackgroundColor,
    elevation: 0,
    title: const Text(
      'Settings',
      style: TextStyle(color: kTextColor),
    ),
    leading: IconButton(
      icon: const Icon(
        Icons.arrow_back_ios,
        color: kTextColor,
      ),
      onPressed: () {
        Navigator.pop(context);
      },
    ),
  );
}
