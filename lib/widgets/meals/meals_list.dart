import 'package:flutter/material.dart';
import 'package:meals_app_flutter/models/meals.dart';
import 'package:meals_app_flutter/screens/meal_details.dart';
import 'package:meals_app_flutter/widgets/meals/meal_item.dart';

class MealsList extends StatelessWidget {
  final List<Meal> meals;

  const MealsList({
    super.key,
    required this.meals,
  });

  void onSelectMeal(BuildContext context, Meal meal) {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (ctx) => MealDetailsScreen(
          meal: meal,
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: meals.length,
      itemBuilder: (_, index) => MealItem(
        meal: meals[index],
        onSelectMeal: (meal) => onSelectMeal(context, meal),
      ),
    );
  }
}
