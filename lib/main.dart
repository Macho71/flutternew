import 'package:flutter/material.dart';
import 'package:ui/dars/darslar.dart';
import 'package:ui/dars/fluttte_page.dart';
import 'package:ui/search.dart';
import 'package:ui/widjets/Doctor_Appointment.dart';
import 'package:ui/bottom_naw_page.dart';
import 'package:ui/chatsms.dart';

import 'package:ui/grid_view_page.dart';
import 'package:ui/home_pake.dart';
import 'package:ui/person.dart';
import 'package:ui/scroll.dart';
import 'package:ui/stobless.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Flutter Demo',
        debugShowCheckedModeBanner: false,
        theme: ThemeData(primarySwatch: Colors.blue),
        home: Search());
  }
}
