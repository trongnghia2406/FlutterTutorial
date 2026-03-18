import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart';

class Loading extends StatefulWidget {
  const Loading({super.key});

  @override
  State<Loading> createState() => _LoadingState();
}

class _LoadingState extends State<Loading> {

  void getTime() async {
    // 1. Gọi API lấy giờ UTC (giờ gốc)
    var url = Uri.parse('https://timeapi.io/api/Time/current/zone?timeZone=UTC');
    Response response = await get(url);
    Map data = jsonDecode(response.body);

    // 2. Giả sử  muốn tự tính giờ cho một nơi có offset là +07 (Việt Nam)
    String offset = "+07:00";
    String hours = offset.substring(0, 3); // Lấy "+07"

    // 3. Thực hiện cộng dồn
    DateTime now = DateTime.parse(data['dateTime']);
    now = now.add(Duration(hours: int.parse(hours)));

    print('Giờ sau khi tự cộng: $now');
  }

  @override
  void initState() {
    super.initState();
    getTime();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Text('loading screen'),
    );
  }
}
