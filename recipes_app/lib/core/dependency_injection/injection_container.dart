import 'package:get_it/get_it.dart';
import 'package:recipes_app/features/meal_detail/data/meal_detail_repository_impl.dart';
import 'package:recipes_app/features/meal_detail/domain/repositories/meal_detail_repository.dart';
import 'package:recipes_app/features/meal_detail/domain/usecases/fetch_meal_detail_usecase.dart';
import 'package:recipes_app/features/meal_detail/presentation/bloc/meal_detail_bloc.dart';

final getItInstance = GetIt.instance;

void init() {
  // Repositories
  getItInstance.registerLazySingleton<MealDetailRepository>(
      () => MealDetailRepositoryImpl());

  // UseCases
  getItInstance
      .registerLazySingleton(() => FetchMealDetailUseCase(getItInstance()));

  // BLoCs
  getItInstance.registerFactory(() => MealDetailBloc(getItInstance()));
}
