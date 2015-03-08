# Inherit AOSP device configuration for Xperia Neo L
$(call inherit-product-if-exists, device/semc/phoenix/full_phoenix.mk)

# Inherit common device configuration for LegacyXperiaAOSP Project 
$(call inherit-product, vendor/LegacyXperiaAOSP/common_LegacyXperiaAOSP.mk)

# Setup device specific product configuration.
PRODUCT_NAME := LegacyXperiaAOSP_phoenix
PRODUCT_BRAND := Sony
PRODUCT_DEVICE := phoenix
PRODUCT_MODEL := Xperia Neo L
PRODUCT_MANUFACTURER := SEMC

#Set build fingerprint / ID / Product Name etc.
PRODUCT_BUILD_PROP_OVERRIDES += \
    PRODUCT_NAME=MT25i \
    TARGET_DEVICE=MT25i \
	BUILD_FINGERPRINT="SEMC/MT25i_1254-2184/MT25i:4.0.4/4.1.B.0.587/tL1_3w:user/release-keys" \
    PRIVATE_BUILD_DESC="MT25i-user 4.0.4 4.1.B.0.587 tL1_3w test-keys"