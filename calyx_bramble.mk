# Inherit some common stuff.
$(call inherit-product, vendor/calyx/config/common.mk)

# Inherit device configuration
$(call inherit-product, device/google/bramble/device-calyx.mk)
$(call inherit-product, device/google/redbull/device-calyx.mk)
$(call inherit-product, device/google/bramble/aosp_bramble.mk)

## Device identifier. This must come after all inclusions
PRODUCT_NAME := calyx_bramble
PRODUCT_MODEL := Pixel 4a (5G)
PRODUCT_BRAND := google

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRODUCT_NAME=bramble \
    PRIVATE_BUILD_DESC="bramble-user 11 RQ3A.211001.001 7641976 release-keys"

BUILD_FINGERPRINT := google/bramble/bramble:11/RQ3A.211001.001/7641976:user/release-keys

PRODUCT_RESTRICT_VENDOR_FILES := false

PRODUCT_SOONG_NAMESPACES += vendor/google_devices/bramble
