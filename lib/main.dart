import 'package:flutter/material.dart';

import 'screens/categories.dart';
import 'screens/category_meals.dart';
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

      //home: const Categories(),
      //initialRoute: '/', //default route is '/'
      initialRoute: Categories.routedName,

      //named routes
      routes: {
        // slash is like home route
        //hard coded
        //'/': (ctx) => const Categories(),
        Categories.routedName: (ctx) => const Categories(),

        //hard coded
        //'/category-meals': (ctx) => const CategoryMeals(),

        //another way instead of hard coded
        CategoryMeals.routedName: (ctx) => const CategoryMeals(),
      },
    );
  }
}
