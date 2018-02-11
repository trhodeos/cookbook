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
    if (recipe != null) {
      recipeBody = new Column(children: <Widget>[
          new Text(recipe.name),
          new Text(recipe.uri.toString())
        ],
      );

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
