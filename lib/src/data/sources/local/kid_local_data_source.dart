import 'dart:convert';
import 'package:flutter/services.dart';
import 'package:injectable/injectable.dart';
import 'package:santa/src/domain/entities/kid.dart';

@singleton
class KidLocalDataSource {
  static const String _kidsJsonPath = 'assets/json/kids.json';

  Future<dynamic> _readJsonFile(String filePath) async {
    var input = await rootBundle.loadString(filePath);
    return jsonDecode(input);
  }

  Future<List<Kid>> getKids() async {
    final kidsJson = await _readJsonFile(_kidsJsonPath);
    return List<Kid>.from((kidsJson as List).map((e) => Kid.fromJson(e)));
  }
}