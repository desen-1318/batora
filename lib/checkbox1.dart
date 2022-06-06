import 'package:batora/checkbox.dart';
import 'package:flutter/material.dart';

class checkbox1 extends StatefulWidget {
  checkbox1({Key? key}) : super(key: key);

  @override
  State<checkbox1> createState() => _checkbox1State();
}

class _checkbox1State extends State<checkbox1> {
  final List<String> bahasa = ["java", "kolin", "dart"];
  bool? selected1 = false;
  bool? selected2 = false;
  bool? selected3 = false;
  List<int> list = [];

  void onchage1(bool? value) {
    setState(() {
      this.selected1 = value;
    });
    if (value == true)
      list.add(0);
    else
      list.remove(0);
    print(list);
  }

  void onchage2(bool? value) {
    setState(() {
      this.selected2 = value;
    });
    if (value == true)
      list.add(1);
    else
      list.remove(1);
    print(list);
  }

  void onchage3(bool? value) {
    setState(() {
      this.selected3 = value;
    });
    if (value == true)
      list.add(2);
    else
      list.remove(2);
    print(list);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("checkbox")),
      body: Container(
        padding: EdgeInsets.all(10.0),
        child: Column(children: [
          Text("bahasa yang anda sukai"),
          Row(
            children: [
              Checkbox(
                value: this.selected1,
                onChanged: (bool? value) {
                  onchage1(value);
                },
              ),
              Container(
                width: 8.0,
              ),
              Text(this.bahasa[0])
            ],
          ),
          Row(
            children: [
              Checkbox(
                value: this.selected2,
                onChanged: (bool? value) {
                  onchage2(value);
                },
              ),
              Container(
                width: 8.0,
              ),
              Text(this.bahasa[1])
            ],
          ),
          Row(
            children: [
              Checkbox(
                value: this.selected3,
                onChanged: (bool? value) {
                  onchage3(value);
                },
              ),
              Container(
                width: 8.0,
              ),
              Text(this.bahasa[2])
            ],
          ),
        ]),
      ),
    );
  }
}
