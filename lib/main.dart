import 'package:flutter/material.dart';
import 'package:flutterschool_bookshop_app_tutorial/pages/getting_start_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Bookshop',
      theme: ThemeData(
        fontFamily: "NotoSansLao",
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
      ),
      home: const GettingStartPage(),
    );
  }
}
