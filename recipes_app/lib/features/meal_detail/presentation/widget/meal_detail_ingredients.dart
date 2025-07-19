import 'package:flutter/material.dart';
import 'package:recipes_app/core/design_system/design_system_dimension.dart';
import 'package:recipes_app/core/design_system/design_system_text_style.dart';
import 'package:recipes_app/features/meal_detail/data/entities/meal_detail.dart';
import 'package:recipes_app/features/meal_detail/presentation/miscelaneous/meal_detail_constants.dart';

class MealDetailIngredients extends StatefulWidget {
  const MealDetailIngredients({super.key, required this.mealDetailData});

  final MealDetailData mealDetailData;

  @override
  State<MealDetailIngredients> createState() => _MealDetailIngredientsState();
}

class _MealDetailIngredientsState extends State<MealDetailIngredients> {
  bool _showAllIngredients = false;

  @override
  Widget build(BuildContext context) {
    final baseIngredients = _buildListIngredients();

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Ingredients: ',
          style: DesignSystemTextStyle.body1,
        ),
        ...baseIngredients.$2.map((ingredient) {
          return Padding(
            padding: const EdgeInsets.symmetric(
              vertical: DesignSystemDimension.spacing_1,
            ),
            child: Text(
              '• $ingredient',
              style: DesignSystemTextStyle.caption2,
            ),
          );
        }),
        if (baseIngredients.$1.length >
            MealDetailConstants.numVisibleIngredients)
          GestureDetector(
            onTap: () {
              setState(() {
                _showAllIngredients = !_showAllIngredients;
              });
            },
            child: Padding(
              padding: const EdgeInsets.only(
                top: DesignSystemDimension.spacing_3,
              ),
              child: Text(
                _showAllIngredients ? 'Show less' : 'Show more',
                style: DesignSystemTextStyle.body2.copyWith(
                  color: Colors.blue,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
      ],
    );
  }

  (List<String>, List<String>) _buildListIngredients() {
    final Map<String, dynamic> ingredientsMap = {
      "strIngredient1": widget.mealDetailData.strIngredient1,
      "strIngredient2": widget.mealDetailData.strIngredient2,
      "strIngredient3": widget.mealDetailData.strIngredient3,
      "strIngredient4": widget.mealDetailData.strIngredient4,
      "strIngredient5": widget.mealDetailData.strIngredient5,
      "strIngredient6": widget.mealDetailData.strIngredient6,
      "strIngredient7": widget.mealDetailData.strIngredient7,
      "strIngredient8": widget.mealDetailData.strIngredient8,
      "strIngredient9": widget.mealDetailData.strIngredient9,
      "strIngredient10": widget.mealDetailData.strIngredient10,
      "strIngredient11": widget.mealDetailData.strIngredient11,
      "strIngredient12": widget.mealDetailData.strIngredient12,
      "strIngredient13": widget.mealDetailData.strIngredient13,
      "strIngredient14": widget.mealDetailData.strIngredient14,
      "strIngredient15": widget.mealDetailData.strIngredient15,
      "strIngredient16": widget.mealDetailData.strIngredient16,
      "strIngredient17": widget.mealDetailData.strIngredient17,
      "strIngredient18": widget.mealDetailData.strIngredient18,
      "strIngredient19": widget.mealDetailData.strIngredient19,
      "strIngredient20": widget.mealDetailData.strIngredient20,
    };

    final List<String> allIngredients = ingredientsMap.values
        .whereType<String>()
        .where((value) => value.trim().isNotEmpty)
        .toList();

    final List<String> visibleIngredients = _showAllIngredients
        ? allIngredients
        : allIngredients
            .take(MealDetailConstants.numVisibleIngredients)
            .toList();

    return (allIngredients, visibleIngredients);
  }
}
