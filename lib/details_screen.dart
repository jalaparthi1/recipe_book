import 'package:flutter/material.dart';
import 'recipe.dart';

class DetailsScreen extends StatefulWidget {
  final Recipe recipe;
  DetailsScreen({required this.recipe});

  @override
  _DetailsScreenState createState() => _DetailsScreenState();
}

class _DetailsScreenState extends State<DetailsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(widget.recipe.name)),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image.asset(widget.recipe.imageUrl,
                width: double.infinity, height: 250, fit: BoxFit.cover),
            Padding(
              padding: EdgeInsets.all(16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(widget.recipe.name,
                      style:
                          TextStyle(fontSize: 22, fontWeight: FontWeight.bold)),
                  SizedBox(height: 5),
                  Text("Cooking Time: ${widget.recipe.cookingTime}",
                      style: TextStyle(fontSize: 16, color: Colors.grey)),
                  Divider(),
                  Text("Ingredients",
                      style:
                          TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
                  Text(widget.recipe.ingredients,
                      style: TextStyle(fontSize: 16)),
                  SizedBox(height: 10),
                  Text("Instructions",
                      style:
                          TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
                  Text(widget.recipe.instructions,
                      style: TextStyle(fontSize: 16)),
                  SizedBox(height: 20),
                  ElevatedButton(
                    onPressed: () {
                      setState(() {
                        widget.recipe.isFavorite = !widget.recipe.isFavorite;
                      });
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor:
                          widget.recipe.isFavorite ? Colors.red : Colors.blue,
                    ),
                    child: Text(widget.recipe.isFavorite
                        ? 'Remove from Favorites'
                        : 'Add to Favorites'),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
