# Inherit AOSP device configuration for i9100g.
$(call inherit-product, device/samsung/i9100g/full_i9100g.mk)

# Inherit GSM common stuff
$(call inherit-product, vendor/bigfoot/configs/gsm.mk)

# Inherit bigfoot common bits
$(call inherit-product, vendor/bigfoot/configs/common.mk)

# SGS2 overlay
PRODUCT_PACKAGE_OVERLAYS += vendor/bigfoot/overlay/s2-common

# PA OVERLAY_TARGET
OVERLAY_TARGET := pa_hdpi

# Setup device specific product configuration.
PRODUCT_NAME := bigfoot_i9100g
PRODUCT_BRAND := Samsung
PRODUCT_DEVICE := i9100g
PRODUCT_MODEL := GT-I9100G
PRODUCT_MANUFACTURER := Samsung

# Set build fingerprint / ID / Product Name ect.
PRODUCT_BUILD_PROP_OVERRIDES += PRODUCT_NAME=GT-I9100G TARGET_DEVICE=GT-I9100G BUILD_FINGERPRINT=samsung/GT-I9100G/GT-I9100G:4.1.2/JZO54K/XXLPQ:user/release-keys PRIVATE_BUILD_DESC="GT-I9100G-user 4.1.2 JZO54K XXLPQ release-keys"
PRODUCT_RELEASE_NAME := GT-I9100G

# Copy hdpi specific prebuilts
PRODUCT_COPY_FILES += \
    vendor/bigfoot/prebuilt/hdpi/bootanimation.zip:system/media/bootanimation.zip \
    vendor/bigfoot/prebuilt/preferences/images/phablet.png:system/etc/paranoid/preferences/images/phablet.png \
    vendor/bigfoot/prebuilt/preferences/images/phone.png:system/etc/paranoid/preferences/images/phone.png \
    vendor/bigfoot/prebuilt/preferences/images/tablet.png:system/etc/paranoid/preferences/images/tablet.png \
    vendor/bigfoot/prebuilt/preferences/images/undefined.png:system/etc/paranoid/preferences/images/undefined.png \
    vendor/bigfoot/prebuilt/preferences/pa_hdpi/0_colors.xml:system/etc/paranoid/preferences/0_colors.xml \
    vendor/bigfoot/prebuilt/preferences/pa_hdpi/pref_1.xml:system/etc/paranoid/preferences/pref_1.xml \
    vendor/bigfoot/prebuilt/preferences/pa_hdpi/pref_2.xml:system/etc/paranoid/preferences/pref_2.xml \
    vendor/bigfoot/prebuilt/preferences/pa_hdpi/pref_3.xml:system/etc/paranoid/preferences/pref_3.xml \
    vendor/bigfoot/prebuilt/preferences/pa_hdpi/pref_4.xml:system/etc/paranoid/preferences/pref_4.xml \
    vendor/bigfoot/prebuilt/preferences/pa_hdpi/pref_5.xml:system/etc/paranoid/preferences/pref_5.xml   