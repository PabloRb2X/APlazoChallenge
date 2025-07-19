import 'package:fluro/fluro.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:recipes_app/core/dependency_injection/injection_container.dart';
import 'package:recipes_app/features/meal_detail/presentation/bloc/meal_detail_bloc.dart';
import 'package:recipes_app/features/meal_detail/presentation/bloc/meal_detail_event.dart';
import 'package:recipes_app/features/meal_detail/presentation/pages/meal_detail_page.dart';
import 'package:recipes_app/features/search_recipe/presentation/bloc/search_recipe_bloc.dart';
import 'package:recipes_app/features/search_recipe/presentation/pages/search_recipe_page.dart';

class AppRouter {
  static final FluroRouter router = FluroRouter();

  static void setupRouter() {
    router.define(
      '/meal/:id',
      handler: Handler(
        handlerFunc: (BuildContext? context, Map<String, List<String>> params) {
          final id = params['id']?.first;
          return BlocProvider(
            create: (_) =>
                getItInstance<MealDetailBloc>()..add(FetchMealDetail(id ?? '')),
            child: MealDetailPage(
              mealId: id ?? '',
            ),
          );
        },
      ),
      transitionType: TransitionType.custom,
      transitionBuilder: (context, animation, secondaryAnimation, child) {
        return ScaleTransition(
          scale: animation,
          child: child,
        );
      },
      transitionDuration: const Duration(milliseconds: 300),
    );

    router.define(
      '/searchMeal/',
      handler: Handler(
        handlerFunc: (BuildContext? context, Map<String, List<String>> params) {
          return BlocProvider(
            create: (_) => getItInstance<SearchRecipeBloc>(),
            child: SearchRecipePage(),
          );
        },
      ),
      transitionType: TransitionType.native,
    );
  }
}
