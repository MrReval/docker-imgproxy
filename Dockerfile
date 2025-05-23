FROM darthsim/imgproxy:latest

# تنظیمات محیطی
ENV IMGPROXY_NETWORK="tcp" \
    IMGPROXY_BIND=":8080" \
    IMGPROXY_LOG_LEVEL="info" \
    IMGPROXY_LOG_FORMAT="pretty" \
    IMGPROXY_USE_INSECURE_URLS=true \
    IMGPROXY_KEY="" \
    IMGPROXY_SALT="" \
    IMGPROXY_SIGNATURE_SIZE=32 \
    IMGPROXY_ALLOWED_SOURCES="https:" \
    IMGPROXY_ALLOW_PRIVATE_SOURCE_ADDRESSES=false \
    IMGPROXY_QUALITY=85 \
    IMGPROXY_FORMAT_QUALITY="jpeg=85,webp=75,avif=60" \
    IMGPROXY_PREFERRED_FORMATS="webp,avif,jpeg" \
    IMGPROXY_SKIP_PROCESSING_FORMATS="svg" \
    IMGPROXY_STRIP_METADATA=true \
    IMGPROXY_STRIP_COLOR_PROFILE=true \
    IMGPROXY_SANITIZE_SVG=true \
    IMGPROXY_AUTO_ROTATE=true \
    IMGPROXY_TTL=2592000 \
    IMGPROXY_CACHE_CONTROL_PASSTHROUGH=false

# پورت‌های مورد نیاز
EXPOSE 8080

# دستور اجرا
CMD ["imgproxy"]
