# Inherit AOSP device configuration for galaxys2.
$(call inherit-product, device/samsung/i9100/full_i9100.mk)

# Inherit common product files.
$(call inherit-product, vendor/bigfoot/config/common.mk)

# Inherit GSM common stuff
$(call inherit-product, vendor/bigfoot/config/gsm.mk)

# Setup device specific product configuration.
PRODUCT_DEVICE := i9100
PRODUCT_NAME := bigfoot_i9100
PRODUCT_BRAND := Samsung
PRODUCT_MODEL := GT-I9100

# Set build fingerprint / ID / Product Name ect.
PRODUCT_BUILD_PROP_OVERRIDES += PRODUCT_NAME=GT-I9100 TARGET_DEVICE=GT-I9100 BUILD_FINGERPRINT=samsung/GT-I9100/GT-I9100:4.1.2/JZO54K/XXLPQ:user/release-keys PRIVATE_BUILD_DESC="GT-I9100-user 4.1.2 JZO54K XXLPQ release-keys"
PRODUCT_RELEASE_NAME := GT-I9100

# Copy i9100 specific prebuilt files
PRODUCT_PACKAGES += \
    Thinkfree

PRODUCT_COPY_FILES += \
   vendor/bigfoot/prebuilt/hybrid_hdpi.conf:system/etc/beerbong/properties.conf 
