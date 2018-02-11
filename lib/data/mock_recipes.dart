import 'package:cookbook/data/ingredient.dart';
import 'package:cookbook/data/recipe.dart';

List<Recipe> allRecipes = <Recipe>[
  new Recipe(Uri.parse("https://cooking.nytimes.com/recipes/11248-pumpkin-and-chickpea-hot-pot"), <RecipeIngredient>[
    new RecipeIngredient(new Amount.measurement(3, MeasurementUnit.tablespoon), new Ingredient("Vegetable oil")),
    new RecipeIngredient(new Amount.count(.5), new Ingredient("Onion")),
    new RecipeIngredient(new Amount.measurement(.25, MeasurementUnit.teaspoon), new Ingredient("Salt")),
    new RecipeIngredient(new Amount.measurement(2, MeasurementUnit.teaspoon), new Ingredient("Thai red curry paste")),
    new RecipeIngredient(new Amount.measurement(1, MeasurementUnit.teaspoon), new Ingredient("Cumin")),
    new RecipeIngredient(new Amount.measurement(1, MeasurementUnit.teaspoon), new Ingredient("Coriander")),
    new RecipeIngredient(new Amount.count(2), new Ingredient("Butternut squash")),
    new RecipeIngredient(new Amount.count(2), new Ingredient("Coconut milk can")),
    new RecipeIngredient(new Amount.measurement(1, MeasurementUnit.cup), new Ingredient("Chicken broth")),
    new RecipeIngredient(new Amount.measurement(3, MeasurementUnit.tablespoon), new Ingredient("Soy sauce")),
    new RecipeIngredient(new Amount.count(4), new Ingredient("Chickpea can")),
    new RecipeIngredient(new Amount.count(.25), new Ingredient("Cilantro")),
  ]),
  new Recipe(Uri.parse("http://www.seriouseats.com/recipes/2016/10/broccoli-cheddar-cheese-soup-food-lab-recipe.html"), <RecipeIngredient>[
    new RecipeIngredient(new Amount.count(1), new Ingredient("Broccoli")),
    new RecipeIngredient(new Amount.measurement(2, MeasurementUnit.tablespoon), new Ingredient("Vegetable oil")),
    new RecipeIngredient(new Amount.measurement(3, MeasurementUnit.tablespoon), new Ingredient("Butter")),
    new RecipeIngredient(new Amount.count(.5), new Ingredient("Onion")),
    new RecipeIngredient(new Amount.count(1), new Ingredient("Carrot")),
    new RecipeIngredient(new Amount.count(.3), new Ingredient("Head of garlic")),
    new RecipeIngredient(new Amount.measurement(2, MeasurementUnit.cup), new Ingredient("Chicken broth")),
    new RecipeIngredient(new Amount.measurement(3, MeasurementUnit.cup), new Ingredient("Milk")),
    new RecipeIngredient(new Amount.count(1), new Ingredient("Russet potato")),
    new RecipeIngredient(new Amount.measurement(12, MeasurementUnit.ounce), new Ingredient("Cheddar cheese")),
    new RecipeIngredient(new Amount.measurement(8, MeasurementUnit.ounce), new Ingredient("American cheese")),
    new RecipeIngredient(new Amount.measurement(1, MeasurementUnit.teaspoon), new Ingredient("Mustard powder")),
  ]),
];