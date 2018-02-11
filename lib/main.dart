import 'package:cookbook/ui/my_cookbook_page.dart';
import 'package:flutter/material.dart';

void main() => runApp(new CookbookApp());

class CookbookApp extends StatelessWidget {
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
    );
  }
}

