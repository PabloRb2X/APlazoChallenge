import 'package:recipes_app/features/main_recipes/domain/entities/meal.dart';
import 'package:recipes_app/features/main_recipes/domain/repositories/meal_repository.dart';

class FetchAllMealsUseCase {
  final MealRepository repository;
  FetchAllMealsUseCase(this.repository);

  Future<List<Meal>> call() => repository.fetchAllMeals();
}
