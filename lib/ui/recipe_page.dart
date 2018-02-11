import 'package:cookbook/data/mock_recipes.dart';
import 'package:cookbook/data/recipe.dart';
import 'package:flutter/material.dart';


class RecipePage extends StatefulWidget {
  RecipePage({Key key, this.name}) : super(key: key);

  final String name;

  @override
  _RecipePageState createState() => new _RecipePageState();
}

class _RecipePageState extends State<RecipePage> {

  Recipe recipe;

  @override
  void initState() {
    super.initState();

  }
  @override
  Widget build(BuildContext context) {
    var recipeBody = new Center();
    if (recipe != null) {

    }
    return new Scaffold(
      appBar: new AppBar(
        title: new Text(widget.name),
      ),
      body: recipeBody,
    );
  }
}
