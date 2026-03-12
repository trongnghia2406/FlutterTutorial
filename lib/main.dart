import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(
    home: Home(),
  ));

class Home extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
      return Scaffold(
      appBar: AppBar(
        title: Text('Flutter App'),
        centerTitle: true,
        backgroundColor: Colors.red[600],
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Text('Hello World'),
          Container(
            color: Colors.purple,
            padding: EdgeInsets.all(20.0),
            child: Text('Inside Container'),
          ),
          Container(
            color: Colors.amber,
            padding: EdgeInsets.all(30.0),
            child: Text('Inside Container 2'),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton( 
        onPressed: () {},
        backgroundColor: Colors.red[600],
        child: Icon(Icons.add),
      ),
    );
  }
}
