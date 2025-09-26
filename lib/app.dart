import 'package:flutter/material.dart';
import 'package:ostad_mobile_dev_project/assignment/assignment_module_13.dart';
import 'package:ostad_mobile_dev_project/assignment/live_test.dart';
import 'package:ostad_mobile_dev_project/button_group.dart';
import 'package:ostad_mobile_dev_project/home.dart';
import 'package:ostad_mobile_dev_project/input.dart';
import 'package:ostad_mobile_dev_project/input_image.dart';

class MyApp extends StatelessWidget {
  MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      //rules jegula ekhane defined thakbe shegula pura app e maintain korte hobe, material akbar e hobe, r proti page e dibo scaffold
      title: 'Batch-12',
      home: LiveTest(), //je screen theke app start hobe or amra dekhbo
    );
  }
}
