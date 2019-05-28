import 'package:flutter/material.dart';

import 'relationships.dart';

class HomePage extends StatefulWidget {
  
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Pathaway', style: Theme.of(context).textTheme.display1),
        textTheme: Theme.of(context).textTheme,
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.camera_alt, color: Colors.amber)
          )
        ],
      ),
      backgroundColor: Colors.blue,
      body: ListView(
        children: <Widget>[
          _divider(64),
          Container(
            width: MediaQuery.of(context).size.width * 0.6,
            child: Text('John Doe', style: Theme.of(context).textTheme.display2, textAlign: TextAlign.center),
          ),
          _divider(32),
          Container(
            height: MediaQuery.of(context).size.width * 0.6,
            width: MediaQuery.of(context).size.width * 0.6,
            child: Text('', style: Theme.of(context).textTheme.display1, textAlign: TextAlign.center),
            decoration: BoxDecoration(
              color: Colors.red,
              shape: BoxShape.circle
            ),
          ),
          _divider(48),
          GestureDetector(
            onTap: () {
              Navigator.of(context).push(MaterialPageRoute(builder: (context) => RelationshipsList()));
            },
            child: Column(
              children: <Widget>[
                Text('Relationships', style: Theme.of(context).textTheme.display1),
                Text('32', style: Theme.of(context).textTheme.display2)
              ],
            ),
          ),
          _divider(16),
          Column(
            children: <Widget>[
              Text('Paths Found', style: Theme.of(context).textTheme.display1),
              Text('46', style: Theme.of(context).textTheme.display2)
            ],
          ),
          _divider(32),
          Container(
            width: MediaQuery.of(context).size.width * 0.6,
            padding: EdgeInsets.symmetric(horizontal: MediaQuery.of(context).size.width * 0.2),
            child: OutlineButton(
              onPressed: () => { /* TODO */ },
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.all(Radius.circular(16.0))
              ),
              color: Colors.amber,
              highlightedBorderColor: Colors.amber,
              disabledBorderColor: Colors.amber,
              highlightColor: Colors.amber,
              padding: EdgeInsets.all(16.0),
              child: Text('My code', style: Theme.of(context).textTheme.display1),
            ),
          ),
          _divider(64)
        ],
      ),
    );
  }

  Widget _divider([double height = 16.0]) {
    return Divider(
      height: height,
      color: Colors.transparent,
    );
  }
}
