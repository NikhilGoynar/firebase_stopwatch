import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:stop_watch/Stopwatch.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> with SingleTickerProviderStateMixin {
  late TabController _controller;
  @override
  void initState() {
    _controller = TabController(length: 2, vsync: this);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
            title: Text("Time Project"),
            bottom: TabBar(
              controller: _controller,
              tabs: [Text("Timer"), Text("Stopwatch")],
            )),
        body: TabBarView(
            controller: _controller, children: [Text("Timer"), MyStopWatch()]),
      ),
    );
  }
}
