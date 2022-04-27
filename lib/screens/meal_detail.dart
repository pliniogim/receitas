import 'package:flutter/material.dart';
import '/models/dummy.dart';

class MealDetail extends StatelessWidget {
  static const routedName = '/meal-detail';

  const MealDetail({Key? key}) : super(key: key);

  Widget buildSectionTitle(BuildContext context, String text) {
    return Container(
      margin: const EdgeInsets.symmetric(
        vertical: 10,
        horizontal: 10,
      ),
      child: Text(
        text,
        style: Theme.of(context).textTheme.headline6,
      ),
    );
  }

  Widget buildContainer(Widget child) {
    return Container(
        decoration: BoxDecoration(
          color: Colors.white,
          border: Border.all(
            color: Colors.grey,
          ),
          borderRadius: BorderRadius.circular(10),
        ),
        margin: const EdgeInsets.all(10),
        padding: const EdgeInsets.all(10),
        height: 150,
        width: 300,
        child: child);
  }

  @override
  Widget build(BuildContext context) {
    final mealId = ModalRoute.of(context)?.settings.arguments as String;
    //
    final selectedMeal = DUMMY_MEALS.firstWhere((meal) => meal.id == mealId);
    return Scaffold(
      appBar: AppBar(
        title: Text(selectedMeal.title),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: 300,
              width: double.infinity,
              child: Image.network(
                selectedMeal.imageUrl,
                fit: BoxFit.cover,
              ),
            ),
            buildSectionTitle(context, 'Ingredients'),

            //build a method for titles
            // Container(
            //   margin: const EdgeInsets.symmetric(
            //     vertical: 10,
            //     horizontal: 10,
            //   ),
            //   child: Text(
            //     'Ingredients',
            //     style: Theme.of(context).textTheme.headline6,
            //   ),
            // ),

            // Container(
            //   decoration: BoxDecoration(
            //     color: Colors.white,
            //     border: Border.all(
            //       color: Colors.grey,
            //     ),
            //     borderRadius: BorderRadius.circular(10),
            //   ),
            //   margin: const EdgeInsets.all(10),
            //   padding: const EdgeInsets.all(10),
            //   height: 150,
            //   width: 300,

            buildContainer(
              ListView.builder(
                itemCount: selectedMeal.ingredients.length,
                itemBuilder: (ctx, index) => Card(
                  color: Theme.of(context).colorScheme.secondary,
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      selectedMeal.ingredients[index],
                    ),
                  ),
                ),
              ),
            ),
            buildSectionTitle(context, 'Steps'),
            buildContainer(ListView.builder(
              itemCount: selectedMeal.steps.length,
              itemBuilder: (ctx, index) => Column(children: [
                ListTile(
                  leading: CircleAvatar(
                    backgroundColor: Colors.pinkAccent,
                    child: Text(
                      '# ${(index + 1)}',
                    ),
                  ),
                  title: Text(selectedMeal.steps[index]),
                ),
                const Divider(
                  thickness: 2,
                ),
              ]),
            )),
          ],
        ),
      ),
    );
  }
}
