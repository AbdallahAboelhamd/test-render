# نبدأ من صورة Node خفيفة
FROM node:20-alpine

# نحدد مجلد العمل
WORKDIR /app

# ننسخ ملفات الباكدجات أولًا
COPY package*.json ./

# نثبت الباكدجات كمستخدم root (علشان عنده صلاحيات كاملة)
RUN npm install

# ننسخ بقية ملفات المشروع
COPY . .

# ندي صلاحيات كاملة لكل الملفات داخل المجلد /app
# الهدف إن المستخدم العادي يقدر يكتب ويقرأ الملفات
RUN chmod -R 777 /app

# نضيف مستخدم جديد ونستخدمه لتشغيل التطبيق
RUN addgroup app && adduser -S -G app app
USER app

# نفتح البورت اللي Vite بيستخدمه
EXPOSE 5173

# نحدد الأمر اللي يشغل التطبيق
CMD ["npm", "run", "dev"]
