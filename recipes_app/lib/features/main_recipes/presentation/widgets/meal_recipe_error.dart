import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:recipes_app/features/main_recipes/presentation/bloc/meal_bloc.dart';
import 'package:recipes_app/features/main_recipes/presentation/bloc/meal_event.dart';
import 'package:recipes_app/features/main_recipes/presentation/bloc/meal_state.dart';

class MealRecipeError extends StatelessWidget {
  const MealRecipeError({super.key, required this.state});

  final MealError state;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Text(
            'Ocurrió un error, ¿volver a intentar?',
            textAlign: TextAlign.center,
          ),
          const SizedBox(height: 16),
          ElevatedButton.icon(
            onPressed: () {
              context.read<MealBloc>().add(FetchMeals());
            },
            icon: const Icon(Icons.refresh),
            label: const Text('Reintentar'),
          ),
        ],
      ),
    );
  }
}
