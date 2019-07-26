import 'package:floper2/models/plan_model.dart';
import 'package:floper2/screens/planForm2_screen.dart';
import 'package:flutter/material.dart';

class PlanFormScreen extends StatelessWidget {
  const PlanFormScreen({Key key}) : super(key: key);
  static const routeName = '/planform';

  @override
  Widget build(BuildContext context) {
    final PlanOperModel oper = ModalRoute.of(context).settings.arguments;

    return Scaffold(
      appBar: AppBar(
        title: Text('Plan screen'),
      ),
      body: Center(
          child: new Column(children: <Widget>[
        RaisedButton(
          child: Text('Plan Screen'),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        new Text(oper.toString()),
        new PlanFormForm(oper: oper,)
      ])),
    );
  }
}
