import 'package:shared_preferences/shared_preferences.dart';
import 'dart:convert';

import '../../domain/entities/favorite_meal.dart';
import '../../domain/repositories/favorite_repository.dart';

class FavoriteRepositoryImpl implements FavoriteRepository {
  final SharedPreferences prefs;
  static const _key = 'favorite_meals';

  FavoriteRepositoryImpl(this.prefs);

  @override
  Future<void> addToFavorites(FavoriteMeal meal) async {
    final list = await getFavorites();
    final updated = [...list, meal];

    await _save(updated);
  }

  @override
  Future<void> removeFromFavorites(String id) async {
    final list = await getFavorites();
    final updated = list.where((meal) => meal.id != id).toList();

    await _save(updated);
  }

  @override
  Future<List<FavoriteMeal>> getFavorites() async {
    final jsonString = prefs.getString(_key);
    if (jsonString == null) return [];

    final decoded = jsonDecode(jsonString) as List;

    return decoded
        .map((meal) => FavoriteMeal(
              id: meal['id'],
              name: meal['name'],
              thumbnail: meal['thumbnail'],
            ))
        .toList();
  }

  @override
  Future<bool> isFavorite(String id) async {
    final list = await getFavorites();

    return list.any((meal) => meal.id == id);
  }

  Future<void> _save(List<FavoriteMeal> meals) async {
    final encoded = jsonEncode(meals
        .map(
          (meal) => {
            'id': meal.id,
            'name': meal.name,
            'thumbnail': meal.thumbnail,
          },
        )
        .toList());

    await prefs.setString(_key, encoded);
  }
}
