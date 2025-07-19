import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:recipes_app/features/meal_detail/data/entities/meal_detail.dart';
import 'package:recipes_app/features/search_recipe/domain/repositories/search_recipe_repository.dart';

class SearchRecipeRepositoryImpl implements SearchRecipeRepository {
  final searchUri = 'https://www.themealdb.com/api/json/v1/1/search.php?s=';

  @override
  Future<List<MealDetailData>> searchMealsByName(String name) async {
    final response = await http.get(Uri.parse('$searchUri$name'));

    if (response.statusCode == 200) {
      final data = json.decode(response.body);
      final meals = data['meals'] as List<dynamic>?;

      if (meals == null) return [];

      return meals.map((meal) => MealDetailData.fromJson(meal)).toList();
    } else {
      throw Exception('Ocurred an error to getting the info meal');
    }
  }
}
