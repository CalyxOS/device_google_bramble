#
# SPDX-FileCopyrightText: The LineageOS Project
# SPDX-FileCopyrightText: The Calyx Institute
# SPDX-License-Identifier: Apache-2.0
#

# Inherit some common stuff
$(call inherit-product, vendor/calyx/config/common_phone.mk)

# Inherit device configuration
$(call inherit-product, device/google/bramble/aosp_bramble.mk)
$(call inherit-product, device/google/redbull/lineage_common.mk)

include device/google/bramble/device-lineage.mk

# Device identifier. This must come after all inclusions
PRODUCT_BRAND := google
PRODUCT_MODEL := Pixel 4a (5G)
PRODUCT_NAME := calyx_bramble

PRODUCT_BUILD_PROP_OVERRIDES += \
    BuildDesc="bramble-user 14 UP1A.231105.001.B2 11260668 release-keys" \
    BuildFingerprint=google/bramble/bramble:14/UP1A.231105.001.B2/11260668:user/release-keys \
    DeviceProduct=bramble

PRODUCT_RESTRICT_VENDOR_FILES := false

$(call inherit-product, vendor/google/bramble/bramble-vendor.mk)
