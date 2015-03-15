# Inherit AOSP device configuration for Xperia Play
$(call inherit-product-if-exists, device/semc/zeus/full_zeus.mk)

# Inherit common device configuration for LegacyXperiaAOSP Project 
$(call inherit-product, vendor/LegacyXperiaAOSP/common_LegacyXperiaAOSP.mk)

# Setup device specific product configuration.
PRODUCT_NAME := LegacyXperiaAOSP_zeus
PRODUCT_BRAND := Semc
PRODUCT_DEVICE := zeus
PRODUCT_MODEL := Xperia Play
PRODUCT_MANUFACTURER := SEMC

#Set build fingerprint / ID / Product Name ect.
PRODUCT_BUILD_PROP_OVERRIDES += \
    PRODUCT_NAME=R800i \
    TARGET_DEVICE=R800i \
    BUILD_FINGERPRINT="SEMC/R800i_0000-0000/R800i:4.0.3/4.1.H.0.4/-z9-3w:user/release-keys" \
    PRIVATE_BUILD_DESC="R800i-user 4.0.3 4.1.H.0.4 -z9-3w test-keys"