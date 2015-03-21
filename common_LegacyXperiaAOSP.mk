PRODUCT_PACKAGE_OVERLAYS += vendor/LegacyXperiaAOSP/overlay/common

# Extra packages 
PRODUCT_PACKAGES += \
    Launcher3 \
    AudioFX \
    SoundRecorder \
    Stk \

# Stagefright FFMPEG plugin
PRODUCT_PACKAGES += \
    libstagefright_soft_ffmpegadec \
    libstagefright_soft_ffmpegvdec \
    libFFmpegExtractor \
    libnamparser

# Extra tools 
PRODUCT_PACKAGES += \
    e2fsck \
    mke2fs \
    tune2fs \
    mount.exfat \
    fsck.exfat \
    mkfs.exfat \
    mkfs.f2fs \
    fsck.f2fs \
    fibmap.f2fs

# World APN list
PRODUCT_COPY_FILES += \
    vendor/LegacyXperiaAOSP/prebuilt/etc/apns-conf.xml:system/etc/apns-conf.xml

$(call prepend-product-if-exists, vendor/extra/product.mk)
