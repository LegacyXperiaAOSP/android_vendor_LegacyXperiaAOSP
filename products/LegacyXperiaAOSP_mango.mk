# Inherit AOSP device configuration for Xperia Mini Pro
$(call inherit-product-if-exists, device/semc/mango/full_mango.mk)

# Inherit common device configuration for LegacyXperiaAOSP Project 
$(call inherit-product, vendor/LegacyXperiaAOSP/common_LegacyXperiaAOSP.mk)

# Setup device specific product configuration.
PRODUCT_NAME := LegacyXperiaAOSP_mango
PRODUCT_BRAND := Sony
PRODUCT_DEVICE := mango
PRODUCT_MODEL := Xperia Mini Pro
PRODUCT_MANUFACTURER := SEMC

#Set build fingerprint / ID / Product Name etc.
PRODUCT_BUILD_PROP_OVERRIDES += \
    PRODUCT_NAME=SK17i \
    TARGET_DEVICE=SK17i \
    BUILD_FINGERPRINT="SEMC/MT15i_1254-2184/MT15i:4.0.4/4.1.B.0.587/tL1_3w:user/release-keys" \
    PRIVATE_BUILD_DESC="MT15i-user 4.0.4 4.1.B.0.587 tL1_3w test-keys"