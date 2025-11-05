import 'dart:convert';

import 'package:flutter/services.dart' show rootBundle;

import '../models/request.dart';

class RequestLocalDataSource {
  static const _mockPath = 'assets/mock/requests.json';

  Future<List<RequestItem>> fetchAll() async {
    final text = await rootBundle.loadString(_mockPath);
    final List<dynamic> data = jsonDecode(text) as List<dynamic>;
    return data.map((e) => RequestItem.fromJson(e as Map<String, dynamic>)).toList();
  }
}
