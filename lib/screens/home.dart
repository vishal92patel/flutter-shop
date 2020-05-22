import 'package:flutter/material.dart';
import '../widgets/items.dart';
import '../widgets/homeAppBarActions.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Home'),
          actions: <Widget>[HomeAppBarActions()],
        ),
        body: Items());
  }
}
