# Inherit AOSP device configuration for Xperia Play
$(call inherit-product-if-exists, device/semc/smultron/full_smultron.mk)

# Inherit common device configuration for LegacyXperiaAOSP Project 
$(call inherit-product, vendor/LegacyXperiaAOSP/common_LegacyXperiaAOSP.mk)

# Setup device specific product configuration.
PRODUCT_NAME := LegacyXperiaAOSP_smultron

