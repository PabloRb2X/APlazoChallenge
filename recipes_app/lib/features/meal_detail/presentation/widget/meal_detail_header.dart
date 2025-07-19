import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:recipes_app/core/dependency_injection/injection_container.dart';
import 'package:recipes_app/core/design_system/design_system_dimension.dart';
import 'package:recipes_app/core/design_system/design_system_text_style.dart';
import 'package:recipes_app/features/favorites/domain/entities/favorite_meal.dart';
import 'package:recipes_app/features/meal_detail/data/entities/meal_detail.dart';
import 'package:recipes_app/features/meal_detail/presentation/bloc/favorite_cubit.dart';
import 'package:recipes_app/features/meal_detail/presentation/miscelaneous/meal_detail_constants.dart';

class MealDetailHeader extends StatelessWidget {
  const MealDetailHeader({super.key, required this.mealDetailData});

  final MealDetailData mealDetailData;

  @override
  Widget build(BuildContext context) {
    final meal = FavoriteMeal(
      id: mealDetailData.idMeal,
      name: mealDetailData.strMeal,
      thumbnail: mealDetailData.strMealThumb,
    );

    return BlocProvider(
      create: (_) => FavoriteCubit(
        meal: meal,
        isFavoriteUseCase: getItInstance(),
        addToFavoritesUseCase: getItInstance(),
        removeFromFavoritesUseCase: getItInstance(),
      ),
      child: _MealHeaderBody(mealDetailData: mealDetailData),
    );
  }
}

class _MealHeaderBody extends StatelessWidget {
  const _MealHeaderBody({required this.mealDetailData});

  final MealDetailData mealDetailData;

  @override
  Widget build(BuildContext context) {
    return Row(
      spacing: DesignSystemDimension.spacing_3,
      children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(
            MealDetailConstants.recipeImageCornerRadius,
          ),
          child: Image.network(
            mealDetailData.strMealThumb,
            width: MealDetailConstants.recipeImageWidth,
            height: MealDetailConstants.recipeImageHeight,
            fit: BoxFit.cover,
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
              BlocBuilder<FavoriteCubit, bool>(
                builder: (context, isFavorite) {
                  return Row(
                    children: [
                      IconButton(
                        icon: Icon(
                          isFavorite ? Icons.favorite : Icons.favorite_border,
                          color: isFavorite ? Colors.red : null,
                        ),
                        onPressed: () {
                          context.read<FavoriteCubit>().toggleFavorite();

                          if (context.mounted) {
                            final message = isFavorite
                                ? 'Recipe added to favorites'
                                : 'Recipe deleted from favorites';

                            ScaffoldMessenger.of(context).showSnackBar(
                              SnackBar(
                                content: Text(
                                  message,
                                  style: DesignSystemTextStyle.body1,
                                  textAlign: TextAlign.center,
                                ),
                              ),
                            );
                          }
                        },
                      ),
                      Expanded(
                        child: Text(
                          isFavorite
                              ? 'Added to favorites'
                              : 'Add to favorites',
                          style: DesignSystemTextStyle.caption2,
                        ),
                      ),
                    ],
                  );
                },
              ),
            ],
          ),
        ),
      ],
    );
  }

  Text _buildDataText(String name, String value) => Text.rich(
        TextSpan(
          children: [
            TextSpan(text: name, style: DesignSystemTextStyle.body1),
            TextSpan(text: value, style: DesignSystemTextStyle.body2),
          ],
        ),
      );
}
