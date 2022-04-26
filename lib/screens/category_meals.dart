import 'package:flutter/material.dart';

//import '../models/meal.dart';
import '../widgets/meal_item.dart';
import '/models/dummy.dart';

class CategoryMeals extends StatelessWidget {
  //for named push
  static const routedName = '/category-meals';

  const CategoryMeals({Key? key}) : super(key: key);

  // const CategoryMeals({Key? key}) : super(key: key);
  // final String categoryId;
  // final String categoryTitle;
  // ignore: use_key_in_widget_constructors
  // const CategoryMeals(
  //   this.categoryId,
  //   this.categoryTitle,
  // );

  @override
  Widget build(BuildContext context) {
    //named route
    final routeArgs =
        ModalRoute.of(context)?.settings.arguments as Map<String, String>;
    final categoryTitle = routeArgs['title'];
    final categoryId = routeArgs['id'];
    final categoryMeals = DUMMY_MEALS.where((meal) {
      return meal.categories.contains(categoryId);
    }).toList();
    //

    return Scaffold(
      appBar: AppBar(
        title: Text(categoryTitle.toString()),
      ),
      body: ListView.builder(
        itemBuilder: (ctx, index) {
          return MealItem(
            id: categoryMeals[index].id,
            title: categoryMeals[index].title,
            srcImg: categoryMeals[index].imageUrl,
            duration: categoryMeals[index].duration,
            affordability: categoryMeals[index].affordability,
            complexity: categoryMeals[index].complexity,
          );
        },
        itemCount: categoryMeals.length,
      ),
    );
  }
}
