import 'package:flutter_bloc/flutter_bloc.dart';
import '../../domain/usecases/fetch_meal_detail_usecase.dart';
import 'meal_detail_event.dart';
import 'meal_detail_state.dart';

class MealDetailBloc extends Bloc<MealDetailEvent, MealDetailState> {
  final FetchMealDetailUseCase useCase;

  MealDetailBloc(this.useCase) : super(MealDetailInitial()) {
    on<FetchMealDetail>((event, emit) async {
      emit(MealDetailLoading());
      try {
        final detail = await useCase(event.id);

        emit(MealDetailLoaded(detail));
      } catch (e) {
        emit(MealDetailError(e.toString()));
      }
    });
  }
}
