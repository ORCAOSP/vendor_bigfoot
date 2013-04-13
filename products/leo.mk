# Inherit AOSP device configuration for galaxys2.
$(call inherit-product, device/htc/leo/device_leo.mk)

# Inherit common product files.
$(call inherit-product, vendor/bigfoot/config/common.mk)

# Inherit GSM common stuff
$(call inherit-product, vendor/bigfoot/config/gsm.mk)

# Setup device specific product configuration.
PRODUCT_DEVICE := leo
PRODUCT_NAME := bigfoot_leo
PRODUCT_BRAND := HTC
PRODUCT_MODEL := HTC_HD2

# Set build fingerprint / ID / Product Name ect.
PRODUCT_BUILD_PROP_OVERRIDES += PRODUCT_NAME=HTC_HD2 TARGET_DEVICE=leo BUILD_FINGERPRINT=leo PRIVATE_BUILD_DESC="leo"
PRODUCT_RELEASE_NAME := leo

# Copy i9100 specific prebuilt files
PRODUCT_PACKAGES += \
    Thinkfree

PRODUCT_COPY_FILES += \
   vendor/bigfoot/prebuilt/bootanimation/bootanimation.zip:system/media/bootanimation.zip
