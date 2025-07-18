import 'package:flutter/material.dart';
import 'package:recipes_app/core/design_system/design_system_dimension.dart';
import 'package:recipes_app/core/design_system/design_system_text_style.dart';
import 'package:recipes_app/features/meal_detail/domain/entities/meal_detail.dart';
import 'package:recipes_app/features/meal_detail/presentation/miscelaneous/meal_detail_constants.dart';

class MealDetailHeader extends StatelessWidget {
  const MealDetailHeader({super.key, required this.mealDetailData});

  final MealDetailData mealDetailData;

  @override
  Widget build(BuildContext context) {
    final radius = Radius.circular(MealDetailConstants.recipeImageCornerRadius);

    return Row(
      spacing: DesignSystemDimension.spacing_3,
      children: [
        ClipRRect(
          borderRadius: BorderRadius.all(radius),
          child: Image.network(
            mealDetailData.strMealThumb,
            fit: BoxFit.cover,
            width: MealDetailConstants.recipeImageWidth,
            height: MealDetailConstants.recipeImageHeight,
          ),
        ),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            spacing: DesignSystemDimension.spacing_3,
            children: [
              Text(
                mealDetailData.strMeal,
                style: DesignSystemTextStyle.headline1,
              ),
              _buildDataText('Category: ', mealDetailData.strCategory),
              _buildDataText('Area: ', mealDetailData.strArea),
            ],
          ),
        ),
      ],
    );
  }

  Text _buildDataText(String name, String value) => Text.rich(
        TextSpan(
          children: [
            TextSpan(
              text: name,
              style: DesignSystemTextStyle.body1,
            ),
            TextSpan(
              text: value,
              style: DesignSystemTextStyle.body2,
            ),
          ],
        ),
      );
}
