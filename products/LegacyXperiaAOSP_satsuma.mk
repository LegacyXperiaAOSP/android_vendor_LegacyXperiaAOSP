# Inherit AOSP device configuration for Xperia Active
$(call inherit-product-if-exists, device/semc/satsuma/full_satsuma.mk)

# Inherit common device configuration for LegacyXperiaAOSP Project 
$(call inherit-product, vendor/LegacyXperiaAOSP/common_LegacyXperiaAOSP.mk)

# Setup device specific product configuration.
PRODUCT_NAME := LegacyXperiaAOSP_satsuma
PRODUCT_BRAND := Sony
PRODUCT_DEVICE := satsuma
PRODUCT_MODEL := Xperia Active
PRODUCT_MANUFACTURER := SEMC

#Set build fingerprint / ID / Product Name etc.
PRODUCT_BUILD_PROP_OVERRIDES += \
    PRODUCT_NAME=ST17i \
    TARGET_DEVICE=ST17i \
    BUILD_FINGERPRINT="SEMC/ST17i_1254-2184/ST17i:4.0.4/4.1.B.0.587/tL1_3w:user/release-keys" \
    PRIVATE_BUILD_DESC="ST17i-user 4.0.4 4.1.B.0.587 tL1_3w test-keys"