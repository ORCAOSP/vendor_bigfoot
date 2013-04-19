PRODUCT_PACKAGE_OVERLAYS += vendor/bigfoot/overlay/common

# T-Mobile theme engine
include vendor/bigfoot/config/themes_common.mk

# Common dictionaries
PRODUCT_PACKAGE_OVERLAYS += vendor/bigfoot/overlay/dictionaries

# Bring in all audio files
include frameworks/base/data/sounds/NewAudio.mk

# Extra Ringtones
include frameworks/base/data/sounds/AudioPackageNewWave.mk

# Bring in all video files
$(call inherit-product, frameworks/base/data/videos/VideoPackage2.mk)

# Backup Tool
#PRODUCT_COPY_FILES += \
#    vendor/bigfoot/prebuilt/common/bin/backuptool.sh:system/bin/backuptool.sh \
#    vendor/bigfoot/prebuilt/common/bin/backuptool.functions:system/bin/backuptool.functions \
#    vendor/bigfoot/prebuilt/common/bin/50-bf.sh:system/addon.d/50-bf.sh \
#    vendor/bigfoot/prebuilt/common/bin/blacklist:system/addon.d/blacklist

# Enable ADB authentication
ADDITIONAL_DEFAULT_PROPERTIES += ro.adb.secure=1

# Build Information Properties
include vendor/bigfoot/config/version.mk

PRODUCT_PROPERTY_OVERRIDES += \
    ro.url.legal=http://www.google.com/intl/%s/mobile/android/basic/phone-legal.html \
    ro.url.legal.android_privacy=http://www.google.com/intl/%s/mobile/android/basic/privacy.html \
    ro.com.google.clientidbase=android-google \
    ro.com.android.wifi-watchlist=GoogleGuest \
    ro.error.receiver.system.apps=com.google.android.feedback \
    ro.com.google.locationfeatures=1 \
    ro.setupwizard.enterprise_mode=1

PRODUCT_BUILD_PROP_OVERRIDES += BUILD_UTC_DATE=0

# Version information used on all builds
PRODUCT_BUILD_PROP_OVERRIDES += BUILD_EST_DATE=$(shell date +"%s")

# Build.prop Modifications
include vendor/bigfoot/config/buildprop_common.mk

# CyanogenMod Packages
PRODUCT_PACKAGES += \
    Apollo \
    Development \
    LockClock \
    DSPManager \
    libcyanogen-dsp \
    audio_effects.conf

# Superuser Packages
PRODUCT_PACKAGES += \
    Superuser \
    su

SUPERUSER_PACKAGE := com.bigfoot.superuser

# Bigfoot Packages
PRODUCT_PACKAGES += \
    LatinImeDictionaryPack \
    GooManager \
    DashClock \
    ORCASettings \
    Carbon \
    LunarUI \
    GoogleKeep \
    JRThemes \
    Ultra_Explorer_v1.1 \
    ORCAWallpapers \
    SoundShort \
    WebView \
    Superuser \
    su \
    BFStats \
    Torch 

PRODUCT_COPY_FILES +=  \
    vendor/bigfoot/prebuilt/common/etc/init.d/00start:system/etc/init.d/00start \
    vendor/bigfoot/prebuilt/common/etc/init.d/00orca:system/etc/init.d/00orca \
    vendor/bigfoot/prebuilt/common/etc/init.d/01sysctl:system/etc/init.d/01sysctl \
    vendor/bigfoot/prebuilt/common/etc/init.d/02cleaning:system/etc/init.d/02cleaning \
    vendor/bigfoot/prebuilt/common/etc/init.d/09cron:system/etc/init.d/09cron \
    vendor/bigfoot/prebuilt/common/etc/init.d/97battery:system/etc/init.d/97battery \
    vendor/bigfoot/prebuilt/common/etc/init.d/98fruit:system/etc/init.d/98fruit \
    vendor/bigfoot/prebuilt/common/etc/init.d/99Orca_Tweaks:system/etc/init.d/99Orca_Tweaks \
    vendor/bigfoot/prebuilt/common/etc/init.d/99rngd:system/etc/init.d/99rngd \
    vendor/bigfoot/prebuilt/common/etc/sysctl.conf:system/etc/sysctl.conf 

# NFC
PRODUCT_COPY_FILES += \
    vendor/bigfoot/config/permissions/com.bigfoot.android.xml:system/etc/permissions/com.bigfoot.android.xml \
    vendor/bigfoot/config/permissions/com.bigfoot.nfc.enhanced.xml:system/etc/permissions/com.bigfoot.nfc.enhanced.xml

# SuperSU and sysrw
PRODUCT_COPY_FILES += \
    vendor/bigfoot/prebuilt/common/xbin/sysrw:system/xbin/sysrw \
    vendor/bigfoot/prebuilt/common/xbin/sysro:system/xbin/sysro
