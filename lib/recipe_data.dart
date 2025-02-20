import 'recipe.dart';

List<Recipe> recipes = [
  Recipe(
    name: "Pasta Alfredo",
    imageUrl: "assets/pasta.jpg",
    ingredients: "Pasta, Cream, Garlic, Parmesan, Butter",
    instructions:
        "Boil pasta. In a pan, melt butter, add garlic, cream, and parmesan. Mix with pasta.",
    cookingTime: "30 mins",
  ),
  Recipe(
    name: "Margherita Pizza",
    imageUrl: "assets/pizza.jpg",
    ingredients: "Flour, Tomato Sauce, Cheese, Basil",
    instructions:
        "Knead dough, spread sauce, add cheese and basil, bake for 15 minutes.",
    cookingTime: "45 mins",
  ),
  Recipe(
    name: "Chocolate Brownie",
    imageUrl: "assets/brownie.jpg",
    ingredients: "Cocoa Powder, Butter, Sugar, Eggs, Flour",
    instructions: "Mix ingredients, bake at 180°C for 25 minutes.",
    cookingTime: "40 mins",
  ),
  Recipe(
    name: "Caesar Salad",
    imageUrl: "assets/salad.jpg",
    ingredients: "Lettuce, Croutons, Parmesan, Caesar Dressing",
    instructions: "Chop lettuce, add croutons and dressing, mix well.",
    cookingTime: "10 mins",
  ),
];
