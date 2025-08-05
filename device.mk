#
# SPDX-FileCopyrightText: The LineageOS Project
# SPDX-License-Identifier: Apache-2.0
#

# Overlay
PRODUCT_PACKAGES += \
    FrameworksResOverlayAres \
    SystemUIOverlayAres \

PRODUCT_ENFORCE_RRO_TARGETS := *

# Soong
PRODUCT_SOONG_NAMESPACES += \
    $(LOCAL_PATH)

# Rootdir
PRODUCT_PACKAGES += \
    init.project.rc

# Inherit from mt6893-common
$(call inherit-product, device/xiaomi/mt6893-common/mt6893.mk)

# Inherit the proprietary files
$(call inherit-product, vendor/xiaomi/ares/ares-vendor.mk)
