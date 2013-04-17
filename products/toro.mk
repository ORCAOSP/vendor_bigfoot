# Inherit AOSP device configuration for toro.
$(call inherit-product, device/samsung/toro/full_toro.mk)

# Inherit common Verizon Wireless Files
$(call inherit-product, vendor/bigfoot/configs/vzw.mk)

# Inherit bigfoot common bits
$(call inherit-product, vendor/bigfoot/configs/common.mk)

# Tuna Overlay
PRODUCT_PACKAGE_OVERLAYS += vendor/bigfoot/overlay/tuna

# PA OVERLAY_TARGET
OVERLAY_TARGET := pa_xhdpi

# Setup device specific product configuration.
PRODUCT_NAME := bigfoot_toro
PRODUCT_BRAND := google
PRODUCT_DEVICE := toro
PRODUCT_MODEL := Galaxy Nexus
PRODUCT_MANUFACTURER := samsung

# Set build fingerprint / ID / Product Name ect.
PRODUCT_BUILD_PROP_OVERRIDES := PRODUCT_NAME=mysid BUILD_ID=JDQ39 BUILD_FINGERPRINT=google/mysid/toro:4.2.2/JDQ39/125147:user/release-keys PRIVATE_BUILD_DESC="mysid-user 4.2.2 JDQ39 125147 release-keys" BUILD_NUMBER=125147

# Toro specific packages
PRODUCT_PACKAGES += \
    Thinkfree

# Copy toro specific prebuilts
PRODUCT_COPY_FILES += \
    vendor/bigfoot/prebuilt/xhdpi/bootanimation.zip:system/media/bootanimation.zip
    vendor/bigfoot/prebuilt/common/media/LMprec_508.emd:system/media/LMprec_508.emd \
    vendor/bigfoot/prebuilt/common/media/PFFprec_600.emd:system/media/PFFprec_600.emd
