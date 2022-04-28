import 'package:flutter/material.dart';
import 'package:receitas/models/dummy.dart';

import '../widgets/category_item.dart';
import '/models/dummy.dart';

class Categories extends StatelessWidget {
  static const routedName = '/';

  const Categories({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GridView(
      // Scaffold(
      // appBar: AppBar(
      //   title: const Text(
      //     'Receitas',
      //   ),
      // ),
      // body:
        padding: const EdgeInsets.all(25),
        gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
          maxCrossAxisExtent: 200,
          childAspectRatio: 3 / 2,
          crossAxisSpacing: 20,
          mainAxisSpacing: 20,
        ),
        children: DUMMY_CATEGORIES
            .map(
              (catData) => CategoryItem(
                catData.id,
                catData.title,
                catData.color,
              ),
            )
            .toList(),
      );
  }
}
