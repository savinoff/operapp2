import 'package:floper2/screens/camera_screen.dart';
import 'package:flutter/material.dart';

class OperApp2Home extends StatefulWidget {
  OperApp2Home({Key key}) : super(key: key);

  _OperApp2HomeState createState() => _OperApp2HomeState();
}

class _OperApp2HomeState extends State<OperApp2Home>
    with SingleTickerProviderStateMixin {
  TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = new TabController(vsync: this, initialIndex: 1, length: 4);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: new AppBar(
        title: Text('OperApp2'),
        elevation: 0.7,
        bottom: new TabBar(
          controller: _tabController,
          indicatorColor: Colors.green,
          tabs: <Widget>[
            new Tab(icon: new Icon(Icons.camera_alt)),
            new Tab(text: 'Opers'),
            new Tab(text: 'Plan'),
            new Tab(icon: new Icon(Icons.settings_applications))
          ]
        ),
      ),
      body: new TabBarView(
        controller: _tabController,
        children: <Widget>[
          new CameraScreen(), //
          Text('2'),
          Text('3'),
          Text('4')
        ]),
        floatingActionButton: new FloatingActionButton(
          backgroundColor: Theme.of(context).accentColor,
          child: new Icon(Icons.add),
          onPressed: () => print("add go"),

        ),
    );
  }
}
