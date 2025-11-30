# 💧 Water Reminder App (Custom Backend)

![Flutter](https://img.shields.io/badge/Flutter-02569B?style=for-the-badge&logo=flutter&logoColor=white)
![Python](https://img.shields.io/badge/Python-3776AB?style=for-the-badge&logo=python&logoColor=white)
![FastAPI](https://img.shields.io/badge/FastAPI-009688?style=for-the-badge&logo=fastapi&logoColor=white)

Bu proje, standart bir su hatırlatıcı uygulamasının ötesine geçerek **Client-Server mimarisi** ve **REST API** mantığını öğrenmek amacıyla geliştirilmiştir. Kullanıcı günlük su takibini yaparken, Python ile yazılmış özel bir backend servisinden anlık motivasyon sözleri çekmektedir.

---

## 🚀 Uygulama Akışı

1. **Başlatma:** Kullanıcı Flutter uygulamasını açar.  
2. **İstek (Request):** Uygulama, arka planda FastAPI sunucusuna bir `HTTP GET` isteği gönderir (`/quote` endpoint).  
3. **İşlem (Processing):** Backend, veritabanı veya listeden rastgele bir motivasyon cümlesi seçer.  
4. **Yanıt (Response):** Sunucu, seçilen cümleyi JSON formatında geri gönderir:  
    ```json
    {
      "quote": "Bugün su içerek vücudunu resetle."
    }
    ```  
5. **Görüntüleme:** Flutter, gelen JSON'u parse eder ve kullanıcı arayüzünde gösterir.

---

## 🧠 Kazanılan Teknik Yetkinlikler

### 1. Client–Server Mimarisi
- Verilerin sadece local storage’da değil, uzaktaki sunucuda nasıl işlendiği öğrenildi.  
- **Cloud Native** uygulama geliştirme deneyimi kazanıldı.

### 2. API Geliştirme
- **FastAPI** ile mikroservis mantığında backend oluşturuldu.  
- Endpoint tanımlama, HTTP metotları (GET) ve Status Code yönetimi (200, 404, 500) öğrenildi.

### 3. HTTP & JSON Manipülasyonu
- Backend’den gelen JSON verisi Dart objelerine dönüştürüldü (Parsing/Serialization).  
- Request-Response döngüsü yönetildi.

### 4. Asenkron Programlama (Flutter)
- Ağ istekleri sırasında UI donması önlendi (`async/await`).  
- Veri gelene kadar kullanıcıyı bekletmek ve UI güncellemek için `FutureBuilder` veya `State Management` kullanıldı.

---

## 🛠 Kullanılan Teknolojiler

- **Frontend:** Flutter (Dart)  
- **Backend:** Python (FastAPI / Flask)  
- **İletişim:** HTTP (REST)  
- **Veri Formatı:** JSON  

---

## 🔮 Gelecek Planlar

- [ ] Python backend’i Docker container içine almak.  
- [ ] API’yi AWS Lambda veya Heroku gibi bulut sağlayıcısına deploy etmek.  
- [ ] Motivasyon sözlerini bir liste yerine SQLite veya PostgreSQL veritabanından çekmek.
