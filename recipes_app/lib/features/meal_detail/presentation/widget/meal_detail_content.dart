import 'package:flutter/material.dart';
import 'package:recipes_app/core/design_system/design_system_text_style.dart';
import 'package:recipes_app/features/meal_detail/domain/entities/meal_detail.dart';
import 'package:recipes_app/features/meal_detail/presentation/miscelaneous/meal_detail_constants.dart';
import 'package:recipes_app/features/meal_detail/presentation/widget/meal_detail_header.dart';
import 'package:recipes_app/features/meal_detail/presentation/widget/meal_detail_ingredients.dart';
import 'package:recipes_app/features/meal_detail/presentation/widget/meal_detail_preparation.dart';
import 'package:recipes_app/features/meal_detail/presentation/widget/meal_detail_video.dart';

class MealDetailContent extends StatefulWidget {
  const MealDetailContent({super.key, required this.mealDetailData});

  final MealDetailData mealDetailData;

  @override
  State<MealDetailContent> createState() => _MealDetailContent();
}

class _MealDetailContent extends State<MealDetailContent> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      padding: EdgeInsets.all(MealDetailConstants.recipeContainerPadding),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        spacing: MealDetailConstants.recipeElementsSpacing,
        children: [
          MealDetailHeader(mealDetailData: widget.mealDetailData),
          MealDetailIngredients(mealDetailData: widget.mealDetailData),
          MealDetailPreparation(mealDetailData: widget.mealDetailData),
          MealDetailVideo(mealDetailData: widget.mealDetailData),
        ],
      ),
    );
  }
}
