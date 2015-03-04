# user, just user
# USER := 
# Version
LX_VERSION_NUMBER := alpha1

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
    mkfs.exfat 

PRODUCT_COPY_FILES += \
	vendor/lx/prebuilt/etc/apns-conf.xml:system/etc/apns-conf.xml

# Updater app

