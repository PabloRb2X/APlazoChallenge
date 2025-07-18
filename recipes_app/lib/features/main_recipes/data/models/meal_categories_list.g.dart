// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'meal_categories_list.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_MealCategoriesList _$MealCategoriesListFromJson(Map<String, dynamic> json) =>
    _MealCategoriesList(
      categories: (json['categories'] as List<dynamic>)
          .map((e) => MealCategory.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$MealCategoriesListToJson(_MealCategoriesList instance) =>
    <String, dynamic>{
      'categories': instance.categories,
    };

_MealCategory _$MealCategoryFromJson(Map<String, dynamic> json) =>
    _MealCategory(
      idCategory: json['idCategory'] as String,
      strCategory: json['strCategory'] as String,
      strCategoryThumb: json['strCategoryThumb'] as String,
      strCategoryDescription: json['strCategoryDescription'] as String,
    );

Map<String, dynamic> _$MealCategoryToJson(_MealCategory instance) =>
    <String, dynamic>{
      'idCategory': instance.idCategory,
      'strCategory': instance.strCategory,
      'strCategoryThumb': instance.strCategoryThumb,
      'strCategoryDescription': instance.strCategoryDescription,
    };
