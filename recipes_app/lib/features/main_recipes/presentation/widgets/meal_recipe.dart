import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:recipes_app/core/dependency_injection/injection_container.dart';
import 'package:recipes_app/core/design_system/design_system_dimension.dart';
import 'package:recipes_app/core/design_system/design_system_text_style.dart';
import 'package:recipes_app/features/main_recipes/domain/entities/meal.dart';
import 'package:recipes_app/features/main_recipes/presentation/miscelaneous/meal_constants.dart';
import 'package:recipes_app/features/meal_detail/presentation/bloc/meal_detail_bloc.dart';
import 'package:recipes_app/features/meal_detail/presentation/bloc/meal_detail_event.dart';
import 'package:recipes_app/features/meal_detail/presentation/pages/meal_detail_page.dart';

class MealRecipe extends StatelessWidget {
  const MealRecipe({super.key, required this.meal});

  final Meal meal;

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
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (_) => BlocProvider(
                  create: (_) => getItInstance<MealDetailBloc>()
                    ..add(FetchMealDetail(meal.id)),
                  child: MealDetailPage(mealId: meal.id),
                ),
              ),
            );
          },
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
