import 'package:flutter/material.dart';
import 'package:meals_app_flutter/models/meals.dart';
import 'package:meals_app_flutter/widgets/meals/empty_data.dart';
import 'package:meals_app_flutter/widgets/meals/meals_list.dart';

class MealsScreen extends StatelessWidget {
  final String? title;
  final List<Meal> meals;

  const MealsScreen({
    super.key,
    this.title,
    required this.meals,
  });

  @override
  Widget build(BuildContext context) {
    Widget mainContent = const EmptyMealsData();

    if (meals.isNotEmpty) {
      mainContent = MealsList(
        meals: meals,
      );
    }

    if (title == null) {
      return mainContent;
    }

    return Scaffold(
      appBar: AppBar(
        title: Text(title!),
      ),
      body: mainContent,
    );
  }
}
