import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:recipes_app/features/favorites/domain/entities/favorite_meal.dart';
import 'package:recipes_app/features/favorites/domain/usecases/add_to_favorites.dart';
import 'package:recipes_app/features/favorites/domain/usecases/is_favorite.dart';
import 'package:recipes_app/features/favorites/domain/usecases/remove_from_favorites.dart';

class FavoriteCubit extends Cubit<bool> {
  final IsFavoriteUseCase _isFavoriteUseCase;
  final AddToFavoritesUseCase _addToFavoritesUseCase;
  final RemoveFromFavoritesUseCase _removeFromFavoritesUseCase;

  final FavoriteMeal meal;

  FavoriteCubit({
    required this.meal,
    required IsFavoriteUseCase isFavoriteUseCase,
    required AddToFavoritesUseCase addToFavoritesUseCase,
    required RemoveFromFavoritesUseCase removeFromFavoritesUseCase,
  })  : _isFavoriteUseCase = isFavoriteUseCase,
        _addToFavoritesUseCase = addToFavoritesUseCase,
        _removeFromFavoritesUseCase = removeFromFavoritesUseCase,
        super(false) {
    _checkFavoriteStatus();
  }

  Future<void> _checkFavoriteStatus() async {
    final isFavorite = await _isFavoriteUseCase(meal.id);
    emit(isFavorite);
  }

  Future<void> toggleFavorite() async {
    final current = state;
    if (current) {
      await _removeFromFavoritesUseCase(meal.id);
    } else {
      await _addToFavoritesUseCase(meal);
    }
    emit(!current);
  }
}
