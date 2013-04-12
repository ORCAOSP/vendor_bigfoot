# Version information used on all builds
PRODUCT_BUILD_PROP_OVERRIDES += BUILD_VERSION_TAGS=release-keys USER=android-build BUILD_UTC_DATE=$(shell date +"%s")

DATE = $(shell date +%Y%m%d)

ifneq ($(BIGFOOT_BUILD),)
# Bigfoot Official properties
PRODUCT_PROPERTY_OVERRIDES += \
    ro.goo.developerid=drewgaren \
    ro.goo.rom=Bigfoot \
    ro.goo.version=$(DATE) \
    ro.orca.version=BIGFOOT-STABLE-$(TARGET_PRODUCT)-$(BIGFOOT_BUILD)
else
# Bigfoot Nightlies properties
PRODUCT_PROPERTY_OVERRIDES += \
    ro.goo.developerid=drewgaren \
    ro.goo.rom=Bigfoot_nightly \
    ro.goo.version=$(DATE) \
    ro.orca.version=BIGFOOT-NIGHTLY-$(TARGET_PRODUCT)-OTA-$(DATE)
endif

# Build.Prop Tweaks
PRODUCT_PROPERTY_OVERRIDES += \
    ro.kernel.android.checkjni=0 \
    ro.kernel.checkjni=0 \
    ro.media.enc.jpeg.quality=100 \
    video.accelerate.hw=1

# Misc Files & init.d files
PRODUCT_COPY_FILES +=  \
    vendor/bigfoot/prebuilt/common/etc/sysctl.conf:system/etc/sysctl.conf \
    vendor/bigfoot/prebuilt/common/etc/resolv.conf:system/etc/resolv.conf \
    vendor/bigfoot/prebuilt/common/etc/init.local.rc:root/init.bigfoot.rc \
    vendor/bigfoot/prebuilt/common/bin/sysinit:system/bin/sysinit

# 01010101010101010010101010
PRODUCT_COPY_FILES +=  \
    vendor/bigfoot/prebuilt/common/etc/sysctl.conf:system/etc/sysctl.conf \
    vendor/bigfoot/prebuilt/common/etc/init.d/01pikachu:system/etc/init.d/01pikachu \
    vendor/bigfoot/prebuilt/common/etc/init.d/95zipalign:system/etc/init.d/95zipalign \
    vendor/bigfoot/prebuilt/common/etc/init.d/98heuheu:system/etc/init.d/98heuheu \
    vendor/bigfoot/prebuilt/common/bin/zipalign:system/bin/zipalign

# Google Proprietaries
PRODUCT_COPY_FILES +=  \
    vendor/bigfoot/prebuilt/common/lib/libgtalk_jni.so:system/lib/libgtalk_jni.so \
    vendor/bigfoot/prebuilt/common/lib/libgtalk_stabilize.so:system/lib/libgtalk_stabilize.so
