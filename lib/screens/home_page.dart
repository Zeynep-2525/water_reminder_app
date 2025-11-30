import 'package:flutter/material.dart';
import '../models/water_data.dart';
import '../services/water_storage.dart';

class WaterHomePage extends StatefulWidget {
  const WaterHomePage({super.key});

  @override
  _WaterHomePageState createState() => _WaterHomePageState();
}

class _WaterHomePageState extends State<WaterHomePage> {
  WaterData _waterData = WaterData(totalGlasses: 0);

  @override
  void initState() {
    super.initState();
    _loadData();
  }

  void _loadData() async {
    WaterData data = await storage.loadWaterData();
    setState(() {
      _waterData = data;
    });
  }

  void _addGlass() async {
    setState(() {
      _waterData.totalGlasses += 1;
    });
    await storage.saveWaterData(_waterData);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Water Reminder')),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('Bardak Sayısı: ${_waterData.totalGlasses}'),
            SizedBox(height: 20),
            ElevatedButton(onPressed: _addGlass, child: Text('Bardak Ekle')),
          ],
        ),
      ),
    );
  }
}

final storage = WaterStorage();
