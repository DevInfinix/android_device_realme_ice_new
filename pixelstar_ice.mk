#
# Copyright (C) 2021-2022 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit from ice device
$(call inherit-product, device/realme/ice/device.mk)

# Inherit some common Pixelstar stuff.
$(call inherit-product, vendor/pixelstar/config/common_full_phone.mk)

PRODUCT_NAME := pixelstar_ice
PRODUCT_DEVICE := ice
PRODUCT_MANUFACTURER := realme
PRODUCT_BRAND := realme
PRODUCT_MODEL := RMX3461

PRODUCT_SYSTEM_NAME := RE54BFL1
PRODUCT_SYSTEM_DEVICE := RE54BFL1

PRODUCT_GMS_CLIENTID_BASE := android-oppo

# Pixelstar Flags
TARGET_USES_BLUR_RECENT := false
TARGET_FACE_UNLOCK_SUPPORTED := false
USE_PIXEL_CHARGER := true
TARGET_INCLUDE_LIVE_WALLPAPERS := true
TARGET_SUPPORTS_QUICK_TAP := true
PRODUCT_NO_CAMERA := true
TARGET_INCLUDE_CARRIER_SETTINGS := true
TARGET_SUPPORTS_GOOGLE_RECORDER := true
TARGET_SUPPORTS_ADPATIVE_CHARGING := true

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="RMX3461-user 13 TP1A.220905.001 R.1119f23-59b8-59b9 release-keys" \
    TARGET_DEVICE=$(PRODUCT_SYSTEM_DEVICE) \
    TARGET_PRODUCT=$(PRODUCT_SYSTEM_NAME)

BUILD_FINGERPRINT := realme/RMX3461/RE54BFL1:13/TP1A.220905.001/R.1119f23-59b8-59b9:user/release-keys