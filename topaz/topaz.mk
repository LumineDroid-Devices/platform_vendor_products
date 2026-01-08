#
# SPDX-FileCopyrightText: LumineDroid
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit_only.mk)
TARGET_SUPPORTS_OMX_SERVICE := false
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit from topaz device
$(call inherit-product, device/xiaomi/topaz/device.mk)

# Inherit some common LumineDrois stuff.
$(call inherit-product, vendor/lumine/config/common_full_phone.mk)
LUMINE_MAINTAINER := Hexaboo

PRODUCT_NAME := topaz
PRODUCT_DEVICE := topaz
PRODUCT_MANUFACTURER := Xiaomi
PRODUCT_BRAND := Redmi
PRODUCT_MODEL := 23021RAA2Y

PRODUCT_GMS_CLIENTID_BASE := android-xiaomi

PRODUCT_BUILD_PROP_OVERRIDES += \
    BuildDesc="topaz_global-user 15 AQ3A.240829.003 OS2.0.202.0.VMGMIXM release-keys" \
    BuildFingerprint=Redmi/topaz_global/topaz:15/AQ3A.240829.003/OS2.0.202.0.VMGMIXM:user/release-keys \
    DeviceName=topaz \
    DeviceProduct=topaz \
    SystemName=topaz_global
