#
# SPDX-FileCopyrightText: 2022-2024 The LineageOS Project
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit from device
$(call inherit-product, device/motorola/rhode/device.mk)

# Inherit some common Afterlife stuff.
$(call inherit-product, vendor/afterlife/config/common_full_phone.mk)

# Device identifier. This must come after all inclusions.
PRODUCT_NAME := afterlife_rhode
PRODUCT_DEVICE := rhode
PRODUCT_BRAND := motorola
PRODUCT_MODEL := moto g52
PRODUCT_MANUFACTURER := motorola
PRODUCT_GMS_CLIENTID_BASE := android-motorola

TARGET_USE_ECHO := true
TARGET_SUPPORTS_BLUR := false
TARGET_UDFPS_ANIMATIONS := false
TARGET_BOOT_ANIMATION_RES := 1080

BUILD_FINGERPRINT := "motorola/rhode_g/rhode:13/T2SRS33.72-22-4-9/e5f56-2298ec:user/release-keys"

PRODUCT_BUILD_PROP_OVERRIDES += \
    TARGET_PRODUCT=rhode_g \
    PRIVATE_BUILD_DESC="rhode_g-user 13 T2SRS33.72-22-4-9 e5f56-2298ec release-keys"
