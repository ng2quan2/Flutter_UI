import 'package:flutter/material.dart';
import '/routes.dart';
// import '/screens/profile/profile_screen.dart';
import '/screens/splash/splash_screen.dart';
import '/theme.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: theme(),
      // home: SplashScreen(),
      // We use routeName so that we need to remember the name
      initialRoute: SplashScreen.routeName,
      routes: routes,
    );
  }
}
