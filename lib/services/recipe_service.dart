import 'dart:async';

import 'package:cookbook/data/mock_recipes.dart';
import 'package:cookbook/data/recipe.dart';


abstract class RecipeService {
  Future<Recipe> getByName(String name);
}

class MockRecipeService extends RecipeService {
  @override
  Future<Recipe> getByName(String name) async {
    for (var recipe in allRecipes) {
      if (recipe.name == name) {
        return new Future.value(recipe);
      }
    }
    return new Future.error("Not found!");
  }
}