abstract class SearchRecipeEvent {}

class SearchRecipeByName extends SearchRecipeEvent {
  final String name;

  SearchRecipeByName(this.name);
}
