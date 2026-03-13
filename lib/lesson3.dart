import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(
    home: Home(),
));

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Flutter App'),
        centerTitle: true,
        backgroundColor: Colors.red[600],
      ),
      body: Center(
        child: Text(
          'Hello Flutter!',
          style: TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.bold,
              letterSpacing: 2.0,
              color: Colors.green[600],
              fontFamily: 'Arial'
            ),
          ),
        ),
      floatingActionButton: FloatingActionButton( 
        onPressed: () {},
        backgroundColor: Colors.red[600],
        child: Icon(Icons.add),
      ),
    );
  }
}