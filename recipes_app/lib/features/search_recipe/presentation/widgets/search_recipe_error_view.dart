import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:recipes_app/features/search_recipe/presentation/bloc/search_recipe_bloc.dart';
import 'package:recipes_app/features/search_recipe/presentation/bloc/search_recipe_event.dart';

class SearchRecipeErrorView extends StatelessWidget {
  const SearchRecipeErrorView({super.key, required this.mealName});

  final String mealName;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Text(
            'An error has happened, would you like to retry?',
            textAlign: TextAlign.center,
          ),
          const SizedBox(height: 16),
          ElevatedButton.icon(
            onPressed: () {
              context
                  .read<SearchRecipeBloc>()
                  .add(SearchRecipeByName(mealName));
            },
            icon: const Icon(Icons.refresh),
            label: const Text('Retry'),
          ),
        ],
      ),
    );
  }
}
