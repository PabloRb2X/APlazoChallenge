import 'package:recipes_app/features/favorites/domain/entities/favorite_meal.dart';

abstract class FavoriteRepository {
  Future<void> addToFavorites(FavoriteMeal meal);
  Future<void> removeFromFavorites(String id);
  Future<List<FavoriteMeal>> getFavorites();
  Future<bool> isFavorite(String id);
}
