import 'package:flutter/material.dart';
import 'package:pet_app/app/homeScreen.dart';
import 'package:pet_app/common/common.dart';
import 'package:pet_app/drawer/login.dart';

void main() {
  runApp(const Login());
}

class Login extends StatelessWidget {
  const Login({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        scaffoldBackgroundColor: kBackgroundColor,
        primaryColor: Colors.black,
        colorScheme: ColorScheme.fromSeed(seedColor:  const Color.fromARGB(255, 244, 244, 244)),
        textTheme: Theme.of(context).textTheme.apply(bodyColor: Colors.blue),
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: const LoginRoute(),
    );
  }
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: '/',
      routes: {
        '/home': (context) => homeScreen(),
      },
      debugShowCheckedModeBanner: false,
      title: 'Pet Application',
      theme: ThemeData(
        scaffoldBackgroundColor: kBackgroundColor,
        primaryColor: Colors.black,
        colorScheme: ColorScheme.fromSeed(seedColor:  const Color.fromARGB(255, 244, 244, 244)),
        textTheme: Theme.of(context).textTheme.apply(bodyColor: Colors.blue),
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: homeScreen(),
    );
  }
}
