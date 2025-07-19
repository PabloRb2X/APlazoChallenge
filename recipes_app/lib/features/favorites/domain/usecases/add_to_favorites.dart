import 'package:recipes_app/features/favorites/domain/entities/favorite_meal.dart';
import 'package:recipes_app/features/favorites/domain/repositories/favorite_repository.dart';

class AddToFavoritesUseCase {
  final FavoriteRepository repository;

  AddToFavoritesUseCase(this.repository);

  Future<void> call(FavoriteMeal meal) => repository.addToFavorites(meal);
}
