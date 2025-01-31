import 'package:flutter/material.dart';
import 'package:meals/models/category.dart';
import 'package:meals/screens/meals_screen.dart';
import 'package:meals/data/dummy_data.dart';

class CategoryWidget extends StatelessWidget {
  const CategoryWidget(this.category, {super.key});

  final Category category;

  void onSelectMeal(BuildContext ctx) {
    var meals = dummyMeals
        .where((meal) => meal.categories.contains(category.id))
        .toList();
    Navigator.of(ctx).push(MaterialPageRoute(
      builder: (routeContext) {
      return MealsScreen(title: category.title, meals: meals);
    }));
  }

  @override
  Widget build(context) {
    return InkWell(
      onTap: () {
        onSelectMeal(context);
      },
      splashColor: Theme.of(context).colorScheme.secondary,
      child: Container(
        padding: EdgeInsets.all(20),
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [
              category.color.withAlpha(150),
              category.color.withAlpha(200),
            ],
            begin: Alignment.bottomRight,
            end: Alignment.topCenter,
          ),
          borderRadius: BorderRadius.circular(15),
        ),
        alignment: Alignment.center,
        child: Text(
          category.title,
          style: Theme.of(context).textTheme.titleLarge,
          textAlign: TextAlign.center,
        ),
      ),
    );
  }
}
