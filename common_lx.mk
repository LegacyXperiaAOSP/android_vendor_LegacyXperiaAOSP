# user, just user
# USER := 
# Version
LX_VERSION_NUMBER := alpha1

# NOPE Unofficial packages that I used from trees outside AOSP
#PRODUCT_PACKAGES += \
#    Superuser \
#    su 
	
PRODUCT_COPY_FILES += \
	vendor/lx/prebuilt/etc/apns-conf.xml:system/etc/apns-conf.xml

# Updater app

