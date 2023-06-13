import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:meals_app_flutter/models/meals.dart';

class FavoriteMealsNotifier extends StateNotifier<List<Meal>> {
  FavoriteMealsNotifier() : super([]);

  bool toggleMealFavoritesStatus(Meal meal) {
    final mealIsFavorite = state.contains(meal);

    if (mealIsFavorite) {
      state =
          state.where((favoriteMeal) => favoriteMeal.id != meal.id).toList();

      return false;
    }

    state = [...state, meal];
    return true;
  }
}

final favoriteMealsProvider =
    StateNotifierProvider<FavoriteMealsNotifier, List<Meal>>(
  (ref) => FavoriteMealsNotifier(),
);
