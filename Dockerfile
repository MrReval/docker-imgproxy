FROM darthsim/imgproxy:latest

# تنظیمات محیطی
ENV IMGPROXY_NETWORK="tcp" \
    IMGPROXY_BIND=":8080" \
    IMGPROXY_LOG_LEVEL="info" \
    IMGPROXY_LOG_FORMAT="pretty" \
    IMGPROXY_USE_INSECURE_URLS=true \  # فعال کردن حالت insecure برای استفاده از لینک بدون امضا
    IMGPROXY_KEY="" \  # عدم استفاده از کلید
    IMGPROXY_SALT="" \  # عدم استفاده از salt
    IMGPROXY_SIGNATURE_SIZE=32 \  # اندازه امضا (در این حالت تاثیری ندارد)
    IMGPROXY_ALLOWED_SOURCES="https:" \  # فقط منابع با https مجاز هستند
    IMGPROXY_ALLOW_PRIVATE_SOURCE_ADDRESSES=false \  # جلوگیری از منابع خصوصی
    IMGPROXY_QUALITY=85 \  # کیفیت تصویر
    IMGPROXY_FORMAT_QUALITY="jpeg=85,webp=75,avif=60" \  # کیفیت فرمت‌های مختلف
    IMGPROXY_PREFERRED_FORMATS="webp,avif,jpeg" \  # فرمت‌های دلخواه
    IMGPROXY_SKIP_PROCESSING_FORMATS="svg" \  # فرمت‌های بدون پردازش
    IMGPROXY_STRIP_METADATA=true \  # حذف metadata
    IMGPROXY_STRIP_COLOR_PROFILE=true \  # حذف پروفایل رنگ
    IMGPROXY_SANITIZE_SVG=true \  # ایمن‌سازی SVG
    IMGPROXY_AUTO_ROTATE=true \  # چرخش خودکار تصویر
    IMGPROXY_TTL=2592000 \  # مدت زمان ذخیره‌سازی کش (30 روز)
    IMGPROXY_CACHE_CONTROL_PASSTHROUGH=false  # عدم عبور کنترل کش

# پورت‌های مورد نیاز
EXPOSE 8080

# دستور اجرا
CMD ["imgproxy"]
