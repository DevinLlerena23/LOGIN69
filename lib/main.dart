import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:login3/bar_chart_sample1.dart';
import 'package:login3/line_chart_sample10.dart';
import 'package:login3/line_chart_sample2.dart';
import 'package:login3/line_chart_sample9.dart';
import 'package:login3/login.dart';

void main() {
  runApp(MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: LoginPage()
    );
  }
}
