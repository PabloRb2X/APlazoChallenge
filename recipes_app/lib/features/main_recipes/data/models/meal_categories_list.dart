import 'package:freezed_annotation/freezed_annotation.dart';

part 'meal_categories_list.freezed.dart';
part 'meal_categories_list.g.dart';

@Freezed(copyWith: true)
abstract class MealCategoriesList with _$MealCategoriesList {
  const factory MealCategoriesList({
    required List<MealCategory> categories,
  }) = _MealCategoriesList;

  factory MealCategoriesList.fromJson(Map<String, dynamic> json) =>
      _$MealCategoriesListFromJson(json);
}

@Freezed(copyWith: true)
abstract class MealCategory with _$MealCategory {
  const factory MealCategory({
    required String idCategory,
    required String strCategory,
    required String strCategoryThumb,
    required String strCategoryDescription,
  }) = _MealCategory;

  factory MealCategory.fromJson(Map<String, dynamic> json) =>
      _$MealCategoryFromJson(json);
}
