import 'dart:convert';
import 'package:http/http.dart';

class WorldTime {
  String location; // Tên địa điểm hiển thị trên UI
  String? time;    // Thời gian (để dấu ? vì lúc đầu chưa có dữ liệu)
  String flag;     // Đường dẫn ảnh icon lá cờ
  String url;      // Endpoint của API (ví dụ: 'Europe/London')

  // Constructor: Hàm khởi tạo để truyền dữ liệu từ ngoài vào
  WorldTime({ required this.location, required this.flag, required this.url });

  // Đổi thành Future<void> để bên ngoài có thể dùng 'await'
  Future<void> getTime() async {
    try {
      // Gắn biến 'url' vào link API của TimeAPI.io
      var uri = Uri.parse('https://timeapi.io/api/Time/current/zone?timeZone=$url');

      Response response = await get(uri);
      Map data = jsonDecode(response.body);

      // Lấy thời gian từ API (đã được server tự cộng offset cho đúng zone)
      String datetime = data['dateTime'];
      DateTime now = DateTime.parse(datetime);

      // Gán kết quả vào biến time của class để UI lấy dùng
      time = now.toString();
    } catch (e) {
      print('Lỗi tại WorldTime: $e');
      time = 'could not get time data';
    }
  }
}