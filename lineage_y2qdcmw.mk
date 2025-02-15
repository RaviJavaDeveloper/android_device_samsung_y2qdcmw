#
# Copyright (C) 2020-2022 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit from y2qdcmw device
$(call inherit-product, device/samsung/y2qdcmw/device.mk)

# Inherit some common Lineage stuff.
$(call inherit-product, vendor/lineage/config/common_full_phone.mk)

# Device identifier. This must come after all inclusions.
PRODUCT_NAME := lineage_y2qdcmw
PRODUCT_DEVICE := y2qdcmw
PRODUCT_BRAND := samsung
PRODUCT_MANUFACTURER := samsung
PRODUCT_MODEL := SC-52A

PRODUCT_SYSTEM_DEVICE := y2q
PRODUCT_SYSTEM_NAME := y2qdcmw

PRODUCT_GMS_CLIENTID_BASE := android-samsung-ss

# Build info
PRODUCT_BUILD_PROP_OVERRIDES += \
    BUILD_DISPLAY_ID="$(BUILD_ID).SC52AOMU1CVB1" \
    BUILD_NUMBER=SC52AOMU1CVB1 \
    LINEAGE_DEVICE=y2qdcmw \
    PRIVATE_BUILD_DESC="y2qdcmw-user 12 SP1A.210812.016 SC52AOMU1CVB1 release-keys" \
    TARGET_DEVICE=y2q \
    TARGET_PRODUCT=y2qdcmw \
    TARGET_BUILD_FLAVOR="y2qdcmw-$(TARGET_BUILD_VARIANT)"

BUILD_FINGERPRINT := samsung/SC-52A/SC-52A:12/SP1A.210812.016/SC52AOMU1CVB1:user/release-keys
