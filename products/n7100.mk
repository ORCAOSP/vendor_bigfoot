# Inherit AOSP device configuration for galaxys2.
$(call inherit-product, device/samsung/n7100/full_n7100.mk)

# Inherit GSM common stuff
$(call inherit-product, vendor/bigfoot/configs/gsm.mk)

# Inherit bigfoot common bits
$(call inherit-product, vendor/bigfoot/configs/common.mk)

# Galaxy Note Overlays
PRODUCT_PACKAGE_OVERLAYS += vendor/bigfoot/overlay/note-common

# PA OVERLAY_TARGET
OVERLAY_TARGET := pa_xhdpi

# Setup device specific product configuration.
PRODUCT_NAME := bigfoot_n7100
PRODUCT_BRAND := Samsung
PRODUCT_DEVICE := n7100
PRODUCT_MODEL := GT-N7100
PRODUCT_MANUFACTURER := samsung

# Set build fingerprint / ID / Product Name ect.
PRODUCT_BUILD_PROP_OVERRIDES += PRODUCT_NAME=t03gxx TARGET_DEVICE=t03g BUILD_FINGERPRINT="samsung/t03gxx/t03g:4.1.1/JRO03C/N7100XXALJ3:user/release-keys" PRIVATE_BUILD_DESC="t03gxx-user 4.1.1 JRO03C N7100XXALJ3 release-keys"
PRODUCT_RELEASE_NAME := n7100

# Copy Mako specific prebuilts
PRODUCT_COPY_FILES += \
    vendor/bigfoot/prebuilt/xhdpi/bootanimation.zip:system/media/bootanimation.zip
    vendor/bigfoot/prebuilt/common/media/LMprec_508.emd:system/media/LMprec_508.emd \
    vendor/bigfoot/prebuilt/common/media/PFFprec_600.emd:system/media/PFFprec_600.emd
