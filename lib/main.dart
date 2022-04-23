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
        canvasColor: Colors.yellow.shade100,
        //canvasColor: const Color.fromRGBO(255, 259, 229, 1),
        fontFamily: 'Raleway',
        textTheme: ThemeData.light().textTheme.copyWith(
              bodyText1: TextStyle(
                color: Colors.black.withOpacity(.8),
              ),
              bodyText2: TextStyle(
                color: Colors.black.withOpacity(.8),
              ),
              headline6: const TextStyle(
                fontSize: 18,
                fontFamily: 'RobotoCondensed',
              ),
            ),
        colorScheme: ColorScheme.fromSwatch(primarySwatch: Colors.pink)
            .copyWith(secondary: Colors.amber),
      ),
      home: const Categories(),
    );
  }
}
