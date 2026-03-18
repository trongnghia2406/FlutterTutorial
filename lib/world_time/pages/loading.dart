import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart';

class Loading extends StatefulWidget {
  const Loading({super.key});

  @override
  State<Loading> createState() => _LoadingState();
}

class _LoadingState extends State<Loading> {

  void getData() async {
    try {
      var url = Uri.parse('https://jsonplaceholder.typicode.com/todos/1');

      // Thêm header để "đánh lừa" server rằng đây là trình duyệt thật
      Response response = await get(
        url,
        headers: {
          'User-Agent': 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/91.0.4472.124 Safari/537.36',
          'Accept': 'application/json',
        },
      );

      print('Status code: ${response.statusCode}');
      if (response.statusCode == 200) {
        Map data = jsonDecode(response.body);
        print(data);
        print(data['title']);
      }
    } catch (e) {
      print('Lỗi: $e');
    }
  }

  @override
  void initState() {
    super.initState();
    getData();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Text('loading screen'),
    );
  }
}
