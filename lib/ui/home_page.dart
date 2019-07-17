import 'package:flutter/material.dart';
import 'package:flutter_starter_project/ui/keys.dart';

class HomePage extends StatefulWidget {
  static const String tag = 'home-page';

  @override
  State<StatefulWidget> createState() {
    return _HomeState();
  }
}

class _HomeState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Center(
          child: FlatButton(
            key: Key(homeButton),
            child: Text('Home Button'),
            onPressed: () => null,
          ),
        ),
      ),
    );
  }
}
