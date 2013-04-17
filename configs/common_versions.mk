# Version information used on all builds
PRODUCT_BUILD_PROP_OVERRIDES += BUILD_VERSION_TAGS=release-keys USER=android-build BUILD_UTC_DATE=$(shell date +"%s")

DATE = $(shell date +%Y%m%d)

ifneq ($(bigfoot_BUILD),)
# Bigfoot Official properties
PRODUCT_PROPERTY_OVERRIDES += \
    ro.goo.developerid=drewgaren \
    ro.goo.rom=Bigfoot \
    ro.goo.version=$(DATE) \
    ro.rootbox.version=BIGFOOT-JB-$(TARGET_PRODUCT)-$(RB_BUILD)
else
# Bigfoot Nightlies properties
PRODUCT_PROPERTY_OVERRIDES += \
    ro.goo.developerid=drewgaren \
    ro.goo.rom=Bigfoot_Nightlies \
    ro.goo.version=$(DATE) \
    ro.rootbox.version=BIGFOOT-JB-$(TARGET_PRODUCT)-Nightly-$(DATE)
endif


# Camera shutter sound property
PRODUCT_PROPERTY_OVERRIDES += \
	persist.sys.camera-sound=1
