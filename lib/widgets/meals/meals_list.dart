import 'package:flutter/material.dart';
import 'package:meals_app_flutter/models/meals.dart';

class MealsList extends StatelessWidget {
  final List<Meal> meals;

  const MealsList({super.key, required this.meals});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: meals.length,
      itemBuilder: (_, index) => Text(meals[index].title),
    );
  }
}
