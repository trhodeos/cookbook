import 'package:cookbook/data/recipe.dart';
import 'package:cookbook/services/recipe_service.dart';
import 'package:cookbook/services/service_provider.dart';
import 'package:flutter/material.dart';


class AddNewRecipePage extends StatefulWidget {
  AddNewRecipePage({Key key, this.name}) : super(key: key);

  final String name;

  @override
  _AddNewRecipePageState createState() => new _AddNewRecipePageState();
}

class _AddNewRecipePageState extends State<AddNewRecipePage> {

  RecipeService recipeService;

  @override
  void initState() {
    super.initState();
    recipeService = new ServiceProvider().getRecipeService();
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text("Add new recipe"),
      ),
      body: new Column(),
    );
  }
}


class _RecipeIngredientItem extends StatelessWidget {
  final RecipeIngredient ingredient;

  _RecipeIngredientItem(this.ingredient);

  @override
  Widget build(BuildContext context) {
    return new ListTile(
      leading: new Text(ingredient.amount.toString()),
      title: new Text(ingredient.ingredient.name),
    );
  }
}
