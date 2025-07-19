import 'package:get_it/get_it.dart';
import 'package:recipes_app/features/favorites/data/repositories/favorite_repository_impl.dart';
import 'package:recipes_app/features/favorites/domain/repositories/favorite_repository.dart';
import 'package:recipes_app/features/favorites/domain/usecases/add_to_favorites.dart';
import 'package:recipes_app/features/favorites/domain/usecases/is_favorite.dart';
import 'package:recipes_app/features/favorites/domain/usecases/remove_from_favorites.dart';
import 'package:recipes_app/features/meal_detail/data/repositories/meal_detail_repository_impl.dart';
import 'package:recipes_app/features/meal_detail/domain/repositories/meal_detail_repository.dart';
import 'package:recipes_app/features/meal_detail/domain/usecases/fetch_meal_detail_usecase.dart';
import 'package:recipes_app/features/meal_detail/presentation/bloc/meal_detail_bloc.dart';
import 'package:recipes_app/features/search_recipe/data/repositories/search_recipe_repository_impl.dart';
import 'package:recipes_app/features/search_recipe/domain/repositories/search_recipe_repository.dart';
import 'package:recipes_app/features/search_recipe/domain/usecases/search_recipe_by_name_usecase.dart';
import 'package:recipes_app/features/search_recipe/presentation/bloc/search_recipe_bloc.dart';
import 'package:shared_preferences/shared_preferences.dart';

final getItInstance = GetIt.instance;

void init(SharedPreferences prefs) {
  // SharedPreferences
  getItInstance.registerSingleton<SharedPreferences>(prefs);
  getItInstance.registerLazySingleton<FavoriteRepository>(
      () => FavoriteRepositoryImpl(getItInstance()));

  // Repositories
  getItInstance.registerLazySingleton<MealDetailRepository>(
      () => MealDetailRepositoryImpl());
  getItInstance.registerLazySingleton<SearchRecipeRepository>(
      () => SearchRecipeRepositoryImpl());

  // UseCases
  getItInstance
      .registerLazySingleton(() => FetchMealDetailUseCase(getItInstance()));

  // BLoCs Meal
  getItInstance.registerFactory(() => MealDetailBloc(getItInstance()));

  // BLoCs Favorite UseCases
  getItInstance
      .registerLazySingleton(() => AddToFavoritesUseCase(getItInstance()));
  getItInstance
      .registerLazySingleton(() => RemoveFromFavoritesUseCase(getItInstance()));
  getItInstance.registerLazySingleton(() => IsFavoriteUseCase(getItInstance()));

  // BLoCs Search
  getItInstance.registerFactory(() => SearchRecipeBloc(getItInstance()));
  getItInstance
      .registerLazySingleton(() => SearchRecipeByNameUseCase(getItInstance()));
}
