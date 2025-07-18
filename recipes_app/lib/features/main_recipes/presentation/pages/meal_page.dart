// presentation/pages/meal_page.dart
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:recipes_app/core/design_system/design_system_dimension.dart';
import 'package:recipes_app/core/design_system/full_screen_loader.dart';
import 'package:recipes_app/features/main_recipes/presentation/navigation/meals_wireframe.dart';
import 'package:recipes_app/features/main_recipes/presentation/widgets/meal_recipe.dart';
import 'package:recipes_app/features/main_recipes/presentation/widgets/meal_recipe_error.dart';
import '../bloc/meal_bloc.dart';
import '../bloc/meal_event.dart';
import '../bloc/meal_state.dart';

class MealPage extends StatefulWidget {
  const MealPage({super.key});

  @override
  State<MealPage> createState() => _MealPageState();
}

// presentation/pages/meal_page.dart
class _MealPageState extends State<MealPage> {
  final ScrollController _scrollController = ScrollController();

  bool get _isBottom {
    if (!_scrollController.hasClients) return false;

    final maxScroll = _scrollController.position.maxScrollExtent;
    final currentScroll = _scrollController.offset;
    return currentScroll >= (maxScroll * 0.9);
  }

  void _onScroll() {
    if (_isBottom) {
      context.read<MealBloc>().add(FetchMoreMeals());
    }
  }

  @override
  void initState() {
    super.initState();

    context.read<MealBloc>().add(FetchMeals());
    _scrollController.addListener(_onScroll);
  }

  @override
  void dispose() {
    _scrollController.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('All meals for us')),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.only(top: DesignSystemDimension.spacing_3),
          child: BlocBuilder<MealBloc, MealState>(
            builder: (context, state) {
              if (state is MealLoading) {
                return const Center(child: FullScreenLoader());
              }

              if (state is MealLoaded) {
                return ListView.builder(
                  controller: _scrollController,
                  itemCount: state.meals.length + (state.hasReachedEnd ? 0 : 1),
                  itemBuilder: (context, index) {
                    if (index >= state.meals.length) {
                      return const Center(child: FullScreenLoader());
                    }

                    final meal = state.meals[index];

                    return MealRecipe(
                      meal: meal,
                      wireframe: MealsWireframeImpl(),
                    );
                  },
                );
              }

              if (state is MealError) {
                return MealRecipeError(state: state);
              }

              return const SizedBox.shrink();
            },
          ),
        ),
      ),
    );
  }
}
