import 'package:flutter/material.dart';

class TextStyles{
  
  TextStyles._();
  static final TextStyle appNameTextStyle = TextStyle(
    fontSize: 26,
    fontWeight: FontWeight.w800,
    color: Colors.white.withOpacity(0.8),
    fontFamily: 'Ubuntu'
  );
  static TextStyle tageLineStyle = const TextStyle(
    fontSize: 12,
    fontWeight: FontWeight.w800,
    color: Colors.white,
    fontFamily: 'Ubuntu'
    );
     static TextStyle bigHeadingTextStyle = const TextStyle(
    fontSize: 50,
    fontWeight: FontWeight.bold,
    color: Colors.white,
    fontFamily: 'Ubuntu'
    );
    static TextStyle bodyTextStyle = const TextStyle(
    fontSize: 14,
    fontWeight: FontWeight.w400,
    color: Colors.white,
    fontFamily: 'Ubuntu'
    );
   static TextStyle enjoyTextStyle = const TextStyle(
    fontSize: 18,
    fontWeight: FontWeight.w900,
    color: Colors.white,
    fontFamily: 'Ubuntu'
    );
    static TextStyle headingText = const TextStyle(
    fontSize: 22,
    fontWeight: FontWeight.w800,
    color: Colors.white,
    fontFamily: 'Ubuntu'
    );
    static TextStyle subscriptionAmountTextStyle = const TextStyle(
    fontSize: 26,
    fontWeight: FontWeight.w600,
    color: Colors.white,
    fontFamily: 'Ubuntu'
    );
   static TextStyle subscriptionTitleTextStyle = const TextStyle(
    fontSize: 20,
    fontWeight: FontWeight.w800,
    color: Colors.white,
    fontFamily: 'Ubuntu'
    );
     static TextStyle titleTextStyle = const TextStyle(
    fontSize: 24,
    fontWeight: FontWeight.w700,
    color: Colors.white,
    fontFamily: 'Ubuntu'
    );
      static final TextStyle body2TextStyle = TextStyle(
    fontSize: 16,
    letterSpacing: 1.3,
    fontWeight: FontWeight.w400,
    color: Colors.white.withOpacity(0.5),
    fontFamily: 'Ubuntu'
    );
     static final TextStyle body3TextStyle = TextStyle(
    fontSize: 12,
    fontWeight: FontWeight.w300,
    color: Colors.white.withOpacity(0.8),
    fontFamily: 'Ubuntu'
    );
}