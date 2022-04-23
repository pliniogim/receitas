import 'package:flutter/material.dart';

import '/widgets/category_item.dart';
import '/models/dummy.dart';

class Categories extends StatelessWidget {
  const Categories({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Receitas',
        ),
      ),
      body: GridView(
        children: dummyCategories
            .map(
              (catData) => CategoryItem(
                catData.title,
                catData.color,
              ),
            )
            .toList(),
        gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
          maxCrossAxisExtent: 200,
          childAspectRatio: 3 / 2,
          crossAxisSpacing: 20,
          mainAxisSpacing: 20,
        ),
      ),
    );
  }
}
