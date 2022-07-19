// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';

class MyStopWatch extends StatefulWidget {
  const MyStopWatch({Key? key}) : super(key: key);

  @override
  State<MyStopWatch> createState() => _MyStopWatchState();
}

class _MyStopWatchState extends State<MyStopWatch> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Expanded(
              flex: 6,
              child: Container(
                alignment: Alignment.center,
                child: Text(
                  "00:00:00",
                  style: TextStyle(fontSize: 50.0, fontWeight: FontWeight.w700),
                ),
              )),
          Expanded(
              flex: 4,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  RaisedButton(
                    onPressed: () {},
                    child: Text("Stop"),
                    color: Colors.red,
                    padding:
                        EdgeInsets.symmetric(horizontal: 40.0, vertical: 15.0),
                  ),
                  RaisedButton(
                    onPressed: () {},
                    child: Text("Reset"),
                    color: Colors.blue,
                    padding:
                        EdgeInsets.symmetric(horizontal: 40.0, vertical: 15.0),
                  ),
                ],
              )),
          Container(
            padding: EdgeInsetsDirectional.all(15.0),
            child: RaisedButton(
              onPressed: () {},
              child: Text("Start"),
              color: Colors.black12,
              padding: EdgeInsets.symmetric(horizontal: 60.0, vertical: 20.0),
            ),
          )
        ],
      ),
    );
  }
}
