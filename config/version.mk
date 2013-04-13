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

## BIGFOOT Version prop ##
DATE = $(shell date -u +%Y%m%d)

# For System Information & Build zip name
PRODUCT_PROPERTY_OVERRIDES += \
    ro.bigfoot.version=$(TARGET_PRODUCT)-OFFICIAL-1.1.1 \
    ro.modversion=$(TARGET_PRODUCT)_1.1.1_$(DATE)

# For BFSTATS
PRODUCT_PROPERTY_OVERRIDES += \
    ro.bigfoot.isitrom=bigfoot \
    ro.bigfoot.modname=ORCA-BIGFOOT \
    ro.bigfoot.modversion=1.1.1-$(DATE) \
    ro.bigfoot.device=$(TARGET_PRODUCT) \
    ro.bigfoot.builtdate=$(DATE)
