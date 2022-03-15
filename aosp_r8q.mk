#
# Copyright (C) 2020-2022 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit from y2qdcmw device
$(call inherit-product, device/samsung/r8q/device.mk)

# Inherit some common Lineage stuff.
$(call inherit-product, vendor/aosp/config/common_full_phone.mk)

# Boot Animation
TARGET_BOOT_ANIMATION_RES := 1080

# Device identifier. This must come after all inclusions.
PRODUCT_NAME := aosp_r8q
PRODUCT_DEVICE := r8q
PRODUCT_BRAND := samsung
PRODUCT_MANUFACTURER := samsung
PRODUCT_MODEL := SM-G781B

PRODUCT_SYSTEM_DEVICE := r8q
PRODUCT_SYSTEM_NAME := r8q

PRODUCT_GMS_CLIENTID_BASE := android-samsung

# Build info
PRODUCT_BUILD_PROP_OVERRIDES += \
    BUILD_DISPLAY_ID="$(BUILD_ID).G781BXXS4DVA2" \
    BUILD_NUMBER=G781BXXS4DVA2 \
    LINEAGE_DEVICE=r8q \
    PRIVATE_BUILD_DESC="r8qxxx-user 12 SP1A.210812.016 G781BXXS4DVA2 release-keys" \
    TARGET_DEVICE=r8q \
    TARGET_PRODUCT=r8q \
    TARGET_BUILD_FLAVOR="r8q-$(TARGET_BUILD_VARIANT)"

BUILD_FINGERPRINT := samsung/r8qxxx/r8q:12/SP1A.210812.016/G781BXXU4DUL9:user/release-keys
