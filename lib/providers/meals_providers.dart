import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:meals_app_flutter/data/dummy_meals_data.dart';

final mealsProvider = Provider((ref) => dummyMeals);
