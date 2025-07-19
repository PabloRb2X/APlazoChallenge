import 'package:flutter/material.dart';
import 'package:recipes_app/core/design_system/design_system_dimension.dart';
import 'package:recipes_app/core/design_system/design_system_text_style.dart';
import 'package:recipes_app/features/main_recipes/domain/entities/meal.dart';
import 'package:recipes_app/features/main_recipes/presentation/miscelaneous/meal_constants.dart';
import 'package:recipes_app/features/main_recipes/presentation/navigation/meals_wireframe.dart';

class MealRecipe extends StatelessWidget {
  const MealRecipe({
    super.key,
    required this.meal,
    required this.wireframe,
  });

  final Meal meal;
  final MealsWireframe wireframe;

  @override
  Widget build(BuildContext context) {
    final radius = Radius.circular(MealConstants.cardRecipeImageCornerRadius);

    return Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: DesignSystemDimension.spacing_5,
        vertical: DesignSystemDimension.spacing_4,
      ),
      child: Material(
        color: Colors.white,
        borderRadius:
            BorderRadius.circular(MealConstants.cardRecipeImageCornerRadius),
        elevation: 4,
        shadowColor: Color.fromRGBO(0, 0, 0, MealConstants.cardRecipeAlpha),
        child: InkWell(
          borderRadius:
              BorderRadius.circular(MealConstants.cardRecipeImageCornerRadius),
          onTap: () => wireframe.openMealDetail(meal.id),
          child: Row(
            children: [
              ClipRRect(
                borderRadius:
                    BorderRadius.only(topLeft: radius, bottomLeft: radius),
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
      ),
    );
  }
}
