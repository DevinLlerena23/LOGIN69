import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:login3/bar_chart_sample1.dart';
import 'package:login3/line_chart_sample10.dart';

class Wid extends StatefulWidget {
  const Wid({super.key});

  @override
  State<Wid> createState() => _WidState();
}

class _WidState extends State<Wid> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: DecoratedBox(
      decoration: BoxDecoration(
          image: DecorationImage(
              fit: BoxFit.cover, image: AssetImage('images/cardiograma.png'))),
      child: Row(
        children: [
          Padding(padding: EdgeInsets.only(left: 100)),
          SizedBox(
            child: LineChartSample10(),
            height: 600,
            width: 600,
          ),
          Padding(padding: EdgeInsets.only(left: 500)),
          SizedBox(
            child: BarChartSample1(),
            height: 600,
            width: 600,
          )
        ],
      ),
    ));
  }
}