import 'package:recipes_app/features/main_recipes/domain/entities/meal.dart';

abstract class MealRepository {
  Future<List<Meal>> fetchAllMeals();
}
