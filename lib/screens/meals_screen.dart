import 'package:flutter/material.dart';
import 'package:meals/models/meals.dart';
import 'package:meals/widgets/meal_widget.dart';

class MealsScreen extends StatelessWidget {
  const MealsScreen({super.key, required this.title, required this.meals});

  final String title;
  final List<Meal> meals;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
      ),
      body: Container(
        alignment: Alignment.center,
        child: meals.isEmpty
            ? Text(
                'Sorry! No Meals in this category yet!! Comming Soon',
                textAlign: TextAlign.center,
                style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                      color: Theme.of(context).colorScheme.onSurface,
                    ),
              )
            : ListView.builder(
                itemBuilder: (context, index) {
                  return MealWidget(meal: meals[index]);
                },
                itemCount: meals.length,
              ),
      ),
    );
  }
}
