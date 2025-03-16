import 'package:flutter/material.dart';
import 'package:simply_date/simply_date.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  final SimplyDate simplyDate = SimplyDate();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text("SimplyDate Example")),
        body: Center(
          child: Text(simplyDate.convertToTimeAgo(dateTimeString: "2024-08-21 08:30:00 AM") ?? "No Data"),
        ),
      ),
    );
  }
}