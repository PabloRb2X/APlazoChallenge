import 'package:flutter/material.dart';
import 'package:recipes_app/core/design_system/design_system_dimension.dart';
import 'package:recipes_app/core/design_system/design_system_text_style.dart';
import 'package:recipes_app/features/meal_detail/data/entities/meal_detail.dart';
import 'package:recipes_app/features/meal_detail/presentation/miscelaneous/meal_detail_constants.dart';

class MealDetailPreparation extends StatefulWidget {
  const MealDetailPreparation({super.key, required this.mealDetailData});

  final MealDetailData mealDetailData;

  @override
  State<MealDetailPreparation> createState() => _MealDetailPreparationState();
}

class _MealDetailPreparationState extends State<MealDetailPreparation> {
  bool _showFullInstructions = false;

  @override
  Widget build(BuildContext context) {
    final maxLinesCollapsed = MealDetailConstants.maxLinesCollapsed;

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Preparation: ',
          style: DesignSystemTextStyle.headline1.copyWith(
            color: Colors.white,
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(
            bottom: DesignSystemDimension.spacing_3,
          ),
          child: Text(
            widget.mealDetailData.strInstructions,
            maxLines: _showFullInstructions ? null : maxLinesCollapsed,
            overflow: _showFullInstructions
                ? TextOverflow.visible
                : TextOverflow.ellipsis,
            style: DesignSystemTextStyle.body2.copyWith(
              color: Colors.white,
            ),
          ),
        ),
        GestureDetector(
          onTap: () {
            setState(() {
              _showFullInstructions = !_showFullInstructions;
            });
          },
          child: Text(
            _showFullInstructions ? 'Show less' : 'Show more',
            style: DesignSystemTextStyle.body1.copyWith(
              color: Colors.white,
              decoration: TextDecoration.underline,
              decorationColor: Colors.white,
              decorationStyle: TextDecorationStyle.solid,
            ),
          ),
        ),
      ],
    );
  }
}
