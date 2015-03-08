# Inherit AOSP device configuration for Xperia Ray
$(call inherit-product-if-exists, device/semc/urushi/full_urushi.mk)

# Inherit common device configuration for LegacyXperiaAOSP Project 
$(call inherit-product, vendor/LegacyXperiaAOSP/common_LegacyXperiaAOSP.mk)

# Setup device specific product configuration.
PRODUCT_NAME := LegacyXperiaAOSP_urushi
PRODUCT_BRAND := Sony
PRODUCT_DEVICE := urushi
PRODUCT_MODEL := Xperia Ray
PRODUCT_MANUFACTURER := SEMC

#Set build fingerprint / ID / Product Name etc.
PRODUCT_BUILD_PROP_OVERRIDES += \
    PRODUCT_NAME=ST18i \
    TARGET_DEVICE=ST18i \
    BUILD_FINGERPRINT="SEMC/ST18i_1254-2184/ST18i:4.0.4/4.1.B.0.587/tL1_3w:user/release-keys" \
    PRIVATE_BUILD_DESC="ST18i-user 4.0.4 4.1.B.0.587 tL1_3w test-keys"