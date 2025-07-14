#
# SPDX-FileCopyrightText: The LineageOS Project
# SPDX-License-Identifier: Apache-2.0
#

DEVICE_PATH := device/xiaomi/ares

# OTA assert
TARGET_OTA_ASSERT_DEVICE := ares,aresin

# Display
TARGET_SCREEN_DENSITY := 440

# Inherit from mt6893-common
include device/xiaomi/mt6893-common/BoardConfigCommon.mk

# Inherit the proprietary files
include vendor/xiaomi/ares/BoardConfigVendor.mk
