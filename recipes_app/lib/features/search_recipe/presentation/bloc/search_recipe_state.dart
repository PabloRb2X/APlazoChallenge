import 'package:recipes_app/features/meal_detail/data/entities/meal_detail.dart';

abstract class SearchRecipeState {}

class SearchRecipeInitial extends SearchRecipeState {}

class SearchRecipeLoading extends SearchRecipeState {}

class SearchRecipeLoaded extends SearchRecipeState {
  final List<MealDetailData> mealsDetail;

  SearchRecipeLoaded(this.mealsDetail);
}

class SearchRecipeLoadedEmpty extends SearchRecipeState {}

class SearchRecipeError extends SearchRecipeState {
  final String message;

  SearchRecipeError(this.message);
}
