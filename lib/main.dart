
import 'package:floper2/operApp2Home.dart';
import 'package:floper2/screens/planForm_screen.dart';
import 'package:flutter/material.dart';


void main() => runApp(new MyApp());

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: "OperApp2",
      initialRoute: '/',
      theme: new ThemeData(
        primaryColor: Colors.yellow,
        accentColor: Colors.yellowAccent
      ),
      home: new OperApp2Home(),
      routes: {
        PlanFormScreen.routeName: (context) => PlanFormScreen(),
      },
    );
  }

}