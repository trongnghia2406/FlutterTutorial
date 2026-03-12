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
      body: Container(
        padding: EdgeInsets.all(20.0),
        // còn có thể dùng .symetric(horizontal: 20.0, vertical: 10.0), .fromLTRB(10.0, 20.0, 30.0, 40.0)
        margin: EdgeInsets.all(20.0),
        color: Colors.grey[400],
        child: Text('Hello World'),
      ),
      floatingActionButton: FloatingActionButton( 
        onPressed: () {},
        backgroundColor: Colors.red[600],
        child: Icon(Icons.add),
      ),
    );
  }
}
