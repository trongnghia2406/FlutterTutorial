import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(home: HeroCard()));

class HeroCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Hero Card'),
        centerTitle: true,
        backgroundColor: Colors.grey[850],
        elevation: 0.0,
      ),
    );
  }
}
