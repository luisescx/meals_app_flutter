import 'package:flutter/material.dart';
import 'package:meals_app_flutter/models/meals.dart';

class MealDetailsScreen extends StatelessWidget {
  final Meal meal;

  const MealDetailsScreen({super.key, required this.meal});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(meal.title),
      ),
      body: Image.network(
        meal.imageUrl,
        fit: BoxFit.cover,
        height: 300,
        width: double.infinity,
      ),
    );
  }
}
