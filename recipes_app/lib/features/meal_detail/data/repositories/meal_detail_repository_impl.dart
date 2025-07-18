import 'package:http/http.dart' as http;
import 'package:recipes_app/features/meal_detail/data/entities/meal_detail.dart';
import 'dart:convert';

import 'package:recipes_app/features/meal_detail/domain/repositories/meal_detail_repository.dart';

class MealDetailRepositoryImpl implements MealDetailRepository {
  final detailUri = 'https://www.themealdb.com/api/json/v1/1/lookup.php?i=';

  @override
  Future<MealDetailData> fetchMealDetail(String id) async {
    final response = await http.get(Uri.parse('$detailUri$id'));

    if (response.statusCode == 200) {
      final jsonMap = json.decode(response.body);
      final meals = jsonMap['meals'] as List<dynamic>;

      return MealDetailData.fromJson(meals.first);
    } else {
      throw Exception('Error al obtener el detalle de la receta');
    }
  }
}
