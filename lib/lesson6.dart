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
          child: ElevatedButton(
            // còn có TextButton, OutlinedButton
            onPressed: () {},
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.red[600],
              foregroundColor: Colors.white,   
            ),
            child: Text('Click Me'),
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