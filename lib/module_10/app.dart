import 'package:flutter/material.dart';
import 'package:ostad_mobile_dev_project/assignment/assignment_module_13.dart';
import 'package:ostad_mobile_dev_project/assignment/live_test.dart';
import 'package:ostad_mobile_dev_project/module_10/button_group.dart';
import 'package:ostad_mobile_dev_project/module_10/home.dart';
import 'package:ostad_mobile_dev_project/input.dart';
import 'package:ostad_mobile_dev_project/input_image.dart';
import 'package:ostad_mobile_dev_project/module_16/class_2.dart';

class MyApp extends StatelessWidget {
  MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      //rules jegula ekhane defined thakbe shegula pura app e maintain korte hobe, material akbar e hobe, r proti page e dibo scaffold
      title: 'Batch-12',
      home: Crud(), //je screen theke app start hobe or amra dekhbo
    );
  }
}
