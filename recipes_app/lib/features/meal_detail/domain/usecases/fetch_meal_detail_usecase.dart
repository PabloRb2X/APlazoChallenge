import 'package:recipes_app/features/meal_detail/domain/entities/meal_detail.dart';
import 'package:recipes_app/features/meal_detail/domain/repositories/meal_detail_repository.dart';

class FetchMealDetailUseCase {
  final MealDetailRepository repository;

  FetchMealDetailUseCase(this.repository);

  Future<MealDetailData> call(String id) => repository.fetchMealDetail(id);
}
