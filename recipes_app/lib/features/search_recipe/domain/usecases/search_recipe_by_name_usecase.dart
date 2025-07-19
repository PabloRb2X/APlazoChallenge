import 'package:recipes_app/features/meal_detail/data/entities/meal_detail.dart';
import 'package:recipes_app/features/search_recipe/domain/repositories/search_recipe_repository.dart';

class SearchRecipeByNameUseCase {
  final SearchRecipeRepository repository;

  SearchRecipeByNameUseCase(this.repository);

  Future<List<MealDetailData>> call(String name) =>
      repository.searchMealsByName(name);
}
