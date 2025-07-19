import 'package:recipes_app/features/favorites/domain/repositories/favorite_repository.dart';

class RemoveFromFavoritesUseCase {
  final FavoriteRepository repository;

  RemoveFromFavoritesUseCase(this.repository);

  Future<void> call(String id) => repository.removeFromFavorites(id);
}
