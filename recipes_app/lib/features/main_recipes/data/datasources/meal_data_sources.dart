import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:recipes_app/features/main_recipes/data/models/meal_model.dart';

class MealDataSource {
  final http.Client client;
  final categoriesUri =
      'https://www.themealdb.com/api/json/v1/1/categories.php';
  final categoriesByNameUri =
      'https://www.themealdb.com/api/json/v1/1/filter.php?c=';

  MealDataSource(this.client);

  Future<List<MealModel>> fetchAllMeals() async {
    final categoriesResult = await client.get(Uri.parse(categoriesUri));
    final categories = jsonDecode(categoriesResult.body)['categories'] as List;

    final allMeals = <MealModel>[];

    for (final category in categories) {
      final categoryName = category['strCategory'];
      final mealsRes = await client.get(
        Uri.parse('$categoriesByNameUri$categoryName'),
      );
      final mealsJson = jsonDecode(mealsRes.body)['meals'];

      if (mealsJson != null) {
        allMeals.addAll(
          (mealsJson as List).map((meal) => MealModel.fromJson(meal)),
        );
      }
    }

    return allMeals;
  }
}
