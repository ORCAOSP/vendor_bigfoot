# Version information used on all builds
PRODUCT_BUILD_PROP_OVERRIDES += BUILD_VERSION_TAGS=release-keys USER=android-build BUILD_UTC_DATE=$(shell date +"%s")

DATE = $(shell date +%Y%m%d)

ifneq ($(BIGFOOT_BUILD),)
# Bigfoot Official properties
PRODUCT_PROPERTY_OVERRIDES += \
    ro.goo.developerid=drewgaren \
    ro.goo.rom=Bigfoot \
    ro.goo.version=$(DATE) \
    ro.bigfoot.version=BIGFOOT-4.2-v"$(BIGFOOT_VERSION_MAJOR).$(BIGFOOT_VERSION_MINOR).$(BIGFOOT_VERSION_MAINTAINENCE)
    
else
# Bigfoot Nightlies properties
PRODUCT_PROPERTY_OVERRIDES += \
    ro.goo.developerid=drewgaren \
    ro.goo.rom=Bigfoot_nightly \
    ro.goo.version=$(DATE) \
    ro.bigfoot.version=BIGFOOT-NIGHTLY-"$(BIGFOOT_VERSION_MAJOR).$(BIGFOOT_VERSION_MINOR).$(BIGFOOT_VERSION_MAINTAINENCE)-$(DATE)
endif

## BIGFOOT Version prop ##

# New Stuff
DATE = $(shell date -u +%Y%m%d)
BIGFOOT_VERSION_MAJOR = 1
BIGFOOT_VERSION_MINOR = 1
BIGFOOT_VERSION_MAINTAINENCE = 2

BIGFOOT_VERSION := "BIGFOOT-4.2-v"$(BIGFOOT_VERSION_MAJOR).$(BIGFOOT_VERSION_MINOR).$(BIGFOOT_VERSION_MAINTAINENCE)

# For System Information & Build zip name
PRODUCT_PROPERTY_OVERRIDES += \
    ro.bigfoot.version=$(BIGFOOT_VERSION) \
    ro.modversion=$(TARGET_PRODUCT)_$(BIGFOOT_VERSION_MAJOR).$(BIGFOOT_VERSION_MINOR).$(BIGFOOT_VERSION_MAINTAINENCE)_$(DATE)

# For BFSTATS
PRODUCT_PROPERTY_OVERRIDES += \
    ro.bigfoot.isitrom=bigfoot \
    ro.bigfoot.modname=ORCA-BIGFOOT \
    ro.bigfoot.modversion=1.1.2-$(DATE) \
    ro.bigfoot.device=$(TARGET_PRODUCT) \
    ro.bigfoot.builtdate=$(DATE)
