from fastapi import FastAPI
import random

app = FastAPI()

messages = [
    "Su içmek cildini güzelleştirir",
    "Böbreklerin sana teşekkür ediyor",
    "Yeterince uyumak bağışıklığını güçlendirir",
    "Düzenli yürüyüş yapmak enerjini artırır",
    "Stresten uzak durmak sağlıklıdır",
    "Sebze ve meyve tüketmek sağlıklıdır",
    "Kahvaltıyı atlamamak önemlidir",
    "Günde en az 2 litre su içmek iyidir",
    "Derin nefes almak rahatlatır",
    "Gülmek ruh halini iyileştirir"
]

@app.get("/daily-message")
def get_daily_message():
    return {"message": random.choice(messages)}
