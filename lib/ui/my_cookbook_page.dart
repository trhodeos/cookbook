import 'package:cookbook/data/mock_recipes.dart';
import 'package:cookbook/data/recipe.dart';
import 'package:flutter/material.dart';


class MyCookbookPage extends StatefulWidget {
  MyCookbookPage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyCookbookPageState createState() => new _MyCookbookPageState();
}

class _MyCookbookPageState extends State<MyCookbookPage> {
  @override
  Widget build(BuildContext context) {
    var recipe;
    var recipeItems = [];
    for (recipe in allRecipes) {
      recipeItems.add(_createRecipeListItem(context, recipe));
    }
    return new Scaffold(
      appBar: new AppBar(
        title: new Text(widget.title),
      ),
      body: new Center(
        child: new ListView(
          children: recipeItems,
        ),
      ),
      floatingActionButton: new FloatingActionButton(
        onPressed: () {},
        tooltip: 'Add new recipe',
        child: new Icon(Icons.add),
      ),
    );
  }

  Widget _createRecipeListItem(BuildContext context, Recipe recipe) {
    return new ListTile(title: new Text(recipe.name), onTap: () {
      Navigator.pushNamed(context, '/recipe:' + recipe.name);
    });
  }
}
