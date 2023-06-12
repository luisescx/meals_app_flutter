import 'package:flutter/material.dart';
import 'package:meals_app_flutter/models/meals.dart';
import 'package:meals_app_flutter/screens/meal_details.dart';
import 'package:meals_app_flutter/widgets/meals/meal_item.dart';

class MealsList extends StatelessWidget {
  final List<Meal> meals;
  final void Function(Meal meal) onToggleFavorites;

  const MealsList({
    super.key,
    required this.meals,
    required this.onToggleFavorites,
  });

  void onSelectMeal(BuildContext context, Meal meal) {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (ctx) => MealDetailsScreen(
          meal: meal,
          onToggleFavorites: onToggleFavorites,
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
