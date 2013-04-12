# Inherit AOSP device configuration for maguro.
$(call inherit-product, device/samsung/maguro/full_maguro.mk)

# Inherit common product files.
$(call inherit-product, vendor/bigfoot/config/common.mk)

# Inherit common sound files from Sony.
#$(call inherit-product, vendor/bigfoot/config/sound_effects.mk)

# Inherit GSM common stuff
$(call inherit-product, vendor/bigfoot/config/gsm.mk)

# Inherit Tuna common stuff
$(call inherit-product, vendor/bigfoot/config/tuna.mk)

# Maguro Overlay
PRODUCT_PACKAGE_OVERLAYS += vendor/bigfoot/overlay/tuna

# Setup device specific product configuration.
PRODUCT_NAME := bigfoot_maguro
PRODUCT_BRAND := google
PRODUCT_DEVICE := maguro
PRODUCT_MODEL := Galaxy Nexus
PRODUCT_MANUFACTURER := samsung

PRODUCT_BUILD_PROP_OVERRIDES += PRODUCT_NAME=takju BUILD_ID=JDQ39 BUILD_FINGERPRINT="google/takju/maguro:4.2.2/JDQ39/573038:user/release-keys" PRIVATE_BUILD_DESC="takju-user 4.2.2 JDQ39 573038 release-keys" BUILD_NUMBER=573038

PRODUCT_PROPERTY_OVERRIDES += \
    ro.com.google.mcc_fallback=262

# Copy maguro specific prebuilt files
PRODUCT_COPY_FILES +=  \
    vendor/aosp/prebuilt/bootanimation/bootanimation_1280_728.zip:system/media/bootanimation.zip \
    vendor/aosp/prebuilt/common/media/LMprec_508.emd:system/media/LMprec_508.emd \
    vendor/aosp/prebuilt/common/media/PFFprec_600.emd:system/media/PFFprec_600.emd

