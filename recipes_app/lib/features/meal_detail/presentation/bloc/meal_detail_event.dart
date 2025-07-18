abstract class MealDetailEvent {}

class FetchMealDetail extends MealDetailEvent {
  final String id;

  FetchMealDetail(this.id);
}
