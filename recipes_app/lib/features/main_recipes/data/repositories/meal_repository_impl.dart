import 'package:recipes_app/features/main_recipes/data/datasources/meal_data_sources.dart';
import 'package:recipes_app/features/main_recipes/domain/entities/meal.dart';
import 'package:recipes_app/features/main_recipes/domain/repositories/meal_repository.dart';

class MealRepositoryImpl implements MealRepository {
  final MealDataSource dataSource;

  MealRepositoryImpl(this.dataSource);

  @override
  Future<List<Meal>> fetchAllMeals() async {
    final models = await dataSource.fetchAllMeals();

    return models
        .map(
          (object) => Meal(
            id: object.idMeal,
            name: object.strMeal,
            thumbnail: object.strMealThumb,
          ),
        )
        .toList();
  }
}
