# Inherit AOSP device configuration for Xperia Neo V
$(call inherit-product-if-exists, device/semc/haida/full_haida.mk)

# Inherit common device configuration for LegacyXperiaAOSP Project 
$(call inherit-product, vendor/LegacyXperiaAOSP/common_LegacyXperiaAOSP.mk)

# Setup device specific product configuration.
PRODUCT_NAME := LegacyXperiaAOSP_haida
PRODUCT_BRAND := Sony
PRODUCT_DEVICE := haida
PRODUCT_MODEL := Xperia Neo V
PRODUCT_MANUFACTURER := SEMC

#Set build fingerprint / ID / Product Name ect.
PRODUCT_BUILD_PROP_OVERRIDES += \
    PRODUCT_NAME=MT11i \
    TARGET_DEVICE=MT11i \
    BUILD_FINGERPRINT="SEMC/MT11i_1254-2184/MT11i:4.0.4/4.1.B.0.587/tL1_3w:user/release-keys" \
    PRIVATE_BUILD_DESC="MT11i-user 4.0.4 4.1.B.0.587 tL1_3w test-keys"

