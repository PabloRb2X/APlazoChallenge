import 'package:freezed_annotation/freezed_annotation.dart';

part 'meal_model.freezed.dart';
part 'meal_model.g.dart';

@freezed
abstract class MealModel with _$MealModel {
  const factory MealModel({
    required String idMeal,
    required String strMeal,
    required String strMealThumb,
  }) = _MealModel;

  factory MealModel.fromJson(Map<String, dynamic> json) =>
      _$MealModelFromJson(json);
}
