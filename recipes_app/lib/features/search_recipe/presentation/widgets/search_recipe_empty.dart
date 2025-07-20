import 'dart:math' as math;

import 'package:flutter/material.dart';
import 'package:recipes_app/core/design_system/design_system_dimension.dart';
import 'package:recipes_app/core/design_system/design_system_text_style.dart';
import 'package:recipes_app/features/search_recipe/presentation/miscelaneous/search_recipe_constants.dart';

class SearchRecipeEmptyView extends StatelessWidget {
  const SearchRecipeEmptyView({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: DesignSystemDimension.spacing_15),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Stack(
            alignment: Alignment.center,
            children: [
              Icon(
                Icons.search,
                size: SearchRecipeConstants.searchEmptyIconSize,
                color: Colors.white,
              ),
              Transform.rotate(
                angle: -math.pi / 4,
                child: Icon(
                  Icons.remove,
                  size: SearchRecipeConstants.removeEmptyIconSize,
                  color: Colors.white,
                ),
              ),
            ],
          ),
          Text(
            'This recipe is not available!',
            style: DesignSystemTextStyle.headline2.copyWith(
              color: Colors.white,
            ),
            textAlign: TextAlign.center,
          ),
        ],
      ),
    );
  }
}
