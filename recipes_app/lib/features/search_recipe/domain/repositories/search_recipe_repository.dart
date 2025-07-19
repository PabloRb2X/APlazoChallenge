import 'package:recipes_app/features/meal_detail/data/entities/meal_detail.dart';

abstract class SearchRecipeRepository {
  Future<List<MealDetailData>> searchMealsByName(String name);
}
