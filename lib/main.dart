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
      body: Center(
          child: Image.asset('assets/images/keeramondo.jpg'),
          // child: Image.network('https://images.unsplash.com/photo-1514888286974-6c03e2ca1dba'), -> ảnh mạng
        // child: Image( -> cách khác để hiển thị ảnh
        //   // image: NetworkImage('https://images.unsplash.com/photo-1514888286974-6c03e2ca1dba'),
        //     image: AssetImage('assets/images/keeramondo.jpg'),
        //   ),
      ),
      floatingActionButton: FloatingActionButton( 
        onPressed: () {},
        backgroundColor: Colors.red[600],
        child: Icon(Icons.add),
      ),
    );
  }
}
