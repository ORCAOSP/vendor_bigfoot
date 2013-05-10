# Inherit AOSP device configuration for d2spr.
$(call inherit-product, device/samsung/d2spr/full_d2spr.mk)

# Inherit CDMA common stuff.
$(call inherit-product, vendor/bigfoot/configs/cdma.mk)

# Inherit Bigfoot common bits
$(call inherit-product, vendor/bigfoot/configs/common.mk)

# S3 Overlays
PRODUCT_PACKAGE_OVERLAYS += vendor/bigfoot/overlay/s3-common

# PA OVERLAY_TARGET
OVERLAY_TARGET := pa_i9300

# Setup device specific product configuration.
PRODUCT_NAME := bigfoot_d2spr
PRODUCT_BRAND := Samsung
PRODUCT_DEVICE := d2spr
PRODUCT_MODEL := SPH-L710
PRODUCT_MANUFACTURER := Samsung

# Set build fingerprint / ID / Product Name ect.
PRODUCT_BUILD_PROP_OVERRIDES += PRODUCT_NAME=d2spr TARGET_DEVICE=d2spr BUILD_FINGERPRINT="samsung/d2spr/d2spr:4.0.4/IMM76D/L710VPALG2:user/release-keys" PRIVATE_BUILD_DESC="d2spr-user 4.0.4 IMM76D L710VPALG2 release-keys"

# Copy mako specific prebuilts
PRODUCT_COPY_FILES += \
    vendor/bigfoot/prebuilt/xhdpi/bootanimation.zip:system/media/bootanimation.zip \
    vendor/bigfoot/prebuilt/preferences/images/phablet.png:system/etc/paranoid/preferences/images/phablet.png \
    vendor/bigfoot/prebuilt/preferences/images/phone.png:system/etc/paranoid/preferences/images/phone.png \
    vendor/bigfoot/prebuilt/preferences/images/tablet.png:system/etc/paranoid/preferences/images/tablet.png \
    vendor/bigfoot/prebuilt/preferences/images/undefined.png:system/etc/paranoid/preferences/images/undefined.png \
    vendor/bigfoot/prebuilt/preferences/pa_xhdpi/0_colors.xml:system/etc/paranoid/preferences/0_colors.xml \
    vendor/bigfoot/prebuilt/preferences/pa_xhdpi/pref_1.xml:system/etc/paranoid/preferences/pref_1.xml \
    vendor/bigfoot/prebuilt/preferences/pa_xhdpi/pref_2.xml:system/etc/paranoid/preferences/pref_2.xml \
    vendor/bigfoot/prebuilt/preferences/pa_xhdpi/pref_3.xml:system/etc/paranoid/preferences/pref_3.xml \
    vendor/bigfoot/prebuilt/preferences/pa_xhdpi/pref_4.xml:system/etc/paranoid/preferences/pref_4.xml \
    vendor/bigfoot/prebuilt/preferences/pa_xhdpi/pref_5.xml:system/etc/paranoid/preferences/pref_5.xml