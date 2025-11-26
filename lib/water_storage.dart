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

class WaterStorage {
  Future<File> getFile() async {
    final directory = await getApplicationDocumentsDirectory();
    final path = '${directory.path}/water_data.json';
    return File(path);
  }

  Future<WaterData> loadWaterData() async {
    final file = await getFile();

    if (!await file.exists()) {
      return WaterData(totalGlasses: 0);
    }

    final content = await file.readAsString();
    final dataMap = jsonDecode(content);
    return WaterData.fromJson(dataMap);
  }

  Future<void> saveWaterData(WaterData data) async {
    final file = await getFile(); //dosyayı al
    final dataMap = data.toJson(); //WaterData -> Map
    final jsonString = jsonEncode(dataMap); //Map ->JSON string
    await file.writeAsString(jsonString); //Dosyaya yaz
  }

  // Note: getFile() and loadWaterData() use async/await because file operations are asynchronous.
}
