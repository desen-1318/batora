import 'package:flutter/material.dart';

class login extends StatelessWidget {
  const login({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        margin: EdgeInsets.all(5),
        decoration:
            BoxDecoration(borderRadius: BorderRadius.circular(19), boxShadow: [
          BoxShadow(
              color: Color.fromARGB(136, 105, 90, 90),
              offset: Offset(0, -5),
              blurRadius: 10.0)
        ]));
  }
}
