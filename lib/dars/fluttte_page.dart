import 'package:flutter/material.dart';

class Flutter extends StatefulWidget {
  const Flutter({super.key});

  @override
  State<Flutter> createState() => _FlutterState();
}

class _FlutterState extends State<Flutter> {
  bool isDark = false;
  bool checkBox = false;
  double sliderValues = 0.0;
  RangeValues rangeValues = const RangeValues(0.0, 1);
  String dropValues = "+998";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: isDark ? Colors.black54 : Colors.white,
      appBar: AppBar(
        title: const Text("Filter Page"),
        backgroundColor: isDark ? Colors.blueGrey : Colors.blue,
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Switch(
              value: isDark,
              onChanged: (v) {
                setState(() {
                  isDark = !isDark;
                });
              }),
          CheckboxListTile(
              title: Text(
                "Uylanganmisiz?",
                style: TextStyle(color: isDark ? Colors.white : Colors.black),
              ),
              value: checkBox,
              onChanged: (v) {
                setState(() {
                  checkBox = v!;
                });
              }),
          Slider(
              value: sliderValues,
              onChanged: (v) {
                setState(() {
                  sliderValues = v;
                });
                print(v);
              }),
          Text(
              "Boshlang'ich narx: ${rangeValues.start.toString().substring(2, 3)}   Tugash narxi: ${rangeValues.end.toString().substring(2, 3)}",
              style: TextStyle(color: isDark ? Colors.white : Colors.black)),
          RangeSlider(
              values: rangeValues,
              onChanged: ((value) {
                setState(() {
                  print(rangeValues.start);
                  print(rangeValues.end);
                  rangeValues = value;
                });
              })),
          DropdownButton(
            value: dropValues,
            items: const [
              DropdownMenuItem(
                child: Text(
                  "UZB",
                  style: TextStyle(color: Colors.blue),
                ),
                value: "+998",
              ),
              DropdownMenuItem(
                child: Text(
                  "RUS",
                  style: TextStyle(color: Colors.blue),
                ),
                value: "+7",
              ),
              DropdownMenuItem(
                child: Text(
                  "ENG",
                  style: TextStyle(color: Colors.blue),
                ),
                value: "+44",
              ),
            ],
            onChanged: (v) {
              setState(() {
                dropValues = v!;
              });
            },
          )
        ],
      ),
    );
  }
}
