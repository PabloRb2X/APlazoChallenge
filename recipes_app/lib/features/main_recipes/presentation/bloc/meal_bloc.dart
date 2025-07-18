import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:recipes_app/features/main_recipes/domain/entities/meal.dart';
import 'package:recipes_app/features/main_recipes/domain/usecases/fetch_all_meals.dart';
import 'package:recipes_app/features/main_recipes/presentation/bloc/meal_event.dart';
import 'package:recipes_app/features/main_recipes/presentation/bloc/meal_state.dart';

class MealBloc extends Bloc<MealEvent, MealState> {
  final FetchAllMealsUseCase usecase;

  List<Meal> _allMeals = [];
  int _currentPage = 0;
  final int _itemsPerPage = 20;

  MealBloc(this.usecase) : super(MealInitial()) {
    on<FetchMeals>((event, emit) async {
      emit(MealLoading());
      try {
        _allMeals = await usecase();
        _currentPage = 1;

        final mealsToShow = _allMeals.take(_itemsPerPage).toList();
        final hasReachedEnd = mealsToShow.length >= _allMeals.length;

        emit(MealLoaded(mealsToShow, hasReachedEnd: hasReachedEnd));
      } catch (e) {
        emit(MealError(e.toString()));
      }
    });

    on<FetchMoreMeals>((event, emit) {
      if (state is MealLoaded) {
        final total = _allMeals.length;

        final nextPage = _currentPage + 1;
        final nextMeals = _allMeals.take(nextPage * _itemsPerPage).toList();

        final hasReachedEnd = nextMeals.length >= total;

        _currentPage = nextPage;
        emit(MealLoaded(nextMeals, hasReachedEnd: hasReachedEnd));
      }
    });
  }
}
