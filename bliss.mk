# Inherit some common BLISS stuff.
$(call inherit-product, vendor/bliss/config/common_full_phone.mk)

# Inherit device configuration for LG Optimus L9 P768
$(call inherit-product, device/lge/p768/device.mk)

# Inherit from u2-vendor device
$(call inherit-product, vendor/lge/u2/p768-vendor-blobs.mk)

PRODUCT_NAME := bliss_p768
PRODUCT_BRAND := lg
PRODUCT_DEVICE := p768
PRODUCT_MODEL := LG-P768
PRODUCT_MANUFACTURER := LGE
PRODUCT_RELEASE_NAME := Optimus L9
PRODUCT_SFX := intl

# Release name and versioning
PRODUCT_RELEASE_NAME := p768
PRODUCT_VERSION_DEVICE_SPECIFIC := 
-include vendor/bliss/config/common_versions.mk

UTC_DATE := $(shell date +%s)

PRODUCT_BUILD_PROP_OVERRIDES += BUILD_UTC_DATE=${UTC_DATE}\

# Enable Torch
PRODUCT_PACKAGES += Torch

