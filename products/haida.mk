# Inherit AOSP device configuration for Xperia Neo V
$(call inherit-product-if-exists, device/semc/haida/full_haida.mk)

# Inherit common device configuration for LegacyXperiaAOSP Project 
$(call inherit-product, vendor/PolishBlood/common_lx.mk)

# Setup device specific product configuration.
PRODUCT_NAME := LegacyXperiaAOSP_haida
PRODUCT_BRAND := Sony
PRODUCT_DEVICE := haida
PRODUCT_MODEL := Xperia Neo V
PRODUCT_MANUFACTURER := SEMC

TARGET_SCREEN_WIDTH := 480
TARGET_SCREEN_HEIGHT := 854

#Set build fingerprint / ID / Product Name ect.
PRODUCT_BUILD_PROP_OVERRIDES += PRODUCT_NAME=MT11i BUILD_FINGERPRINT="SEMC/MT11i_1254-2184/MT11ii:4.0.4/4.1.B.0.431/UL5_3w:user/release-keys" PRIVATE_BUILD_DESC="MT11ii-user 4.0.4 4.1.B.0.431 UL5_3w test-keys"
