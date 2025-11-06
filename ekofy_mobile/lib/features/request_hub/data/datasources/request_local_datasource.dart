import 'dart:convert';

import 'package:flutter/services.dart' show rootBundle;

import '../models/request.dart';

//INFO: Datasource MOCK cho Request Hub. Khi tích hợp backend, thay thế bằng Repository/API thật
// và xóa các chỗ sử dụng để tránh còn sót dữ liệu mock.
class RequestLocalDataSource {
  //INFO: Đường dẫn JSON mock. Cần gỡ bỏ khi chuyển sang dữ liệu thật.
  static const _mockPath = 'assets/mock/requests.json';

  Future<List<RequestItem>> fetchAll() async {
    //INFO: Đọc dữ liệu từ mock JSON. Thay thế bằng call API thật.
    final text = await rootBundle.loadString(_mockPath);
    final List<dynamic> data = jsonDecode(text) as List<dynamic>;
    return data.map((e) => RequestItem.fromJson(e as Map<String, dynamic>)).toList();
  }
}
