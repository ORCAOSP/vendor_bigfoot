# Inherit AOSP device configuration for toro.
$(call inherit-product, device/samsung/toro/full_toro.mk)

# Inherit common product files.
$(call inherit-product, vendor/bigfoot/config/common.mk)

# Inherit CDMA common stuff
$(call inherit-product, vendor/bigfoot/config/cdma.mk)

# Inherit Tuna common stuff
$(call inherit-product, vendor/bigfoot/config/tuna.mk)

# Toro Overlay
PRODUCT_PACKAGE_OVERLAYS += vendor/bigfoot/overlay/tuna

# Setup device specific product configuration.
PRODUCT_NAME := bigfoot_toro
PRODUCT_BRAND := google
PRODUCT_DEVICE := toro
PRODUCT_MODEL := Galaxy Nexus
PRODUCT_MANUFACTURER := samsung

PRODUCT_BUILD_PROP_OVERRIDES := PRODUCT_NAME=mysid BUILD_ID=JDQ39 BUILD_FINGERPRINT="google/mysid/toro:4.2.2/JDQ39/573038:user/release-keys" PRIVATE_BUILD_DESC="mysid-user 4.2.2 JDQ39 573038 release-keys" BUILD_NUMBER=573038

# Copy toro specific prebuilt files
PRODUCT_COPY_FILES +=  \
    vendor/aosp/prebuilt/bootanimation/bootanimation_1280_728.zip:system/media/bootanimation.zip \
    vendor/aosp/prebuilt/common/media/LMprec_508.emd:system/media/LMprec_508.emd \
    vendor/aosp/prebuilt/common/media/PFFprec_600.emd:system/media/PFFprec_600.emd
