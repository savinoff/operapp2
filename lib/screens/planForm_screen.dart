import 'package:flutter/material.dart';

class PlanFormScreen extends StatelessWidget {
  const PlanFormScreen({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Plan screen'),
      ),
      body: Center(
        child: RaisedButton( 
          child: Text('Plan Screen'),
          onPressed: () {
            Navigator.pop(context);
          },
        )
      ),
    );
  }
}
