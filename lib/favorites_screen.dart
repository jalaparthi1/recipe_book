import 'package:flutter/material.dart';
import 'recipe.dart';

class FavoritesScreen extends StatelessWidget {
  final List<Recipe> recipes;
  FavoritesScreen({required this.recipes});

  @override
  Widget build(BuildContext context) {
    List<Recipe> favoriteRecipes =
        recipes.where((recipe) => recipe.isFavorite).toList();

    return Scaffold(
      appBar: AppBar(title: Text('Favorite Recipes')),
      body: favoriteRecipes.isEmpty
          ? Center(child: Text('No favorite recipes yet.'))
          : ListView.builder(
              itemCount: favoriteRecipes.length,
              itemBuilder: (context, index) {
                return ListTile(
                  leading: Image.network(favoriteRecipes[index].imageUrl,
                      width: 50, height: 50, fit: BoxFit.cover),
                  title: Text(favoriteRecipes[index].name),
                );
              },
            ),
    );
  }
}
