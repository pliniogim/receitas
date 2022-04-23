import 'package:flutter/material.dart';

import 'widgets/home/categories.dart';
//import 'widgets/home/home.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Receitas',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const Categories(),
    );
  }
}
