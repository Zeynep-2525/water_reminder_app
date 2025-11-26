# WaterReminderApp Notes

## WaterData Model

-Sınıf oluşturuldu: `WaterData`
-Özellik: `totalGlasses`
-JSON dönüştürme:
  -`fromJson()`
  -`toJson()`

## WaterStorage Service

- Dosya yolunu almak: `getFile()`
  - Uygulama doküman klasöründe `water_data.json`
- Dosyayı okumak: `loadWaterData()`
  - Dosya yoksa: `totalGlasses = 0`
  - Dosya varsa: JSON → Map → WaterData
- Dosyayı kaydetmek: `saveWaterData()`
  - WaterData → Map → JSON → Dosya

## Öğrenilenler_Notlar

-Dosya işlemleri asenkron, `async/await` ile yönetildi
-`path_provider` paketi ile cihaz doküman klasörü alındı
-JSON encode/decode işlemleri ile veri saklama mantığı öğrenildi
