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
    return new Scaffold(
      appBar: new AppBar(
        title: new Text(widget.title),
      ),
      body: new Center(
        child: new Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            new Text(
              'You have pushed the button this many times:',
            ),
            new Text(
              '0',
              style: Theme.of(context).textTheme.display1,
            ),
          ],
        ),
      ),
      floatingActionButton: new FloatingActionButton(
        onPressed: () {},
        tooltip: 'Increment',
        child: new Icon(Icons.add),
      ),
    );
  }
}