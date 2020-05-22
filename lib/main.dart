import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import './screens/home.dart';
import 'mock/items.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
        providers: [ChangeNotifierProvider.value(value: Items())],
        child: MaterialApp(
          theme: ThemeData(
            primarySwatch: Colors.blue,
          ),
          initialRoute: '/',
          routes: {'/': (ctx) => Home()},
        ));
  }
}
