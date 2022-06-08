import 'package:batora/checkbox.dart';
import 'package:batora/checkbox1.dart';
import 'package:batora/contoh1.dart';
import 'package:batora/dasboard.dart';
import 'package:batora/login.dart';
import 'package:flutter/material.dart';
import 'dart:io';
import 'dart:html';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Flutter Demo',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: dasboard());
  }
}
