# Inherit common tuff
$(call inherit-product, vendor/bigfoot/configs/common.mk)

PRODUCT_PACKAGE_OVERLAYS += vendor/bigfoot/overlay/common_tablets
