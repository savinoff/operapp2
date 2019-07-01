import 'package:flutter/material.dart';
import 'package:floper2/models/plan_model.dart';

class PlanScreen extends StatefulWidget {
  const PlanScreen({Key key}) : super(key: key);

  @override
  _PlanScreenState createState() => _PlanScreenState();
}

class _PlanScreenState extends State<PlanScreen> {
  @override
  Widget build(BuildContext context) {
    return new ListView.builder(
        itemCount: dummyData.length,
        itemBuilder: (context, i) => new Column(
              children: <Widget>[
                new Divider(
                  height: 10.0,
                ),
                new ListTile(
                  leading: new CircleAvatar(
                    foregroundColor: Colors.green,
                    child: Text('RE'),
                  ),
                  title: new Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      new Text(
                        dummyData[i].categoryFrom + '->' + dummyData[i].categoryTo,
                        style: new TextStyle(fontWeight: FontWeight.bold),
                      ),
                      new Text(dummyData[i].name + '(name)')
                    ],
                  ),
                  subtitle: new Container(
                    padding: const EdgeInsets.only(top: 5.0),
                    child: new Text(dummyData[i].dfrom.toIso8601String()),
                  ),
                )
              ],
            ));
  }
}
