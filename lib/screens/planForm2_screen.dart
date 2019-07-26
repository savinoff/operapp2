import 'package:floper2/models/plan_model.dart';
import 'package:flutter/material.dart';

class PlanFormForm extends StatefulWidget {
  PlanOperModel oper;

  PlanFormForm({Key key, this.oper}) : super(key: key);
  

  // @override
  _PlanFormFormState createState() => _PlanFormFormState();
}

class _PlanFormFormState extends State<PlanFormForm> {
  final _formKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return Container(
      child: new Form(
        key: _formKey,
        child: new Column(
          children: <Widget>[
            new Text('Подсказка'),
            new TextFormField(
              initialValue: widget.oper.toString(), //Вот так можно использовать параметр для формы
              validator: (value) {
              if (value.isEmpty)
                return 'Введите значение';
              else
                return 'Ok';
            }),
            new RaisedButton(
              child: new Text('OK'),
              onPressed: () {
                //save value
                
              },
            )
          ],
        ),
      ),
    );
  }
}
