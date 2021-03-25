# Inherit some common stuff.
$(call inherit-product, vendor/calyx/config/common.mk)

# Inherit device configuration
$(call inherit-product, device/google/redbull/device-calyx.mk)
$(call inherit-product, device/google/bramble/aosp_bramble.mk)

DEVICE_PACKAGE_OVERLAYS += vendor/google_devices/bramble/vendor_overlay/carrier-naked/

## Device identifier. This must come after all inclusions
PRODUCT_NAME := calyx_bramble
PRODUCT_MODEL := Pixel 4a (5G)
PRODUCT_RESTRICT_VENDOR_FILES := false
