import 'dart:io';

import 'package:flutter/material.dart';

class Global {
  static bool contact = true;
  static bool switchK = true;
  static TextStyle title = const TextStyle(
    fontSize: 20,
    fontWeight: FontWeight.bold,
    color: Colors.white,
  );
  static TextStyle subTitle = const TextStyle(
    fontSize: 18,
    fontWeight: FontWeight.w500,
    color: Colors.white,
  );
  static TextStyle backText = const TextStyle(
    fontSize: 12,
    fontWeight: FontWeight.w500,
    color: Colors.grey,
  );
  static TextStyle carrText = TextStyle(
      fontWeight: FontWeight.bold, fontSize: 12, color: Colors.blue.shade700);
  static TextStyle personalText = TextStyle(
      color: Colors.blue.shade700, fontWeight: FontWeight.bold, fontSize: 20);
  static TextStyle saveText = const TextStyle(
      color: Colors.white, fontWeight: FontWeight.bold, fontSize: 20);

  static String contactName = '';
  static String contactEmail = '';
  static String contactPhone = '';
  static String contactAdd = '';
  static String contactAdd2 = '';
  static String contactAdd3 = '';

  static File? pic;

  static String carrierObj = '';
  static String currentDesignation = '';

  static String dob = '';
  static String maritalStatus = '';
  static List language = [];
  static String nationality = '';

  static String course = '';
  static String school = '';
  static String college = '';
  static String pass = '';

  static String companyName = '';
  static String school1 = '';
  static String roles = '';
  static String prEmployed = '';
  static String cuEmployed = '';

  static String dateJo = '';
  static String dateJo1 = '';
  static String dateEx = '';

  static String project = '';
  static List tec = [];
  static String roles1 = '';
  static String techno = '';
  static String prDescription = '';

  static String rn = '';
  static String dg = '';
  static String oi = '';

  static String de = '';
  static String date = '';
  static String city = '';

  static List skill = [];
  static String ts = '';

  static List hobbies = [];

  static List achievement = [];
}
