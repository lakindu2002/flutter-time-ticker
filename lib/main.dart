import 'dart:async';

import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    const String title = 'Ticker Application';
    return MaterialApp(
        title: title,
        home: Scaffold(
            appBar: AppBar(
              title: const Text(title),
            ),
            body: Center(
                child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: const [
                Text(
                  'Hi, I\'m Lakindu Hewawasam',
                ),
                Text(
                  'I\'m Learning Flutter',
                ),
                TickerWidget()
              ],
            ))));
  }
}

class TickerWidget extends StatefulWidget {
  const TickerWidget({super.key});
  @override
  TickerWidgetState createState() => TickerWidgetState();
}

class TickerWidgetState extends State<TickerWidget> {
  DateTime currentTime = DateTime.now();

  @override
  Widget build(BuildContext context) {
    Timer.periodic(const Duration(seconds: 1), ((timer) {
      DateTime newTime = DateTime.now();
      setState(() {
        currentTime = newTime;
      });
    }));
    return Container(
      child: Text(currentTime.toLocal().toString()),
    );
  }
}
