import 'package:cookbook/data/recipe.dart';
import 'package:cookbook/services/recipe_service.dart';
import 'package:cookbook/services/service_provider.dart';
import 'package:flutter/material.dart';


class RecipePage extends StatefulWidget {
  RecipePage({Key key, this.name}) : super(key: key);

  final String name;

  @override
  _RecipePageState createState() => new _RecipePageState();
}

class _RecipePageState extends State<RecipePage> {

  RecipeService recipeService;
  Recipe recipe;

  @override
  void initState() {
    super.initState();
    recipeService = new ServiceProvider().getRecipeService();
    _getRecipe(widget.name);
  }

  @override
  Widget build(BuildContext context) {
    Widget recipeBody = new Center();
    EdgeInsets amount = new EdgeInsets.only(bottom: 16.0);
    if (recipe != null) {
      var children = <Widget>[
        new Container(child: new Text(recipe.name), padding: amount),
        new Container(child: new Text(recipe.uri.toString()), padding: amount),
        new Container(child: new Divider(), padding: amount),
        new Container(child: new Text("Ingredients:"), padding: amount),
      ];
      children.addAll(recipe.ingredients.map((i) => new _RecipeIngredientItem(i)));
      recipeBody = new ListView(padding: new EdgeInsets.all(32.0), children: children);
    }
    return new Scaffold(
      appBar: new AppBar(
        title: new Text(widget.name),
      ),
      body: recipeBody,
    );
  }

  void _getRecipe(String name) {
    recipeService.getByName(name).then((recipe) {
      setState(() => this.recipe = recipe);
    });
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
