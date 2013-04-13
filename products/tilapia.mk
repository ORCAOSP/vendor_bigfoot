# Inherit AOSP device configuration for grouper.
$(call inherit-product, device/asus/tilapia/full_tilapia.mk)

# Inherit common product files.
$(call inherit-product, vendor/bigfoot/config/common.mk)

# Tilapia Overlay
PRODUCT_PACKAGE_OVERLAYS += vendor/bigfoot/overlay/grouper

# Inherit GSM common stuff
$(call inherit-product, vendor/bigfoot/config/gsm.mk)

# Tablet Overlay
PRODUCT_PACKAGE_OVERLAYS += vendor/bigfoot/overlay/common_tablet

# Setup device specific product configuration.
PRODUCT_NAME := bigfoot_tilapia
PRODUCT_BRAND := google
PRODUCT_DEVICE := tilapia
PRODUCT_MODEL := Nexus 7
PRODUCT_MANUFACTURER := Asus

PRODUCT_BUILD_PROP_OVERRIDES += PRODUCT_NAME=nakasig BUILD_ID=JDQ39 BUILD_FINGERPRINT="google/nakasig/tilapia:4.2.2/JDQ39/573038:user/release-keys" PRIVATE_BUILD_DESC="nakasig-user 4.2.2 JDQ39 573038 release-keys" BUILD_NUMBER=573038

# Copy maguro specific prebuilt files
PRODUCT_COPY_FILES +=  \
    vendor/bigfoot/prebuilt/hybrid_tvdpi.conf:system/etc/beerbong/properties.conf \
    vendor/bigfoot/prebuilt/common/media/LMprec_508.emd:system/media/LMprec_508.emd \
    vendor/bigfoot/prebuilt/common/media/PFFprec_600.emd:system/media/PFFprec_600.emd

# Some needed packages
PRODUCT_PACKAGES += \
    Mms \
    Phone \
    Stk

# System dump APN config
PRODUCT_COPY_FILES += \
    device/asus/tilapia/system/etc/apns-conf.xml:system/etc/apns-conf.xml

