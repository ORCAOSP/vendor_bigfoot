# Inherit device configuration for p4wifi.
$(call inherit-product, device/samsung/p4wifi/p4wifi.mk)

# Grouper Overlay
PRODUCT_PACKAGE_OVERLAYS += vendor/bigfoot/overlay/grouper

# Tablet Overlay
PRODUCT_PACKAGE_OVERLAYS += vendor/bigfoot/overlay/common_tablet

# Inherit common product files.
$(call inherit-product, vendor/bigfoot/config/common.mk)


#
# Setup device specific product configuration.
#
PRODUCT_NAME := bigfoot_p4wifi
PRODUCT_BRAND := samsung
PRODUCT_DEVICE := p4wifi
PRODUCT_MODEL := GT-P7510
PRODUCT_MANUFACTURER := samsung
PRODUCT_BUILD_PROP_OVERRIDES += PRODUCT_NAME=GT-P7510 BUILD_FINGERPRINT=samsung/GT-P7510/GT-P7510:4.0.4/IMM76D/UELPL:user/release-keys PRIVATE_BUILD_DESC="GT-P7510-user 4.0.4 IMM76D UELPL release-keys"

# Release name and versioning
PRODUCT_RELEASE_NAME := p4wifi

# Copy maguro specific prebuilt files
PRODUCT_COPY_FILES +=  \
    vendor/aosp/prebuilt/common/media/LMprec_508.emd:system/media/LMprec_508.emd \
    vendor/aosp/prebuilt/common/media/PFFprec_600.emd:system/media/PFFprec_600.emd

