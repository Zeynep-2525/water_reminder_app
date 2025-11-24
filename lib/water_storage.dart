import 'dart:io';
import 'dart:convert';
import 'package:path_provider/path_provider.dart';

class WaterData {
  int totalGlasses;

  WaterData({required this.totalGlasses});
  factory WaterData.fromJson(Map<String, dynamic> json) {
    return WaterData(totalGlasses: json['total_glasses'] ?? 0);
  }
  Map<String, dynamic> toJson() {
    return {'total_glasses': totalGlasses};
  }
}
