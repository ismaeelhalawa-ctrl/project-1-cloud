# 1. استخدام نسخة بايثون خفيفة
FROM python:3.9-slim

# 2. تحديد مجلد العمل داخل الحاوية
WORKDIR /app

# 3. نسخ ملف المكتبات وتثبيتها
COPY requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt

# 4. نسخ كل ملفات المشروع (بما فيها مجلد templates)
COPY . .

# 5. فتح المنفذ 8080
EXPOSE 8080

# 6. أمر تشغيل التطبيق
CMD ["python", "app.py"]
