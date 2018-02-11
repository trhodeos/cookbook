import 'package:cookbook/data/ingredient.dart';

class RecipeIngredient {
  final Amount amount;
  final Ingredient ingredient;

  const RecipeIngredient(this.amount, this.ingredient);
}

class Recipe {
  final Uri uri;
  final List<RecipeIngredient> ingredients;

  const Recipe(this.uri, this.ingredients);
}