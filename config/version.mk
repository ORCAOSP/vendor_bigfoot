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
