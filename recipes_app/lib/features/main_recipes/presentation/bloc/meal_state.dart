import '../../domain/entities/meal.dart';

abstract class MealState {}

class MealInitial extends MealState {}

class MealLoading extends MealState {}

class MealLoaded extends MealState {
  final List<Meal> meals;
  final bool hasReachedEnd;

  MealLoaded(this.meals, {this.hasReachedEnd = false});
}

class MealError extends MealState {
  final String message;
  MealError(this.message);
}
