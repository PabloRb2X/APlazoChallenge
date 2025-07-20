import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:recipes_app/features/search_recipe/domain/usecases/search_recipe_by_name_usecase.dart';
import 'package:recipes_app/features/search_recipe/presentation/bloc/search_recipe_event.dart';
import 'package:recipes_app/features/search_recipe/presentation/bloc/search_recipe_state.dart';

class SearchRecipeBloc extends Bloc<SearchRecipeEvent, SearchRecipeState> {
  final SearchRecipeByNameUseCase useCase;

  SearchRecipeBloc(this.useCase) : super(SearchRecipeInitial()) {
    on<SearchRecipeByName>((event, emit) async {
      emit(SearchRecipeLoading());
      try {
        final detail = await useCase(event.name);

        if (detail.isNotEmpty) {
          emit(SearchRecipeLoaded(detail));
        } else {
          emit(SearchRecipeLoadedEmpty());
        }
      } catch (e) {
        emit(SearchRecipeError(e.toString()));
      }
    });
  }
}
