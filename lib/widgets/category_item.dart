import 'package:flutter/material.dart';

import '/screens/category_meals.dart';
//import 'package:receitas/widgets/home/category_meals.dart';

class CategoryItem extends StatelessWidget {
  final String id;
  final String title;
  final Color color;
  const CategoryItem(this.id, this.title, this.color, {Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => selectCategory(context),
      splashColor: Theme.of(context).primaryColor,
      borderRadius: BorderRadius.circular(15),
      child: Container(
        padding: const EdgeInsets.all(15),
        child: Text(
          title,
          style: Theme.of(context).textTheme.headline6,
        ),
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [
              color.withOpacity(.3),
              color,
            ],
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
          ),
          borderRadius: BorderRadius.circular(
            15,
          ),
        ),
      ),
    );
  }

  //named route
  void selectCategory(BuildContext ctx) {
    Navigator.of(ctx).pushNamed(
      // hard coded
      //'/category-meals',
      CategoryMeals.routedName,
      arguments: {'id': id, 'title': title},
    );
  }

  //normal push
  // void selectCategory(BuildContext ctx) {
  //   Navigator.of(ctx).push(
  //     MaterialPageRoute(
  //       builder: (_) {
  //         return CategoryMeals(id, title);
  //       },
  //     ),
  //   );
  // }
}
