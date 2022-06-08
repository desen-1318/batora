import 'package:flutter/material.dart';

class dasboard extends StatelessWidget {
  const dasboard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          child: Image.asset(
            "assets/images/th.png",
            height: 250.0,
            fit: BoxFit.cover,
          ),
        )
      ],
    );
  }
}
