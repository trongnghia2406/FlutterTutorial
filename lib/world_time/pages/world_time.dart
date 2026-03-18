import 'dart:convert';
import 'package:http/http.dart';
import 'package:intl/intl.dart'; // 1. Đừng quên dòng này nhé

class WorldTime {
  String location;
  String? time;
  String flag;
  String url;

  WorldTime({ required this.location, required this.flag, required this.url });

  Future<void> getTime() async {
    try {
      var uri = Uri.parse('https://timeapi.io/api/Time/current/zone?timeZone=$url');
      Response response = await get(uri);
      Map data = jsonDecode(response.body);

      String datetime = data['dateTime'];
      DateTime now = DateTime.parse(datetime);

      // 2. Định dạng giờ: jm() tạo ra kiểu như "11:40 AM"
      time = DateFormat.jm().format(now);

    } catch (e) {
      print('Lỗi tại WorldTime: $e');
      time = 'could not get time data';
    }
  }
}