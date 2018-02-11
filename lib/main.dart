import 'package:cookbook/ui/my_cookbook_page.dart';
import 'package:cookbook/ui/recipe_page.dart';
import 'package:flutter/material.dart';

void main() => runApp(new CookbookApp());

class CookbookApp extends StatelessWidget {
  Route<Null> _getRoute(RouteSettings settings) {
    // Routes, by convention, are split on slashes, like filesystem paths.
    final List<String> path = settings.name.split('/');
    // We only support paths that start with a slash, so bail if
    // the first component is not empty:
    if (path[0] != '')
      return null;
    if (path[1].startsWith('recipe:')) {
      // We don't yet support subpages of a recipe, so bail if there's
      // any more path components.
      if (path.length != 2)
        return null;
      final String recipeName = path[1].substring(7);
      return new MaterialPageRoute<Null>(
        settings: settings,
        builder: (BuildContext context) => new RecipePage(name: recipeName),
      );
    }
    // The other paths we support are in the routes table.
    return null;

  }
  @override
  Widget build(BuildContext context) {

    return new MaterialApp(
      title: 'Cookbook',
      theme: new ThemeData(
        primarySwatch: Colors.blue,
      ),
      routes: <String, WidgetBuilder>{
        '/':         (BuildContext context) => new MyCookbookPage(title: "My Cookbook"),
      },
      onGenerateRoute: _getRoute,
    );
  }
}

