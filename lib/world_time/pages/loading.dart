import 'package:flutter/material.dart';
import 'package:world_time_project/services/world_time.dart';

class Loading extends StatefulWidget {
  const Loading({super.key});

  @override
  State<Loading> createState() => _LoadingState();
}

class _LoadingState extends State<Loading> {

  String time = 'loading';

  void setupWordTime() async {
    WorldTime instance = WorldTime(
        location: 'Berlin',
        flag: 'germany.png',
        url: 'Europe/Berlin'
    );

    await instance.getTime();

    // Kiểm tra nếu instance.time bị null thì gán một giá trị mặc định
    setState(() {
      time = instance.time ?? "Lỗi lấy dữ liệu";
    });
  }


  @override
  void initState() {
    super.initState();
    setupWordTime();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.all(50.0),
        child: Text(time),
      ),
    );
  }
}
