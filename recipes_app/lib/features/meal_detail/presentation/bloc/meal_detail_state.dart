import '../../data/entities/meal_detail.dart';

abstract class MealDetailState {}

class MealDetailInitial extends MealDetailState {}

class MealDetailLoading extends MealDetailState {}

class MealDetailLoaded extends MealDetailState {
  final MealDetailData mealDetail;

  MealDetailLoaded(this.mealDetail);
}

class MealDetailError extends MealDetailState {
  final String message;

  MealDetailError(this.message);
}
