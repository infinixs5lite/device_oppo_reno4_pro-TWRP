#
# Copyright (C) 2023 The Android Open Source Project
# Copyright (C) 2023 SebaUbuntu's TWRP device tree generator
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit some common Omni stuff.
$(call inherit-product, vendor/omni/config/common.mk)

# Inherit from qssi device
$(call inherit-product, device/qualcomm/qssi/device.mk)

PRODUCT_DEVICE := qssi
PRODUCT_NAME := omni_qssi
PRODUCT_BRAND := qti
PRODUCT_MODEL := qssi system image for arm64
PRODUCT_MANUFACTURER := qualcomm

PRODUCT_GMS_CLIENTID_BASE := android-oppo

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="qssi-user 11 RKQ1.200710.002 1625821014931 release-keys"

BUILD_FINGERPRINT := qti/qssi/qssi:11/RKQ1.200710.002/1625821014931:user/release-keys
