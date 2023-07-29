import 'package:flutter/material.dart';

class Search extends StatefulWidget {
  const Search({super.key});

  @override
  State<Search> createState() => _SearchState();
}

class _SearchState extends State<Search> {
  TextEditingController sonControlle = TextEditingController();
  bool isTrue = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:const Text("Algoritm"),
      ),
      body: SafeArea(
          child: Column(
        children: [
          TextFormField(
            controller: sonControlle,
            decoration:const InputDecoration(hintText: "sonni kiriting"),
          ),
          ElevatedButton(
              onPressed: () {
                setState(() {
                  if (int.parse(sonControlle.text) % 2 == 0) {
                    isTrue = true;
                  } else {
                    isTrue = false;
                  }
                });
              },
              child:const Text("Natijani ko'rsat")),
          Text(isTrue ? "juft son " : "Toq son ")
        ],
      )),
    );
  }
}
