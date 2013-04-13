# Inherit AOSP device configuration for tf101.
$(call inherit-product, device/asus/tf101/full_tf101.mk)

# Inherit common product files.
$(call inherit-product, vendor/bigfoot/config/common.mk)

# Tablet Overlay
PRODUCT_PACKAGE_OVERLAYS += vendor/bigfoot/overlay/common_tablet

# Setup device specific product configuration.
PRODUCT_NAME := bigfoot_tf101
PRODUCT_BRAND := asus
PRODUCT_DEVICE := tf101
PRODUCT_MODEL := Asus Transformer
PRODUCT_MANUFACTURER := Asus

PRODUCT_BUILD_PROP_OVERRIDES += PRODUCT_NAME=tf101 BUILD_ID=JDQ39 BUILD_FINGERPRINT="4.2.2/JDQ39/573038:user/release-keys" PRIVATE_BUILD_DESC="tf101-user 4.2.2 JDQ39 573038 release-keys" BUILD_NUMBER=573038

# Copy maguro specific prebuilt files
PRODUCT_COPY_FILES +=  \
    vendor/bigfoot/prebuilt/common/media/LMprec_508.emd:system/media/LMprec_508.emd \
    vendor/bigfoot/prebuilt/common/media/PFFprec_600.emd:system/media/PFFprec_600.emd

