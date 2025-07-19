import 'package:recipes_app/features/favorites/domain/repositories/favorite_repository.dart';

class IsFavoriteUseCase {
  final FavoriteRepository repository;

  IsFavoriteUseCase(this.repository);

  Future<bool> call(String id) => repository.isFavorite(id);
}
