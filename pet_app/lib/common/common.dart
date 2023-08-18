// ignore_for_file: constant_identifier_names

import 'package:flutter/material.dart';

const kPrimaryColor = Color(0xFF0C9869);
const kTextColor = Color.fromARGB(255, 17, 93, 6);
const kButtonColor = Color.fromARGB(255, 17, 100, 36);
const kBackgroundColor = Color.fromARGB(255, 230, 229, 223);
const kBackgroundColorButton = Color.fromARGB(255, 183, 183, 173);
const kBackgroundColorProducts_1 = Color.fromARGB(255, 205, 228, 230);
const kBackgroundColorProducts_2 = Color.fromARGB(255, 219, 195, 163);
const kBackgroundColorProducts_3 = Color.fromARGB(255, 217, 176, 185);
const kBlack12 = Color.fromARGB(176, 122, 112, 112);
const kBlackName = Color.fromARGB(174, 5, 5, 5);

const double kDefaultPadding = 20.0;

const String petName_1 = 'Sola';
const String petName_2 = 'Orion';
const String petName_3 = 'Puff';

const String typePet_1 = 'British Short Hair';
const String typePet_2 = 'American Bobtail';
const String typePet_3 = 'Abyssinian Cat';

const String yearPet_1 = '3 years old';
const String yearPet_2 = '2 years old';
const String yearPet_3 = '4 years old';

const String distancePet_1 = '12 miles';
const String distancePet_2 = '26 miles';
const String distancePet_3 = '48 miles';

const String Errors = 'Sorry, something went wrong';

const String Cats = 'Cats';
const String Dogs = 'Dogs';
const String Rabbits = 'Bunnies';
const String Parrots = 'Parrots';
const String Horses = 'Horses';

const String descriptionPet_1 =
    'My job involves a lot of travelling for business and i am not in a position to take my cat with me. I would like someone to care for my cat.';

const String dateUpload = 'Oct 27, 2001';

const String owner_1 = 'Nguyễn Quân';

const String job = 'Owner';

const String addressPet_1 = '120 Bremner Blvd, Toronto, Canada';

DateTime now = DateTime.now();

String greeting() {
  var hour = DateTime.now().hour;
  if (hour > 4 && hour < 11) {
    return 'Morning';
  }
  if (hour > 11 && hour < 12) {
    return 'Midday';
  }
  if (hour > 12 && hour < 18) {
    return 'Afternoon';
  }
  return 'Evening';
}

// const String login_text_1 = "Hello Again!";
// const String login_text_2 = "Wellcome back you've \n been missed!";
const String login_username = "Enter username";
const String login_password = "Password";