# استخدام نسخة خفيفة من بايثون
FROM python:3.9-slim

# تحديد مجلد العمل
WORKDIR /app

# نسخ ملف المكتبات وتثبيتها
COPY requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt

# نسخ كل الملفات (بما فيها مجلد templates)
COPY . .

# فتح المنفذ الذي سيعمل عليه Flask
EXPOSE 8080

# تشغيل التطبيق
CMD ["python", "app.py"]
