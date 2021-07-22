import 'package:flutter/material.dart';
import 'package:BmiCalculator/screens/input_page.dart';
import 'package:get/get.dart';

void main() => runApp(
      GetMaterialApp(
        debugShowCheckedModeBanner: false,
        home: BmiCalculator(),
        theme: ThemeData.dark().copyWith(
          primaryColor: Color(0xFF0A0E21),
          scaffoldBackgroundColor: Color(0xFF0A0E21),
        ),
      ),
    );
