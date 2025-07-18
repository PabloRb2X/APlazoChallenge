import 'package:flutter/material.dart';
import 'package:recipes_app/core/design_system/design_system_dimension.dart';
import 'package:recipes_app/core/design_system/design_system_text_style.dart';
import 'package:recipes_app/features/main_recipes/domain/entities/meal.dart';
import 'package:recipes_app/features/main_recipes/presentation/miscelaneous/meal_constants.dart';

class MealRecipe extends StatelessWidget {
  const MealRecipe({super.key, required this.meal});

  final Meal meal;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: DesignSystemDimension.spacing_5,
        vertical: DesignSystemDimension.spacing_4,
      ),
      child: Container(
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(
            MealConstants.cardRecipeImageCornerRadius,
          ),
          boxShadow: [
            BoxShadow(
              color: Color.fromRGBO(0, 0, 0, MealConstants.cardRecipeAlpha),
              blurRadius: MealConstants.cardRecipeBlurRadius,
              offset: Offset(
                MealConstants.cardRecipeOffsetX,
                MealConstants.cardRecipeOffsetY,
              ),
            ),
          ],
        ),
        child: Row(
          children: [
            ClipRRect(
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(
                  MealConstants.cardRecipeImageCornerRadius,
                ),
                bottomLeft: Radius.circular(
                  MealConstants.cardRecipeImageCornerRadius,
                ),
              ),
              child: Image.network(
                meal.thumbnail,
                fit: BoxFit.cover,
                width: MealConstants.cardRecipeImageWidth,
                height: MealConstants.cardRecipeImageHeight,
              ),
            ),
            Expanded(
              child: Padding(
                padding: EdgeInsets.symmetric(
                  horizontal: MealConstants.cardRecipeTextHorizontal,
                ),
                child: Text(
                  meal.name,
                  style: DesignSystemTextStyle.body2,
                  maxLines: MealConstants.cardRecipeTextMaxLines,
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
