# Inherit AOSP device configuration for maguro.
$(call inherit-product, device/samsung/maguro/full_maguro.mk)

# Inherit GSM common stuff
$(call inherit-product, vendor/bigfoot/configs/gsm.mk)

# Inherit bigfoot common bits
$(call inherit-product, vendor/bigfoot/configs/common.mk)

# Inherit common sound files from Sony.
#$(call inherit-product, vendor/bigfoot/config/sound_effects.mk)

# Tuna Overlay
PRODUCT_PACKAGE_OVERLAYS += vendor/bigfoot/overlay/tuna

# PA OVERLAY_TARGET
OVERLAY_TARGET := pa_xhdpi

# Setup device specific product configuration.
PRODUCT_NAME := bigfoot_maguro
PRODUCT_BRAND := google
PRODUCT_DEVICE := maguro
PRODUCT_MODEL := Galaxy Nexus
PRODUCT_MANUFACTURER := samsung

# Set build fingerprint / ID / Product Name ect.
PRODUCT_BUILD_PROP_OVERRIDES := PRODUCT_NAME=yakju BUILD_FINGERPRINT=google/yakju/maguro:4.2.2/JDQ39/573038:user/release-keys PRIVATE_BUILD_DESC="yakju-user 4.2.2 JDQ39 573038 release-keys" BUILD_NUMBER=573038

# Maguro specific packages
PRODUCT_PACKAGES += \
    Thinkfree

# Copy mako specific prebuilts
PRODUCT_COPY_FILES += \
    vendor/bigfoot/prebuilt/xhdpi/bootanimation.zip:system/media/bootanimation.zip
    vendor/bigfoot/prebuilt/common/media/LMprec_508.emd:system/media/LMprec_508.emd \
    vendor/bigfoot/prebuilt/common/media/PFFprec_600.emd:system/media/PFFprec_600.emd
