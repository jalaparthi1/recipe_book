import 'package:flutter/material.dart';
import 'recipe.dart';

class DetailsScreen extends StatelessWidget {
  final Recipe recipe;
  DetailsScreen({required this.recipe});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(recipe.name)),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image.asset(recipe.imageUrl, fit: BoxFit.cover),
            SizedBox(height: 10),
            Text("Ingredients: ${recipe.ingredients}",
                style: TextStyle(fontSize: 18)),
            SizedBox(height: 10),
            Text("Instructions: ${recipe.instructions}",
                style: TextStyle(fontSize: 18)),
          ],
        ),
      ),
    );
  }
}
