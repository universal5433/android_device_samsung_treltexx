#
# Copyright (C) 2021 The Ressurection Remix Project
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#      http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#

# Inherit device configuration
$(call inherit-product, device/samsung/treltexx/device.mk)
$(call inherit-product, device/samsung/trelte-common/device-common.mk)

# Inherit from those products. Most specific first
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit some common ResurrectionRemix stuff.
$(call inherit-product, vendor/rr/config/common_full_phone.mk)

# Device identifier
PRODUCT_NAME := rr_treltexx
PRODUCT_DEVICE := treltexx
PRODUCT_BRAND := samsung
PRODUCT_MODEL := SM-N910C
PRODUCT_MANUFACTURER := samsung
PRODUCT_GMS_CLIENTID_BASE := android-samsung
BUILD_FINGERPRINT := samsung/treltexx/trelte:6.0.1/MMB29K/N910CXXU2DSA2:user/release-keys
BOARD_VENDOR := samsung

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRODUCT_NAME=treltexx \
	TARGET_DEVICE=treltexx \
  	PRIVATE_BUILD_DESC="treltexx-user 6.0.1 MMB29K N910CXXU2DSA2 release-keys"
