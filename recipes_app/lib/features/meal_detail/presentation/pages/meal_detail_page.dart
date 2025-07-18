import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:recipes_app/core/dependency_injection/injection_container.dart';
import 'package:recipes_app/core/design_system/design_system_text_style.dart';
import 'package:recipes_app/features/meal_detail/presentation/widget/meal_detail_content.dart';
import '../bloc/meal_detail_bloc.dart';
import '../bloc/meal_detail_event.dart';
import '../bloc/meal_detail_state.dart';

class MealDetailPage extends StatelessWidget {
  final String mealId;

  const MealDetailPage({super.key, required this.mealId});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) =>
          getItInstance<MealDetailBloc>()..add(FetchMealDetail(mealId)),
      child: Scaffold(
        appBar: AppBar(
            title: const Text(
          'Recipe details',
          style: DesignSystemTextStyle.headline2,
        )),
        body: BlocBuilder<MealDetailBloc, MealDetailState>(
          builder: (context, state) {
            if (state is MealDetailLoading) {
              return const Center(child: CircularProgressIndicator());
            } else if (state is MealDetailLoaded) {
              final mealDetailData = state.mealDetail;

              return MealDetailContent(mealDetailData: mealDetailData);
            } else if (state is MealDetailError) {
              return Center(child: Text(state.message));
            }

            return const SizedBox.shrink();
          },
        ),
      ),
    );
  }
}
