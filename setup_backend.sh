#!/bin/bash

# ساخت محیط مجازی در پوشه backend
python3 -m venv venv

# فعال‌سازی محیط مجازی
source venv/bin/activate

# نصب وابستگی‌ها (در صورت نیاز فایل requirements.txt را قبلاً ساخته باشید)
pip install --upgrade pip
pip install django

# ساخت پوشه apps اگر وجود ندارد
mkdir -p apps
cd apps

# ساخت اپلیکیشن‌ها
django-admin startapp authentication
django-admin startapp designs
django-admin startapp templates   # اگر لازم بود به clothing تغییر دهید
django-admin startapp orders
django-admin startapp business
django-admin startapp workshop
django-admin startapp set_design
django-admin startapp payment
django-admin startapp notification

# افزودن فایل‌های کمکی به هر اپ
for app in authentication designs templates orders business workshop set_design payment notification
do
    touch $app/serializers.py
    touch $app/urls.py
done

cd ..
echo "همه اپ‌ها و فایل‌ها با موفقیت در محیط مجازی ساخته شدند."