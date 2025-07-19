import 'package:flutter/material.dart';
import 'package:recipes_app/core/dependency_injection/injection_container.dart';
import 'package:recipes_app/core/design_system/design_system_dimension.dart';
import 'package:recipes_app/core/design_system/design_system_text_style.dart';
import 'package:recipes_app/features/favorites/domain/entities/favorite_meal.dart';
import 'package:recipes_app/features/favorites/domain/usecases/add_to_favorites.dart';
import 'package:recipes_app/features/favorites/domain/usecases/is_favorite.dart';
import 'package:recipes_app/features/favorites/domain/usecases/remove_from_favorites.dart';
import 'package:recipes_app/features/meal_detail/data/entities/meal_detail.dart';
import 'package:recipes_app/features/meal_detail/presentation/miscelaneous/meal_detail_constants.dart';

class MealDetailHeader extends StatefulWidget {
  const MealDetailHeader({super.key, required this.mealDetailData});

  final MealDetailData mealDetailData;

  @override
  State<MealDetailHeader> createState() => _MealDetailHeaderState();
}

class _MealDetailHeaderState extends State<MealDetailHeader> {
  late FavoriteMeal favoriteMeal;
  bool isFavorite = false;

  @override
  void initState() {
    super.initState();

    favoriteMeal = FavoriteMeal(
      id: widget.mealDetailData.idMeal,
      name: widget.mealDetailData.strMeal,
      thumbnail: widget.mealDetailData.strMealThumb,
    );

    _loadFavoriteStatus();
  }

  Future<void> _loadFavoriteStatus() async {
    final check = getItInstance<IsFavoriteUseCase>();
    final result = await check(widget.mealDetailData.idMeal);

    setState(() {
      isFavorite = result;
    });
  }

  Future<void> _toggleFavorite() async {
    if (!mounted) return;

    if (isFavorite) {
      final remove = getItInstance<RemoveFromFavoritesUseCase>();

      await remove(favoriteMeal.id);
    } else {
      final add = getItInstance<AddToFavoritesUseCase>();

      await add(favoriteMeal);
    }

    if (!mounted) return;

    setState(() {
      isFavorite = !isFavorite;
    });

    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text(
          isFavorite ? 'Added to favorites' : 'Deleted from favorites',
          style: DesignSystemTextStyle.body1,
          textAlign: TextAlign.center,
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    final radius = Radius.circular(MealDetailConstants.recipeImageCornerRadius);

    return Row(
      spacing: DesignSystemDimension.spacing_3,
      children: [
        ClipRRect(
          borderRadius: BorderRadius.all(radius),
          child: Image.network(
            widget.mealDetailData.strMealThumb,
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
                widget.mealDetailData.strMeal,
                style: DesignSystemTextStyle.headline1,
                maxLines: 2,
              ),
              _buildDataText('Category: ', widget.mealDetailData.strCategory),
              _buildDataText('Area: ', widget.mealDetailData.strArea),
              Row(
                children: [
                  IconButton(
                    icon: Icon(
                      isFavorite ? Icons.favorite : Icons.favorite_border,
                      color: isFavorite ? Colors.red : null,
                    ),
                    onPressed: _toggleFavorite,
                  ),
                  Text(
                    isFavorite ? 'Added to favorites' : 'Add to favorites',
                    style: DesignSystemTextStyle.caption2,
                  ),
                ],
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
