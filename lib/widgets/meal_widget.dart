import 'package:flutter/material.dart';
import 'package:meals/models/meals.dart';
import 'package:meals/widgets/meal_traits.dart';
import 'package:meals/screens/meal_details_screen.dart';

class MealWidget extends StatelessWidget {
  const MealWidget({super.key, required this.meal});

  final Meal meal;

  void onSelecingMeal(BuildContext context) {
    Navigator.of(context).push(MaterialPageRoute(builder: (ctx) => MealDetailsScreen(meal: meal)));
  }

  @override
  Widget build(context) {
    return InkWell(
      onTap: () {
        onSelecingMeal(context);
      },
      child: Card(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(15),
        ),
        elevation: 4,
        margin: EdgeInsets.all(10),
        child: Column(
          children: [
            Stack(
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(15),
                    topRight: Radius.circular(15),
                  ),
                  child: Image.network(
                    meal.imageUrl,
                    height: 250,
                    width: double.infinity,
                    fit: BoxFit.cover,
                  ),
                ),
                Positioned(
                  left: 0,
                  right: 0,
                  bottom: 20,
                  child: Container(
                    width: 300,
                    color: Colors.black54,
                    padding: EdgeInsets.symmetric(
                      vertical: 5,
                      horizontal: 20,
                    ),
                    child: Column(
                      children: [
                        Text(
                          meal.title,
                          style: TextStyle(
                            fontSize: 26,
                            color: Colors.white,
                          ),
                          softWrap: true,
                          overflow: TextOverflow.fade,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            MealTraits(
                              icon: Icons.watch_later,
                              lable: '${meal.duration} min',
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            MealTraits(
                              icon: Icons.work_history,
                              lable:
                                  '${meal.complexity.name[0].toUpperCase()}${meal.complexity.name.substring(1)}',
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            MealTraits(
                              icon: Icons.attach_money,
                              lable:
                                  '${meal.affordability.name[0].toUpperCase()}${meal.affordability.name.substring(1)}',
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
