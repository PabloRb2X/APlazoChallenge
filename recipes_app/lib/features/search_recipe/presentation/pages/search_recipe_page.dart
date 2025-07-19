import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:recipes_app/core/design_system/design_system_text_style.dart';
import 'package:recipes_app/core/design_system/full_screen_loader.dart';
import 'package:recipes_app/features/main_recipes/domain/entities/meal.dart';
import 'package:recipes_app/features/main_recipes/presentation/navigation/meals_wireframe.dart';
import 'package:recipes_app/features/main_recipes/presentation/widgets/meal_recipe.dart';
import 'package:recipes_app/features/search_recipe/presentation/bloc/search_recipe_bloc.dart';
import 'package:recipes_app/features/search_recipe/presentation/bloc/search_recipe_event.dart';
import 'package:recipes_app/features/search_recipe/presentation/bloc/search_recipe_state.dart';
import 'package:recipes_app/features/search_recipe/presentation/widgets/search_recipe_error_view.dart';
import 'dart:async';

class SearchRecipePage extends StatefulWidget {
  const SearchRecipePage({super.key});

  @override
  State<SearchRecipePage> createState() => _SearchRecipePageState();
}

class _SearchRecipePageState extends State<SearchRecipePage> {
  late final SearchRecipeBloc bloc;
  late final TextEditingController controller;
  Timer? _debounce;

  @override
  void initState() {
    super.initState();

    bloc = context.read<SearchRecipeBloc>();
    controller = TextEditingController();
  }

  @override
  void dispose() {
    _debounce?.cancel();
    controller.dispose();

    super.dispose();
  }

  void _onSearchChanged(String value) {
    if (_debounce?.isActive ?? false) {
      _debounce?.cancel();
    }

    _debounce = Timer(const Duration(milliseconds: 500), () {
      if (mounted) {
        bloc.add(SearchRecipeByName(value));
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    final wireframe = MealsWireframeImpl();

    return Scaffold(
      appBar: AppBar(title: const Text('Search Recipes')),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(12),
            child: TextField(
              controller: controller,
              decoration: const InputDecoration(
                hintText: 'Enter recipe name',
                hintStyle: DesignSystemTextStyle.body2,
                suffixIcon: Icon(Icons.search),
              ),
              style: DesignSystemTextStyle.body1,
              onChanged: _onSearchChanged,
            ),
          ),
          Expanded(
            child: BlocBuilder<SearchRecipeBloc, SearchRecipeState>(
              builder: (context, state) {
                if (state is SearchRecipeLoading) {
                  return const Center(child: FullScreenLoader());
                } else if (state is SearchRecipeLoaded) {
                  return ListView.builder(
                    itemCount: state.mealsDetail.length,
                    itemBuilder: (context, index) {
                      final recipe = state.mealsDetail[index];
                      final meal = Meal(
                        id: recipe.idMeal,
                        name: recipe.strMeal,
                        thumbnail: recipe.strMealThumb,
                      );

                      return MealRecipe(
                        meal: meal,
                        wireframe: wireframe,
                      );
                    },
                  );
                } else if (state is SearchRecipeError) {
                  return SearchRecipeErrorView(
                    mealName: controller.text,
                  );
                }

                return const SizedBox.shrink();
              },
            ),
          ),
        ],
      ),
    );
  }
}
