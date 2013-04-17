# Inherit AOSP device configuration for quincyatt.
$(call inherit-product, device/samsung/quincyatt/full_quincyatt.mk)

# Inherit GSM common stuff.
$(call inherit-product, vendor/bigfoot/configs/gsm.mk)

# Inherit bigfoot common bits
$(call inherit-product, vendor/bigfoot/configs/common.mk)

# Quincyatt overlay
PRODUCT_PACKAGE_OVERLAYS += vendor/bigfoot/overlay/quincyatt

# PA OVERLAY_TARGET
OVERLAY_TARGET := pa_xhdpi

# Setup device specific product configuration.
PRODUCT_NAME := bigfoot_quincyatt
PRODUCT_BRAND := Samsung
PRODUCT_DEVICE := quincyatt
PRODUCT_MODEL := SGH-I717
PRODUCT_MANUFACTURER := Samsung

# Set build fingerprint / ID / Product Name ect.
PRODUCT_BUILD_PROP_OVERRIDES += PRODUCT_NAME=SGH-I717 TARGET_DEVICE=SGH-I717 BUILD_FINGERPRINT="samsung/SGH-I717/SGH-I717:4.0.4/IMM76D/UCLE3:user/release-keys" PRIVATE_BUILD_DESC="SGH-I717-user 4.0.4 IMM76D UCLE3 release-keys"

# Copy Mako specific prebuilts
PRODUCT_COPY_FILES += \
    vendor/bigfoot/prebuilt/xhdpi/bootanimation.zip:system/media/bootanimation.zip \
    vendor/bigfoot/prebuilt/common/media/LMprec_508.emd:system/media/LMprec_508.emd \
    vendor/bigfoot/prebuilt/common/media/PFFprec_600.emd:system/media/PFFprec_600.emd
