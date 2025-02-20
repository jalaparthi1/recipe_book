class Recipe {
  final String name;
  final String imageUrl;
  final String ingredients;
  final String instructions;
  final String cookingTime;
  bool isFavorite;

  Recipe({
    required this.name,
    required this.imageUrl,
    required this.ingredients,
    required this.instructions,
    required this.cookingTime,
    this.isFavorite = false,
  });
}
