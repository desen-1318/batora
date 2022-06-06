import 'package:flutter/material.dart';

class checkbox extends StatefulWidget {
  checkbox({Key? key}) : super(key: key);

  @override
  State<checkbox> createState() => _checkboxState();
}

class _checkboxState extends State<checkbox> {
  String text = '';
  String nama = '';
  void onPressed() {
    setState(() {
      if (this.nama.trim().length == 0) return;

      this.text = "hi " + this.nama + " apa kabar?";
    });
  }

  void onchange(String value) {
    setState(() {
      this.nama = value;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("checkbox")),
      body: Column(
        children: [
          TextField(
            onChanged: (String value) {
              onchange(value);
            },
          ),
          ElevatedButton(
              onPressed: () {
                onPressed();
              },
              child: Text("klik")),
          Container(height: 15.0),
          Text(this.text)
        ],
      ),
    );
  }
}
