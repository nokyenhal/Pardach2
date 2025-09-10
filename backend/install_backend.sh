#!/bin/bash
# اجرای اسکریپت نصب محیط مجازی و Django در پوشه backend

# ساخت محیط مجازی (در صورت وجود قبلی آن را حذف نکنید)
python3 -m venv venv

# فعال‌سازی محیط مجازی
source venv/bin/activate

# نصب وابستگی‌ها
pip install --upgrade pip
pip install -r requirements.txt

echo "نصب Django با موفقیت انجام شد و محیط مجازی فعال گردید."