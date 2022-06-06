import 'dart:html';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class contoh1 extends StatefulWidget {
  const contoh1({Key? key}) : super(key: key);

  @override
  State<contoh1> createState() => _contoh1State();
}

class _contoh1State extends State<contoh1> {
  int counter = 0;
  String kata = '';

  void incrementCounter() {
    setState(() {
      counter++;
    });
  }

  void dicrementCounter() {
    setState(() {
      counter--;
    });
  }

  void text1() {
    setState(() {
      kata = "ini adalah tombol 1";
    });
  }

  void text2() {
    setState(() {
      kata = "ini adalah tombol 2";
    });
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            "Nilai Counter=$counter",
            style: TextStyle(fontSize: 30.0),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ElevatedButton(onPressed: dicrementCounter, child: Text("<<")),
              Container(
                width: 10.0,
              ),
              ElevatedButton(onPressed: incrementCounter, child: Text(">>"))
            ],
          ),
          Text(
            "$kata",
            style: TextStyle(fontSize: 40.0),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ElevatedButton(onPressed: text1, child: Text("tombol1")),
              ElevatedButton(onPressed: text2, child: Text("tombol2"))
            ],
          )
        ],
      ),
    );
  }
}
