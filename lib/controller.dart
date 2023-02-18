import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mr_oil/about.dart';
import 'package:mr_oil/benifit.dart';
import 'package:mr_oil/contactus.dart';
import 'package:mr_oil/home.dart';

import 'process.dart';
import 'product.dart';

class Controller extends GetxController {
  int index = 0;
  List<Widget> screens = const [
    Home(),
    About(),
    Product(),
    Process(),
    Benefit(),
    ContactUs(),
  ];
}
