import 'package:recipes_app/features/meal_detail/data/entities/meal_detail.dart';

abstract class MealDetailRepository {
  Future<MealDetailData> fetchMealDetail(String id);
}
