import 'package:flutter/material.dart';
import 'package:meals_app_flutter/data/dummy_categories_data.dart';
import 'package:meals_app_flutter/data/dummy_meals_data.dart';
import 'package:meals_app_flutter/models/category.dart';
import 'package:meals_app_flutter/models/meals.dart';
import 'package:meals_app_flutter/screens/meals.dart';
import 'package:meals_app_flutter/widgets/categories/category_grid_item.dart';

class CategoriesScreen extends StatelessWidget {
  final void Function(Meal meal) onToggleFavorites;

  const CategoriesScreen({
    super.key,
    required this.onToggleFavorites,
  });

  void _selectCategory(BuildContext context, Category category) {
    final selectedMeals = dummyMeals
        .where((meal) => meal.categories.contains(category.id))
        .toList();

    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (ctx) => MealsScreen(
          title: category.title,
          meals: selectedMeals,
          onToggleFavorites: onToggleFavorites,
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return GridView(
      padding: const EdgeInsets.all(16),
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        childAspectRatio: 1.5,
        crossAxisSpacing: 16,
        mainAxisSpacing: 16,
      ),
      children: availableCategories
          .map(
            (category) => CategoryGridItem(
              category: category,
              onSelectCategory: () => _selectCategory(context, category),
            ),
          )
          .toList(),
    );
  }
}
