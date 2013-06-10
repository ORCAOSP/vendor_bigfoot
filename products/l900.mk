# Inherit AOSP device configuration for l900.
$(call inherit-product, device/samsung/l900/full_l900.mk)

# Inherit CDMA common stuff.
$(call inherit-product, vendor/bigfoot/configs/cdma.mk)

# Inherit bigfoot common bits
$(call inherit-product, vendor/bigfoot/configs/common.mk)

# Galaxy Note Overlays
PRODUCT_PACKAGE_OVERLAYS += vendor/bigfoot/overlay/note-common

# PA OVERLAY_TARGET
OVERLAY_TARGET := pa_hdpi

# Setup device specific product configuration.
PRODUCT_NAME := bigfoot_l900
PRODUCT_BRAND := Samsung
PRODUCT_DEVICE := l900
PRODUCT_MODEL := SPH-L900
PRODUCT_MANUFACTURER := Samsung

# Set build fingerprint / ID / Product Name ect.
PRODUCT_BUILD_PROP_OVERRIDES += PRODUCT_NAME=t0ltespr TARGET_DEVICE=t0ltecdma BUILD_FINGERPRINT="samsung/t0ltespr/t0ltespr:4.1.1/JRO03C/L900VPALJC:user/release-keys" PRIVATE_BUILD_DESC="t0ltespr-user 4.1.1 JRO03C L900VPALJC release-keys"

# Copy maguro specific prebuilt files
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