# نبدأ من صورة Node خفيفة
FROM node:20-alpine

# نحدد مجلد العمل
WORKDIR /app

# ننسخ ملفات الباكدجات أولًا
COPY package*.json ./

# نثبت الباكدجات
RUN npm install

# ننسخ بقية الملفات
COPY . .

# نبني نسخة production من التطبيق
RUN npm run build

# نثبت أداة serve لتشغيل الملفات الثابتة (Static files)
RUN npm install -g serve

# نفتح البورت اللي هتستخدمه Render (Render بيفتح 10000)
EXPOSE 10000

# نشغل التطبيق باستخدام serve
CMD ["serve", "-s", "dist", "-l", "10000"]
