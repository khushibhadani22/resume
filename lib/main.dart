import 'package:flutter/material.dart';
import 'package:resumappbuild/pdfpage.dart';

import '10page.dart';
import '11page.dart';
import '12page.dart';
import '13page.dart';
import '1page.dart';
import '2page.dart';
import '3page.dart';
import '4page.dart';
import '5page.dart';
import '6page.dart';
import '7page.dart';
import '8page.dart';
import '9page.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    routes: {
      '/': (context) => const MyApp(),
      'option': (context) => const OptionPage(),
      'Contact': (context) => const ContactInfo(),
      'Carrier': (context) => const CarrierObjective(),
      'Personal': (context) => const PersonalDetails(),
      'Study': (context) => const Eduction(),
      'Ex': (context) => const Experiences(),
      'Technical': (context) => const TechnicalSkill(),
      'Hobbies': (context) => const Interest(),
      'Pr': (context) => const ProjectBu(),
      'Archive': (context) => const Achievements(),
      'Refer': (context) => const References(),
      'Declare': (context) => const Declaration(),
      'pdf': (context) => const PDF(),
    },
  ));
}
