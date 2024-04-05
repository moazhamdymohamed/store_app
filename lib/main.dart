import 'package:flutter/material.dart';
import 'package:store_app/screens/Homepage.dart';
import 'package:store_app/screens/ubdataProductPage.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        Homepage.id: (context) => Homepage(),
        UpdataPage.id: (context) => UpdataPage()
      },
      initialRoute: Homepage.id,
    );
  }
}
