import 'package:flutter/material.dart';

class RelationshipsList extends StatefulWidget {
  @override
  _RelationshipsListState createState() => _RelationshipsListState();
}

class _RelationshipsListState extends State<RelationshipsList> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Relationships', style: Theme.of(context).textTheme.display1),
        textTheme: Theme.of(context).textTheme,
      ),
      backgroundColor: Colors.blue,
      body: ListView.builder(
        itemCount: 12,
        itemBuilder: (context, index) {
          return _relationshipCard(context, 'Person $index', 'Relationship $index');
        },
      ),
    );
  }

  Widget _relationshipCard(BuildContext context, String name, String relationship) {
    return Container(
      width: MediaQuery.of(context).size.width * 0.8,
      height: 136.0,
      padding: EdgeInsets.all(16.0),
      child: Column(
        children: <Widget>[
          Text(name, style: Theme.of(context).textTheme.display1),
          Text(relationship, style: Theme.of(context).textTheme.display1,)
        ],
      )
    );
  }
}
