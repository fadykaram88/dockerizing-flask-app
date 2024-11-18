# استخدم صورة Python الرسمية كـ base image
FROM python:3.9-slim

# تحديد المجلد داخل الحاوية
WORKDIR /app

# نسخ ملف المتطلبات (dependencies) إلى الحاوية
COPY requirements.txt requirements.txt

# تثبيت المتطلبات
RUN pip install -r requirements.txt

# نسخ باقي الملفات إلى الحاوية
COPY . .

# تحديد المنفذ الذي سيعمل عليه التطبيق
EXPOSE 5000

# الأمر الذي سيشغل التطبيق
CMD ["python", "app.py"]

