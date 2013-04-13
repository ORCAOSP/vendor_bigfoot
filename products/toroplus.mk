# Inherit AOSP device configuration for toroplus.
$(call inherit-product, device/samsung/toroplus/full_toroplus.mk)

# Inherit common product files.
$(call inherit-product, vendor/bigfoot/config/common.mk)

# Inherit CDMA common stuff
$(call inherit-product, vendor/bigfoot/config/cdma.mk)

# Inherit Tuna common stuff
$(call inherit-product, vendor/bigfoot/config/tuna.mk)

# Toroplus Overlay
PRODUCT_PACKAGE_OVERLAYS += vendor/bigfoot/overlay/tuna

# Setup device specific product configuration.
PRODUCT_NAME := bigfoot_toroplus
PRODUCT_BRAND := google
PRODUCT_DEVICE := toroplus
PRODUCT_MODEL := Galaxy Nexus
PRODUCT_MANUFACTURER := samsung

PRODUCT_BUILD_PROP_OVERRIDES += PRODUCT_NAME=mysidspr BUILD_FINGERPRINT="samsung/mysidspr/toroplus:4.1.1/JRO03U/L700FH05:user/release-keys" PRIVATE_BUILD_DESC="mysidspr-user 4.1.1 JRO03U L700FH05 release-keys"

# Copy toro specific prebuilt files
PRODUCT_COPY_FILES +=  \
    vendor/bigfoot/prebuilt/bootanimation/bootanimation_1280_728.zip:system/media/bootanimation.zip \
    vendor/bigfoot/prebuilt/common/media/LMprec_508.emd:system/media/LMprec_508.emd \
    vendor/bigfoot/prebuilt/common/media/PFFprec_600.emd:system/media/PFFprec_600.emd
